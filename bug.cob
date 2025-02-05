01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

* In this example, there's no explicit size declaration for the table.
* COBOL implicitly allocates a certain amount of memory, which may be insufficient if more than 100 entries are added. 
* This could lead to runtime errors or data corruption if the program attempts to write beyond the allocated space.

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100
       MOVE 'Data entry ' & WS-COUNT TO WS-TABLE(WS-COUNT) 
    END-PERFORM.

    * Accessing the table beyond its allocated space could cause errors.
    MOVE 'Overwriting' TO WS-TABLE(101) 
    DISPLAY WS-TABLE(101)