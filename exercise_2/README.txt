UCB W205 Exercise 2 repository

Step-by-step instructions on how to run the application

1. First, enter exercise_2 directory:
	/home/w205/w205_2017_spring/exercise_2

2. create postgres database "tcount": 
	[w205@ip-172-31-6-10 exercise_2]$ psql -d tcount -U postgres -f initial.sql

3. enter extweetwordcount folder:
	[w205@ip-172-31-6-10 exercise_2]$ cd extweetwordcount

4. run application:
	[w205@ip-172-31-6-10 extweetwordcount]$ streamparse run

5. change back to exercise_2 directory:
	[w205@ip-172-31-6-10 extweetwordcount]$ cd ..

6. submit the command "python finalresults.py":
	[w205@ip-172-31-6-10 exercise_2]$ python finalresults.py

7. print out the total number of word occurances in the stream
	[w205@ip-172-31-6-10 exercise_2]$ python finalresults.py you
	Total number of occurences of 'you': 21

8. submit the command "python histogram.py k1 k2":
	[w205@ip-172-31-6-10 exercise_2]$ python histogram.py 3,8
                  Im: 4
                 The: 3
               about: 6
                 all: 4
                 and: 5
              answer: 3
                  at: 3
                  be: 5
                 but: 6
                dead: 3
                dont: 8
                good: 6
                 him: 4
                   i: 3
                  is: 8
                  it: 7
                know: 4
                like: 6
                  me: 3
                  no: 3
                 not: 3
                  of: 7
                  on: 3
                  or: 3
                  so: 6
                that: 5
              things: 3
                  up: 4
                what: 3
                your: 3

