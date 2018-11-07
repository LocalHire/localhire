# README
## LINKS:
### A link (URL) to published app:
https://gentle-mountain-97851.herokuapp.com/


### A link to GitHub repository:
(Ensure the repo is accessible by your educators)
https://github.com/LocalHire/localhireapp


## PROJECT DESCRIPTION
### Problem definition / purpose:
In Australia, there is an inclination toward buying consumer goods even when those goods are not necessarily required.  It is this reason that many households are over-stocked with under-utilised goods.
Why not use these goods to generate money from products that you have but hardly us?!

Be a lender because you have products sitting and collecting dust.  Or be a borrower because you cannot afford to buy something, or because it's too big to store at your house. Also know that you are doing good for the environment by sharing products and reducing the over-manufacturing of consumer goods.


### Functionality / features:
-Local Hire allows users to search for a product within proximity of their home thanks to geo-location capabilities.
-Multiple images can be loaded up for each product.
-Products can be rented out by day, week or month as chosen and locked by the lender. A duration slider allows user to see the borrowing length limitations set on the product.
-Enclosed in the footer is a contact form which allows users to interact with LocalHire at any time they experience an issue.
-Messaging abilities between borrower and lender.


-Devise gem provides sign in/sign out capability to allow creation of user accounts.
-Pundit authorization to ensure private accounts remain private from general browsing.
-Stripe API payment system to allow lenders to safely and securely receive payment from borrowers.


### Website screenshots: 



### Tech stack (e.g. html, css, deployment platform, etc):
-Rails framework
-Ruby
-HTML view
-CSS styling
-Heroku deployment
-Amazon S3 server


### How to setup, configure & use app:
1. Visit the URL to visit published app (see beginning of document) and register as a user. 
2. Post an item (with uploaded image) that you would like to loan out to others.
3. Browse other items available for loan, using maps to find items within a distance you feel comfortable travelling to.


# DESIGN DOCUMENTATION
### Design process:
FIGMA
1. Create wireframes in order to assist with the build of models
2. Create user stories
3. Outline models and identify primary and foreign keys

DB DESIGNER
Create an ERD that will provide visual representation of how our models will be built, including identification of primary keys and foreign keys.

PINTEREST
As we felt that the nature of this application lends itself to an eco friendly and community feel, we looked for inspiration from eco businesses and the feeling of being outdoors.

![Pinterest](/docs/images/pinterest.png)

COLOUR SELECTION
-We found a page on Pinterest which resonated with all team members.  It was made of vibrant greens, yellows, whites and browns.
-After researching the psychology of colour, we chose to use green as the dominant colour on our site.  Green is the color of balance and growth. It can mean both self-reliance as a positive and possessiveness as a negative, among many other meanings.  We felt that as a product sharing site, self-reliance and the sharing possessions, green would help to convey this community feel.
-As we are trying to convey inclusiveness and sharing to help each other and the environment, we chose white as a complementary colour.  Whiteis color at its most complete and pure, the color of perfection. The color meaning of white is purity, innocence, wholeness and completion.

-We had considered brown, but decided against it due to its seriousness and relation to material wealth...which is not something we are trying to convey here.

![Colour Selection](/docs/images/selected_colours.png)


### User stories:
-Homepage 
*As a user, I would like various search filters so that I can easily narrow down and find what I am looking for.*

-Search Results Page
*As a user, I want to be able to sort the results by price to find the quality vs. value that I am looking for.*

-Register/Login Page
*As a user I want to be able to sign into my account securely so I can access additional functions on the site.*

-Add Items Page
*As a user, I want to quickly and easily load up new items so I can start making money.*

-Item Show Page
*As a user, I only want to see the most important information I need to loan or borrow an item.*

-Item Edit Page
*As a user, I need to be able to quickly edit my listing if the situation or information changes.*

-Thank You Page
*As a user I want to know that my booking has gone through.*

-Footer
*As a user I want to be able to find out information about the Local Hire business or contact them if I need assistance.*

-Desktop Dashboard
*As a user, I want a quick-look page to see the items I have for loan or am borrowing.*



### A workflow diagram of the user journey/s:


### Wireframes:


### Database Entity Relationship Diagrams:


# PLANNING PROCESS
### Project plan & timeline:


### Screenshots of Trello board(s):
![Wed 31 Oct](/docs/images/Git_Trello_wed_31.png)
![Thurs 1 Nov](/docs/images/Git_Trello_Thur_1.png)
![Fri 2 Nov](/docs/images/Git_Trello_Fri_2.png)
![Mon 5 Nov](/docs/images/Git_Trello_mon_5.png)

### Screenshots of team discussions:
![Mon 29 Oct](/docs/images/Slack_mon_29.png)
![Tue 30 Oct](/docs/images/Slack_tue_30.png)
![Wed 31 Oct](/docs/images/Slack_wed_31.png)
![Thurs 1 Nov](/docs/images/Slack_Thur_1.png)
![Fri 2 Nov](/docs/images/Slack_Fri_2.png)
![Mon 5 Nov](/docs/images/Slack_mon_5.png)


# SHORT ANSWER QUESTIONS:
### 1. What is the need (i.e. challenge) that you will be addressing in your project?
This app will be the first product loaning platform in Australia to offer consumers a marketplace where they can:
a) profit from the under-utilised products that they own; and 
b) borrow under-utlised products that they are unable to afford and/or store.


### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
Worldwide consumerism is taking its toll on the environment with little to no recycling or repairing of goods, particularly in first world countries.  Products are purchased that are often not required or used. Too often, these products are disposed of into landfill in great condition,or left to collect dust rather than being used.

Through this loan app, we encourage people to purchase less and share more.  By loaning out their products, this app enables consumers to profit from the goods that they have purchased but rarely use.  Driven by profit, we anticipate consumers will maintain their products to a loanable standard.

As a result users will have the secondary benefit of knowing they are doing good for the environment by sharing products and reducing the over-manufacturing of consumer goods.


### 3. Describe the project will you be conducting and how your app will address the needs.
This app will be the first product loaning platform in Australia to offer consumers a marketplace where they can:
a) profit from the under-utilised products that they own; and 
b) borrow under-utlised products that they are unable to afford and/or store.


### 4. Describe the network infrastructure the app may be based on.



### 5. Identify and describe the software to be used in your app.
VS CODE
Software used to build the code.

RUBY/JAVASCRIPT/HTML/CSS
Languages used to build this application.

BOOTSTRAP
Styling language used to create responsive and styles on the website.

RUBY ON RAILS
Framework that the code is placed in. It utilises the MVC structure.

GEMS
-list gems from gemfile

GEOCODER
Location API to enhance the usability and search function of the application.

GIT
As a team, we used GitHub to omtimze our development workflow.  Acting like a cloud for our code, we created a project team to manage our "issues" (to-do list) whilst keeping track of the iterations to our code.


### 6. Identify the database to be used in your app and provide a justification for your choice.
We have chosen to implement with Postgresql, an object-relational database management system with an emphasis on extensibility and standards compliance.
It is a database management system that we have learnt about in class that is renowned for managing complex designs, is great for data integrity and also has a strong community of users. 

While Sqlite is very powerful, Postgresql was chosen over Sqlite as it is the most advanced database management system.  Due to the powerful underlying technology, Postgres is extremely capable of handling many tasks very efficiently.  PostgreSQL is highly programmable, with custom procedures that are called "stored procedures". These functions can be created to simplify the execution of repeated, complex and often required database operations.


### 7. Identify and describe the production database setup (i.e. postgres instance).
When running a Rails app configured for Postgresql, we configured the database which Rails talked to, which was the .yml file. 
The database.yml file is used by Rails to connect to the appropriate database for the current Rails environment.

Models are Ruby classes. They talk to the database, store and validate data, perform the business logic and otherwise do the heavy lifting.
In this case, the model retrieves the items and users from the database, so that they two can connect and initiate lending and borrowing.

(Here I would talk about the specifics of postgres, how it connects to your models, how it sits in overall MVC)


### 8. Describe the architecture of your app.
We have employed Ruby on Rails to create this app.
Within the rails framework is the MVC pattern which is essentially the architecture of Ruby on Rails.
It separates an application into the following components:

MODELS for handling the data and business logic.
- In this instance, we have X models.
  
CONTROLLERS for handling the user interface and application.  
- We have an items controller...
  

VIEWS for handling graphical user interface objects and presentation
- We have employed two partials (the footer and the navbar), both of which have been passed in on the application.html.erb to ensure they are applied to each page of the application.


### 9. Explain the different high-level components (abstractions) in your app.

items - 

users -

lenders -

bookings - 


### 10. Detail any third party services that your app will use.
HEROKU
- Essentially Heroku is used for hosting - i.e. server and delivery
- This provides us with instant deployment via Git push. So the final build of our application is performed by Heroku, using the code created in VS Code

AMAZON AWS S3
- We have implemented Amazon AWS S3 to store our images.  We have employed this serice given it has a simple web services interface that you can use to store and retrieve any amount of data, at any time, from anywhere on the web. 

MAILGUN
- As with most web-based marketplaces, our application provides a proof-of-loan in the form of an email confirmation.  Built in to the application is the Mailgun API, which is an email automation service that offers a cloud-based email service for sending, receiving and tracking email sent through our website.

GOOGLE MAPS
- As an advanced search option, the Google Maps API has been implemented into this web application. This will allow users to search for a product to loan that is within a short distance (i.e. 5km) of where they live, rather than having to travel far or have the product sent to them.
- This will also allow us to create a searchable map, display live data synching with data and even plan routes to pick up an item.

STRIPE
- As with all online marketplaces, a payment system needs to be implemented to allow sellers (or lenders) receive payments in exchange for their products and services. Stripe has been implemented on this website to do just that.The Stripe software allows individuals and businesses to receive payments over the Internet providing the technical, fraud prevention, and banking infrastructure required to operate on-line payment systems.
  
FIGMA
- Figma is an online prototyping tool that allowed us to create the wireframes for the setup and design of our application.  It is a browser-based design program that allowed us to collaborate as a team to create this application.

GITHUB
- As a team, we used GitHub to omtimze our development workflow.  Acting like a cloud for our code, we created a project team to manage our "issues" (to-do list) whilst keeping track of the iterations to our code.



### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
AIRBNB
Similarly to airbnb, our app allows you to:
1) search 
2) check for availability 
3) then rent the item/place out for a chosen time and duration


### 12. Discuss the database relations to be implemented.

This is more regarding why we need a join table in certain instances in your app, why we need a foreign keys in different tables, think about the stuff we did when we first started sql


### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
sThink about rails active record associations, has_many, has_one, belongs_to 


### 14. Provide your database schema design.

this will just be a schema dump screen shot

### 15. Provide user stories for your App.
-Homepage 
*As a user, I would like various search filters so that I can easily narrow down and find what I am looking for.*

-Search Results Page
*As a user, I want to be able to sort the results by price to find the quality vs. value that I am looking for.*

-Register/Login Page
*As a user I want to be able to sign into my account securely so I can access additional functions on the site.*

-Add Items Page
*As a user, I want to quickly and easily load up new items so I can start making money.*

-Item Show Page
*As a user, I only want to see the most important information I need to loan or borrow an item.*

-Item Edit Page
*As a user, I need to be able to quickly edit my listing if the situation or information changes.*

-Thank You Page
*As a user I want to know that my booking has gone through.*

-Footer
*As a user I want to be able to find out information about the Local Hire business or contact them if I need assistance.*

-Desktop Dashboard
*As a user, I want a quick-look page to see the items I have for loan or am borrowing.*


### 16. Provide wireframes for your App.


### 17. Describe the way tasks are allocated and tracked in your project.
We chose to set up a repository project board in GitHub.
Within this project board we were able to push and pull from a single respository as well as create issues (to-do list), which allowed us to create customized workflows for each team member. As each issue was started and completed, we were able to see in real time the progression of the project.


### 18. Discuss how agile methodology is being implemented in your project.
Initially our project was planned out to follow the waterfall methodology, but given the timeline and scope of work involved in that plan, the plan was adjusted for an agile approach.

After the initiation phase of planning and basic designing, the project was deployed using Heroku.
Further design work and ongoing debugging was undertaken in iterations, before revisions deployed.


### 19. Provide an overview and description of your source control process.

what we should have done:
- pull requests
- submitted pull request
- then reviewed
- then merged with master branch

what we did
- pulled master
- created branch on local
- made sure worked - most of hte time
- then commited and pushed to master branch
- others then pulled down



### 20. Provide an overview and description of your testing process.
1. As a team, each team member used the website to ensure all features work.
2. We employed some fellow students to test the functionality of the site.
3. 

we do unit testing - in our TDD test driven development.  this iw where we assume that it will work - actually check this i might have it wrong

what we should do:
- implement a testing framework like capybara or rspec which forces us to run tests on each new feature we develop


### 21. Discuss and analyse requirements related to information system security.

mention pundit?  actually no - authorisation - so put this in the gemfile area

this is the ENV stuff - along with gitignore for the development

for production - this is storing the various keys in heroku - settings - perhaps include a screen shot with the keys blurred out?

it is important to not leave credentials in the code when pushing the development environment to github

also important to insert keys in heroku console



### 22. Discuss methods you will use to protect information and data.
STRIPE
The Stripe payment system has been implemented in this application which will assist in safely conducting online payment transactions.
On behalf of our marketplace, Stripe collects and stores names, emails, phone numbers as well as credit card numbers and CVC's if the 'remember me' option is selected.
In addition to the collection of personal data, Stripe does offer fraud monitoring, detection and protection to users.
Stripe also agree that collected personal data is compliant with applicable law.

GEO LOCATION DATA
With the geolocation data, the application will not display the address of a lender and the corrosponding item to the general public.  This is to ensure the privacy of the item owner and to protect them from theft.  Instead, the suburb of the item will be displayed so that borrowers can see the general location of the item they would like to borrow.

Heroku automatically comes with an SSL certificate when uploading - this is evident through the https at the start of the domain


### 23. Research what your legal obligations are in relation to handling user data.
GEO LOCATION INFORMATION
When using certain features of this app, we may collect information about the precise or approximate location as determined through data such as IP address or mobile device’s GPS to offer an improved user experience. Most mobile devices allow you to control or disable the use of location services for applications in the device’s settings menu. 

COOKIES 
We use cookies on this web application.
A cookie is a small data file that is transferred to your device (e.g. your phone or your computer). 
For example, a cookie could allow us to recognize your browser, while another could store your preferences. There are two types of cookies used on this application: (1) “session cookies” and (2) “persistent cookies.” Session cookies normally expire when you close your browser, while persistent cookies remain on your device after you close your browser, and can be used again the next time you access the site.

We use, store, and process information, including personal information, about you to provide, understand, improve, and develop the web aplication, create and maintain a trusted and safer environment and comply with our legal obligations.
To help facilitate bookings or other interactions between Members, we may need to share certain information, including personal information, with other Members, as it is necessary for the adequate performance of the contract between two parties.

This web application may disclose your information, including personal information, to courts, law enforcement or governmental authorities, or authorized third parties, if and to the extent we are required or permitted to do so by law or if such disclosure is reasonably necessary.


