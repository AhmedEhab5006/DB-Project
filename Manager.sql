--Creating other users
Create USER Ahmed identified by password;
Create USER Nabil identified by password;
----------------------------------------------
--Giving them PRIVILEGES 
GRANT CREATE SESSION TO Ahmed;
GRANT CREATE SESSION TO Nabil;
GRANT CREATE TABLE TO Ahmed;
Alter user Ahmed QUOTA 100M ON SYSTEM ;
GRANT INSERT ON Ahmed.Employees TO Nabil; 

-------------------------------------------------
--Creating Functions
CREATE OR REPLACE FUNCTION CalculateAverage
RETURN DECIMAL
AS
  average DECIMAL; 
BEGIN
  SELECT AVG(salary) INTO average FROM Ahmed.Employees;
  RETURN average;
END;


CREATE OR REPLACE FUNCTION CalculateTotal
RETURN DECIMAL
AS
  total DECIMAL; 
BEGIN
  SELECT SUM(salary) INTO total FROM Ahmed.Employees;
  RETURN total;
END;


CREATE OR REPLACE FUNCTION CalculateBiggest
RETURN DECIMAL
AS
  biggest DECIMAL; 
BEGIN
  SELECT MAX(salary) INTO biggest FROM Ahmed.Employees;
  RETURN biggest;
END;
--------------------------------------------------------------------------------


