CREATE TABLE IF NOT EXISTS  'groups' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "name" VARCHAR NOT NULL);
INSERT INTO 'groups' ( "name") select "Home" WHERE NOT EXISTS (SELECT * FROM 'groups' WHERE name = "Home");
CREATE TABLE IF NOT EXISTS  'people' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "firstName" VARCHAR  NOT NULL);
CREATE TABLE IF NOT EXISTS  'tasks' ( "id" INTEGER PRIMARY KEY AUTOINCREMENT, "taskName" VARCHAR  NOT NULL,   "dueDate" DATETIME, "groupId" INTEGER, "personId" INTEGER, "complete" BOOLEAN, "priority" INTEGER, FOREIGN KEY(groupId) REFERENCES groups (id),  FOREIGN KEY(personId) REFERENCES people (id) );
INSERT INTO 'groups' (name) select "Company" WHERE NOT EXISTS (SELECT * FROM 'groups' WHERE name = "Company");
INSERT INTO 'groups' (name) select "UMD" WHERE NOT EXISTS (SELECT * FROM 'groups' WHERE name ="UMD");
INSERT INTO 'people' (firstName) select "Bill F" WHERE NOT EXISTS (SELECT * FROM 'people' WHERE firstName = "Bill F");
INSERT INTO 'people' (firstName) select "Andrew G" WHERE NOT EXISTS (SELECT * FROM 'people' WHERE firstName = "Andrew G");
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "INST377 Make Final", "2020-12-06",3,1,0,1 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 1);
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "INST377 Office Hours", "2020-12-03",3,2,0,2 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 2);
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "Wash Car", "2020-11-27",1,1,0,2 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 3);
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "Grocery Shop", "2020-11-30",1,1,0,3 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 4);
INSERT INTO 'tasks' (taskName, dueDate, groupId, personId, complete, priority) select  "Pay Electric Bill", "2020-12-15",1,1,0,1 WHERE NOT EXISTS (SELECT * FROM 'tasks' WHERE id = 5);