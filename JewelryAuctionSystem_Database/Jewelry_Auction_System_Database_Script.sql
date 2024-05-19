CREATE DATABASE JewelryAuctionSystem
USE JewelryAuctionSystem
GO
CREATE SEQUENCE USERIDSEQUENCE
START WITH 0
INCREMENT BY 1;
GO
CREATE TABLE USERS (
	USERID VARCHAR(50) NOT NULL PRIMARY KEY,
	USERNAME VARCHAR(50) UNIQUE,
	FIRSTNAME NVARCHAR(50),
	LASTNAME NVARCHAR(50),
	PHONENUMBER VARCHAR(20),
	EMAIL VARCHAR(255) NOT NULL,
	GENDER NVARCHAR(10),
	DOB DATE,
	JOINEDDATE DATE,
	AVATAR VARCHAR(255),
	[PASSWORD] VARCHAR(255) NOT NULL,
	IS_ADMIN BIT DEFAULT 0
)
GO
CREATE TRIGGER CHECKUNIQUEUSERNAME
ON USERS
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM USERS INNER JOIN INSERTED ON USERS.USERNAME = INSERTED.USERNAME)
    BEGIN
        RAISERROR ('USERNAME ALREADY EXISTS.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        DECLARE @NEWUSERID NVARCHAR(50);
        SET @NEWUSERID = 'U' + CAST(NEXT VALUE FOR USERIDSEQUENCE AS NVARCHAR(50));
        
        INSERT INTO USERS (USERID, USERNAME, FIRSTNAME,LASTNAME, EMAIL, PHONENUMBER, GENDER, DOB,JOINEDDATE, AVATAR, [PASSWORD], IS_ADMIN)
        SELECT @NEWUSERID, USERNAME, FIRSTNAME,LASTNAME, EMAIL, PHONENUMBER, GENDER, DOB, GETDATE(), AVATAR, [PASSWORD],IS_ADMIN
        FROM INSERTED;
    END
END;

INSERT INTO USERS (USERNAME, FIRSTNAME, LASTNAME, EMAIL, PHONENUMBER, GENDER, DOB, AVATAR, [PASSWORD], IS_ADMIN) VALUES (
'ADMIN', N'ADMIN', N'ADMIN', 'ADMIN123@GMAIL.COM', NULL, 'MALE', '1999-01-09', NULL,'123', 1)
INSERT INTO USERS (USERNAME, FIRSTNAME, LASTNAME, EMAIL, PHONENUMBER, GENDER, DOB, AVATAR, [PASSWORD]) VALUES (
'USER', N'USER', N'USER', 'USER123@GMAIL.COM', NULL, 'MALE', '1999-01-09', NULL,'123')
SELECT * FROM USERS WHERE USERNAME = N'ADMIN' AND PASSWORD = N'123'
SELECT * FROM USERS WHERE USERNAME = 'USER'
GO
CREATE SEQUENCE VALUATIONIDSEQUENCE
START WITH 0
INCREMENT BY 1;
GO
CREATE TABLE VALUATION (
	VALUATIONID VARCHAR(50) NOT NULL PRIMARY KEY,
	[NAME] NVARCHAR(255) NOT NULL, 
	EMAIL NVARCHAR(255) NOT NULL,
	PHONENUMBER VARCHAR(20) NOT NULL,
	COMMUNICATION VARCHAR(100),
	[DESCRIPTION] NVARCHAR(MAX),
	PHOTOS VARCHAR(255),
	USERID VARCHAR(50),
	CONSTRAINT FR_USERID FOREIGN KEY (USERID) REFERENCES USERS(USERID),
	STATUS BIT DEFAULT 0
)
GO
CREATE TRIGGER AUTOGENERATEVALUATIONID ON VALUATION INSTEAD OF INSERT
AS 
BEGIN
	DECLARE @NEWVALUATIONID NVARCHAR(50);
	SET  @NEWVALUATIONID = 'VAL' + CAST(NEXT VALUE FOR VALUATIONIDSEQUENCE AS NVARCHAR(50));
	INSERT INTO VALUATION (VALUATIONID, [NAME], EMAIL, PHONENUMBER, COMMUNICATION, [DESCRIPTION], PHOTOS, USERID)
    SELECT @NEWVALUATIONID, [NAME], EMAIL, PHONENUMBER, COMMUNICATION, [DESCRIPTION], PHOTOS, USERID
    FROM INSERTED;
END;
