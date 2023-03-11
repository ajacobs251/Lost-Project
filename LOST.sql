Create Database lost;
Use lost;

	create table TOUR(
    Tour_Num INT(5) PRIMARY KEY,
    Tour_Name varchar(10),
	Tour_Length varchar(10),
    Tour_Fee INT(5));

	create table LOCATION(
    Loc_Num INT(5) PRIMARY KEY,
    Loc_Name varchar(10),
	Loc_Type varchar(10),
    Loc_Descript varchar(10));

	create table STOP(
    Tour_Num INT(5) PRIMARY KEY,
    Loc_Num int(5),
	FOREIGN KEY (Tour_Num) REFERENCES TOUR(Tour_Num),
	FOREIGN KEY (Loc_Num) REFERENCES Location(Loc_Num));

	create table GUIDE(
    G_EmpID INT(5) PRIMARY KEY,
    G_FName varchar(10),
    G_LName varchar(10),
    G_City varchar(10),
    G_State varchar(10),
	G_Hire DATE);
    
	create table QUALIFICATION(
    Tour_Num INT(5) PRIMARY KEY,
    G_EmpID INT(5) PRIMARY KEY,
	FOREIGN KEY (Tour_Num) REFERENCES TOUR(Tour_Num),
	FOREIGN KEY (G_EmpID) REFERENCES GUIDE(G_EmpID));

	create table OUTING(
    Out_Num INT(5) PRIMARY KEY,
    Out_Date DATE,Out_Date TIME,
	Tour_Num INT(5),G_EmpID INT(5),
	FOREIGN KEY (Tour_Num) REFERENCES TOUR(Tour_Num),
	FOREIGN KEY (G_EmpID) REFERENCES GUIDE(G_EmpID));

	create table CLIENT(
    Client_Num INT(5) PRIMARY KEY,
    Client_FName varchar(10),
    Client_LName varchar(10),
    Client_City varchar(10),
    Client_State varchar(10),
	Clien_Status varchar(10));
