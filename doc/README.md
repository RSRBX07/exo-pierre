
## S1.1 : 09/01/2017

- Présentation du programme
- Ruby : présentation du langage, révision des environnements de travail
- Terminal : exécuter un programme en ruby, lancer l’irb
- Les chaînes de caractères
- Les tableaux
- Les entiers
- Git : setup, git init, git status, git add, git commit


## S1.2 : 10/01/2017

- les ranges
- méthode de classe vs d’instance
- classe d’un objet
- looping avec each
- branching avec if
- git : push, checkout

## S1.3 : 11/01/2017 (repositionnement dans la salle)

- la comparaison avec ==
- définir une méthode, sans argument, avec argument obligatoire et optionnel
- return et le retour implicite
- git : clone, pull, reset
- String#split
- Time class

## S1.4 : 12/01/2017

- la comparaison avec !=
- git : le déroulement d’une pull request (PR)
- Les hash : instanciation littérale, affection de valeurs aux clefs avec l'opérateur =>
- Les symbols et String#to_sym
- méthode récursive
- 42, la réponse à la grande question

## S1.5 : 13/01/2017 (Little cooperation )

- usage collaboratif d’un repo GitHub
- git branch et git checkout -b


## S2.1 : 16/01/2017


- la création de classes avec class
- les variables d’instances avec @identifier
- le chargement de contenu de fichier require
- la définition de méthodes de classe avec self
- les objets falsy : nil et false
- les opérateurs “de booléens” || (OR), && (AND)
- Array#empty? Fixnum#zero? String#empty?
- puts retourne l’objet nil

## S2.2 : 17/01/2017


- les méthodes privées avec private
- les accessors avec attr_reader et attr_writer + symbole avec l’identifier de la variable d’instance
- l’initialize
- initiation à RSpec : installation, initialisation du repo, paramétrage, description de notre classe avec RSpec:describe et de ses méthodes avec it qui prend en argument une chaîne de caractères descriptive de la fonctionnalité attendue + qui exécute le test à proprement parler. Dans ce bloc utilise - la methode expect qui prend comme argument l’objet testé, suivi de la méthode to ou not_to a laquelle on passe un matcher.
- expect(objet_teste).to(be_an Array)

## S2.3 18/01/2017


- révision des méthodes initialize et new
- super
- l'héritage des classes
- la notion de scope
- la notion de cascading scope et le processus de recherche des définitions des méthodes lors de leur appel
- Découverte de CircleCI
- Git : reutilisation de git checkout -b + nom_de_la_nouvelle_branche_qui_sera_cree_ET _sur_laquelle_on_se_checkout
- révision des bases de RSpec
- revision du mot clef _private_
- revision des d'instances methodes communes a tous les objets :
  + `Object#methods`
  + `Object#inspect`
e  + `Object#class`
- decouverte de la methode de toutes les instances de la classe `Class` : `Class#ancestors`

## S2.4 19/01/2017
u
- revision du fonctionnement de `super` et de `scope en cascade`
- découverte et oublie des variables de classe, explication de pourquoi il ne faut pas les utiliser (le partage et la persistance doivent etre confie a des outils dedies genre bdd) et de comment on peut faire autrement ET OUBLIE DE CETTE NOTION
- ecriture et lecture de fichiers
  - `File.open "<chemin_du_fichier>", "w" {|file| file.each_line {|line| puts line} }`
  - `__FILE__` chaine de caracteres representant le chemin du fichier où figure ce mot clef
  - `Dir.exist?` et `File.exist?`
- decouverte de Yaml, Object#to_yaml et YAML::load

## S2.5 20/01/2017
r
- dicovering Rails
- failling install Rails
- revison de l'heritage
- decouverte des constantes

## S3.1 23/01/2017 : Hello Rails

- Mise a jour des environnements pour disposer de Rails et ses commandes
- Presentation de Rails (Omakase et Convention Over Configuration)
- Presentation du concept MVC ![Shema de MVC](https://betterexplained.com/wp-content/uploads/rails/mvc-rails.png)
- Creation d'une application Rails avec `rails new`
- Creation d'un controller, ses routes, ses actions et vues vues associees avec `rails g controller`
  - dans un fichier template `.erb` (embeded ruby), usage des balises `<%= ruby_expression %>`
- Ajout d'un contenu dynamique dans notre vue : affichage de l'heure de chargement de la page.
- Creations de liens entre les pages harcodés puis avec le helper `link_to`
- aperçu de `render`
- usage de `rails g scaffold`

## S3.2 24/01/2017

- installation de 'RSpec Rails' mise a jour de spec de nos specs
- decouverte du `seeds.rb` utilise avec `rails db:seed`
- reprise le scaffold Game pour faire afficher des resultats de loto
- mise en place de twitter bootsrap

## S3.3 25/01/2017

- decouverte des validations des models rails avec la methode des classes controller `validates`
- la difference entre les instances de models `changed?` et `persisted?`, ainsi que l'usage differencie de `save` et `save!`
- decouverte des associations entre modeles avec `belongs_to` et `has_many` avec l'option `
- decouverte de la recuperation d'instances de models en bdd avec `find`, `last`, `first`, `all`
- des methodes pour creer nos migration : `add_column`, `create_table`
- revison du seeding et decouverte de la conservation du dernier index meme apres `destroy_all`

## S3.4 26/01/2017

- decouverte du router, et comment un objet `params` est cree par le router puis transmis au controller. dans le controller on a pu ainsi faire `params[:id]`. Pour cela, il faut disposer dans les routes d'une route avec `courses/show/:id/`
- la methode des controllers `redirect_to`
- decouverte de la notion de racine du site : indiquee dans le fichier `routes.rb` avec `root`.
- on a presente rapidement coffeescript et choisi de le desactiver puor notre application.
- on a decouvert la notion de _cache_ avec divers exemples : le cache des navigateurs, des resolutions DNS, le cache des proxy... et des caches specifiques a nos environnements de developpement et de production, qui peuvent generer des erreurs par manque de dépreciation de cache.
- decouverte du repertoire `/app/assets/`
- les generateurs de controlleurs et de migrations
- catching d'erreurs en Ruby avec la syntaxe :

```ruby
begin
  # en admettant qu'il n'existe pas de cours dont l'id soit 42
  Course.find 42
rescue
  redirect_to '/courses/index/', notice: "Le cours 42 n'existe pas"
end
```

## S3.5 27/01/2017

- validations des modeles avec `validates`
- Les creations en chaine d'objets qui `belongs_to` d'autres.
- les generateurs de modeles, revision des migrations
- nouvelles associations : `has_one`, `belongs_to :x, through: :y`
- les ActiveRecord hooks `before_create` et toute la clique.
