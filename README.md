# Project

**InstantMessenger** is a communication platform that allows users to connect with friends and colleagues in real-time. With its user-friendly interface and powerful features, InstantMessenger makes it easy to stay connected with the people who matter most.

One of the key features of InstantMessenger is its direct messaging functionality, which allows users to send one-on-one messages to other users in real-time. This feature is perfect for keeping in touch with friends and family, or for quick and efficient communication with colleagues and team members.

In addition to direct messaging, InstantMessenger also offers group chat functionality. Users can create groups and invite others to join, making it easy to coordinate and collaborate with multiple people at once. Group chats are perfect for team projects, family events, or any other situation where multiple people need to communicate in real-time.

Overall, InstantMessenger is a powerful and versatile communication platform that makes it easy to stay connected with the people who matter most. Whether you're looking to stay in touch with friends and family, or to coordinate and collaborate with colleagues, InstantMessenger has you covered.

## Install

### Clone the repository

```shell
git clone git@github.com:thepavankoushik/InstantMessenger.git
cd InstantMessenger
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```


### Initialize the database

```shell
rails db:create db:migrate db:seed
```

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Serve

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```
