<<<<<<< HEAD
<<<<<<< HEAD
﻿
CREATE TABLE Bug
(
	Brief CHAR(40)  NOT NULL ,
	Description CHAR(100)  NULL ,
	Source CHAR(20)  NULL ,
	Priority CHAR(10)  NOT NULL ,
	Project char(18)  NULL ,
	BugNumber char(18)  NOT NULL ,
	Date datetime  NULL ,
	Module char(18)  NULL ,
	TabelNumber int  NOT NULL ,
	DocNumber int  NULL ,
	ExpectedResult CHAR(50)  NULL ,
	TestResult CHAR(50)  NULL ,
	Status CHAR(10)  NOT NULL ,
	TimeExecution datetime  NULL 
)
go


ALTER TABLE Bug
	ADD CONSTRAINT XPKБаг PRIMARY KEY  CLUSTERED (BugNumber ASC,TabelNumber ASC)
go


CREATE TABLE Documents
(
	NumDocument char(18)  NOT NULL ,
	TypeDocument char(18)  NULL ,
	URL CHAR(50)  NULL 
)
go


ALTER TABLE Documents
	ADD CONSTRAINT XPKДокументы PRIMARY KEY  NONCLUSTERED (NumDocument ASC)
go


CREATE TABLE Employee
(
	LastName varchar(20)  NOT NULL ,
	BirthDate date  NULL ,
	TabelNumber int  NOT NULL ,
	PhoneNamber bigint  NOT NULL ,
	Position char(18)  NOT NULL ,
	email char(18)  NULL ,
	FirstName varchar(20)  NOT NULL ,
	MiddleName varchar(20)  NULL ,
	Department char(18)  NULL 
)
go


ALTER TABLE Employee
	ADD CONSTRAINT XPKСотрудник PRIMARY KEY  NONCLUSTERED (TabelNumber ASC)
go


CREATE TABLE Priority
(
	NumPriority char(18)  NOT NULL ,
	PriorityDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Priority
	ADD CONSTRAINT XPKПриоритетностьВыполнения PRIMARY KEY  NONCLUSTERED (NumPriority ASC)
go


CREATE TABLE Status
(
	NumStatus char(18)  NOT NULL ,
	StatusDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Status
	ADD CONSTRAINT XPKЖизненныйЦикл PRIMARY KEY  NONCLUSTERED (NumStatus ASC)
go



ALTER TABLE Bug
	ADD CONSTRAINT  Работает_с FOREIGN KEY (TabelNumber) REFERENCES Employee(TabelNumber)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Основан_на FOREIGN KEY (DocNumber) REFERENCES Documents(NumDocument)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выбирается_из FOREIGN KEY (Status) REFERENCES Status(NumStatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выберается_из FOREIGN KEY (Priority) REFERENCES Priority(NumPriority)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

=======
﻿
CREATE TABLE Bug
(
	Brief CHAR(40)  NOT NULL ,
	Description CHAR(100)  NULL ,
	Source CHAR(20)  NULL ,
	Priority CHAR(10)  NOT NULL ,
	Project char(18)  NULL ,
	BugNumber char(18)  NOT NULL ,
	Date datetime  NULL ,
	Module char(18)  NULL ,
	TabelNumber int  NOT NULL ,
	DocNumber int  NULL ,
	ExpectedResult CHAR(50)  NULL ,
	TestResult CHAR(50)  NULL ,
	Status CHAR(10)  NOT NULL ,
	TimeExecution datetime  NULL 
)
go


ALTER TABLE Bug
	ADD CONSTRAINT XPKБаг PRIMARY KEY  CLUSTERED (BugNumber ASC,TabelNumber ASC)
go


CREATE TABLE Documents
(
	NumDocument char(18)  NOT NULL ,
	TypeDocument char(18)  NULL ,
	URL CHAR(50)  NULL 
)
go


ALTER TABLE Documents
	ADD CONSTRAINT XPKДокументы PRIMARY KEY  NONCLUSTERED (NumDocument ASC)
go


CREATE TABLE Employee
(
	LastName varchar(20)  NOT NULL ,
	BirthDate date  NULL ,
	TabelNumber int  NOT NULL ,
	PhoneNamber bigint  NOT NULL ,
	Position char(18)  NOT NULL ,
	email char(18)  NULL ,
	FirstName varchar(20)  NOT NULL ,
	MiddleName varchar(20)  NULL ,
	Department char(18)  NULL 
)
go


ALTER TABLE Employee
	ADD CONSTRAINT XPKСотрудник PRIMARY KEY  NONCLUSTERED (TabelNumber ASC)
go


CREATE TABLE Priority
(
	NumPriority char(18)  NOT NULL ,
	PriorityDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Priority
	ADD CONSTRAINT XPKПриоритетностьВыполнения PRIMARY KEY  NONCLUSTERED (NumPriority ASC)
go


CREATE TABLE Status
(
	NumStatus char(18)  NOT NULL ,
	StatusDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Status
	ADD CONSTRAINT XPKЖизненныйЦикл PRIMARY KEY  NONCLUSTERED (NumStatus ASC)
go



ALTER TABLE Bug
	ADD CONSTRAINT  Работает_с FOREIGN KEY (TabelNumber) REFERENCES Employee(TabelNumber)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Основан_на FOREIGN KEY (DocNumber) REFERENCES Documents(NumDocument)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выбирается_из FOREIGN KEY (Status) REFERENCES Status(NumStatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выберается_из FOREIGN KEY (Priority) REFERENCES Priority(NumPriority)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

>>>>>>> ea3b2ba72c01cb6b57aa922eaf4d090015fb624b
=======
﻿
CREATE TABLE Bug
(
	Brief CHAR(40)  NOT NULL ,
	Description CHAR(100)  NULL ,
	Source CHAR(20)  NULL ,
	Priority CHAR(10)  NOT NULL ,
	Project char(18)  NULL ,
	BugNumber char(18)  NOT NULL ,
	Date datetime  NULL ,
	Module char(18)  NULL ,
	TabelNumber int  NOT NULL ,
	DocNumber int  NULL ,
	ExpectedResult CHAR(50)  NULL ,
	TestResult CHAR(50)  NULL ,
	Status CHAR(10)  NOT NULL ,
	TimeExecution datetime  NULL 
)
go


ALTER TABLE Bug
	ADD CONSTRAINT XPKБаг PRIMARY KEY  CLUSTERED (BugNumber ASC,TabelNumber ASC)
go


CREATE TABLE Documents
(
	NumDocument char(18)  NOT NULL ,
	TypeDocument char(18)  NULL ,
	URL CHAR(50)  NULL 
)
go


ALTER TABLE Documents
	ADD CONSTRAINT XPKДокументы PRIMARY KEY  NONCLUSTERED (NumDocument ASC)
go


CREATE TABLE Employee
(
	LastName varchar(20)  NOT NULL ,
	BirthDate date  NULL ,
	TabelNumber int  NOT NULL ,
	PhoneNamber bigint  NOT NULL ,
	Position char(18)  NOT NULL ,
	email char(18)  NULL ,
	FirstName varchar(20)  NOT NULL ,
	MiddleName varchar(20)  NULL ,
	Department char(18)  NULL 
)
go


ALTER TABLE Employee
	ADD CONSTRAINT XPKСотрудник PRIMARY KEY  NONCLUSTERED (TabelNumber ASC)
go


CREATE TABLE Priority
(
	NumPriority char(18)  NOT NULL ,
	PriorityDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Priority
	ADD CONSTRAINT XPKПриоритетностьВыполнения PRIMARY KEY  NONCLUSTERED (NumPriority ASC)
go


CREATE TABLE Status
(
	NumStatus char(18)  NOT NULL ,
	StatusDescription CHAR(30)  NOT NULL 
)
go


ALTER TABLE Status
	ADD CONSTRAINT XPKЖизненныйЦикл PRIMARY KEY  NONCLUSTERED (NumStatus ASC)
go



ALTER TABLE Bug
	ADD CONSTRAINT  Работает_с FOREIGN KEY (TabelNumber) REFERENCES Employee(TabelNumber)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Основан_на FOREIGN KEY (DocNumber) REFERENCES Documents(NumDocument)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выбирается_из FOREIGN KEY (Status) REFERENCES Status(NumStatus)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE Bug
	ADD CONSTRAINT  Выберается_из FOREIGN KEY (Priority) REFERENCES Priority(NumPriority)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

>>>>>>> ea3b2ba72c01cb6b57aa922eaf4d090015fb624b
