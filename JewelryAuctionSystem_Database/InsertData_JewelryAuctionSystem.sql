use Jewelry_Auction_System

insert into [Role](roleID, role_name) values ('Role01', 'Member')
insert into [Role](roleID, role_name) values ('Role02', 'Staff')
insert into [Role](roleID, role_name) values ('Role03', 'Manager')
insert into [Role](roleID, role_name) values ('Role04', 'Admin')
select * from [Role]
select * from Users
insert into Users (username, email, [password], roleID) values ('admin', 'admin123@gmail.com', '123', 'Role04')
insert into Users (username, email, [password]) values ('user', 'user123@gmail.com', '123')
insert into [Admin] (adminID, userID) values ('Admin01', 'User0');
insert into [Member] (memberID, userID) values ('Member01', 'User1');
select tk.userID, tk.username, vt.role_name from Users tk, [Role] vt where vt.roleID = tk.roleID and tk.username = 'user' and tk.password = '123'
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Bracelet')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Brooch')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Earrings')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Loose Stone')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Misc')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Necklace')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Pendant')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Ring')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Set')
INSERT INTO CATEGORY (CATEGORYNAME) VALUES (N'Watch')
select * from role
delete from Users where userID = 'User2'
insert into Users (username, email, [password], roleID) values ('staff', 'staff123@gmail.com', '123', 'Role02')
insert into Users (username, email, [password], roleID) values ('manager', 'manager123@gmail.com', '123', 'Role03')
insert into Staff (staffID, userID, fullName) values ('Staff0', 'User3', 'Alex Watson');
insert into [Manager] (managerID, userID, fullName) values ('Manager0', 'User4', 'Jack Daniel');
select * from Staff
select * from Manager
select * from Users

insert into valuation ([name], email, phonenumber, communication, [description], photos, memberId) values 
('Unknown', 'unknown123@gmail.com', '0909091234', 'Text', 'None', 'None')
select * from valuation

insert into valuation ([name], email, phonenumber, communication, [description], photos, memberId) values ('Unknown', 'unknown123@gmail.com', '0909091235', 'Text', 'None', 'None', (select m.memberID from Users u, [Member] m where u.userID = m.userID and u.username = ''))
select * from Users
