# Fitness Palace

Fitness Palace is a web application that offers its users a variety of options in terms of usage. One can register as a trainer or as a client. For a client, you can book a session with the available trainers as well as check on the available payment plans. It also has a reviews functionality where one is able to see and write reviews about the trainers.

# Technology Used

- Ruby
- Sinatra
- Sqlite3
- REST API

# Getting Started (Back-end)

# Prerequisites
For this project you need Sqlite3 installed, an IDE, Draw.io to make the table relationships and Postman to test your APIs.

# Environment Setup
- Before starting to work on the app, you need to form various table relationships that are in line with the number of models you have set. In this case, the one to many relationship was used among our tables.

- After model formulation, a proper folder structure is created with necessary files in them. Here is a list of the folder folder structure:
- `app/models`: Our Active Record models. Responsible for code that accesses and
  updates data in our database using classes that inherit from
  `ActiveRecord::Base`.
- `config`: Code in this folder is responsible for our environment setup, like
  requiring files/gems, and establishing a connection to the database.
- `db/migrate`: Our Active Record migrations. Responsible for creating and
  altering the structure of the database (making new tables, adding columns to
  existing tables, etc).
- `db/seeds.rb`: Lets us easily add sample data to the database.
- `spec`: Our RSpec tests.
- `Gemfile`: Lists all the gems our application depends on.
- `Rakefile`: Code for common tasks that we can easily run from the command
  line, like `rake console`.


- Run these commands to install the dependencies and start the server:

```console
$ bundle install
$ bundle exec rake server (will start the server on port 8000)
```

# Database creation and seeding of data

-To create database and seed data, run the following commands:
 ```console
$ bundle exec rake db:create_migration NAME=create_appointments
$ bundle exec rake db:create_migration NAME=create_contacts
$ bundle exec rake db:create_migration NAME=create_reviews
$ bundle exec rake db:create_migration NAME=create_trainers
$ bundle exec rake db:create_migration NAME=create_users
$ bundle exec rake db:migrate
$ rake db:seed
```

# Interaction with Front-end

The application interacts with its frontend via a RESTful API where it allows users to create, post and delete data via the methods POST, GET and DELETE.