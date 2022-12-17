# BAZZAR - Recipe creating application

# Technology

#### Ruby version - 2.6.1

#### Database creation - using Postgresql (version 12.12) for the data base.

#### Install Postgresql in the terminal with -> sudo apt install postgresql postgresql-contrib

### Using Postgresql
#### 1) Role has to be created for Postgresql, with: sudo -u postgres createuser -s user_name
#### NOTE: user_name, is whatever name you want.
#### 2) rails db:create
#### 3) rails db:migrate
#### 4) rails s (localhost will be set to 3001 by default)
#### 5) If successful the webpage on localhost:3001, will display "{It's alive}"

#### Start the database initilisation (in terminal) with -> sudo service postgresql start


