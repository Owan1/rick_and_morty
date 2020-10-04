# README

This Rails project was made as an excercise. It gets information from Rick and Morty API https://rickandmortyapi.com/api/. In this first version the project runs a rake task every 12 hours to update characters and episodes information. There is just one view to show all the characters.

Things you may want to know:

* Requirements
    - Ruby Version: 2.7.1p83
    - Rails Version: >= 6.0.0
    - MySQL for production

* Added Gems
    - **Whenever Gem** is going to help us setting up Cron Tasks - For Importing Rick & Morty API Data.
    - **Pagy Gem** provides an easy way to paginate.
    - **Rest-Client Gem** to call REST APIs.
    - **Bootstrap Gem** and **JQuery Rails Gem** because we are using Bootstrap in this project.
    - **Sqlite3 Gem** Sqlite is the Database of choice for Developing and Testing Environments 
    - **MySQL2 Gem** MySQL is the Database of choice for Production Environment.

* Configuration
    - This project is prepared with 3 environments. Testing and Development are using Sqlite so they doesn't need much configuration to start running. Production environment is using Mysql database.

* Database creation and initialization
    - Before runing the project for the first time it is necessary to run the following command to create the database: ***rake db:create***.
    - Once the database is created run: ***rake db:migrate***

    To configure production password you must add it as a ENV Param. **export RICK_AND_MORTY_DATABASE_PASSWORD="password"**.

* How to run the test suite
    The Project uses Rail Testing method for the test suite. Controller test will fail since we redirected all routes to root.
    - To run Model Unit Test execute the following command: ***rake test:models***

    If you want to run all the tests you will have to edit the routes.rb to stop redirecting to root. Because the Characters controller is able to manage Characters but the CRUD option is disabled from the routes file.
    - To run all test use: ***rake test***

* Services (job queues, cache servers, search engines, etc.)
    - There is a Rake Task for Importing Rick And Morty Characters from the API. Just run the following command to add the task into your crontab: ***whenever --update-crontab***.
    - If you want to run the task use: ***rake import_rick_morty_api:import_characters***.

* Deployment instructions
    1. Git Clone the project. ***$ git clone https://github.com/Owan1/rick_and_morty.git***
    2. Run Bundle. ***$ bundle***
    3. Create database ***rake db:create***
    4. Run Migrations ***rake db:migrate***
    5. Add Rake Task to Crontab. ***whenever --update-crontab***
    6. Run the App. ***rails s***

    If there are not any characters in the database run ***rake import_rick_morty_api:import_characters***.