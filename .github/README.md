# IAC pour la landing page de stopify
Ce repertoire contient la configuration de l'infrastructure nécessaire pour la landing page stopify.
L'outils d'`Infrastructure as Code` utilisé est [terraform](https://www.terraform.io/).

La configuration gère le déploiement de ressources sur le cloud provider [AWS](https://aws.amazon.com/fr/).

Les ressources sont :
- Un [bucket S3](https://aws.amazon.com/fr/s3/) qui hébergera le site.

un `output` terraform nommé `bucket_id` est défini pour afficher l'id (nom) du bucket qui a été créé par la configuration.
Un autre nommé `bucket_url` est défini pour afficher l'URL du bucket pour un accès web.  