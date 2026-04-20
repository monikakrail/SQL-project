--STEP 1
--Create Database TTC
create database TTC

--STEP 2
--Create Parents Table
create table parents (
Parid int identity(100,2) Primary Key,
ParentFname varchar(150),
ParentSname varchar(150),
Fees float
)

--STEP 3
--Create Students Table
create table students (
stdid int identity (100,2) Primary key,
stdnames varchar(250),
stdprogram varchar(25),
startdate date,
startday varchar(15),
starttime time,
endtime time,
parid int Foreign Key References parents(parid)
)

--STEP 4
--Alter Parents Table to include stdid from Student Table
alter table parents
add stdid int Foreign key references students(stdid) 


--STEP 5
--insert student records into students Table
INSERT INTO students (stdnames, stdprogram, startdate, startday, starttime, endtime) VALUES 
('Claire Gute', '11 Plus', '2024-09-02', 'Monday', '17:00:00', '18:00:00'),
('Darrin Van', '11 Plus', '2024-09-03', 'Tuesday', '17:00:00', '18:00:00'),
('Sean Donnell', '11 Plus', '2024-09-04', 'Wednesday', '17:00:00', '18:00:00'),
('Brosina Hoffman', '11 Plus', '2024-09-05', 'Thursday', '17:00:00', '18:00:00'),
('Andrew Allen', '11 Plus', '2024-09-06', 'Friday', '17:00:00', '18:00:00'),
('Irene Maddox', 'GCSE', '2024-09-07', 'Saturday', '17:00:00', '18:00:00'),
('Harold Pawlan', 'GCSE', '2024-09-02', 'Monday', '18:00:00', '19:00:00'),
('Pete Kriz', 'GCSE', '2024-09-03', 'Tuesday', '18:00:00', '19:00:00'),
('Alejandro Grove', 'GCSE', '2024-09-04', 'Wednesday', '18:00:00', '19:00:00'),
('Zuschuss Donatelli', 'GCSE', '2024-09-05', 'Thursday', '18:00:00', '19:00:00'),
('Ken Black', 'GCSE', '2024-09-06', 'Friday', '18:00:00', '19:00:00'),
('Sandra Flanagan', 'Year 9', '2024-09-07', 'Saturday', '18:00:00', '19:00:00'),
('Emily Burns', 'Year 9', '2024-09-02', 'Monday', '19:00:00', '20:00:00'),
('Eric Hoffmann', 'Year 9', '2024-09-03', 'Tuesday', '19:00:00', '20:00:00'),
('Tracy Blumstein', 'Year 9', '2024-09-04', 'Wednesday', '19:00:00', '20:00:00'),
('Matt Abelman', 'Year 8', '2024-09-05', 'Thursday', '19:00:00', '20:00:00'),
('Gene Hale', 'Year 8', '2024-09-06', 'Friday', '19:00:00', '20:00:00'),
('Steve Nguyen', 'Year 8', '2024-09-07', 'Saturday', '19:00:00', '20:00:00'),
('Linda Cazamias', 'Year 7', '2024-09-09', 'Monday', '17:00:00', '18:00:00'),
('Ruben Ausman', 'Year 7', '2024-09-10', 'Tuesday', '17:00:00', '18:00:00'),
('Erin Smith', 'Year 7', '2024-09-11', 'Wednesday', '17:00:00', '18:00:00'),
('Odella Nelson', 'Year 7', '2024-09-12', 'Thursday', '17:00:00', '18:00:00'),
('Patrick Donnard', 'Year 7', '2024-09-13', 'Friday', '17:00:00', '18:00:00'),
('Lena Hernandez', 'Year 7', '2024-09-14', 'Saturday', '17:00:00', '18:00:00'),
('Darren Powers', 'Year 6', '2024-09-09', 'Monday', '18:00:00', '19:00:00'),
('Janet Molinari', 'Year 6', '2024-09-10', 'Tuesday', '18:00:00', '19:00:00'),
('Ted Butterfield', 'Year 6', '2024-09-11', 'Wednesday', '18:00:00', '19:00:00'),
('Kunst Miller', 'Year 6', '2024-09-12', 'Thursday', '18:00:00', '19:00:00'),
('Paul Stevenson', 'Year 6', '2024-09-13', 'Friday', '18:00:00', '19:00:00'),
('Brendan Sweed', 'Year 6', '2024-09-14', 'Saturday', '18:00:00', '19:00:00'),
('Karen Daniels', 'GCSE', '2024-09-14', 'Saturday', '10:00:00', '11:00:00'),
('Henry MacAllister', '11 Plus', '2024-09-14', 'Saturday', '10:00:00', '11:00:00'),
('Joel Eaton', '11 Plus', '2024-09-14', 'Saturday', '11:00:00', '12:00:00'),
('Ken Brennan', '11 Plus', '2024-09-14', 'Saturday', '10:00:00', '12:00:00'),
('Stewart Carmichael', '11 Plus', '2024-09-14', 'Saturday', '13:00:00', '14:00:00'),
('Duane Noonan', 'GCSE', '2024-09-14', 'Saturday', '11:00:00', '12:00:00'),
('Julie Creighton', 'GCSE', '2024-09-14', 'Saturday', '10:00:00', '12:00:00'),
('Christopher Schild', 'GCSE', '2024-09-14', 'Saturday', '13:00:00', '14:00:00'),
('Paul Gonzalez', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Gary Mitchum', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Jim Sink', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Karl Braun', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Roger Barcio', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Parhena Norris', '11 Plus', '2024-09-14', 'Saturday', '14:00:00', '15:00:00'),
('Katherine Ducich', '11 Plus', '2024-09-14', 'Saturday', '15:00:00', '16:00:00'),
('Elpida Rittenbach', '11 Plus', '2024-09-16', 'Monday', '16:00:00', '18:00:00'),
('Rick Bensley', 'GCSE', '2024-09-17', 'Tuesday', '16:00:00', '18:00:00'),
('Gary Zandusky', 'GCSE', '2024-09-18', 'Wednesday', '16:00:00', '18:00:00'),
('Lena Cacioppo', 'GCSE', '2024-09-19', 'Thursday', '16:00:00', '18:00:00'),
('Janet Martin', 'GCSE', '2024-09-20', 'Friday', '16:00:00', '18:00:00');


select * from students

--STEP 6
--insert parent records into Parents Table
INSERT INTO parents (ParentFname, ParentSname, Fees) VALUES
('Lena', 'Gute', 35),
('Jonathan', 'Van', 35),
('Sally', 'Donnell', 35),
('Sandra', 'Hoffman', 35),
('Helen', 'Allen', 35),
('Maureen', 'Maddox', 50),
('Justin', 'Pawlan', 50),
('Tamara', 'Kriz', 50),
('Stephanie', 'Grove', 50),
('Neil', 'Donatelli', 50),
('Dave', 'Black', 50),
('Nora', 'Flanagan', 35),
('Ted', 'Burns', 35),
('Eric', 'Hoffmann', 35),
('Ruben', 'Blumstein', 35),
('Max', 'Abelman', 35),
('Becky', 'Hale', 35),
('Chad', 'Nguyen', 35),
('Jennifer', 'Cazamias', 35),
('Shirley', 'Ausman', 35),
('Joel', 'Smith', 35),
('Jim', 'Nelson', 35),
('David', 'Donnard', 35),
('Robert', 'Hernandez', 35),
('Sally', 'Powers', 35),
('Frank', 'Molinari', 35),
('Alice', 'Butterfield', 35),
('Mark', 'Miller', 35),
('Mary', 'Stevenson', 35),
('Cassandra', 'Sweed', 35),
('Valerie', 'Daniels', 50),
('Fred', 'MacAllister', 35),
('Maria', 'Eaton', 35),
('Bruce', 'Brennan', 35),
('Logan', 'Carmichael', 35),
('Heather', 'Noonan', 50),
('Laurel', 'Creighton', 50),
('Joseph', 'Schild', 50),
('Victoria', 'Gonzalez', 35),
('Jonathan', 'Mitchum', 35),
('Joni', 'Sink', 35),
('David', 'Braun', 35),
('Valerie', 'Barcio', 35),
('Erin', 'Norris', 35),
('Christopher', 'Ducich', 35),
('David', 'Rittenbach', 35),
('Ken', 'Bensley', 50),
('Dianna', 'Zandusky', 50),
('Logan', 'Cacioppo', 50),
('Kelly', 'Martin', 50);


--STEP 7
-- We need to update 'parid' and 'stdid' in respective tables as Foreign Key
--We can do this because no students have similar surname. 
--If this is the case, we have to work out how to do this
--First check to ensure there are no similar surnames
select parentSname, count(*) sim_Sname from parents
Group by parentSname
Having count(*) = 1


--STEP 8
--We extract each Student Surname from the stdent table to use as 
--common column with parent table. 
select * from students
select * from parents
Select right([stdnames], len([stdnames]) - CHARINDEX(' ', [stdnames]))  from [students]

--STEP 9
--Update students table with the Parent ID as Foreign key
UPDATE s
SET s.parid = p.Parid
FROM [dbo].[students] s
INNER JOIN [dbo].[parents] p 
    ON p.ParentSname = RIGHT(s.[stdnames], LEN(s.[stdnames]) - CHARINDEX(' ', s.[stdnames]))


--STEP 10
--Update parent table with the Students ID as Foreign key
UPDATE p
SET p.stdid = s.stdid
FROM [dbo].[students] s
INNER JOIN [dbo].[parents] p 
    ON p.ParentSname = RIGHT(s.[stdnames], LEN(s.[stdnames]) - CHARINDEX(' ', s.[stdnames]))


--STEP 11
-----------------------------------------------------------------
--Create student attendance from student table 
Select  * into std_attendance_register 
from [dbo].[students]

--STEP 12
--Drop parid colum 
alter table std_attendance_register
drop column parid

--STEP 13
--Add attended (Y/N) column
alter table std_attendance_register
add attended varchar(5)

--STEP 14
--Update std_attendance 'attended column as Yes' for all
update [dbo].[std_attendance]
Set [attended] = 'Yes'

--STEP 15
select * from std_attendance
order by stdid

--STEP 16
alter table std_attendance_register 
add tempId int NOT NULL default -1;

--STEP 17
update std_attendance 
set tempId = stdid;
 
--STEP 18
ALTER TABLE std_attendance_register
DROP column stdid;

--STEP 19
EXEC sp_rename 'std_attendance_register.TempID', 'stdid', 'COLUMN';

--STEP 20
delete from std_attendance_register
where stdid = -1

--STEP 21
--Identify students starting on Monday's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-02' or startday = 'Monday'
order by startdate

--STEP 22
--Update the below to 2024-09-09
--100	Claire Gute	11 Plus	2024-09-02	Monday	17:00:00 	18:00:00	 Yes
--112	Harold Pawlan	GCSE	2024-09-02	Monday	18:00:00  	19:00:00	 Yes
--124	Emily Burns	Year 9	2024-09-02	Monday	19:00:00    20:00:00 Yes

--STEP 23
insert into std_attendance_register values 
('Claire Gute', '11 Plus','2024-09-02','Monday','17:00:00', '18:00:00',	 'Yes', 100),
('Harold Pawlan','GCSE','2024-09-02', 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9','2024-09-02', 'Monday', '19:00:00', '20:00:00', 'Yes', 124)
--If you do this, you'll keep changing the dates even with long rows. 
--So use Parameters.Remember to change the stdid position

--STEP 24
Create Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00',	 'Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124)

--STEP 25
exec mon_attend @ddate = '2024-09-09'

--STEP 26
select * from std_attendance_register where stdid in (100, 112, 124)
order by startdate
select distinct startdate, stdnames from std_attendance Where startday = 'Monday'
and stdid not in (100, 112, 124)
order by startdate

--STEP 27
--Now edit stored procedure to include new Monday attendees

--STEP 28
Alter Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00', 'Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124),
('Linda Cazamias','Year 7', 	@ddate,	'Monday', '17:00:00','18:00:00','Yes',136),
('Darren Powers','Year 6', @ddate,	'Monday', '18:00:00','19:00:00','Yes',148)

--STEP 29
select * from std_attendance_register where startday = 'Monday'
and stdid not in (100, 112, 124, 136, 148)
order by startdate

--STEP 30
exec mon_attend @ddate = '2024-09-23'

--STEP 31
Alter Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00', 'Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124),
('Linda Cazamias','Year 7', 	@ddate,	'Monday', '17:00:00','18:00:00','Yes',136),
('Darren Powers','Year 6', @ddate,	'Monday', '18:00:00','19:00:00','Yes',148),
('Elpida Rittenbach','11 Plus',@ddate,'Monday','16:00:00','18:00:00','Yes',190)

--STEP 32
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Monday'
Order by startdate, stdnames

--STEP 33
exec mon_attend @ddate = '2024-09-30'

