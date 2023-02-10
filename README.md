# Project

**InstantMessenger** is a communication platform that allows users to connect with friends and colleagues in real-time. With its user-friendly interface and powerful features, InstantMessenger makes it easy to stay connected with the people who matter most.

[![My Tech Stack](https://github-readme-tech-stack.vercel.app/api/cards?title=Project%20Tech%20Stack&lineCount=3&theme=windows&line1=rubyonrails,rubyonrails,b8038b;heroku,heroku,499c42;PostgreSQL,PostgreSQL,57b9d6;&line2=html5,html5,7df9f0;css3,css3,29444a;redux,redux,013acf;bootstrap,bootstrap,845f77;&line3=javascript,javascript,48fa46;)](https://github-readme-tech-stack.vercel.app/api/cards?title=Project%20Tech%20Stack&lineCount=3&theme=windows&line1=rubyonrails,rubyonrails,b8038b;heroku,heroku,499c42;PostgreSQL,PostgreSQL,57b9d6;&line2=html5,html5,7df9f0;css3,css3,29444a;redux,redux,013acf;bootstrap,bootstrap,845f77;&line3=javascript,javascript,48fa46;)

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
