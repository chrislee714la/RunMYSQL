DESCRIBE DEPARTMENT;
DESCRIBE FACULTY;
DESCRIBE COURSE;
DESCRIBE STUDENT;
DESCRIBE SECTION;
DESCRIBE REQUIRES;
DESCRIBE CLASSROOM;
DESCRIBE OFFICE;
DESCRIBE TIMESLOT;
DESCRIBE TRANSCRIPT;
DESCRIBE OFFICEHOURS;
DESCRIBE TIMEANDPLACE;
DESCRIBE ENROLLS;


SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'DEPARTMENT';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'FACULTY';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'COURSE';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'STUDENT';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'SECTION';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'REQUIRES';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'CLASSROOM';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'OFFICE';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'TIMESLOT';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'TRANSCRIPT';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'OFFICEHOURS';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'TIMEANDPLACE';

SELECT X.constraint_name, X.constraint_type, X.status, X.validated,
X.search_condition, Y.column_name, Y.position
FROM user_constraints X, user_cons_columns Y
WHERE X.constraint_name = Y.constraint_name
AND X.table_name = 'ENROLLS';
