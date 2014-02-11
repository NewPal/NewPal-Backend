#NewPal Platform

####Developed in Hack Upon A Cause Hackathon, Saturday, Feb 08 2014
##### http://www.hackathon.io/27168
#Overview

A low tech SMS (messaging) platform for volunteers and communities in remote places of the world
for tracking disruptions, changing community situations including violence and human trafficking 
thus enabling monitoring and providing government and non-government agencies the information 
to align and respond to life changing trends.


# Backend Architecture 

Service written in Rails, which receive and sends SMS messages using Twillio interface.
Messages are saved and indexed in a DB with the following columns:
Country, State, City, PhoneNumber, ZipCode, MessageBody, UserId. 

## API

The service exposes a RESTful API (Using Json), Allowing client to query for all or parts of the messages.


#### Resource  
#####/messages/index.json

####Parameters
optional - state, country, city, phoneNumber, ZipCode

##### Example
/messages/index.json?state=CA

