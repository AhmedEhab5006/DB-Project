--Creating Manager User
Create USER Manager identified by password;
--------------------------------------------
--Giving them priviledge to create session
GRANT ALL PRIVILEGES TO Manager;
------------------------------------------------
--Giving Create user priviledges to user Manager
GRANT CREATE USER TO Manager;
------------------------------------------------

