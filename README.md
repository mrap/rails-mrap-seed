rails-mrap-seed
===============

For those who need to go fast on Rails.
---------------------------------------

This is the seed project I wish I had for my last hackathons.

## The Stack:

### Main Players:

  * Mongoid (Wrapper for MongoDB)
  * HAML
  * Bootstrap (Sass flavored)
  * RSpec
  * Capybara (Preconfigured to use Poltergeist for fast BDD)

### Fast Testing!

  * Zeus (Saves too much time, run specs immediately)
  * Guard (Automatically runs the correct spec after you save the file)

### Fast Deployment!

  Preconfigured for Heroku.  `Foreman` for development, `Unicorn` for production.
  [Details](https://devcenter.heroku.com/articles/getting-started-with-rails4) here.
  Note: Requires a MongoDB add-on. I use MongoHQ.


## Getting Started

Before you begin, ensure you have MongoDB installed on your system.

For Mac users, I recommend installing MongoDB via [Homebrew](http://brew.sh/):

    brew install mongodb

1) Clone this repo and cd into the directory.

    git clone git@github.com:mrap/rails-mrap-seed.git && cd rails-mrap-seed

2) **In another terminal window**, start your local `MongoDB` server.  This will run in the background as your development server. 

    mongod

3) Bundle install everything.

    bundle install

4) Run rspec and make sure it works.

    rspec


## The Ideal Setup

### 4 terminal windows

-------------------------------------------------------

Main Terminal: This is where you code/commit/etc. The usual stuff.

-------------------------------------------------------

**Guard**: This is where your specs run automatically. **Zeus must be running!**

Start Guard:

    bundle exec guard

-------------------------------------------------------

**Zeus**: This is where you can start/stop Zeus.

Start Zeus:

    zeus start

-------------------------------------------------------

**MongoDB**: This is where you start/stop MongoDB. **DO NOT** forget to start this.

Start MongoDB:

    mongod

Ideally we want our specs to run automatically everytime we save a file.
We use `zeus` to keep Rails "running" in its current state. 
If you don't use `zeus`, you'd have to wait ~3-5 seconds everytime you run specs.
[Railscasts](http://railscasts.com/episodes/413-fast-tests) breaks down the details in [this screencast](http://railscasts.com/episodes/413-fast-tests). I highly recommend watching this!

