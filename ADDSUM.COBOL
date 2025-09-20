       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDNUMS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1         PIC 9(5).
       01 NUM2         PIC 9(5).
       01 ADDITION     PIC 9(6).

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "Enter first number: "
           ACCEPT NUM1
           DISPLAY "Enter second number: "
           ACCEPT NUM2
           ADD NUM1 TO NUM2 GIVING ADDITION
           DISPLAY "The sum is: " ADDITION
       STOP RUN.