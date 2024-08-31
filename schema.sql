--- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert into Users
INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password) VALUES
(1,'jbrithman0', 'Jarrid', 'Brithman', '1991-07-26', 'Str0ngP@ss'),
(2,'mgarfoot1', 'Margaux', 'Garfoot', '1967-02-26', 'P@ssw0rd2022'),
(3,'awear2', 'Antonietta', 'Wear', '1953-10-06', 'P@ssw0rd!999'),
(4,'asture3', 'Archy', 'Sture', '1955-09-23', 'P@ssw0rd!23'),
(5,'eourry4', 'Ettie', 'Ourry', '1994-03-05', 'P@ssw0rd!999'),
(6,'tmccowen5', 'Tracey', 'McCowen', '1981-01-21', 'P@ssw0rd!abc'),
(7,'kwiffield6', 'Kassandra', 'Wiffield', '1973-06-26', 'P@ssw0rd!789'),
(8,'ttirone7', 'Torey', 'Tirone', '1997-04-26', 'P@ssw0rd2022'),
(9,'ksinnott8', 'Karolina', 'Sinnott', '1991-08-26', 'P@ssw0rd!444'),
(10,'bgraftonherbert9', 'Benjy', 'Grafton-Herbert', '1980-09-25', 'P@ssw0rd!2022');

-- Create Friends Table
CREATE TABLE Friends (
    FriendID INT AUTO_INCREMENT PRIMARY KEY,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert Into Friends 
INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted) VALUES
(1, 7, 4, true),
(2, 3, 2, false),
(3, 6, 1, true),
(4, 7, 1, false),
(5, 10, 9, true),
(6, 1, 8, true),
(7, 6, 9, true),
(8, 1, 7, true),
(9, 2, 6, false),
(10, 8, 4, true);

-- Create Groups Table
CREATE TABLE Groups (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert Into Groups
INSERT INTO Groups (GroupID, GroupName, CreatedBy) VALUES
(1, 'Thunderbolts', 8),
(2, 'Vortex Vipers', 3),
(3, 'Midnight Mavericks', 1),
(4, 'Phoenix Fury', 9),
(5, 'Savage Storm', 6),
(6, 'Rapid Raptors', 4),
(7, 'Blaze Brigade', 10),
(8, 'Shadow Sharks', 2),
(9, 'Thunder Wolves', 7),
(10, 'Mystic Marlins', 5);

-- Create Posts Table
CREATE TABLE Posts (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert Into Posts
INSERT INTO Posts (PostID, PostDescription, PostedBy, IsPublic, IsOnlyForFriends, GroupID) VALUES
(1, 'Check out our latest product!', 8, true, false, 7),
(2, 'Exciting news coming soon!', 3, true, false, 4),
(3, 'Don''t miss out on our limited-time offer!', 1, true, false, 10),
(4, 'Join us for a special event!', 9, false, true, 1),
(5, 'Discover our new collection!', 6, true, false, 9),
(6, 'Get ready for a surprise announcement!', 4, true, false, 3),
(7, 'Stay tuned for updates!', 10, true, false, 6),
(8, 'Explore our exclusive deals!', 2, false, true, 5),
(9, 'Join our community today!', 7, true, false, 2),
(10, 'Experience something new with us!', 5, false, true, 8);

-- Create Group Membership Requests Table
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert Into Group Membership Requests
INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMembershipAccepted) VALUES
(1, 7, 8, true),
(2, 4, 3, true),
(3, 10, 1, true),
(4, 1, 9, true),
(5, 9, 6, true),
(6, 3, 4, false),
(7, 6, 10, true),
(8, 5, 2, true),
(9, 2, 7, true),
(10, 8, 5, false);

