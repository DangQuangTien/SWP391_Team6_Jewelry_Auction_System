create database Jewelry_Auction_System
use Jewelry_Auction_System
go
create sequence userID_sequence
start with 0
increment by 1;
go
create table Users (
	userID varchar(50) not null primary key,
	username varchar(50) unique,
	email nvarchar(255),
	[password] nvarchar(255) not null,
	roleID varchar(50) not null default 'Role01',
	joined_at date,
	constraint fk_roleID foreign key (roleID) references [Role](roleID)
)
go
create trigger check_unique_username
on Users
instead of insert
as
begin
    if exists (select 1 from Users inner join inserted on Users.username = inserted.username)
    begin
        raiserror ('username already exists.', 16, 1);
        rollback transaction;
    end
    else
    begin
        declare @new_userID varchar(50);
        set @new_userID = 'User' + cast(next value for userID_sequence as varchar(50));
        
        insert into Users (userID, username, email, [password], joined_at, roleID)
        select @new_userID, username, email, [password], getDate(), roleID
        from inserted;
    end
end;
go
create table [Role] (
	roleID varchar(50) not null primary key,
	role_name nvarchar(50)
)
create table [Member] (
	memberID varchar(50) not null primary key,
	userID varchar(50) not null,
	firstName nvarchar(50),
	lastName nvarchar(50),
	phoneNumber varchar(20),
	gender nvarchar(10),
	dob date,
	avatar nvarchar(255),
	constraint fk_member_userID foreign key (userID) references Users(userID)
)
create table Staff (
	staffID varchar(50) not null primary key,
	userID varchar(50) not null,
	fullName nvarchar(255),
	constraint fk_staff_userID foreign key (userID) references Users(userID)
)
create table Manager (
	managerID varchar(50) not null primary key,
	userID varchar(50) not null,
	fullName nvarchar(255),
	constraint fk_manager_userID foreign key (userID) references Users(userID)
)
create table [Admin] (
	adminID varchar(50) not null primary key,
	userID varchar(50) not null,
	constraint fk_admin_userID foreign key (userID) references Users(userID)
)




