# Instagram Challenge
=====================

### Makers Academy Week 9 Weekend Challenge
-------------------------------------------

First solo project using Ruby on Rails to build a photo sharing 'Instagram' clone. I created Snapshot!

### Heroku deployment
---------------------

See this on the web at [https://snapshotandy.herokuapp.com/] (https://snapshotandy.herokuapp.com/)

### Technologies Used
---------------------

- Ruby on Rails
- Devise for user model and authentication
- Rspec and Capybara for testing
- HAML for HTML
- S3 AWS Web Storage for Images
- Paperclip for file upload

![Snapshot! Screenshot](https://github.com/andygnewman/snapshots/blob/master/Snapshot%20Screenshot.png)

### To run the programme locally
--------------------------------

Clone this repository
Initiate the database `$ bin/rake db migrate`
From the command line `$ rails server` then in the browser open [http://localhost:3000] (http://localhost:3000)

### To run the tests
--------------------

From the command line `$ rspec`

### What I learnt from undertaking this project
----------------------------------------------

- The power of the Rails framework, especially for creating applications based on relationship models, for example in this case a user has Snapshots!, can leave comments on other users Snapshots! and can 'dig' (or like) Snapshots!
- However it needs a good understanding of how it is doing it - relational database / Active Record and routings (Model View Controller), so was glad to have undertaken projects in Sinatra / Postgres (DataMapper) to give a good grounding.
- Getting AWS S3 working for storage of images.

### Things I would do to improve this project
---------------------------------------------

- Implement a federated log-in eg. through Twitter using Omniauth.

## Challenge Brief from Makers Academy
===================================

### Instagram Challenge
-----------------------

Instructions
-------
* Challenge time: Friday, the entire day + the weekend if you need it
* Feel free to use google, your notes, books, etc but work on your own
* You must submit a pull request to this repo with your challenge solution by 9am Monday morning

Task
-----

Build Instagram: Simple huh!

Your challenge is to build Instagram using Rails. You'll need users who can post pictures, write comments on pictures and like a picture. It will need to look like the instagrams website or better. 

Breakdown of models:
- User
- Post
- Comment/description
- Like
- Further styling

