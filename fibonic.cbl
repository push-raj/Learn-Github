       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONIC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 N            PIC 9(4) VALUE 0.
       77 I            PIC 9(4) VALUE 1.
       77 FIB1         PIC 9(9) VALUE 0.
       77 FIB2         PIC 9(9) VALUE 1.
       77 FIBNEXT      PIC 9(9) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Enter the number of terms for Fibonacci series: " 
                          WITH NO ADVANCING.
           ACCEPT N.

       IF N < 1
           DISPLAY "Please enter a positive integer."
           STOP RUN
       END-IF.

           DISPLAY "Fibonacci Series: ".

       IF N = 1
           DISPLAY FIB1
       ELSE
           DISPLAY FIB1
           DISPLAY FIB2
           PERFORM VARYING I FROM 3 BY 1 UNTIL I > N
           COMPUTE FIBNEXT = FIB1 + FIB2
           DISPLAY FIBNEXT
           MOVE FIB2 TO FIB1
           MOVE FIBNEXT TO FIB2
           END-PERFORM
       END-IF.

       STOP RUN.
