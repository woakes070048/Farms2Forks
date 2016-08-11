![Farms2Forks](http://i.imgur.com/oP1pDee.png)

## About
Welcome to the Farms2Forks Github page! Farms2Forks is an online platform that enables consumers to gain access to fresh, local, and quality food without having to go through the hassle of travelling to farms. The platfrom also allows people to support local small-scale farms, while giving farmers larger group of people to connect with and give food to.

## Installing & Building
To get up and running with the Farms2Forks source pop open your command line and run the following commands:

* Get the source by running `git clone https://github.com/mAzurkovic/Farms2Forks.git`
* Then `cd Farms2Forks`
* Now install the neccessary packages by running `bundle install`
* Initialize and sync up the database for the project by using `rake db:migrate`
* Now run the application through `rails server` or `rails s`

## Tech/Libraries
The project uses several different technologies and gems. Below is a list outlining the major ones used.

* [PostgreSQL](https://www.postgresql.org/) - The choice of database
* [Devise](https://rubygems.org/gems/devise/versions/3.5.6) - Allow for user auth. and user registers
* [Paperclip](https://rubygems.org/gems/paperclip) - Make uploading images (`.png`, .`jpeg`, `.gif`) easier to implement
* [Stripe Connect](https://rubygems.org/gems/omniauth-stripe-connect/versions/2.7.0) - Used to write the payment system

For a full list of Gems used, view the `gemfile` in the root directory.

## Contributing
If you find a bug or have a suggestion, tag it in the issues directory. If you are working on the project and you have made improvments, create your own branch and submit a pull request and we will merge your commit. View the `CONTRIBUTING.md` file for more information (not there atm).
