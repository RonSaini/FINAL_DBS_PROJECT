--Get the number of available rooms in a specific block and room type

CREATE OR REPLACE PROCEDURE get_available_rooms (
    block_no IN NUMBER,
    room_type IN VARCHAR2,
    num_available OUT NUMBER
)
IS
BEGIN
    SELECT COUNT(*)
    INTO num_available
    FROM Room
    WHERE block_no = Room.block_no
    AND room_type = room_type
    AND room_id NOT IN (
        SELECT room_id
        FROM Admissions
    );
END;
/

SET SERVEROUTPUT ON;

DECLARE
  v_block_no NUMBER;
  v_room_type VARCHAR2(50);
  v_num_available NUMBER;
BEGIN
  v_block_no := &block_no;
  v_room_type := '&room_type';

  get_available_rooms(v_block_no, v_room_type, v_num_available);
  DBMS_OUTPUT.PUT_LINE('Number of available rooms: ' || v_num_available);
END;
/





















































