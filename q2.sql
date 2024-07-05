DECLARE
  v_roll stud111.roll%TYPE;
  v_name stud111.name%TYPE;
BEGIN
  
  v_roll := &roll;

  
  SELECT name INTO v_name FROM stud111 WHERE roll = v_roll;
  
  
  FOR i IN 1..LENGTH(v_name) LOOP
    IF SUBSTR(v_name, i, 1) BETWEEN '0' AND '9' THEN
      RAISE_APPLICATION_ERROR(-20001, 'Invalid name: Name contains digits');
    END IF;
  END LOOP;
  
 
  DBMS_OUTPUT.PUT_LINE('Name:' || v_name);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    
    RAISE_APPLICATION_ERROR(-20002, 'Roll no not found');
END;
/





