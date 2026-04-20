--STEP 1
--Create Database TTC
create database TTC

--STEP 2
--Create Parents Table
Use TTC
create table parents (
Parid int identity(100,2) Primary Key,
ParentFname varchar(150),
ParentSname varchar(150),
Fees float
)

--STEP 3
--Create Students Table
USE TTC
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
Having count(*) > 1

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
----------------------------------------------------------------
--NEW EDITED CODES FROM 30/01/2024
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
update [dbo].[std_attendance_register]
Set [attended] = 'Yes'

--STEP 15
select * from std_attendance_register
order by stdid

--STEP 16
alter table std_attendance_register 
add tempId int NOT NULL default -1;

--STEP 17
update std_attendance_register 
set tempId = stdid;

--STEP 18
ALTER TABLE std_attendance_register
DROP column stdid;

--STEP 19
EXEC sp_rename 'std_attendance_register.TempID', 'stdid', 'COLUMN';

--STEP 20
delete from std_attendance_register
where stdid = -1

--STEP 21 // Start Wed Stored Prodecure Here
--Identify students starting on Monday's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-02' or startday = 'Monday'
order by startdate


--STEP 22 / Just for explaination. Don't need to run code.
--Update the below to 2024-09-09
--100	Claire Gute	11 Plus	2024-09-02	Monday	17:00:00 	18:00:00	 Yes
--112	Harold Pawlan	GCSE	2024-09-02	Monday	18:00:00  	19:00:00	 Yes
--124	Emily Burns	Year 9	2024-09-02	Monday	19:00:00    20:00:00 Yes

--STEP 23 / Just for explaination. Don't need to run code.
--insert into std_attendance_register values 
--('Claire Gute', '11 Plus','2024-09-02','Monday','17:00:00', '18:00:00',	 'Yes', 100),
--('Harold Pawlan','GCSE','2024-09-02', 'Monday', '18:00:00', '19:00:00',' Yes', 112),
--('Emily Burns','Year 9','2024-09-02', 'Monday', '19:00:00', '20:00:00', 'Yes', 124)
--If you do this, you'll keep changing the dates even with long rows. 
--So use Parameters.Remember to change the stdid position

--STEP 24
Create Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00','Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124)

--STEP 25
exec mon_attend @ddate = '2024-09-09'

--STEP 26
select * from std_attendance_register where stdid in (100, 112, 124)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Monday'
and stdid not in (100, 112, 124)
order by startdate

--STEP 27 / Just for explaination. Don't need to run code.
--Now edit stored procedure to include new Monday attendees

--STEP 28
Alter Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00', 'Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124),
('Linda Cazamias','Year 7', @ddate,	'Monday', '17:00:00','18:00:00','Yes',136),
('Darren Powers','Year 6', @ddate,	'Monday', '18:00:00','19:00:00','Yes',148)

--STEP 29
exec mon_attend @ddate = '2024-09-16'

--STEP 30
Alter Procedure mon_attend @ddate date
as
insert into std_attendance_register values 
('Claire Gute', '11 Plus',@ddate,'Monday','17:00:00', '18:00:00', 'Yes', 100),
('Harold Pawlan','GCSE',@ddate, 'Monday', '18:00:00', '19:00:00',' Yes', 112),
('Emily Burns','Year 9',@ddate, 'Monday', '19:00:00', '20:00:00', 'Yes', 124),
('Linda Cazamias','Year 7', @ddate,	'Monday', '17:00:00','18:00:00','Yes',136),
('Darren Powers','Year 6', @ddate,	'Monday', '18:00:00','19:00:00','Yes',148),
('Elpida Rittenbach','11 Plus',@ddate,'Monday','16:00:00','18:00:00','Yes',190)

--STEP 31
exec mon_attend @ddate = '2024-09-23'


--STEP 32
select * from std_attendance_register where startday = 'Monday'
and stdid not in (100, 112, 124, 136, 148)
order by startdate

--STEP 32
exec mon_attend @ddate = '2024-09-30'

--STEP 33
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Monday'
Order by stdnames,startdate 



                         --NEW STEPS CLEANING OR REMOVING DUPLICATES
--STEP 1 Use Window Functions (Row_Number) to identify where there are repetitions of Unique Values

SELECT stdid,
        ROW_NUMBER() OVER (PARTITION BY stdnames, stdprogram, startdate, startday, 
                                        starttime, endtime, attended, stdid 
						   ORDER BY stdid) AS row_num
FROM std_attendance_register
Where startdate <='2024-09-30' and startday = 'Monday'

--STEP 2 // Turn STEP 1 into Subquery using the Select Clause.

SELECT stdid 
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY stdnames, stdprogram, startdate, startday, 
                                           starttime, endtime, attended, stdid 
                              ORDER BY stdid) AS row_num
    FROM std_attendance_register
	Where startdate <='2024-09-30' and startday = 'Monday'
) AS subquery
WHERE row_num > 1;

--STEP 3 // Delete where stdid is greater than 1 Using Delete From Clause


DELETE FROM std_attendance_register
WHERE stdid IN (
    SELECT stdid
    FROM (
        SELECT stdid, 
               ROW_NUMBER() OVER (PARTITION BY stdnames, stdprogram, startdate, startday, 
                                                 starttime, endtime, attended, stdid 
                                  ORDER BY stdid) AS row_num
        FROM std_attendance_register
		Where startdate <='2024-09-30' and startday = 'Monday'
    ) AS subquery
    WHERE row_num > 1
);

select * from std_attendance_register
--Lets Deliberately run and of the Stored Procedure Twice [STEP 25]. 
--We see the result first an then delete.
INSERT INTO std_attendance_register VALUES 
('Claire Gute', '11 Plus', '2024-09-02', 'Monday', '17:00:00', '18:00:00', 'Yes', 100)
--STEP 4 THEN, RUN SYEP 1, 2 AND 3



Create Procedure wed_attend @ddate date 
as
insert into std_attendance_register values
('Sean Donnell','11 Plus',@ddate,'Wednesday','17:00:00','18:00:00','Yes',104),
('Alejandro Grove','GCSE',@ddate,'Wednesday','18:00:00','19:00:00','Yes',116),
('Tracy Blumstein','Year 9',@ddate, 'Wednesday','19:00:00','20:00:00','Yes',128)

exec wed_attend @ddate = '2024-09-11'

select * from std_attendance_register
where startdate <= '2024-09-30' and startday = 'Wednesday'

select * from std_attendance_register
where startdate <='2024-09-30' and startday = 'Wednesday'
order by startdate, stdnames

Alter Procedure wed_attend @ddate date 
as
insert into std_attendance_register values
('Sean Donnell','11 Plus',@ddate,'Wednesday','17:00:00','18:00:00','Yes',104),
('Alejandro Grove','GCSE',@ddate,'Wednesday','18:00:00','19:00:00','Yes',116),
('Tracy Blumstein','Year 9',@ddate,'Wednesday','19:00:00','20:00:00','Yes',128),
('Erin Smith	', 'Year 7', @ddate,'Wednesday','17:00:00','18:00:00','Yes',140),
('Ted Butterfield','Year 6',@ddate,'Wednesday','18:00:00','19:00:00','Yes',152)

exec wed_attend @ddate = '2024-09-18'



--STORED PROCEDURE FOR TUESDAY
--Identify students starting on Tuesday's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-03' or startday = 'Tuesday'
order by startdate


--Update the below to 2024-09-10
--Darrin Van	11 Plus	2024-09-03	Tuesday	17:00:00	18:00:00	Yes	102
--Pete Kriz	GCSE	2024-09-03	Tuesday	18:00:00	19:00:00	Yes	114
--Eric Hoffmann	Year 9	2024-09-03	Tuesday	19:00:00	20:00:00	Yes	126


--CREATE TUE_ATTEND STORED PROCEDURE
Create Procedure tue_attend @ddate date
as
insert into std_attendance_register values 
('Darrin Van', '11 Plus',@ddate,'Tuesday','17:00:00', '18:00:00', 'Yes', 102),
('Pete Kriz','GCSE',@ddate, 'Tuesday', '18:00:00', '19:00:00',' Yes', 114),
('Eric Hoffmann','Year 9',@ddate, 'Tuesday', '19:00:00', '20:00:00', 'Yes', 126)

--Accidently run this and entered attendance for monday with 2024-09-10 date
exec mon_attend @ddate = '2024-09-10'

 --delete particular row with condition
DELETE FROM std_attendance_register WHERE startdate = '2024-09-10' and startday = 'Monday';

--execute stored procedure for tuesday=2024-09-10
exec tue_attend @ddate = '2024-09-10'

--check detail
select * from std_attendance_register where stdid in (102, 114, 126)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Tuesday'
and stdid not in (102, 114, 126)
order by startdate


--Now edit stored procedure to include new Tuesday attendees
--Ruben Ausman	Year 7	2024-09-10	Tuesday	17:00:00	18:00:00	Yes	138
--Janet Molinari	Year 6	2024-09-10	Tuesday	18:00:00	19:00:00	Yes	150

Alter Procedure tue_attend @ddate date
as
insert into std_attendance_register values 
('Darrin Van', '11 Plus',@ddate,'Tuesday','17:00:00', '18:00:00', 'Yes', 102),
('Pete Kriz','GCSE',@ddate, 'Tuesday', '18:00:00', '19:00:00',' Yes', 114),
('Eric Hoffmann','Year 9',@ddate,'Tuesday', '19:00:00', '20:00:00', 'Yes', 126),
('Ruben Ausman','Year 7', @ddate,'Tuesday', '17:00:00','18:00:00','Yes',138),
('Janet Molinari','Year 6', @ddate,'Tuesday', '18:00:00','19:00:00','Yes',150)


exec tue_attend @ddate = '2024-09-17'

--check detail
select * from std_attendance_register where stdid in (102, 114, 126, 138, 150)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Tuesday'
and stdid not in (102, 114, 126, 138, 150)
order by startdate

--alter tue_attend final time to add last student
--Rick Bensley	GCSE	2024-09-17	Tuesday	16:00:00	18:00:00	Yes	192

Alter Procedure tue_attend @ddate date
as
insert into std_attendance_register values 
('Darrin Van', '11 Plus',@ddate,'Tuesday','17:00:00', '18:00:00', 'Yes', 102),
('Pete Kriz','GCSE',@ddate, 'Tuesday', '18:00:00', '19:00:00',' Yes', 114),
('Eric Hoffmann','Year 9',@ddate,'Tuesday', '19:00:00', '20:00:00', 'Yes', 126),
('Ruben Ausman','Year 7', @ddate,'Tuesday', '17:00:00','18:00:00','Yes',138),
('Janet Molinari','Year 6', @ddate,'Tuesday', '18:00:00','19:00:00','Yes',150),
('Rick Bensley','GCSE', @ddate,'Tuesday','16:00:00','18:00:00','Yes',192)


exec tue_attend @ddate = '2024-09-24'

--check detail
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Tuesday'
Order by stdnames,startdate 
----------------------------------------------------------------------------------

-------------------------------------------------------------------------

--STORED PROCEDURE FOR THURSDAY
--Identify students starting on Thursdsy's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-05' or startday = 'Thursday'
order by startdate


--Update the below to 2024-09-12
--Brosina Hoffman	11 Plus	2024-09-05	Thursday	17:00:00	18:00:00	Yes	106
--Zuschuss Donatelli	GCSE	2024-09-05	Thursday	18:00:00	19:00:00	Yes	118
--Matt Abelman	Year 8	2024-09-05	Thursday	19:00:00	20:00:00	Yes	130

--CREATE THUR_ATTEND STORED PROCEDURE
Create Procedure thur_attend @ddate date
as
insert into std_attendance_register values 
('Brosina Hoffman', '11 Plus',@ddate,'Thursday','17:00:00', '18:00:00', 'Yes', 106),
('Zuschuss Donatelli','GCSE',@ddate, 'Thursday', '18:00:00', '19:00:00',' Yes', 118),
('Matt Abelman','Year 8',@ddate, 'Thursday', '19:00:00', '20:00:00', 'Yes', 130)

--execute stored procedure for thursday=2024-09-12
exec thur_attend @ddate = '2024-09-12'

--check detail
select * from std_attendance_register where stdid in (106, 118, 130)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Thursday'
and stdid not in (106, 118, 130)
order by startdate


--Now edit stored procedure to include new Thursday attendees
--Odella Nelson	Year 7	2024-09-12	Thursday	17:00:00	18:00:00	Yes	142
--Kunst Miller	Year 6	2024-09-12	Thursday	18:00:00	19:00:00	Yes	154

Alter Procedure thur_attend @ddate date
as
insert into std_attendance_register values 
('Brosina Hoffman', '11 Plus',@ddate,'Thursday','17:00:00', '18:00:00', 'Yes', 106),
('Zuschuss Donatelli','GCSE',@ddate, 'Thursday', '18:00:00', '19:00:00',' Yes', 118),
('Matt Abelman','Year 8',@ddate, 'Thursday', '19:00:00', '20:00:00', 'Yes', 130),
('Odella Nelson','Year 7', @ddate,'Thursday','17:00:00','18:00:00',	'Yes', 142),
('Kunst Miller','Year 6', @ddate,'Thursday','18:00:00','19:00:00','Yes', 154)


exec thur_attend @ddate = '2024-09-19'

--check detail
select * from std_attendance_register where stdid in (106,118,130,142,154)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Thursday'
and stdid not in (106,118,130,142,154)
order by startdate

--alter thur_attend final time to add last student
--Lena Cacioppo	GCSE	2024-09-19	Thursday	16:00:00	18:00:00	Yes	196

Alter Procedure thur_attend @ddate date
as
insert into std_attendance_register values 
('Brosina Hoffman', '11 Plus',@ddate,'Thursday','17:00:00', '18:00:00', 'Yes', 106),
('Zuschuss Donatelli','GCSE',@ddate, 'Thursday', '18:00:00', '19:00:00',' Yes', 118),
('Matt Abelman','Year 8',@ddate, 'Thursday', '19:00:00', '20:00:00', 'Yes', 130),
('Odella Nelson','Year 7', @ddate,'Thursday','17:00:00','18:00:00',	'Yes', 142),
('Kunst Miller','Year 6', @ddate,'Thursday','18:00:00','19:00:00','Yes', 154),
('Lena Cacioppo','GCSE', @ddate,'Thursday','16:00:00','18:00:00','Yes',	196)


exec thur_attend @ddate = '2024-09-26'

--check detail
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Thursday'
Order by stdnames,startdate 

----------------------------------------------------------------------------------

-------------------------------------------------------------------------

--STORED PROCEDURE FOR FRIDAY
--Identify students starting on Friday's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-06' or startday = 'Friday'
order by startdate


--Update the below to 2024-09-13
--Andrew Allen	11 Plus	2024-09-06	Friday	17:00:00	18:00:00	Yes	108
--Ken Black	GCSE	2024-09-06	Friday	18:00:00	19:00:00	Yes	120
--Gene Hale	Year 8	2024-09-06	Friday	19:00:00	20:00:00	Yes	132


--CREATE FRI_ATTEND STORED PROCEDURE
Create Procedure fri_attend @ddate date
as
insert into std_attendance_register values 
('Andrew Allen', '11 Plus',@ddate,'Friday','17:00:00', '18:00:00', 'Yes', 108),
('Ken Black','GCSE',@ddate, 'Friday', '18:00:00', '19:00:00',' Yes', 120),
('Gene Hale','Year 8',@ddate, 'Friday', '19:00:00', '20:00:00', 'Yes', 132)

--execute stored procedure for friday=2024-09-13
exec fri_attend @ddate = '2024-09-13'

--check detail
select * from std_attendance_register where stdid in (108, 120, 132)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Friday'
and stdid not in (108, 120, 132)
order by startdate


--Now edit stored procedure to include new Friday attendees
--Patrick Donnard	Year 7	2024-09-13	Friday	17:00:00	18:00:00	Yes	144
--Paul Stevenson	Year 6	2024-09-13	Friday	18:00:00	19:00:00	Yes	156

Alter Procedure fri_attend @ddate date
as
insert into std_attendance_register values 
('Andrew Allen', '11 Plus',@ddate,'Friday','17:00:00', '18:00:00', 'Yes', 108),
('Ken Black','GCSE',@ddate, 'Friday', '18:00:00', '19:00:00',' Yes', 120),
('Gene Hale','Year 8',@ddate, 'Friday', '19:00:00', '20:00:00', 'Yes', 132),
('Patrick Donnard','Year 7', @ddate,'Friday','17:00:00','18:00:00',	'Yes', 144),
('Paul Stevenson','Year 6', @ddate,'Friday','18:00:00','19:00:00','Yes', 156)


exec fri_attend @ddate = '2024-09-20'

--check detail
select * from std_attendance_register where stdid in (108,120,132,144,156)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Friday'
and stdid not in (108,120,132,144,156)
order by startdate

--alter fri_attend final time to add last student
--Janet Martin	GCSE	2024-09-20	Friday	16:00:00	18:00:00	Yes	198

Alter Procedure fri_attend @ddate date
as
insert into std_attendance_register values 
('Andrew Allen', '11 Plus',@ddate,'Friday','17:00:00', '18:00:00', 'Yes', 108),
('Ken Black','GCSE',@ddate, 'Friday', '18:00:00', '19:00:00',' Yes', 120),
('Gene Hale','Year 8',@ddate, 'Friday', '19:00:00', '20:00:00', 'Yes', 132),
('Patrick Donnard','Year 7', @ddate,'Friday','17:00:00','18:00:00',	'Yes', 144),
('Paul Stevenson','Year 6', @ddate,'Friday','18:00:00','19:00:00','Yes', 156),
('Janet Martin','GCSE', @ddate,'Friday','16:00:00','18:00:00','Yes', 198)


exec fri_attend @ddate = '2024-09-27'

--check detail
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Friday'
Order by stdnames,startdate 

----------------------------------------------------------------------------------

-------------------------------------------------------------------------

--STORED PROCEDURE FOR SATURDAY
--Identify students starting on Saturday's, update to end of September 2024
select * from std_attendance_register
where startdate = '2024-09-07' or startday = 'Saturday'
order by startdate


--Update the below to 2024-09-14
--Irene Maddox	GCSE	2024-09-07	Saturday	17:00:00	18:00:00	Yes	110
--Sandra Flanagan	Year 9	2024-09-07	Saturday	18:00:00	19:00:00	Yes	122
--Steve Nguyen	Year 8	2024-09-07	Saturday	19:00:00	20:00:00	Yes	134


--CREATE SAT_ATTEND STORED PROCEDURE
Create Procedure sat_attend @ddate date
as
insert into std_attendance_register values 
('Irene Maddox', 'GCSE',@ddate,'Saturday','17:00:00', '18:00:00', 'Yes', 110),
('Sandra Flanagan','Year 9',@ddate, 'Saturday', '18:00:00', '19:00:00',' Yes', 122),
('Steve Nguyen','Year 8',@ddate, 'Saturday', '19:00:00', '20:00:00', 'Yes', 134)

--execute stored procedure for Saturday=2024-09-14
exec sat_attend @ddate = '2024-09-14'

--check detail
select * from std_attendance_register where stdid in (110, 122, 134)
order by startdate
select distinct startdate, stdnames from std_attendance_register Where startday = 'Saturday'
and stdid not in (110, 122, 134)
order by startdate


--Now edit stored procedure to include new Saturday attendees
--Lena Hernandez	Year 7	2024-09-14	Saturday	17:00:00	18:00:00	Yes	146
--Brendan Sweed	Year 6	2024-09-14	Saturday	18:00:00	19:00:00	Yes	158
--Karen Daniels	GCSE	2024-09-14	Saturday	10:00:00	11:00:00	Yes	160
--Henry MacAllister	11 Plus	2024-09-14	Saturday	10:00:00	11:00:00	Yes	162
--Joel Eaton	11 Plus	2024-09-14	Saturday	11:00:00	12:00:00	Yes	164
--Ken Brennan	11 Plus	2024-09-14	Saturday	10:00:00	12:00:00	Yes	166
--Stewart Carmichael	11 Plus	2024-09-14	Saturday	13:00:00	14:00:00	Yes	168
--Duane Noonan	GCSE	2024-09-14	Saturday	11:00:00	12:00:00	Yes	170
--Julie Creighton	GCSE	2024-09-14	Saturday	10:00:00	12:00:00	Yes	172
--Christopher Schild	GCSE	2024-09-14	Saturday	13:00:00	14:00:00	Yes	174
--Paul Gonzalez	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	176
--Gary Mitchum	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	178
--Jim Sink	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	180
--Karl Braun	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	182
--Roger Barcio	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	184
--Parhena Norris	11 Plus	2024-09-14	Saturday	14:00:00	15:00:00	Yes	186
--Katherine Ducich	11 Plus	2024-09-14	Saturday	15:00:00	16:00:00	Yes	188

alter Procedure sat_attend @ddate date
as
insert into std_attendance_register values 
('Irene Maddox', 'GCSE',@ddate,'Saturday','17:00:00', '18:00:00', 'Yes', 110),
('Sandra Flanagan','Year 9',@ddate, 'Saturday', '18:00:00', '19:00:00',' Yes', 122),
('Steve Nguyen','Year 8',@ddate, 'Saturday', '19:00:00', '20:00:00', 'Yes', 134),
('Lena Hernandez','Year 7',@ddate,'Saturday','17:00:00','18:00:00','Yes', 146),
('Brendan Sweed','Year 6',@ddate,'Saturday','18:00:00','19:00:00','Yes', 158),
('Karen Daniels','GCSE',@ddate,'Saturday','10:00:00','11:00:00','Yes', 160),
('Henry MacAllister','11 Plus',@ddate,'Saturday','10:00:00','11:00:00','Yes', 162),
('Joel Eaton','11 Plus',@ddate,'Saturday','11:00:00','12:00:00','Yes', 164),
('Ken Brennan','11 Plus',@ddate,'Saturday','10:00:00','12:00:00','Yes', 166),
('Stewart Carmichael','11 Plus',@ddate,'Saturday','13:00:00','14:00:00','Yes', 168),
('Duane Noonan','GCSE',@ddate,'Saturday','11:00:00','12:00:00','Yes', 170),
('Julie Creighton','GCSE',@ddate,'Saturday','10:00:00','12:00:00','Yes', 172),
('Christopher Schild','GCSE',@ddate,'Saturday','13:00:00','14:00:00','Yes', 174),
('Paul Gonzalez','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 176),
('Gary Mitchum','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 178),
('Jim Sink','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 180),
('Karl Braun','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 182),
('Roger Barcio','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 184),
('Parhena Norris','11 Plus',@ddate,'Saturday','14:00:00','15:00:00','Yes', 186),
('Katherine Ducich','11 Plus',@ddate,'Saturday','15:00:00','16:00:00','Yes', 188)

exec sat_attend @ddate = '2024-09-21'

exec sat_attend @ddate = '2024-09-28'

--check detail
select * from std_attendance_register
Where startdate <='2024-09-30' and startday = 'Saturday'
Order by stdnames,startdate 
 -------------ALL WEEK STORED PROCEDURE BEEN CREATED--------------------------


 ---------------EXECUTE STORED PROCEDURE FROM OCTOBER 24 TILL JANUARY 25---------------------------------
 ----OCTOBER 2024 ATTENDANCE-------------------------------

exec  tue_attend @ddate =  '2024-10-01'
exec wed_attend @ddate =  '2024-10-02'
exec thur_attend @ddate =  '2024-10-03'
exec fri_attend @ddate =  '2024-10-04'
exec sat_attend @ddate =  '2024-10-05'
exec mon_attend @ddate =  '2024-10-07'
exec tue_attend @ddate =  '2024-10-08'
exec wed_attend @ddate =  '2024-10-09'
exec thur_attend @ddate =  '2024-10-10'
exec fri_attend @ddate =  '2024-10-11'
exec sat_attend @ddate =  '2024-10-12'
exec mon_attend @ddate =  '2024-10-14'
exec tue_attend @ddate =  '2024-10-15'
exec wed_attend @ddate =  '2024-10-16'
exec thur_attend @ddate =  '2024-10-17'
exec fri_attend @ddate =  '2024-10-18'
exec sat_attend @ddate =  '2024-10-19'
exec mon_attend @ddate =  '2024-10-21'
exec tue_attend @ddate =  '2024-10-22'
exec wed_attend @ddate =  '2024-10-23'
exec thur_attend @ddate =  '2024-10-24'
exec fri_attend @ddate =  '2024-10-25'
exec sat_attend @ddate =  '2024-10-26'
exec mon_attend @ddate =  '2024-10-28'
exec tue_attend @ddate =  '2024-10-29'
exec wed_attend @ddate =  '2024-10-30'
exec thur_attend @ddate =  '2024-10-31'

SELECT * FROM std_attendance_register
ORDER BY startdate
---------------------NOVEMBER 2024 ATTENDANCE----------------------

exec fri_attend @ddate =  '2024-11-01'
exec sat_attend @ddate =  '2024-11-02'
exec mon_attend @ddate =  '2024-11-04'
exec tue_attend @ddate =  '2024-11-05'
exec wed_attend @ddate =  '2024-11-06'
exec thur_attend @ddate =  '2024-11-07'
exec fri_attend @ddate =  '2024-11-08'
exec sat_attend @ddate =  '2024-11-09'
exec mon_attend @ddate =  '2024-11-11'
exec tue_attend @ddate =  '2024-11-12'
exec wed_attend @ddate =  '2024-11-13'
exec thur_attend @ddate =  '2024-11-14'
exec fri_attend @ddate =  '2024-11-15'
exec sat_attend @ddate =  '2024-11-16'
exec mon_attend @ddate =  '2024-11-18'
exec tue_attend @ddate =  '2024-11-19'
exec wed_attend @ddate =  '2024-11-20'
exec thur_attend @ddate =  '2024-11-21'
exec fri_attend @ddate =  '2024-11-22'
exec sat_attend @ddate =  '2024-11-23'
exec mon_attend @ddate =  '2024-11-25'
exec tue_attend @ddate =  '2024-11-26'
exec wed_attend @ddate =  '2024-11-27'
exec thur_attend @ddate =  '2024-11-28'
exec fri_attend @ddate =  '2024-11-29'
exec sat_attend @ddate =  '2024-11-30'

SELECT * FROM std_attendance_register
ORDER BY startdate

-------------------DECEMBER 2024 ATTENDANCE---------------------

exec mon_attend @ddate =  '2024-12-02'
exec tue_attend @ddate =  '2024-12-03'
exec wed_attend @ddate =  '2024-12-04'
exec thur_attend @ddate =  '2024-12-05'
exec fri_attend @ddate =  '2024-12-06'
exec sat_attend @ddate =  '2024-12-07'
exec mon_attend @ddate =  '2024-12-09'
exec tue_attend @ddate =  '2024-12-10'
exec wed_attend @ddate =  '2024-12-11'
exec thur_attend @ddate =  '2024-12-12'
exec fri_attend @ddate =  '2024-12-13'
exec sat_attend @ddate =  '2024-12-14'
exec mon_attend @ddate =  '2024-12-16'
exec tue_attend @ddate =  '2024-12-17'
exec wed_attend @ddate =  '2024-12-18'
exec thur_attend @ddate =  '2024-12-19'
exec fri_attend @ddate =  '2024-12-20'
exec sat_attend @ddate =  '2024-12-21'
exec mon_attend @ddate =  '2024-12-23'
exec tue_attend @ddate =  '2024-12-24'
exec wed_attend @ddate =  '2024-12-25'
exec thur_attend @ddate =  '2024-12-26'
exec fri_attend @ddate =  '2024-12-27'
exec sat_attend @ddate =  '2024-12-28'
exec mon_attend @ddate =  '2024-12-30'
exec tue_attend @ddate =  '2024-12-31'

SELECT * FROM std_attendance_register
ORDER BY startdate

----------------------JANUARY 2025 ATTENDANCE-----------------

exec wed_attend @ddate =  '2025-01-01'
exec thur_attend @ddate =  '2025-01-02'
exec fri_attend @ddate =  '2025-01-03'
exec sat_attend @ddate =  '2025-01-04'
exec mon_attend @ddate =  '2025-01-06'
exec tue_attend @ddate =  '2025-01-07'
exec wed_attend @ddate =  '2025-01-08'
exec thur_attend @ddate =  '2025-01-09'
exec fri_attend @ddate =  '2025-01-10'
exec sat_attend @ddate =  '2025-01-11'
exec mon_attend @ddate =  '2025-01-13'
exec tue_attend @ddate =  '2025-01-14'
exec wed_attend @ddate =  '2025-01-15'
exec thur_attend @ddate =  '2025-01-16'
exec fri_attend @ddate =  '2025-01-17'
exec sat_attend @ddate =  '2025-01-18'
exec mon_attend @ddate =  '2025-01-20'
exec tue_attend @ddate =  '2025-01-21'
exec wed_attend @ddate =  '2025-01-22'
exec thur_attend @ddate =  '2025-01-23'
exec fri_attend @ddate =  '2025-01-24'
exec sat_attend @ddate =  '2025-01-25'
exec mon_attend @ddate =  '2025-01-27'
exec tue_attend @ddate =  '2025-01-28'
exec wed_attend @ddate =  '2025-01-29'
exec thur_attend @ddate =  '2025-01-30'
exec fri_attend @ddate =  '2025-01-31'

SELECT * FROM std_attendance_register
ORDER BY startdate
