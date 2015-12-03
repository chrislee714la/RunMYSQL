create table DEPARTMENT
( DEPTCODE char(4),
  DEPTNAME varchar2(30),
  PHONEEXTENSION integer,
  CHAIRS_FACULTYID# char(9),
  ROOM integer NOT NULL,
  BUILDING char(3) NOT NULL,
  PRIMARY KEY (DEPTCODE),
  UNIQUE (CHAIRS_FACULTYID#, DEPTNAME, PHONEEXTENSION));
  
  
  
create table FACULTY
( DEPTCODE char(4) NOT NULL,
  FACULTYID# char(9),
  NAME varchar2(20) NOT NULL,
  RANK varchar2(20) NOT NULL,
  PHONEEXTENSTION integer NOT NULL,
  ROOM integer NOT NULL,
  BUILDING char(3) NOT NULL,
  PRIMARY KEY (FACULTYID#),
  UNIQUE (PHONEEXTENSTION),
  FOREIGN KEY (DEPTCODE) REFERENCES DEPARTMENT(DEPTCODE));

  
create table COURSE
( DEPTCODE char(4),
  COURSEID integer,
  TITLE varchar2(40),
  NUMCREDITS integer,
  PRIMARY KEY (COURSEID, DEPTCODE),
  UNIQUE (TITLE),
  FOREIGN KEY (DEPTCODE) REFERENCES DEPARTMENT(DEPTCODE));

create table STUDENT
( DEPTCODE char(4) NOT NULL,
  UIDCODE  char(9),
  STUDENTNAME varchar2(30) NOT NULL,
  ACADEMICSTATUS varchar2(10) NOT NULL,
  PRIMARY KEY (UIDCODE),
  FOREIGN KEY (DEPTCODE) REFERENCES DEPARTMENT(DEPTCODE));


create table SECTION
( DEPTCODE char(4),
  COURSEID integer,
  SECTIONNUMBER integer,
  FACULTYID# char(9) NOT NULL,
  PRIMARY KEY (DEPTCODE, COURSEID, SECTIONNUMBER),
  FOREIGN KEY (DEPTCODE, COURSEID) REFERENCES COURSE(DEPTCODE, COURSEID),
  FOREIGN KEY (FACULTYID#) REFERENCES FACULTY(FACULTYID#));


 
create table REQUIRES
( DEPTCODE_COURSE char(4),
  COURSEID_COURSE integer,
  DEPTCODE_PREREQUISITE char(4),
  COURSEID_PREREQUISITE integer,
  PRIMARY KEY (DEPTCODE_COURSE, COURSEID_COURSE, DEPTCODE_PREREQUISITE, COURSEID_PREREQUISITE),
  FOREIGN KEY (DEPTCODE_COURSE, COURSEID_COURSE) REFERENCES COURSE(DEPTCODE, COURSEID),
  FOREIGN KEY (DEPTCODE_PREREQUISITE, COURSEID_PREREQUISITE) REFERENCES COURSE(DEPTCODE, COURSEID));

create table CLASSROOM
( ROOM integer,
  BUILDING char(3),
  NUMSEATS integer NOT NULL,
  PRIMARY KEY (ROOM, BUILDING));
  
  
  
create table OFFICE
( ROOM integer,
  BUILDING char(3),
  TOTALAREA varchar2(20) NOT NULL,
  PRIMARY KEY (ROOM, BUILDING));
  
  
create table TIMESLOT
( DAY varchar2(30),
  BEGIN integer,
  END integer,
  PRIMARY KEY (DAY, BEGIN, END));
  
  
create table TRANSCRIPT
( UIDCODE char(9),
  DEPTCODE char(4),
  COURSEID integer,
  GRADE varchar2(2),
  PRIMARY KEY (UIDCODE, DEPTCODE, COURSEID, GRADE),
  FOREIGN KEY (UIDCODE) REFERENCES STUDENT(UIDCODE),
  FOREIGN KEY (DEPTCODE, COURSEID) REFERENCES COURSE(DEPTCODE, COURSEID));  
   
  
create table OFFICEHOURS
( 
  FACULTYID# char(9),
  DAY varchar2(30),
  BEGIN integer,
  END integer,
  PRIMARY KEY (FACULTYID#, DAY, BEGIN, END),
  FOREIGN KEY (FACULTYID#) REFERENCES FACULTY(FACULTYID#));
  
    
create table TIMEANDPLACE
( DAY varchar2(30),
  BEGIN integer,
  END integer,
  ROOM integer,
  BUILDING char(3),
  DEPTCODE char(4),
  COURSEID integer,
  SECTIONNUMBER integer,
  PRIMARY KEY (DAY, BEGIN, END, ROOM, BUILDING, DEPTCODE, COURSEID, SECTIONNUMBER),
  FOREIGN KEY (DEPTCODE, COURSEID, SECTIONNUMBER) REFERENCES SECTION(DEPTCODE, COURSEID, SECTIONNUMBER),
  FOREIGN KEY (ROOM, BUILDING) REFERENCES CLASSROOM(ROOM, BUILDING),
  FOREIGN KEY (DAY, BEGIN, END) REFERENCES TIMESLOT(DAY, BEGIN, END));

  
create table ENROLLS
( UIDCODE  char(9),
  DEPTCODE char(4),
  COURSEID integer,
  SECTIONNUMBER integer,
  PRIMARY KEY (UIDCODE, DEPTCODE, COURSEID, SECTIONNUMBER),
  FOREIGN KEY (DEPTCODE, COURSEID, SECTIONNUMBER) REFERENCES SECTION(DEPTCODE, COURSEID, SECTIONNUMBER),
  FOREIGN KEY (UIDCODE) REFERENCES STUDENT(UIDCODE));


alter table DEPARTMENT
add constraint DCFI foreign key (CHAIRS_FACULTYID#) REFERENCES FACULTY(FACULTYID#) deferrable
;


alter table DEPARTMENT
add constraint DRBO foreign key (ROOM, BUILDING) REFERENCES OFFICE(ROOM, BUILDING) deferrable
;

alter table FACULTY
add constraint FRBO foreign key (ROOM, BUILDING) REFERENCES OFFICE(ROOM, BUILDING) deferrable
;

set constraint all deferred;

insert into DEPARTMENT values ('Math','Mathematics',1001,'900000001',119,'AAA');  
insert into DEPARTMENT values ('CmpS','Computer Science',1002,'900000002',102,'AAA');
insert into DEPARTMENT values ('Biol','Biology',1003,'900000003',103,'BBB');
insert into DEPARTMENT values ('Ceng','Civil Engineering',1004,'900000004',104,'BBB');
insert into DEPARTMENT values ('Thea','Theater',1005,'900000005',105,'BBB');
insert into DEPARTMENT values ('Comm','Communications',1006,'900000006',106,'CCC');
insert into DEPARTMENT values ('Engl','English',1007,'900000007',107,'CCC');
insert into DEPARTMENT values ('Buss','Business',1008,'900000008',108,'CCC');
insert into DEPARTMENT values ('Hist','History',1009,'900000009',109,'CCC');
insert into DEPARTMENT values ('Mktg','Marketing',1010,'900000010',110,'DDD');
insert into DEPARTMENT values ('Acct','Accounting',1011,'900000011',111,'DDD');
insert into DEPARTMENT values ('Anth','Anthropology',1012,'900000012',112,'DDD');
insert into DEPARTMENT values ('AHis','Art History',1013,'900000013',113,'EEE');
insert into DEPARTMENT values ('Asty','Astronomy',1014,'900000014',114,'EEE');
insert into DEPARTMENT values ('Attr','Athletic Training',1015,'900000015',115,'EEE');
insert into DEPARTMENT values ('Beng','Bioengineering',1016,'900000016',116,'FFF');
insert into DEPARTMENT values ('Chem','Chemistry',1017,'900000017',117,'FFF');
insert into DEPARTMENT values ('CHea','Community Health',1018,'900000018',118,'FFF');
insert into DEPARTMENT values ('Econ','Economics',1019,'900000019',119,'FFF');




insert into FACULTY values ('Math','900000001','John Smith','full',8001,119,'AAA');
insert into FACULTY values ('CmpS','900000002','Bill Welly','full',8002,102,'AAA');
insert into FACULTY values ('Biol','900000003','Wendy Mills','full',8003,302,'AAA');
insert into FACULTY values ('Ceng','900000004','Betty Frank','full',8004,303,'AAA');
insert into FACULTY values ('Thea','900000005','Tim Jones','full',8005,103,'BBB');
insert into FACULTY values ('Comm','900000006','Tommy Nak','full',8006,104,'BBB');
insert into FACULTY values ('Engl','900000007','Susan Welch','full',8007,105,'BBB');
insert into FACULTY values ('Buss','900000008','Albert Cole','full',8008,303,'BBB');
insert into FACULTY values ('Hist','900000009','Victor Olin','full',8009,106,'CCC');
insert into FACULTY values ('Mktg','900000010','Kim Perry','full',8010,107,'CCC');
insert into FACULTY values ('Acct','900000011','Wally Johnson','full',8011,108,'CCC');
insert into FACULTY values ('Anth','900000012','Joey Williams','full',8012,109,'CCC');
insert into FACULTY values ('AHis','900000013','Zach Brown','full',8013,110,'DDD');
insert into FACULTY values ('Asty','900000014','Kurt Miller','full',8014,111,'DDD');
insert into FACULTY values ('Attr','900000015','Carl Robinson','full',8015,112,'DDD');
insert into FACULTY values ('Beng','900000016','Jackie Wright','full',8016,303,'DDD');
insert into FACULTY values ('Chem','900000017','Chris Garcia','full',8017,113,'EEE');
insert into FACULTY values ('CHea','900000018','Jennifer Walker','full',8018,114,'EEE');
insert into FACULTY values ('Econ','900000019','Sofia Allen','full',8019,115,'EEE');
insert into FACULTY values ('Math','900000020','Ray Hall','full',8020,303,'EEE');
insert into FACULTY values ('CmpS','900000021','Laura Diaz','adj',8021,116,'FFF');
insert into FACULTY values ('CmpS','900000022','Jessica Jenkins','adj',8022,117,'FFF');
insert into FACULTY values ('Biol','900000023','Robby Sanders','assoc',8023,118,'FFF');
insert into FACULTY values ('Ceng','900000024','Paul Ross','assoc',8024,119,'FFF');
insert into FACULTY values ('Thea','900000025','Johnny Welby','assoc',8025,300,'GGG');
insert into FACULTY values ('Comm','900000026','Henry Reed','adj',8026,301,'GGG');
insert into FACULTY values ('Engl','900000027','Mary Howard','adj',8027,302,'GGG');
insert into FACULTY values ('Buss','900000028','Ted Price','asst',8028,303,'GGG');
insert into FACULTY values ('Hist','900000029','Vicky Bennett','assoc',8029,304,'GGG');
insert into FACULTY values ('Mktg','900000030','Xavier Morris','asst',8030,305,'GGG');
insert into FACULTY values ('Mktg','900000031','Hal Gordon','assoc',8031,306,'GGG');



insert into COURSE values ('Math',101,'Calc I',3);
insert into COURSE values ('Math',201,'Calc II',3);
insert into COURSE values ('Math',301,'Calc III',4);
insert into COURSE values ('Math',401,'Calc IV',4);
insert into COURSE values ('CmpS',101,'Intro to CS',6);
insert into COURSE values ('CmpS',102,'Intro to Programming',4);
insert into COURSE values ('CmpS',201,'Intro to Java',6);
insert into COURSE values ('CmpS',202,'Intro to C',3);
insert into COURSE values ('CmpS',203,'Intro to C++',4);
insert into COURSE values ('CmpS',301,'Data Structures',4);
insert into COURSE values ('CmpS',302,'Formal Methods',3);
insert into COURSE values ('CmpS',303,'CS Synthesis',3);
insert into COURSE values ('CmpS',450,'Intro to Database',3);
insert into COURSE values ('CmpS',402,'Analysis of Algorithms',4);
insert into COURSE values ('Biol',101,'Bio I',4);
insert into COURSE values ('Ceng',101,'Intro to Civil Engineering',4);
insert into COURSE values ('Thea',101,'Survey of Acting',2);
insert into COURSE values ('Thea',102,'Principles of Performance Art',3);
insert into COURSE values ('Comm',110,'Intro to Communications',6);
insert into COURSE values ('Engl',111,'College Composition I', 3);
insert into COURSE values ('Engl',112,'College Composition II', 4);
insert into COURSE values ('Engl',225,'English Literature', 3);
insert into COURSE values ('Buss',101,'Business Principles I',3);
insert into COURSE values ('Buss',201,'Business Principles II',4);
insert into COURSE values ('Hist',101,'Intro to Western Civilization',4);
insert into COURSE values ('Hist',102,'American History I',5);
insert into COURSE values ('Hist',211,'History of Africa',4);
insert into COURSE values ('Hist',312,'American History II',6);
insert into COURSE values ('Hist',313,'American History III',4);
insert into COURSE values ('Mktg',111,'Intro to Marketing',3);
insert into COURSE values ('Acct',101,'Accounting Principles',3);
insert into COURSE values ('Anth',101,'Intro to Anthropology',4);
insert into COURSE values ('AHis',111,'Intro to Art History',4);
insert into COURSE values ('Asty',101,'Astronomy Principles',3);
insert into COURSE values ('Beng',111,'Intro to Bioengineering',4);
insert into COURSE values ('Chem',115,'Chemistry I',5);
insert into COURSE values ('CHea',101,'Community Health Principles',3);
insert into COURSE values ('Econ',111,'Microeconomics',6);
insert into COURSE values ('Attr',101,'Athletic Training Principles',3);




insert into STUDENT values ('Math','200000001','Chris Lee','sophomore');
insert into STUDENT values ('CmpS','200000002','Willy Tome','junior');
insert into STUDENT values ('CmpS','200000003','Michael Ain','senior');
insert into STUDENT values ('CmpS','200000004','Karen Zeen', 'senior');
insert into STUDENT values ('CmpS','200000005','Kyle Kicker','senior');
insert into STUDENT values ('Biol','200000006','Eddy Lot','freshman');
insert into STUDENT values ('Ceng','200000007','Boris Silva','freshman');
insert into STUDENT values ('Thea','200000008','John Lone','freshman');
insert into STUDENT values ('Comm','200000009','Janet Wall','sophomore');
insert into STUDENT values ('Engl','200000010','Ned Biz','junior');
insert into STUDENT values ('Buss','200000011','James Worth', 'senior');
insert into STUDENT values ('Hist','200000012','John Pitt','freshman');
insert into STUDENT values ('Mktg','200000013','Robert Johnson','sophomore');
insert into STUDENT values ('Acct','200000014','Ken Kelly', 'junior');
insert into STUDENT values ('Anth','200000015','Jeff Price','freshman');
insert into STUDENT values ('AHis','200000016','Venn Torres','sophomore');
insert into STUDENT values ('Asty','200000017','Albert Hernandez','junior');
insert into STUDENT values ('Attr','200000018','Teddy Anderson','senior');
insert into STUDENT values ('Beng','200000019','George White','freshman');
insert into STUDENT values ('Chem','200000020','Thomas Lewis','sophomore');
insert into STUDENT values ('CHea','200000021','Adrian Adon','junior');
insert into STUDENT values ('Econ','200000022','Agnes Wagner','senior');
insert into STUDENT values ('Math','200000023','Alene Colle','freshman');
insert into STUDENT values ('Math','200000024','Alicia Locke','sophomore');
insert into STUDENT values ('Math','200000025','Alita Conrad','junior');
insert into STUDENT values ('Biol','200000026','Allen Gosling','senior');
insert into STUDENT values ('Biol','200000027','Allison Martin','freshman');
insert into STUDENT values ('Ceng','200000028','Amber Connery','sophomore');
insert into STUDENT values ('Ceng','200000029','Andre Needy','junior');
insert into STUDENT values ('Ceng','200000030','Ann King','freshman');
insert into STUDENT values ('Thea','200000031','Scott Lasso','junior');
insert into STUDENT values ('Thea','200000032','Thomas Ekin','senior');
insert into STUDENT values ('Thea','200000033','Lauren Draken','freshman');
insert into STUDENT values ('Thea','200000034','Kal Ward','freshman');
insert into STUDENT values ('Comm','200000035','Jack Griffin','sophomore');
insert into STUDENT values ('Comm','200000036','Manny Hayes','junior');
insert into STUDENT values ('Engl','200000038','Olly Simmons','junior');
insert into STUDENT values ('Engl','200000039','Ingrid Bryant','junior');
insert into STUDENT values ('Buss','200000040','Sid Washington', 'senior');
insert into STUDENT values ('Hist','200000041','Gary Ross','freshman');
insert into STUDENT values ('Mktg','200000042','Victoria Barnes','sophomore');
insert into STUDENT values ('Mktg','200000043','Todd Couture','sophomore');
insert into STUDENT values ('Acct','200000044','Julie Turner', 'junior');
insert into STUDENT values ('Anth','200000045','Ken Rockin','grad');
insert into STUDENT values ('Mktg','200000046','Neil Grant','grad');
insert into STUDENT values ('Comm','200000047','Amy Worther','grad');
insert into STUDENT values ('Biol','200000048','Nicholas Morris','grad');
insert into STUDENT values ('Anth','200000049','Zack Wall','grad');
insert into STUDENT values ('Math','200000050','Chris Kline','phd');




insert into SECTION values ('Math',101,00,'900000020');
insert into SECTION values ('Math',201,00,'900000020');
insert into SECTION values ('CmpS',101,00,'900000008');   
insert into SECTION values ('CmpS',101,01,'900000022');
insert into SECTION values ('CmpS',102,00,'900000022');
insert into SECTION values ('CmpS',102,01,'900000022');
insert into SECTION values ('CmpS',201,00,'900000021');
insert into SECTION values ('CmpS',202,01,'900000022');
insert into SECTION values ('CmpS',203,01,'900000021');
insert into SECTION values ('CmpS',203,00,'900000022');
insert into SECTION values ('CmpS',301,00,'900000021');
insert into SECTION values ('CmpS',302,00,'900000021');
insert into SECTION values ('CmpS',303,00,'900000021');
insert into SECTION values ('CmpS',450,00,'900000021');
insert into SECTION values ('CmpS',450,01,'900000022');
insert into SECTION values ('CmpS',402,00,'900000022');
insert into SECTION values ('Biol',101,00,'900000003');
insert into SECTION values ('Ceng',101,00,'900000004');
insert into SECTION values ('Ceng',101,01,'900000004');
insert into SECTION values ('Thea',101,00,'900000005');
insert into SECTION values ('Thea',101,01,'900000025');
insert into SECTION values ('Thea',102,00,'900000025');
insert into SECTION values ('Thea',102,01,'900000005');
insert into SECTION values ('Comm',110,00,'900000026');   
insert into SECTION values ('Engl',111,00,'900000007');     
insert into SECTION values ('Engl',112,00,'900000007');
insert into SECTION values ('Engl',225,00,'900000027');
insert into SECTION values ('Buss',101,00,'900000020');   
insert into SECTION values ('Buss',201,00,'900000028');
insert into SECTION values ('Hist',101,01,'900000029');
insert into SECTION values ('Hist',102,00,'900000029');
insert into SECTION values ('Hist',211,00,'900000009');
insert into SECTION values ('Hist',312,00,'900000009');
insert into SECTION values ('Hist',313,00,'900000031');
insert into SECTION values ('Acct',101,00,'900000011');
insert into SECTION values ('Anth',101,00,'900000012');
insert into SECTION values ('AHis',111,00,'900000013');
insert into SECTION values ('Asty',101,00,'900000014');
insert into SECTION values ('Beng',111,00,'900000016');
insert into SECTION values ('Chem',115,00,'900000017');
insert into SECTION values ('CHea',101,00,'900000018');
insert into SECTION values ('Mktg',111,00,'900000010');
insert into SECTION values ('Econ',111,00,'900000019');
insert into SECTION values ('Econ',111,01,'900000025');
insert into SECTION values ('Econ',111,02,'900000027');
insert into SECTION values ('Econ',111,03,'900000019');





insert into REQUIRES values ('Math',201,'Math',101);
insert into REQUIRES values ('Math',301,'Math',201);
insert into REQUIRES values ('Math',401,'Math',301);
insert into REQUIRES values ('CmpS',201,'CmpS',101);
insert into REQUIRES values ('CmpS',201,'Math',101);
insert into REQUIRES values ('CmpS',202,'CmpS',101);
insert into REQUIRES values ('CmpS',203,'CmpS',101);
insert into REQUIRES values ('CmpS',301,'CmpS',201);
insert into REQUIRES values ('CmpS',302,'CmpS',101);
insert into REQUIRES values ('CmpS',303,'CmpS',203);
insert into REQUIRES values ('CmpS',450,'CmpS',301);
insert into REQUIRES values ('CmpS',450,'CmpS',302);
insert into REQUIRES values ('CmpS',450,'CmpS',303);
insert into REQUIRES values ('CmpS',402,'Math',301);
insert into REQUIRES values ('CmpS',402,'Engl',112);
insert into REQUIRES values ('Ceng',101,'Math',101);
insert into REQUIRES values ('Thea',102,'Thea',101);
insert into REQUIRES values ('Engl',112,'Engl',111);
insert into REQUIRES values ('Engl',225,'Engl',112);
insert into REQUIRES values ('Buss',201,'Buss',101);
insert into REQUIRES values ('Hist',102,'Hist',101);
insert into REQUIRES values ('Hist',312,'Hist',102);
insert into REQUIRES values ('Hist',313,'Hist',312);
insert into REQUIRES values ('Mktg',111,'Comm',110);
insert into REQUIRES values ('Beng',111,'Biol',101);
insert into REQUIRES values ('Econ',111,'Buss',101);
insert into REQUIRES values ('Chem',115,'Engl',111);





insert into CLASSROOM values (400,'AAA',50);
insert into CLASSROOM values (401,'AAA',25);
insert into CLASSROOM values (402,'AAA',40);
insert into CLASSROOM values (403,'AAA',300);
insert into CLASSROOM values (401,'BBB',50);
insert into CLASSROOM values (402,'BBB',28);
insert into CLASSROOM values (403,'BBB',325);
insert into CLASSROOM values (400,'CCC',10);
insert into CLASSROOM values (401,'CCC',70);
insert into CLASSROOM values (402,'CCC',49);
insert into CLASSROOM values (403,'CCC',500);
insert into CLASSROOM values (400,'DDD',80);
insert into CLASSROOM values (401,'DDD',150);
insert into CLASSROOM values (402,'DDD',180);
insert into CLASSROOM values (403,'DDD',625);
insert into CLASSROOM values (400,'EEE',87);
insert into CLASSROOM values (401,'EEE',190);
insert into CLASSROOM values (402,'EEE',40);
insert into CLASSROOM values (403,'EEE',214);
insert into CLASSROOM values (400,'FFF',52);
insert into CLASSROOM values (401,'FFF',20);
insert into CLASSROOM values (402,'FFF',400);
insert into CLASSROOM values (403,'FFF',350);
insert into CLASSROOM values (400,'GGG',150);
insert into CLASSROOM values (401,'GGG',175);
insert into CLASSROOM values (402,'GGG',402);
insert into CLASSROOM values (403,'GGG',442);





insert into OFFICE values (119,'AAA','125 sq ft');  
insert into OFFICE values (102,'AAA','140 sq ft');
insert into OFFICE values (302,'AAA','133 sq ft');
insert into OFFICE values (303,'AAA','110 sq ft');
insert into OFFICE values (103,'BBB','115 sq ft');
insert into OFFICE values (104,'BBB','115 sq ft');
insert into OFFICE values (105,'BBB','125 sq ft');
insert into OFFICE values (303,'BBB','116 sq ft');
insert into OFFICE values (106,'CCC','130 sq ft');
insert into OFFICE values (107,'CCC','125 sq ft');
insert into OFFICE values (108,'CCC','88 sq ft');
insert into OFFICE values (109,'CCC','100 sq ft');
insert into OFFICE values (110,'DDD','101 sq ft');
insert into OFFICE values (111,'DDD','108 sq ft');
insert into OFFICE values (112,'DDD','107 sq ft');
insert into OFFICE values (303,'DDD','150 sq ft');
insert into OFFICE values (113,'EEE','120 sq ft');
insert into OFFICE values (114,'EEE','130 sq ft');
insert into OFFICE values (115,'EEE','98 sq ft');
insert into OFFICE values (303,'EEE','100 sq ft');
insert into OFFICE values (116,'FFF','115 sq ft');
insert into OFFICE values (117,'FFF','145 sq ft');
insert into OFFICE values (118,'FFF','112 sq ft');
insert into OFFICE values (119,'FFF','95 sq ft');
insert into OFFICE values (300,'GGG','92 sq ft');   
insert into OFFICE values (301,'GGG','88 sq ft');
insert into OFFICE values (302,'GGG','100 sq ft');
insert into OFFICE values (303,'GGG','101 sq ft');
insert into OFFICE values (304,'GGG','101 sq ft');
insert into OFFICE values (305,'GGG','101 sq ft');
insert into OFFICE values (306,'GGG','101 sq ft');



insert into TIMESLOT values ('MW',0800,0920);
insert into TIMESLOT values ('MW',0945,1100);
insert into TIMESLOT values ('MW',1400,1620);
insert into TIMESLOT values ('TTHU',0800,0920);
insert into TIMESLOT values ('TTHU',1800,2340);
insert into TIMESLOT values ('T',1000,1420);
insert into TIMESLOT values ('W',1230,1400);
insert into TIMESLOT values ('SA',0800,0920);
insert into TIMESLOT values ('MW',1420,1500);
insert into TIMESLOT values ('F',0800,0920);
insert into TIMESLOT values ('MF',0800,0920);
insert into TIMESLOT values ('TH',0800,0920);




insert into TRANSCRIPT values ('200000001','Math',101,'A');
insert into TRANSCRIPT values ('200000003','Math',101,'A');
insert into TRANSCRIPT values ('200000005','CmpS',450,'c');
insert into TRANSCRIPT values ('200000005','Biol',101,'F');
insert into TRANSCRIPT values ('200000007','Ceng',101,'D+');
insert into TRANSCRIPT values ('200000008','Ceng',101,'C');
insert into TRANSCRIPT values ('200000015','Comm',110,'B');
insert into TRANSCRIPT values ('200000017','Comm',110,'B-');
insert into TRANSCRIPT values ('200000020','Engl',225,'B+');
insert into TRANSCRIPT values ('200000020','Buss',101,'B');
insert into TRANSCRIPT values ('200000021','Hist',101,'A-');
insert into TRANSCRIPT values ('200000022','Hist',102,'A');
insert into TRANSCRIPT values ('200000024','Mktg',111,'C');
insert into TRANSCRIPT values ('200000026','Acct',101,'C-');
insert into TRANSCRIPT values ('200000028','Math',201,'D');
insert into TRANSCRIPT values ('200000030','CmpS',201,'B');
insert into TRANSCRIPT values ('200000032','CmpS',450,'F');
insert into TRANSCRIPT values ('200000034','Attr',101,'D-');
insert into TRANSCRIPT values ('200000036','Beng',111,'C');
insert into TRANSCRIPT values ('200000043','Biol',101,'B+');
insert into TRANSCRIPT values ('200000044','Comm',110,'C+');
insert into TRANSCRIPT values ('200000045','Chem',115,'A');
insert into TRANSCRIPT values ('200000004','CmpS',301,'A');
insert into TRANSCRIPT values ('200000004','CmpS',302,'A');
insert into TRANSCRIPT values ('200000004','CmpS',303,'A');



 

insert into OFFICEHOURS values ('900000001','MW',0800,0920);
insert into OFFICEHOURS values ('900000002','MW',0945,1100);    
insert into OFFICEHOURS values ('900000003','MW',1400,1620);
insert into OFFICEHOURS values ('900000004','TTHU',0800,0920); 
insert into OFFICEHOURS values ('900000005','SA',0800,0920);
insert into OFFICEHOURS values ('900000006','F',0800,0920); 
insert into OFFICEHOURS values ('900000007','TH',0800,0920);
insert into OFFICEHOURS values ('900000008','MW',1420,1500); 
insert into OFFICEHOURS values ('900000009','MW',1400,1620);
insert into OFFICEHOURS values ('900000010','T',1000,1420); 
insert into OFFICEHOURS values ('900000011','F',0800,0920);
insert into OFFICEHOURS values ('900000012','TTHU',0800,0920); 
insert into OFFICEHOURS values ('900000013','SA',0800,0920);
insert into OFFICEHOURS values ('900000014','MW',1420,1500); 
insert into OFFICEHOURS values ('900000015','MW',1420,1500);
insert into OFFICEHOURS values ('900000016','F',0800,0920); 
insert into OFFICEHOURS values ('900000017','MW',0800,0920);
insert into OFFICEHOURS values ('900000018','MF',0800,0920); 
insert into OFFICEHOURS values ('900000019','SA',0800,0920);
insert into OFFICEHOURS values ('900000020','SA',0800,0920); 
insert into OFFICEHOURS values ('900000021','MW',1400,1620);
insert into OFFICEHOURS values ('900000022','TH',0800,0920); 
insert into OFFICEHOURS values ('900000023','F',0800,0920); 
insert into OFFICEHOURS values ('900000024','MW',0800,0920);
insert into OFFICEHOURS values ('900000025','F',0800,0920); 
insert into OFFICEHOURS values ('900000026','MF',0800,0920);
insert into OFFICEHOURS values ('900000027','TTHU',0800,0920); 
insert into OFFICEHOURS values ('900000028','MW',1420,1500);
insert into OFFICEHOURS values ('900000029','TH',0800,0920); 
insert into OFFICEHOURS values ('900000030','W',1230,1400); 






insert into TIMEANDPLACE values ('MW',0800,0920,400,'AAA','Math',101,00);
insert into TIMEANDPLACE values ('MW',0945,1100,400,'AAA','CmpS',101,01);
insert into TIMEANDPLACE values ('MW',1400,1620,401,'AAA','CmpS',201,00);
insert into TIMEANDPLACE values ('W',1230,1400,402,'BBB','Ceng',101,00);
insert into TIMEANDPLACE values ('SA',0800,0920,400,'CCC','Thea',101,01);
insert into TIMEANDPLACE values ('MW',0800,0920,400,'CCC','Thea',101,01);
insert into TIMEANDPLACE values ('MW',1420,1500,401,'CCC','Thea',102,00);
insert into TIMEANDPLACE values ('F',0800,0920,402,'DDD','Comm',110,00);
insert into TIMEANDPLACE values ('MF',0800,0920,403,'DDD','Engl',111,00);
insert into TIMEANDPLACE values ('MW',0800,0920,400,'EEE','Engl',112,00);
insert into TIMEANDPLACE values ('TH',0800,0920,401,'EEE','Buss',201,00);
insert into TIMEANDPLACE values ('TH',0800,0920,402,'FFF','Hist',313,00);
insert into TIMEANDPLACE values ('MW',0800,0920,403,'GGG','Chem',115,00);
 


insert into ENROLLS values ('200000001','Math',101,00);
insert into ENROLLS values ('200000002','Math',101,00);
insert into ENROLLS values ('200000003','CmpS',450,01);
insert into ENROLLS values ('200000003','Beng',111,00);
insert into ENROLLS values ('200000004','CmpS',450,01);
insert into ENROLLS values ('200000006','Biol',101,00);
insert into ENROLLS values ('200000007','Ceng',101,01);
insert into ENROLLS values ('200000008','Buss',201,00);
insert into ENROLLS values ('200000009','Comm',110,00);
insert into ENROLLS values ('200000010','Math',101,00);
insert into ENROLLS values ('200000011','Buss',201,00);
insert into ENROLLS values ('200000012','Hist',312,00);
insert into ENROLLS values ('200000012','CmpS',101,01);
insert into ENROLLS values ('200000013','Econ',111,01);
insert into ENROLLS values ('200000020','Chem',115,00);
insert into ENROLLS values ('200000026','Biol',101,00);
insert into ENROLLS values ('200000027','Thea',102,01);
insert into ENROLLS values ('200000028','Ceng',101,00);
insert into ENROLLS values ('200000029','Ceng',101,01);
insert into ENROLLS values ('200000030','Ceng',101,00);
insert into ENROLLS values ('200000032','Engl',225,00);
insert into ENROLLS values ('200000041','Hist',313,00);
insert into ENROLLS values ('200000041','Acct',101,00);
insert into ENROLLS values ('200000041','Econ',111,01);
insert into ENROLLS values ('200000042','Mktg',111,00);


SET CONSTRAINT ALL IMMEDIATE;
