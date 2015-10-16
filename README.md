![Build Status](https://codeship.com/projects/138c4fc0-4db0-0133-480e-524cf6105349/status?branch=master)![Code Climate](https://codeclimate.com/github/jakegibs617/live.png) ![Coverage Status](https://coveralls.io/repos/jakegibs617/live/badge.png)

## Description
A rails app set to assist the nights a person wants to go out with friends
but doesn't know where people are going. Great app to hang out with people you
know and don't know. 

[Click Here To View Heroku Application](https://live-events.herokuapp.com/)

[Trello Storyboard](https://trello.com/b/oZAUPcCn/live-app)

## Challenges faced
* Building a Friend to Friend association
* CRUD Actions where logical for users, events, comments
* Profile photo through AWS
* Creating a badge system for users
* Making the app mobile friendly
* incorporating the google map api for events

## Setting up locally
* First clone down the repo, load the schema

 $ bundle
 $ rake db:setup
 $ rails s

* visit [your application](http://localhost:3000)

## User Stories
[user stories](https://docs.google.com/document/d/1iNel0_NQ5RvcUj8T4u3-QJ7Zgijd-ibiCckgvLcwbUo/edit?usp=sharing)

## ER Diagram
[ER Diagram](http://i.imgur.com/hIzXY37.png)
