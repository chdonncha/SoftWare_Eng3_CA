
create table users
            (
            username varchar2(20) primary key not null , 
            name varchar2(60) not null , 
            email varchar2(60) not null , 
            password varchar(20) not null ,
            confpassword varchar2(20) not null
            );

create table debate
            (question varchar2(60) primary key not null,
            topic varchar2(40) not null,
            yes number (6) null, 
            no number (6) null,
            username varchar2(20) not null ,
            FOREIGN KEY (username) REFERENCES users(username));

create table comments
            (comment_id number(6) primary key not null , 
            commentdata varchar2(60) not null , 
            username varchar2(20) not null , 
            question varchar2(60) not null , 
            FOREIGN KEY (username) REFERENCES users(username) ,
            FOREIGN KEY (question) REFERENCES debate(question));

create table hasvoted
            (vote_id number(6) primary key not null , 
            username varchar2(20) not null , 
            question varchar2(60) not null ,
            FOREIGN KEY (username) REFERENCES users(username) ,
            FOREIGN KEY (question) REFERENCES debate(question));