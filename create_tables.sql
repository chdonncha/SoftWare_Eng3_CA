
create table users
            (
            username varchar(20) primary key not null , 
            name varchar(60) not null , 
            email varchar(60) not null , 
            password varchar(20) not null ,
            confpassword varchar(20) not null
            );

INSERT INTO users VALUES ("johnerz84", "John", "JohnDoe@doemail.com", "123", "123");            
            
create table debate
            (question varchar(60) primary key not null,
            topic varchar(40) not null,
            yes int  null, 
            no int  null,
            username varchar(20) not null ,
            FOREIGN KEY (username) REFERENCES users(username));

create table comments
            (comment_id int primary key not null , 
            commentdata varchar(60) not null , 
            username varchar(20) not null , 
            question varchar(60) not null , 
            FOREIGN KEY (username) REFERENCES users(username) ,
            FOREIGN KEY (question) REFERENCES debate(question));

create table hasvoted
            (vote_id int primary key not null , 
            username varchar(20) not null , 
            question varchar(60) not null ,
            FOREIGN KEY (username) REFERENCES users(username) ,
            FOREIGN KEY (question) REFERENCES debate(question));