# Oyster Card

This app replicates the functionality of an oyster card. Below are the user stories for the expected behaviour, the application is written in [Ruby](https://www.ruby-lang.org/en/) following Object Orientated Programming principles. The tests have been written using [rspec](https://github.com/rspec/rspec).

```
In order to use public transport
As a customer
I want money on my oyster card

In order to keep using public transport
As a customer
I want to add money to my oyster card

In order to pay for my journey
As a customer
I need my fare deducted from my oyster card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know how far I have travelled
As a customer
I want to know what zone a station is in
```


## Instructions to clone to your computer

1. Clone the repo, instructions can be found [here](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
2. You will need to install the dependencies (known as Ruby gems), to do this use the command `bundle install --path vendor/bundle`
3. To run the rspec tests run the command `bundle exec rspec` from your terminal
4. There will be a few tests that are failing - debug to fix them


## Instructions to clone to Replit

1. Go to https://repl.it/ and sign up if you don't have an account
2. Select to create a new Replit and upload fromm github. Use the link https://github.com/Caitlin-cooling/oyster-card-AIP note that this is cloning and can take a little while - watch the progress in your console tab
3. The dependencies will be installed for you, just run `rspec` in your console to run the tests
4. There will be a few tests that are failing - debug to fix them

If you get all tests passing and have some time to spare, have a go at extending the app using these user stories. You will want to write tests to ensure everything is working as expected.

```
In order to be charged correctly
As a customer
If I fail to touch in or out I am charged a penalty fare
```