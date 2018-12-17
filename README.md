# Pixeloo
Plateforme d'échange de matériel photo

###### Lien du site :

http://pixeloosave.herokuapp.com

###### Mode de fonctionnement :
1 - Bob ajoute son nouvel appareil photo Canon sur Pixeloo ici : https://pixeloosave.herokuapp.com/users/edit (bas de page)

2. Sophie veut louer le Canon de Bob, elle l'ajoute à son panier et passe la commande

3. Bob recoit un email l'informant qu'il a une demande de location, il se rend sur le site et accepte ou rejette la demande de Sophie

4. Sophie est informé du rejet ou de l'acceptation de sa location, si c'est ok, elle paye et peut accéder aux coordonnées de Bob

5. Bob et Sophie recoivent un email qui les informe que la commande est confirmée et que leurs coordonées respectives sont disponibles sur Pixeloo


###### Scénario de test :

1. Créer un utilisateur avec un email valide et ajouter un appareil photo
2. Créer un second utilisateur avec un email validé et louer cet appareil photo


###### Carte de crédit de test :

- 4242 4242 4242 4242
- a three-digit CVC
- any expiry date in the future

###### En cas de difficulté pour cloner et migrer :
1. décommenter l'initializer stripe
2. $ EDITOR="subl --wait" bin/rails credentials:edit
          afin d'ajouter vos credentials pour :
                aws:
                  access_key_id: XXXX
                  secret_access_key: XXX

                stripe:
                  publishable_key: XXX
                  secret_key: XX

                gmail:
                  username: XXX
                  password: XXXX
4. compiler 
     $ RAILS_ENV=production bundle exec rake assets:precompile
5. rails db:migrate (éventuellement db:reset avant)
6. rails db:migrate
7. rails db:seed

## Le projet

### Features de base

Comporte les fonctionalités de base d'un site e-commerce. A savoir de manière exhaustive :
- la gestion de l'authentification
- la gestion des rôles utilisateurs , administrateur ou utilisateur lambda
- le workflow d'un utilisateur owner est différent de celui d'un customer
- les envois de mails à différentes étapes d'un commande
- la recherche par titre
...

### Features évoluées

- Un système de géolocalisation par ville de chaque matériel enregistré
- système de paiment Stripe

## Organisation autour du projet

### les branches

- élément essentiel de notre organisation, nous avons adopté la structure suivante :

├── master
  ├── development
    ├── alexis
      ├── feature1
      ├── feature2
      ├── ...
      ├── featureN
    ├── enes
      ├── feature1
      ├── feature2
      ├── ...
      ├── featureN
    ├── rado
      ├── feature1
      ├── feature2
      ├── ...
      ├── featureN
    ├── vivien
      ├── feature1
      ├── feature2
      ├── ...
      ├── featureN
     
## La TEAM

- @Enes, le Yankee, notre désormais pro du seed et modèle photo à ses heures perdues ;)
- @Alexi, Alias l'Eclaireur est notre spécialiste du front.
- @Vivien, le Cerveau, sans qui nous n'aurions pas survécu ces 2 semaines.
- @Rado, alias le Sage, celui qui a l'idée de ce projet.

## Pour le futur

Nous allons dans un premier temps nous appliquer à améliorer les fonctionnalités existantes. Ensuite nous aurons à terme la possibilité d'apporter des innovations au projet. Si l'étude du modèle économique est positive, pourquoi ne pas envisager la mise sur le marché du produit avec une rémunération à la clef ?!
