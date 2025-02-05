01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 150 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100
       MOVE 'Data entry ' & WS-COUNT TO WS-TABLE(WS-COUNT) 
    END-PERFORM.

    * Accessing the table beyond its allocated space is now safe.
    DISPLAY WS-TABLE(101) 