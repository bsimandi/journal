# Welcome on board!

The intent of this guide is to show you an overview about the technical part of Curb's Ruby on Rails services. 

# Intro about the domain

Curb platform is an independent taxi service, meaning it handles everything from user sing up to payment processing. Our consumers can install the Curb mobile app and take rides, as well as b2b customers that use our platform for their employees. Curb also has its own taxi fleets over different cities in thr US, primary market is NYC, also Chicago, LA, Philadelphia, Boston, DC, Miami and many others.

1. For riders there is an Android and an iOS app. 
2. For b2b customers there are web tools (Curb Live, Concierge) that allow to book and manage rides for corporate users. 
Also corporate users can use regular rider apps with corporate payment method that allows them to not ask company’s callcenter for help but book rides independently.

We also develop server components. Ruby on Rails apps handle api requests from mobile / Curb Live / other partners (who may not use Curb Live but integrate with our API), stores users, rides, maintains their statuses, initiates payments, i.e. stores and handles all necessary info that servers usually do. 

There are server components written in Java, which are responsible for communication with drivers, driver search algorithms, etc. 
Rails services interact with those when a user books a ride. Our services send offers to drivers, and they send back events from vehicles.
These Java services are called “Way2i”, “Way2ride”. Payment server is also a component written in Java, it's for storing user’s payment data (credit cards, apple pay, paypal), it’s called “veripay”.

Other than that there is a team, called “eFleet”, it manages drivers, processes payments (request to bank) and stores transactions (charged rider, paid driver). Sometimes we do some integration work with eFleet.

Regarding our Ruby server components, the most important ones are: ride manager, clientservice, bill manager, vehicle, location.

# 1. Setup your dev environment

In general, you can choose any piece of software you know, and helps you the most. You can read my choices in brackets.
Prerequisite: have a laptop with an operating system suitable for you. (I have Linux Mint 21.1 installed)

## 1.1 Git

To install git, and set your git profile follow [this](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) guide.

## 1.2 Shell (zsh with oh-my-zsh)

This step is optional, you can use the terminal installed with your OS.
You can setup [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), and check their plugins there, too.

## 1.3 Ruby version manager (Rbenv)

You might want to use a version management tool. It allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems. You can find a collection of version manager tools [here](https://www.ruby-toolbox.com/categories/ruby_version_management). For setting up Rbenv, you can follow [this guide](https://github.com/rbenv/rbenv). You might also find [this](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04) useful.

## 1.4 IDE / a simple text editor (RubyMine, vim)

If you'd like to use a licensed IDE, like `RubyMine`, you can ask the PMs for a license. 
I usually use a "simple" editor if I need to open something quickly, like [vim](https://www.tutorialspoint.com/vim/vim_installation_and_configuration.htm). 

## 1.5 Docker

You can run most of Curb's Rails applications in docker. As per Ride Manager's README [install Docker](https://github.com/ridecharge/ride_manager/blob/master/docker-dev.md#install-docker).

## 1.6 MySQL

Follow [this](https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/) guide to install MySQL.


# Most important repositories to clone

## [Clientservice](https://github.com/ridecharge/clientservice)
is our API service, a public api that mobile/Curb Live/other partners send requests to. It authenticates/authorizes those requests, and hits internal resources (ride manager, etc).

## [Ride manager](https://github.com/ridecharge/ride_manager) 
is our main app, it stores users, rides, events, etc. It was created from an old monolith, called `RC` in order to upgrade/optimize our environment.

## [Bill manager](https://github.com/ridecharge/bill_manager) 
stores data related to billing, estimated amounts for rides (riders receive flat fare before the ride and guaranteed to pay only it at the end).

## [Vehicle](https://github.com/ridecharge/vehicle) 
is our storage for vehicles and drivers (syncronized with efleet), where Way2i services get available candidates for ride offers (to not hit efleet).

## [Location](https://github.com/ridecharge/location) 
is a service that handles all stuff related to geocoding, routes, etc.

After you cloned these repositories, you can work on running tests in each of them. (You don't need to run start these applications locally.) Each project's tests are runnable in Docker, except Bill Manager. (The reason you should have MySQL on your machine is for example because of Bill Manager.)