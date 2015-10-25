# Software Engineering - Web App Plan

## App Description

It is a social media web app that allows people to debate topics using various
utilities with a goal to allow users to create threads or debates that people
can vote on the provided options, having only 1 vote per user on any
particular topic.

A pie chart or bar chart will then be provided allowing users to visualise
the topics option approval.

The users will be allowed to participate in a chat fourm below the charts
showing what the user voted for beside their anem when they do post
on the chat.

Each users comment can be voted up and it can display the top voted
comment of each opinion on the top for users to get a idea of the
best reasons why each user voted for the option they did vote for.

Each user will have to create an account in order to partcipate in debates
information such as how many debates they have voted or commented on.

On the main page it will show the top thrending topics/debates, a topic
search option, which will bring you to the search page to search debate by
topic.

When creating a topic/debate, you name the debate, select the topic and
allocate the selectable options for particpants.

The information regarding the threads and user will be stored on a
database. This information can also be used to provide information
such as the top trending topics at the moment based on on how many
users have voted on the app in the recent week.
	
# Database Diagram

The tables that the database will need to contain information on are:
		 
![Image of diagram](https://github.com/chdonncha/SoftWare_Eng3_CA/Images/DB_Diagram.png)

In the User account screen, a select statement will be used to return the number
of comments and the number of polls the user have posted on, returning a link
as well to the debate that was posted on commented on.
