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

### User Instructions for Shopperoo App
* [Open site](https://blooming-lowlands-28068.herokuapp.com/)
* From the landing page navigate to join or login links

#### 1. Home
* ![Home page IMG]( "")
* from any page click the 'home' link in the nav bar.

#### 2. Sign up 
* ![sign up IMG]( "")
* This will take you back to the landing page.

#### 3. Log in
* ![log in IMG]( "")
* This will take you back to the landing page.

#### 4. Purchasing items (As a Purchaser) - Spending Money
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

#### 5. Completing an ordering job (As a Courier) - Earning Money
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
### **Project plan & timeline (A & B)**

### **A. Project plan:**

**Start date** of project: 29.04.2019

**Sprint 1 (29.4.2019):** Establishing minimum viable product (MVP), inital wireframes and ERD.

**Sprint 2 (30.4.2019 - 2.5.2019):** Scaffold the Rails application, with PostgreSQL database - work on customising, routes, controllers, models and views

**Sprint 3 (3.5.2019 - 7.5.2019):** Work on features: User authorisation (using Devise gem), Cash payment (using Stripe gem), active storage of images (using AWS S3)

**Sprint 4 (8.5.2019):** Work on Design aspects of the web App, installing Bootstrap gem

**Sprint 5 (9.5.2019 - 12.5.2019):** Automated testing/Debugging and Deployment on Heroku, and Documentation and Presentation compilation 

**End date** of project: 12.05.2019

### **B. Timeline** (See above for greater detail on the different tasks within the sprints)

**1. DESIGN** (29.4.2019) - Initial wireframes and ERD and on 8.5.2019 on more high fidelity aesthetics for web app

**2. DEVELOPMENT** (30.4.2019 - 9.5.2019) - Creating the app on Ruby on Rails, installing all the gems and creating all the features, such as creating active storage on Amazon S3 and creating a Stripe account to use on the App.

**3. DEPLOYMENT** (9.5.2019 - 12.5.2019) - Using Heroku to deploy the web App.

**3. TESTING** (9.5.2019 - 12.5.2019) - Using byebug (gem) is used throughout the development of the app, however the automated testing Cypress (gem) to test the different user inputs for the web app, is done during 9.5.2019 to 12.5.2019.

**5. DOCUMENTATION** (29.4.2019 - 12.5.2019) - Collecting trello screenshots and working on different aspects of the documentation happens throughout the entire duration of the project, however finalising and compiling will mainly be covered in the last project sprint (Sprint 5 - 9.5.2019 to 12.5.2019)

### **Screenshots of Trello board(s)**
[Insert images]

## Answers to the Short Answer questions (Section 2.2):

**1. What is the need (i.e. challenge) that you will be addressing in your project?**

What is the need (i.e. challenge – working rails app what we are making) that you will be addressing in your project? What is it – Rails project that connects people to each other – in a 2 sided market place

Often people do not have time to shop at boutique and small stores as their business hours will clash with a busy work schedule. By linking these people with willing couriers to do the shopping for small fee both parties can enjoy the benefits of the app.

**2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?**

(problem you’re trying to solve) by building this particular marketplace App? (this is a 2 sided market place – solution to the problem)Why is it a problem that needs solving?

Solving the issue of people unable to access shops which are only open during times they are at work during the weekday, and shops that do not have an online presence. It would also solve the issue of waiting for delivery when purchasing items online (e.g. instead of waiting 5-20 day you can get items delivered within 24-48 hrs of purchase, depending on timing of order/listing). This is a problem that needs solving as there are busy people who do not have personal assistants to help them with purchases i.e. Have a wedding on the weekend and I wanted to pick up a formal dress from a boutique dress shop that does not have online shopping and only open from 10am-6pm Mon-Fri. This problem needs solving as Australia shops only operate one hour more than the normal 9-5 job business hours, so there is a very short window for busy corporate people/workers to fit in shopping for items during the weekday.

**3. Describe the project will you be conducting and how. your App will address the needs.**

The features in the app that they can use (cart, checkout etc.)

Describe the project The actual features in the app – cart and check out )(what the project is about, how you fix the issue) will you be conducting and how. your App will address the needs. More detail about q1 - 

**4. Describe the network infrastructure the App may be based on.**

How people are connecting to it – heorku – internet – https -over the internet and web server that’s running. Connecting to db and how it does it
We want to build an app similar in application to UberEats where there is a selection of an item and a delivery time if within the store hours.
Thus the network infrastructure the App may be based on would be a website app that is built using Ruby on Rails and deployed on Heroku. Stretch goals would implement Geoloction APIs (for store locations and tracking deliveries).

**5. Identify and describe the software to be used in your App.**

Rails:
Faker:
Devise:
Stripe:
Ultrahook
cypress


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

**6. Identify the database to be used in your App and provide a justification for your choice.**

PostgreSQL database will be used in our App as it is an open-source relational database management system emphasizing extensibility and standards compliance. It can handle workloads ranging from single-machine applications to Web services or data warehousing with many concurrent users. PostgreSQL is ACID-compliant and transactional. It offers support for RDBMS features such as updatable and materialized views, triggers, foreign keys; functions and stored procedures. [ref.wiki]

**7. Identify and describe the production database setup (i.e. postgres instance).**

running postgres - how you setup the database - onto heroko and seed into db

**8. Describe the architecture of your App.**

Users can be both a purchaser and/or a courier/deliverer, tables are made for the orders/listings which are linked to the shops and transactions are made through a 3rd party Web app Stripe. 
MVC architecture – Ruby on rails – using postgresql – building blocks of the app - heroku


**9. Explain the different high-level components (abstractions) in your App.**
how the app works in steps information you're entering into the models 

making a listing

making payment

what you do with the infromation you get from that and do you update a table 

**10. Detail any third party services that your App will use.**
Stripe - Its software allows individuals and businesses to make and receive payments over the Internet. Stripe provides the technical, fraud prevention, and banking infrastructure required to operate online payment systems. Wikipedia

**11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**

**12. Discuss the database relations to be implemented.**

One to one
One to many
Many to many

**13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.**

USER: HAS ONE:
•	Cart
•	Contact {Polymorphic}
•	Accepts nested attributes
HAS MANY:
•	Listings
•	Deliveries
•	Pictures {attached}
Being a user is a requirement for most features within the app. And thus has many connections and associations. This ID is way to link
SHOP: HAS ONE:
•	Contact {Polymorphic}
HAS MANY:
•	Listings 
•	Products 
•	Pictures {attached}
PRODUCTS: BELONGS TO:
•	shop
HAS MANY:
•	Listings product {join table}
•	Listings through listings product
•	Cart product {join table}
•	Carts through cart product
•	Pictures {attached}
ORDER: BELONGS TO: 
•	Listing
LISTINGS_PRODUCT: BELONGS TO:
•	Listings
•	Products
LISTING: BELONGS TO:
•	User
•	Shop
•	Oder
•	Delivery
	HAS MANY:
•	Listings product {join table}
•	Products through listings product
DELIVERY: BELONGS TO:
•	User
•	Lisiting 
CART: HAS ONE:
•	Shop
•	User {Polymorphic}
HAS MANY:
•	Cart product {join table}
•	Products


**14. Provide your database schema design.**

**15. Provide User stories for your App.**

**16. Provide Wireframes for your App.**

**17. Describe the way tasks are allocated and tracked in your project.**

Tasks are identified by breaking problems down as a team and posting each individual part on the backlog of the team trello board. As team members complete work and move the associated cards from the to-do list, they move more work to from the backlog  onto to-do and assign it to themselves. 

**18. Discuss how Agile methodology is being implemented in your project.**

Road map – 
Every day we do a sprint
Trello board has been set up with Backlog/to do, Development, Production, Complete. Agile methodology is being implemented in the project by finishing tasks and then making new tasks as required for the next sprints. 

**19. Provide an overview and description of your Source control process.**

During the development process each task was worked and tested on a dedicated branch. Once the feature that was being developed on a branch satisfied tests and was free of errors, remote master was then merged into the local working branch and a merge request could be generated back into remote master. This allows for conflict free coding, separation of tasks and the ability to deal with merge conflicts before touching the master.

**20. Provide an overview and description of your Testing process.**

Using byebug, and edge cases to test the App currently
If there are bugs put into trello
Automated testing Cypress

**21. Discuss and analyse requirements related to information system security.**

**22. Discuss methods you will use to protect information and data.**

**23. Research what your legal obligations are in relation to handling user data.**

“The NDB scheme requires entities to notify affected individuals and the Australian Information Commissioner (Commissioner), in the event of an ‘eligible data breach’.”
This applies to all entities that hold personal information. This action is required for any breach that could cause serious harm to any individual who the information is applicable to.
