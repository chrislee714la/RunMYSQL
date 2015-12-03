SQL> @dump;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE                                  NOT NULL CHAR(4)
 DEPTNAME                                           VARCHAR2(30)
 PHONEEXTENSION                                     NUMBER(38)
 CHAIRS_FACULTYID#                                  CHAR(9)
 ROOM                                      NOT NULL NUMBER(38)
 BUILDING                                  NOT NULL CHAR(3)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE                                  NOT NULL CHAR(4)
 FACULTYID#                                NOT NULL CHAR(9)
 NAME                                      NOT NULL VARCHAR2(20)
 RANK                                      NOT NULL VARCHAR2(20)
 PHONEEXTENSTION                           NOT NULL NUMBER(38)
 ROOM                                      NOT NULL NUMBER(38)
 BUILDING                                  NOT NULL CHAR(3)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE                                  NOT NULL CHAR(4)
 COURSEID                                  NOT NULL NUMBER(38)
 TITLE                                              VARCHAR2(40)
 NUMCREDITS                                         NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE                                  NOT NULL CHAR(4)
 UIDCODE                                   NOT NULL CHAR(9)
 STUDENTNAME                               NOT NULL VARCHAR2(30)
 ACADEMICSTATUS                            NOT NULL VARCHAR2(10)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE                                  NOT NULL CHAR(4)
 COURSEID                                  NOT NULL NUMBER(38)
 SECTIONNUMBER                             NOT NULL NUMBER(38)
 FACULTYID#                                NOT NULL CHAR(9)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTCODE_COURSE                           NOT NULL CHAR(4)
 COURSEID_COURSE                           NOT NULL NUMBER(38)
 DEPTCODE_PREREQUISITE                     NOT NULL CHAR(4)
 COURSEID_PREREQUISITE                     NOT NULL NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROOM                                      NOT NULL NUMBER(38)
 BUILDING                                  NOT NULL CHAR(3)
 NUMSEATS                                  NOT NULL NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROOM                                      NOT NULL NUMBER(38)
 BUILDING                                  NOT NULL CHAR(3)
 TOTALAREA                                 NOT NULL VARCHAR2(20)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DAY                                       NOT NULL VARCHAR2(30)
 BEGIN                                     NOT NULL NUMBER(38)
 END                                       NOT NULL NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 UIDCODE                                   NOT NULL CHAR(9)
 DEPTCODE                                  NOT NULL CHAR(4)
 COURSEID                                  NOT NULL NUMBER(38)
 GRADE                                     NOT NULL VARCHAR2(2)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTYID#                                NOT NULL CHAR(9)
 DAY                                       NOT NULL VARCHAR2(30)
 BEGIN                                     NOT NULL NUMBER(38)
 END                                       NOT NULL NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DAY                                       NOT NULL VARCHAR2(30)
 BEGIN                                     NOT NULL NUMBER(38)
 END                                       NOT NULL NUMBER(38)
 ROOM                                      NOT NULL NUMBER(38)
 BUILDING                                  NOT NULL CHAR(3)
 DEPTCODE                                  NOT NULL CHAR(4)
 COURSEID                                  NOT NULL NUMBER(38)
 SECTIONNUMBER                             NOT NULL NUMBER(38)

 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 UIDCODE                                   NOT NULL CHAR(9)
 DEPTCODE                                  NOT NULL CHAR(4)
 COURSEID                                  NOT NULL NUMBER(38)
 SECTIONNUMBER                             NOT NULL NUMBER(38)


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
DCFI                           R ENABLED  VALIDATED                             
                                                                                
CHAIRS_FACULTYID#                                                               
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
DRBO                           R ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
DRBO                           R ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813572                 C ENABLED  VALIDATED                             
"ROOM" IS NOT NULL                                                              
ROOM                                                                            
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813573                 C ENABLED  VALIDATED                             
"BUILDING" IS NOT NULL                                                          
BUILDING                                                                        
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813574                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813575                 U ENABLED  VALIDATED                             
                                                                                
DEPTNAME                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813575                 U ENABLED  VALIDATED                             
                                                                                
PHONEEXTENSION                                                                  
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813575                 U ENABLED  VALIDATED                             
                                                                                
CHAIRS_FACULTYID#                                                               
         1                                                                      
                                                                                

9 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
FRBO                           R ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
FRBO                           R ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813576                 C ENABLED  VALIDATED                             
"DEPTCODE" IS NOT NULL                                                          
DEPTCODE                                                                        
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813577                 C ENABLED  VALIDATED                             
"NAME" IS NOT NULL                                                              
NAME                                                                            
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813578                 C ENABLED  VALIDATED                             
"RANK" IS NOT NULL                                                              
RANK                                                                            
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813579                 C ENABLED  VALIDATED                             
"PHONEEXTENSTION" IS NOT NULL                                                   
PHONEEXTENSTION                                                                 
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813580                 C ENABLED  VALIDATED                             
"ROOM" IS NOT NULL                                                              
ROOM                                                                            
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813581                 C ENABLED  VALIDATED                             
"BUILDING" IS NOT NULL                                                          
BUILDING                                                                        
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813582                 P ENABLED  VALIDATED                             
                                                                                
FACULTYID#                                                                      
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813583                 U ENABLED  VALIDATED                             
                                                                                
PHONEEXTENSTION                                                                 
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813584                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                

11 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813585                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813585                 P ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813586                 U ENABLED  VALIDATED                             
                                                                                
TITLE                                                                           
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813587                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813588                 C ENABLED  VALIDATED                             
"DEPTCODE" IS NOT NULL                                                          
DEPTCODE                                                                        
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813589                 C ENABLED  VALIDATED                             
"STUDENTNAME" IS NOT NULL                                                       
STUDENTNAME                                                                     
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813590                 C ENABLED  VALIDATED                             
"ACADEMICSTATUS" IS NOT NULL                                                    
ACADEMICSTATUS                                                                  
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813591                 P ENABLED  VALIDATED                             
                                                                                
UIDCODE                                                                         
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813592                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813593                 C ENABLED  VALIDATED                             
"FACULTYID#" IS NOT NULL                                                        
FACULTYID#                                                                      
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813594                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813594                 P ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813594                 P ENABLED  VALIDATED                             
                                                                                
SECTIONNUMBER                                                                   
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813595                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813595                 R ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813596                 R ENABLED  VALIDATED                             
                                                                                
FACULTYID#                                                                      
         1                                                                      
                                                                                

7 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813597                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE_COURSE                                                                 
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813597                 P ENABLED  VALIDATED                             
                                                                                
COURSEID_COURSE                                                                 
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813597                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE_PREREQUISITE                                                           
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813597                 P ENABLED  VALIDATED                             
                                                                                
COURSEID_PREREQUISITE                                                           
         4                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813598                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE_COURSE                                                                 
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813598                 R ENABLED  VALIDATED                             
                                                                                
COURSEID_COURSE                                                                 
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813599                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE_PREREQUISITE                                                           
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813599                 R ENABLED  VALIDATED                             
                                                                                
COURSEID_PREREQUISITE                                                           
         1                                                                      
                                                                                

8 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813600                 C ENABLED  VALIDATED                             
"NUMSEATS" IS NOT NULL                                                          
NUMSEATS                                                                        
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813601                 P ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813601                 P ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         2                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813602                 C ENABLED  VALIDATED                             
"TOTALAREA" IS NOT NULL                                                         
TOTALAREA                                                                       
                                                                                
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813603                 P ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813603                 P ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         2                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813604                 P ENABLED  VALIDATED                             
                                                                                
DAY                                                                             
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813604                 P ENABLED  VALIDATED                             
                                                                                
BEGIN                                                                           
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813604                 P ENABLED  VALIDATED                             
                                                                                
END                                                                             
         3                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813605                 P ENABLED  VALIDATED                             
                                                                                
UIDCODE                                                                         
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813605                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813605                 P ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813605                 P ENABLED  VALIDATED                             
                                                                                
GRADE                                                                           
         4                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813606                 R ENABLED  VALIDATED                             
                                                                                
UIDCODE                                                                         
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813607                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813607                 R ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         1                                                                      
                                                                                

7 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813608                 P ENABLED  VALIDATED                             
                                                                                
FACULTYID#                                                                      
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813608                 P ENABLED  VALIDATED                             
                                                                                
DAY                                                                             
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813608                 P ENABLED  VALIDATED                             
                                                                                
BEGIN                                                                           
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813608                 P ENABLED  VALIDATED                             
                                                                                
END                                                                             
         4                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813609                 R ENABLED  VALIDATED                             
                                                                                
FACULTYID#                                                                      
         1                                                                      
                                                                                


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
DAY                                                                             
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
BEGIN                                                                           
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
END                                                                             
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         4                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         5                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         6                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         7                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813610                 P ENABLED  VALIDATED                             
                                                                                
SECTIONNUMBER                                                                   
         8                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813611                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813611                 R ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813611                 R ENABLED  VALIDATED                             
                                                                                
SECTIONNUMBER                                                                   
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813612                 R ENABLED  VALIDATED                             
                                                                                
ROOM                                                                            
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813612                 R ENABLED  VALIDATED                             
                                                                                
BUILDING                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813613                 R ENABLED  VALIDATED                             
                                                                                
DAY                                                                             
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813613                 R ENABLED  VALIDATED                             
                                                                                
BEGIN                                                                           
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813613                 R ENABLED  VALIDATED                             
                                                                                
END                                                                             
         3                                                                      
                                                                                

16 rows selected.


CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813614                 P ENABLED  VALIDATED                             
                                                                                
UIDCODE                                                                         
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813614                 P ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813614                 P ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813614                 P ENABLED  VALIDATED                             
                                                                                
SECTIONNUMBER                                                                   
         4                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813615                 R ENABLED  VALIDATED                             
                                                                                
DEPTCODE                                                                        
         1                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813615                 R ENABLED  VALIDATED                             
                                                                                
COURSEID                                                                        
         2                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813615                 R ENABLED  VALIDATED                             
                                                                                
SECTIONNUMBER                                                                   
         3                                                                      
                                                                                

CONSTRAINT_NAME                C STATUS   VALIDATED                             
------------------------------ - -------- -------------                         
SEARCH_CONDITION                                                                
--------------------------------------------------------------------------------
COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
  POSITION                                                                      
----------                                                                      
SYS_C001813616                 R ENABLED  VALIDATED                             
                                                                                
UIDCODE                                                                         
         1                                                                      
                                                                                

8 rows selected.

SQL> spool off;
