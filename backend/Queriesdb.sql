create table Users (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(255) UNIQUE,
    Email VARCHAR(255),
    Email_verified BOOLEAN,
    Date_created DATE,
    Last_login DATE
);

CREATE TABLE Posts (
    PostID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    Body VARCHAR,
    User_ID INT REFERENCES Users(UserID),
    Creator VARCHAR REFERENCES Users(Username),
    Date_created TIMESTAMP
);
CREATE TABLE Gifs (
    GifID SERIAL PRIMARY KEY,
    ImageURL VARCHAR,
    Body VARCHAR,
    User_ID INT REFERENCES Users(UserID),
    Creator VARCHAR REFERENCES Users(Username),
    Date_created TIMESTAMP
);

CREATE TABLE Comments (
    CommentID SERIAL PRIMARY KEY,
    Comment VARCHAR(255),
    Creator VARCHAR REFERENCES Users(UserID),
    PostID INT REFERENCES Posts(PostID),
    Date_created TIMESTAMP

);