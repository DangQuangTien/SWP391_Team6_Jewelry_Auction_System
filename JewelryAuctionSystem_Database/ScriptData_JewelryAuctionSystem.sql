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
go
create sequence addressID_sequence
start with 0
increment by 1;
go
create table [Address](
	addressID varchar(50) not null primary key,
	street nvarchar(255) not null,
	city nvarchar(255) not null,
	[state] nvarchar(255) not null,
	zipcode varchar(50) not null,
	country nvarchar(255) not null,
	memberID varchar(50) not null
	constraint fk_memberID foreign key (memberID) references [Member](memberID)
) 
GO
create trigger autogenerate_addressID on [Address] instead of insert
as 
begin
	declare @newaddressID varchar(50);
	set  @newaddressID = 'Address' + cast(next value for addressID_sequence as varchar(50));
	insert into [Address] (addressID, street, city, [state], zipcode, country, memberID)
    select @newaddressID, street, city, [state], zipcode, country, memberID
    from inserted;
end;
go
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
create sequence categoryID_sequence
start with 0
increment by 1;
go
create table category (
    categoryID nvarchar(50) not null primary key,
    categoryName nvarchar(255) not null,
    parentID nvarchar(50),
    [active] bit default 1,
    foreign key (parentID) references category(categoryID)
);
go
create trigger autogenerate_categoryID on category instead of insert
as 
begin
	declare @newcategoryID nvarchar(50);
	set  @newcategoryID = 'category' + cast(next value for categoryID_sequence as nvarchar(50));
	insert into category (categoryID, categoryname)
    select @newcategoryID, categoryname
    from inserted;
end;
go

create sequence valuationId_sequence
start with 0
increment by 1;
go
create table Valuation (
	valuationId varchar(50) not null primary key,
	[name] nvarchar(255) not null, 
	email nvarchar(255) not null,
	phonenumber varchar(20) not null,
	communication varchar(100),
	[description] nvarchar(max),
	photos varchar(255),
	memberId varchar(50),
	status_evaluate bit default 0,
	status_shipment bit default 0,
	foreign key (memberId) references [Member](memberId),
)
go
CREATE TRIGGER update_valuation_status
ON Jewelry
AFTER INSERT
AS
BEGIN
    UPDATE v
    SET v.status_evaluate = 1
    FROM valuation v
    JOIN inserted i ON v.valuationId = i.valuationId;
END;
GO
create trigger autogenerate_valuationId on valuation instead of insert
as 
begin
	declare @newvaluationId nvarchar(50);
	set  @newvaluationId = 'val' + cast(next value for valuationId_sequence as nvarchar(50));
	insert into valuation (valuationId, [name], email, phonenumber, communication, [description], photos, memberId)
    select @newvaluationId, [name], email, phonenumber, communication, [description], photos, memberId
    from inserted;
end;
--notification
create sequence notificationId_sequence
start with 0
increment by 1;
go
-----------------------------------------------------------------------------
create table [Notification](
	notificationId varchar(50) not null primary key,
	valuationId varchar(50),
	content nvarchar(MAX),
	foreign key (valuationId) references Valuation(valuationID)
)
-----------------------------------------------------------------------------
go
create trigger autogenerate_notificationId on [Notification] instead of insert
as 
begin
	declare @newnotificationId nvarchar(50);
	set  @newnotificationId = 'No' + cast(next value for notificationId_sequence as nvarchar(50));
	insert into [Notification] (notificationId, valuationId, content)
    select @newnotificationId, valuationId, content
    from inserted;
end;
go
CREATE SEQUENCE jewelryID_sequence
    AS BIGINT
    START WITH 1
    INCREMENT BY 1;
go
CREATE TRIGGER autogenerate_jewelryID
ON Jewelry
INSTEAD OF INSERT
AS 
BEGIN
    DECLARE @newjewelryID NVARCHAR(50);

    INSERT INTO Jewelry (
        jewelryID, categoryID, jewelryName, artist, circa, material, dial, braceletMaterial,
        caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, [condition], 
        metal, gemstones, measurements, [weight], stamped, ringSize, minPrice, maxPrice, valuationId
    )
    SELECT 
        'Lot' + CAST(NEXT VALUE FOR jewelryID_sequence AS NVARCHAR(50)),
        categoryID, jewelryName, artist, circa, material, dial, braceletMaterial, 
        caseDimensions, braceletSize, serialNumber, referenceNumber, caliber, movement, [condition], 
        metal, gemstones, measurements, [weight], stamped, ringSize, minPrice, maxPrice, valuationId
    FROM inserted;
END;
go
CREATE TABLE Jewelry (
    jewelryID varchar(50) NOT NULL PRIMARY KEY,
	categoryID NVARCHAR(50),
    jewelryName NVARCHAR(500),
    artist NVARCHAR(255),
    circa NVARCHAR(50),
    material NVARCHAR(500),
    dial NVARCHAR(500),
    braceletMaterial NVARCHAR(500),
    caseDimensions NVARCHAR(500),
    braceletSize NVARCHAR(50),
    serialNumber NVARCHAR(255),
    referenceNumber NVARCHAR(255),
    caliber NVARCHAR(255),
    movement NVARCHAR(255),
    [condition] NVARCHAR(500),
    metal NVARCHAR(255),
    gemstones NVARCHAR(500),
    measurements NVARCHAR(500),
    [weight] varchar(255),
    stamped NVARCHAR(255),
    ringSize NVARCHAR(50),
    minPrice varchar(255),
    maxPrice varchar(255),
    valuationId VARCHAR(50),
	statusFromSeller bit default 0,
	statusFromManager bit default 0,
    FOREIGN KEY (valuationId) REFERENCES valuation(valuationId),
	FOREIGN KEY (categoryID) REFERENCES category(categoryID),
);

select n.notificationID, n.content, n.status_shipment from Notification n, Valuation v, Users u, Member m where u.userID = 'User1' and n.valuationID = v.valuationID and u.userID = m.userID
select * from Users
delete from Notification
delete from valuation
delete from Jewelry
insert into Notification (valuationId, content) values ('val21','Ship to this address');
SELECT * FROM VALUATION
select * from Notification
select * from Jewelry
Update Jew