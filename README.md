# landing-page
## Présentation
Le mini site de l'entreprise contient 2 pages :
- la page d'acceuil
- la page de contact

Le site est généré par le framework [hugo](https://gohugo.io/) et le thème utilisé est [bigspring](https://themes.gohugo.io/bigspring-hugo-startup-theme/).
Les sources du site sont présentes dans le dossier nommé `website`.

## Procédures
### Faire tourner le site en local (préproduction)
La génération du site peut être simulée en local grâce à une image docker et à docker-compose.

Un service nommé `dev_server` est défini dans le fichier docker-compose.yml.
- Le stage de build du service crée une image docker dont le `Dockerfile` et les scripts associés se trouvent dans le dossier `docker-image`.
- Lorsque le service est lancé la commande exécutée par le container est `hugo server --bind-"0.0.0.0"` avec un mapping du dossier `website` sur le volume `/src` du container et avec un mapping du port 1313 du container sur le port 1313 de la machine qui fait tourner docker. Cette commande permet de lancer hugo en mode serveur afin de voir en live toutes les modifications apportées au site en ouvrant l'URL http://localhost:1313.

### Comment (re)build l'image de l'environnement de dev
`docker-compose build`

### Comment lancer l'environnement de dev
`docker-compose up` ou `docker-compose up -d` pour passer en mode daemon

### Comment stopper l'environnement de dev
CTRL+C ou `docker-compose down`

### Changer la version d'hugo installée dans l'image Docker
\\ À écrire \\

## Épisode 2 - Procédure d'Intégration et Déploiement Continu sur GitHub Pages

1.  Lire "[A propos de l'intrégration continue](https://docs.github.com/en/actions/guides/about-continuous-integration)"
2.  Lire et regarder la page à propose de [GitHub Pages](https://pages.github.com/)
3.  Forker ce dépôt afin de pouvoir effectuer des modifications sur votre nouveau dépôt
4.  Via l'interface web de github, passer votre dépôt en public (sinon, impossible de publier sur GitHub Pages)
5.  Créer une nouvelle branche sur votre dépôt
6.  Pusher cette nouvelle branche sur votre dépôt
7.  Placer le fichier `build.yml` dans le bon sous-dossier de workflow github.
8.  Commiter et pusher votre branche
9.  Dans l'onglet "Actions" de votre dépôt sur github.com, vous devriez voir l'action être exécutée
10. Allez essayer votre nouveau site sur l'url `https://<votreid>.github.io/stopify-landing-page/`. Quelque chose cloche. Quoi ?
11. Changer la propriété `baseURL` pour la valeur `/stopify-landing-page/` dans le fichier `website/config/_default/config.yml`
12. Commit et pusher
13. Vérifier le bon fonctionnement du site
14. Changer la version de hugo utilisée lors de la procédure de CI afin d'utiliser la dernière version `0.83.0`
15. Commiter et pusher