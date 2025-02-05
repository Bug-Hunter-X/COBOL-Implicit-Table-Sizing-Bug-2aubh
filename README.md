# COBOL Implicit Table Sizing Bug

This repository demonstrates a common error in COBOL programs related to implicit table sizing.  When declaring tables without specifying a maximum size, COBOL implicitly allocates memory which is insufficient when more than the assumed number of entries are added. 

## Bug Description

The bug occurs in `bug.cob`.  An attempt is made to write past the implicitly allocated boundary of a table which causes data corruption and potentially a crash. 

## Solution

The solution in `bugSolution.cob` demonstrates how to explicitly define the table size, preventing the error. 

## How to Reproduce

1. Compile `bug.cob` using a COBOL compiler. 
2. Run the compiled program. You will encounter a runtime error.
3. Compile and run `bugSolution.cob`. It should run without errors.

## Note

Always explicitly define the size of your tables in COBOL to avoid runtime errors.