# Lilypad Energy Marketing

### This repository serves as a starting place for the marketing pages of the Lilypad Energy platform.

#### Development Setup

  - clone repository:

```bash
>> mkdir lilypad && cd lilypad
>> git clone git@github.com:Tmee/lilypad-energy-marketing.git
>> cd lilypad-energy-marketing
```

 - Install gems and create database:

```bash
>> bundle install
>> bundle exec rake db:setup

```

  - Run Figaro

```bash
>> bundle exec figaro install

```

  - After Figaro finishes you will need to add the application secrets into the `config/application.yml` file.
    - Ask Tim for the needed keys

------------

#### For Contributions:

 - clone repository
 - setup local environment
 - create branch off `master`
 - commit changes to local branch
 - push local branch to Github
 - create PR local-branch-with-changes -> master
