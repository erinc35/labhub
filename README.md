# labhub

Labhub is a web application that allows scientists to create proposals which can then be commented upon other users.  Once an admin approves the proposal, it then becomes an experiment and the proposer can now add collaborators, components, and comments. The purpose of this site was to allow scientists to communicate and connect with one another.

You can check out the live version [here] (https://labhub-2016.herokuapp.com/).

![homepage] (https://github.com/mbigras/labhub/blob/develop/app/assets/images/labhub.png)

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
$ git clone https://github.com/mbigras/labhub
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


## Authors

* **Erinç Emer** - [Github](https://github.com/erinc35)
* **Johnny Choo** - [Github](https://github.com/jchoo157)
* **Mannah Kallon** - [Github](https://github.com/kenikall)
* **Max Bigras** - [Github](https://github.com/mbigras)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

