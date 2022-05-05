# DOG SITTING APP

This README would normally document whatever steps are necessary to get the
application up and running....

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)  
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) 

* Configuration : Ruby version 2.7.4, Rails version.5.2.7.1

- Bundle install
- to implement the database:  
`rails db:reset`  
=> It is gonna drop and recreate the table, and launch the seed file. Thanks to the 'Faker' gem file.

## Pinciples

* A dogsitter belongs to a city
* A dog belongs to a city
* A stroll belongs to a dogsitter
* A dogsitter has many dogs per stroll
* A dog has many strolls

## Features to be implemented

* A dog has many dogsitters
