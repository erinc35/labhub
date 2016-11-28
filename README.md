# labhub

Labhub is a web application that allows scientists to create proposals which can then be commented upon other users.  Once an admin approves the proposal, it then becomes an experiment and the proposer can now add collaborators, components, and comments. The purpose of this site was to allow scientists to communicate and connect with one another.

You can check out the live version [here] (https://labhub-2016.herokuapp.com/).

![homepage] (https://github.com/everysum1/insiderAPI/blob/development/app/assets/images/SmarterBearHomepage.png)

![company-page] (https://github.com/everysum1/insiderAPI/blob/development/app/assets/images/SmarterBearCompany.png)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

```
ruby 2.3.1
bundler 1.12.5
rails 5.0.0
```

### Installing
From the command terminal, clone the repository to your local directory...
```
$ git clone https://github.com/erinc35/GuideMe.git
$ cd GuideMe
```

Then run bundle command to install all dependencies and run the server.

```
$ bundle install
$ rails server
```

## Deployment

You must have Heroku CLI installed and be logged in to Heroku in order to deploy live via Heroku servers
(Please see the [documentation](https://devcenter.heroku.com) to get set up with Heroku)

Then, after installation and login, via the command line...
```
$ heroku create
$ git push heroku master
$ heroku open
```
## Tech Used

* [Ruby on Rails](http://api.rubyonrails.org/) - Backend API framework used
* [jQuery](https://jquery.com/) - Write less, do more with jQuery
* [Ajax](* [jQuery](https://jquery.com/) - Write less, do more with jQuery
) -The use of the XMLHttpRequest object to communicate with server-side scripts.

* [Stripe](https://stripe.com/docs/api) - Authenticates credit card payments
* [Google Api](https://console.developers.google.com/?pli=1) - Google API Console lets you discover and use Google APIs, such as Google Maps and YouTube.
* [Unsplash](https://unsplash.com/developers) - Library for high-res photos
* [Chatty](http://josephndungu.com/tutorials/) -Gmail Like Chat Application
* [Yelp Api](https://www.yelp.com/developers/documentation/v2/overview) -Search for businesses by location, keyword and category
gmail-like-chat-application-in-ruby-on-rails
* [HTTParty](https://github.com/jnunemaker/httparty) - Library used for making HTTP requests

## Authors

* **Erinç Emer** - [Github](https://github.com/erinc35)
* **Johnny Choo** - [Github](https://github.com/jchoo157)
* **Angelica Pilarca** - [Github](https://github.com/APilarca)
* **Hakim Joseph** - [Github](https://github.com/HakimJoseph)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

