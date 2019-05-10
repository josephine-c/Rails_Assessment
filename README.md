# README

## [ Project - github link](https://github.com/josephine-c/Rails_Assessment)
## [Published App - Heroku](https://blooming-lowlands-28068.herokuapp.com/)

### Description: 
* The Shopperoo app resolves the problem of shopping for items which users are usually inaccessible to for reasons such as inconvenient store hours (same as user’s work hours) or an absent online store/website (i.e. small business boutique stores). Shopperoo will allow any user to purchase items and any user to be able to forfill the order (i.e. task of buying listed items and delivering them to the purchaser)

### Features:
* Autherization
    - Sign up
    - Log-in
 * Shops
    - Browse shops
    - Browse items/products associated with shops
 * Cart
    - Add items to cart
    - Remove items from cart
    - Checkout
 * Shopping lists
    - Create Lists/jobs
    - View open shoppings lists(Yet to be accpeted)
    - Accept Lists/jobs
    - Mark job status as delivered
* Navigation
    - Links
    - Buttons
    - Nav bar
* Payment
    - Stripe redirection
    - Third party payment handling.

### Screenshots:

## Tech-stack
* Ruby on rails
* Puma
* HTML/CSS
    - Bootstrap
* Slack
* Goggle Docs
* GitHub
* GitKraken
* Trello
* Heroku
* DBeaver
* Cypress
* Ultrahook
* Stripe

* Gems
    - Devise 
    - Cypress
    - Byebug
    - Bootstrap
    - Stripe


### Ruby version: 
* ruby 2.6.0p0

### System dependencies: 
* devise
* aws-sdk-s3 ~> 1.36
* faker ~> 1.9
* stripe ~> 4.16
* ultrahook ~> 0.1.5

* For other dependencies please check the gemfile 


### Deployment instructions

    $ gem install bundler
    $ bundle install

### Database creation and initialization

    $ heroku run bundle install
    $ heroku run rails db:create
    $ heroku run rails db:migrate
    $ heroku run rails db:seed

### App use instructions
* [Open site](https://blooming-lowlands-28068.herokuapp.com/)
* From the landing page navigate to join or login links

#### Home
* ![Home page IMG]( "")
* from any page click the 'home' link in the nav bar.

##### Sign up 
* ![sign up IMG]( "")
* This will take you back to the landing page.

##### Log in
* ![log in IMG]( "")
* This will take you back to the landing page.

##### Purchasing items (As a Purchaser) - Spending Money
* From the 'home' page
* Click on 'shops' button in nav bar
* Find your desired shop within the shops page.
* Click on the 'show products' button or the 'shop name' link
* Add desired products to cart.
* When finished selecting items click on 'cart' link.
* If User is happy with selections 
* Click 'checkout' button
* Proceed with stripe checkout.
* After payment the user will be redirected to the payment success page.
* Log out when you have finished using the web App

##### Completing an ordering job (As a Courier) - Earning Money
* From the 'home' page
* Click on 'Jobs Available' in the nav bar
* Click on the Listing Number or 'Show' button to see details of the listing
* Once happy to take the listing job - click into the listing and click on the 'Accept Job' button at the top of the page
* This will then redirect you to your homepage and the listing will display under your 'Jobs' list
* Once a job has been completed click on the 'delivered' button to confirm your job has been completed for your job payment to be processed
* This job will be removed from your homepage and you are set to chose your next job listing.
* Log out when you have finished using the web App

## Design documentation including,
### Design process 
* (mood board – pintrest, 
* google fonts, 
* color scheme) [Insert images]
* logo

### User stories:
* As Josephine, I want to be able to get outfit accessories from a cute boutique shop on the other side of town (while I’m busy at work) delivered to me so that I can look my best when delivering my work presentation.
* As Bryce, I want to make money in my spare time performing quick shopping trips, so that I have extra money to spend on the weekend. 
* As Mandy, I want to become more accessible to customers so I can generate more revenue.

### A workflow diagram of the user journey/s
[MAKE & INSERT IMAGE]

### Wireframes 
[BRYCE INSERT]

### Database Entity Relationship Diagrams (ERD)
[INSERT ERD Jo created]

## Details of planning process 
### Project plan & timeline

**Project plan:**

**Start date** of project: 29.04.2019

**Sprint 1 - 29.5.2019:** Establishing minimum viable product (MVP), inital wireframes and ERD.

**Sprint 2 - 30.5.2019 - :** Scaffold the Rails application, with PostgreSQL database - work on customising, routes, controllers, models and views

**Sprint 3:** Work on features: User authorisation (using Devise gem), Cash payment (using Stripe gem), active storage of images (using AWS S3)

**Sprint 4:** Work on Design aspects of the web App

**Sprint 5:** Automated testing/Debugging and Deployment on Heroku

**End date** of project: 12.05.2019

### Screenshots of Trello board(s) 
[Insert images]







## Questions:
1. What is the need (i.e. challenge) that you will be addressing in your project?

* Often people do not have time to shop at boutique and small stores as their business hours will clash with a busy work schedule. By linking these people with willing couriers to do the shopping for small fee both parties can enjoy the benefits of the app.

2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

3. Describe the project will you be conducting and how. your App will address the needs.

4. Describe the network infrastructure the App may be based on.

5. Identify and describe the software to be used in your App.


#### Ruby-On-Rails
* Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages.

#### Faker - GEM
* [Faker - github link.](https://github.com/stympy/faker)
* [Owner - github link.](https://github.com/stympy)
* A library for generating fake data such as names, addresses, and phone numbers.
* Used to populate database for testing.

#### Devise - GEM
* [Devise - github link.](https://github.com/plataformatec/devise)
* [Owner - github link.](https://github.com/plataformatec)
* Devise is a flexible authentication solution for Rails based on Warden. It:
* Is Rack based;
* Is a complete MVC solution based on Rails engines;
* Allows you to have multiple models signed in at the same time;
* Is based on a modularity concept: use only what you really need.

#### 
*
6. Identify the database to be used in your App and provide a justification for your choice.

7. Identify and describe the production database setup (i.e. postgres instance).

8. Describe the architecture of your App.

9. Explain the different high-level components (abstractions) in your App.

10. Detail any third party services that your App will use.

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

12. Discuss the database relations to be implemented.

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

14. Provide your database schema design.

15. Provide User stories for your App.

16. Provide Wireframes for your App.

17. Describe the way tasks are allocated and tracked in your project.

18. Discuss how Agile methodology is being implemented in your project.

19. Provide an overview and description of your Source control process.

20. Provide an overview and description of your Testing process.

21. Discuss and analyse requirements related to information system security.

22. Discuss methods you will use to protect information and data.

23. Research what your legal obligations are in relation to handling user data.




