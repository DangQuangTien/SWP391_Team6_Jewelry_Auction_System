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
select tk.userID, tk.username, tk.password, vt.role_name from Users tk, [Role] vt where vt.roleID = tk.roleID and tk.username = 'user' and tk.password = '123'
