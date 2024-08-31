--1.
SELECT * FROM Users
WHERE DateOfBirth BETWEEN '2001-01-01' AND '2004-12-31';

--2.
Select * From Posts
Where PostedBy = '4';

--3.
Select GroupName From Groups;

--4.
Select GroupMemberShipRequestsID From GroupMembershipRequests
Where GroupMemberUserID = '2'

--5.
Select u.Username, u.FirstName, u.LastName
From Friends f
Join Users u On (f.FriendWhoAdded = u.UserID Or f.FriendBeingAdded = u.UserID)
Where f.FriendWhoAdded = '2' Or f.FriendBeingAdded = '2';

--6.
Select u.Username, u.FirstName, u.LastName, f.IsAccepted
From Friends f
Join Users u On f.FriendBeingAdded = u.UserID
Where f.FriendWhoAdded = '1';

--7.
SELECT PostDescription From Posts
Where IsPublic = '1' AND GroupID = '2';

--8.
Select * FROM GroupMembershipRequests
Where GroupID = '2' AND IsGroupMemberShipAccepted = '0';
