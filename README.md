<h1 align="center">Travel Advisor 🛫</h1>

A `React and Rails` App designed as a rating traveling app that offers a large selection of destinations throughout the world.

***➡️ Link to [Demo](https://youtu.be/t04bmG8gYdw)***<br/>
***➡️ Link to [Live website](https://travel-advisor-app.herokuapp.com/)***<br/>

## Technologies

***Link to [Front End Repository](https://github.com/saimaar/TravelAdvisor)***<br />

**Back End:**
- Ruby [2.6.1]
- Rails [~> 6.0.2, >= 6.0.2.1] - MVC web framework used as an API
- Bcrypt [~> 3.1.7] - Encrypt and secure user passwords
- Rack-cors - Handles Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
- Jwt [~> 2.2] - Cryptographic signing
- PostgreSQL [>= 0.18, < 2.0] - Database
- Active Model Serializers - Serializing API routes to JSON




**Front End:** 
- React [16.12.0]
- React Router [^5.1.2] - Declarative Routing
- React Router Dom [^5.1.2] - Declarative Routing
- React TextArea AutoSize [^7.1.2] - Textarea component which automatically resizes textarea as content changes.
- Semantic UI [^0.88.2] - A UI component framework for theming websites
- CSS3 for customization

## Prerequisites
Before you begin, ensure you have installed the latest version of:

- Ruby
- Rails
- PostgreSQL
- React

## Installing

To launch the app you'll have to follow the following steps:

**Back End setup**
- Clone this repo and `cd` into it
- Run `bundle install` to install all required dependencies
- Ensure you have PostgreSQL up and running
- Run `rails db:create` to create the database locally
- Run `rails db:migrate` to create the tables in the database
- Run `rails db:seed` to create the seed data
- Run `rails s -p 4000` to run the server

**Front End setup**
- Clone this following repo here: [Front End Repository](https://github.com/saimaar/TravelAdvisor) and `cd` into it
- Run `npm install` to install all dependencies
- Run `npm start` to run the server
- Ensure it is running locally on `http://localhost:3000` to view it in the browser

## Features

Users can sign up or sign in. Upon Sign in users are taken to the home page and gain access to their profile and all other functionalities likes adding to bucketlist, rating a destination and deleting their profile. <br />

![login gif](./images/login.gif)<br />

User is able to see a list of destinations, search for a specific destination and click on them to be taken to the it's show page.<br />

![home page gif](./images/home-page.gif)<br />

Once on the destination show page the user see more information about the destination and the things to do there. The user can also, add the destination to their bucketlist to save for later. They can also leave a review about and/or delete it<br />

![item show page](./images/destination-show-page.gif)<br />

Once the destination is added to the bucketlist the user can see it on their own profile and delete it if wanted. The user can also see their amount of contributions to the website(reviews), the number of destinations in their bucketlist and delete their profile as well.<br />

![profile page](./images/profile-page.gif)<br />
