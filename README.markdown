MICROPAYMENT
============

Overview
--------

There are officially printed credit notes (OPCN) in values of 5 C 10 C and 20 C and credit on your account.
Payments of smaller amounts are not possible with credit notes.
Payments of small amounts (up to 100 C (credits)) is possible in an electronic way.
Self printed credit notes (SPCN) can be used to facilitate payment.


Usecases
--------

The use cases have two participants (Person A and B) and a total amount of 25 credits. The amount is always constant.


### UC1 - electronic payment only

          Person A                    Person B
Step 1      10 C                           5 C
            10 OPCN

Step 2    Person A buys something for 3 credits from Person B electronically

Step 3       7 C                           8 C
            10 OPCN


### UC2 - combined cash and electronic payment

          Person A                    Person B
Step 1       7 C                           8 C
            10 OPCN                        

Step 2    Person A buys something for 3 credits from Person B with a credit note of value 10
          Person A gets back 7 credits from Person B

Step 3      14 C                          1 C
       				         10 OPCN 


### UC3 - print a credit note

Step 1    Person A
            14 C

Step 2    Person A prints a credit note of value 10

Step 3       4 C
            10 SPCN(A)


### UC4 - cash payment

          Person A                    Person B
Step 1       4 C                           1 C
            10 SPCN (A)                   10 OPCN

Step 2    Person A buys something from Person B and gives him his printed credit note of value 10

Step 3       4C                           1 C
                                         10 OPCN
                                         10 SPCN (A)

            
### UC5/1 - validating of a credit note - credit note is valid

Step 1    Person B validates the credit note of person A - credit note is valid


### UC6 - deposit a credit note to your account

Step 1                                 Person B
                                          1 C
                                         10 OPCN
                                         10 SPCN(A)

Step 2    Person B deposits 10 credits to her account

Step 3                                   11 C
                                         10 OPCN 
                                         10 SPCN(A) (invalid)


### UC5/2 - validating of a credit note - credit note is invalid

Step 1    Person B validates the credit note of person A - credit note is invalid


Facts/Conclusion
----------------

Everyone can act as a Bank: Give me a credit note and I transfer credits to your account.
Everyone can print a credit note: Print a credit note with the credits of your account.
Credits on an account and as a credit note are equivalent.
You cannot print more credits than you have.
SPCN can be used like original ones.
The amount of an SPCN can be a fraction of OPCNs. 

Graphical User Interface
------------------------

                  10 C
Picture/Logo     ------>    Picture/Logo
Sender                      Receiver
id person A                 id person B
business volume             business volume
current total               current total

button send credits


Security
--------

Dealing with small amounts of money.
Regional users.
Costs should be kept to a minimum.
Make all users public.
Make the account balance public up to 100 C (e.g. *.***.*56,479 C)
Conclusion: Keep it simple.

Implementation Notes
--------------------

Central platform 
Mobile devices
Securing a SPCN with a barcode (like tickes of deutsch bahn)
Quantity structure:
1 million participants with 2 trades a day between 6:00 and 21:00 -> 37 transactions/second
If each payment takes 15 seconds we have 555 concurrent users.  

### Iteration 1
Basic Infrastructure
Object model
Web-Application without authentication
10 predefined participants with 50 C each
UC1
show business volume

### Iteration 2


Open questions
--------------

### Q1:
What is the amount of credit that a person needs for trading in one day / week / month?

### Q2:
Why is the circulation stimulus not the equivalent to a 10 % interest?
e.g.: I buy 100 C for 100 Euro (5 x 20 C)
After a year I have to pay 10 Euro (20 x 0,5 Euro) to get a new 100 C credit note. And this year after year.
Hint: the circulation stimulus must be generated from nowhere (outside of the own credit system).
If the amount is used for something else then it better should be called tax and we have simplified the tax system to a bare minimum - as a side effect.

 
Ideas
-----

### Idea 1:
The circulation is 3 to 4 times higher compared to Euro. (Source FAQ www.regio-im-oberland.de)
-> Request to reduce the VAT to a quarter (5% and 2 %).

### Idea 2:
Each new participant needs a certain amount of money to participate in trading (my personal guess: 100 C).
-> The club fee should be equal to that amount.

### Idea 3:
Back the currency with silver or/and gold. Price: Silver: ~500Euro/kilo Gold: 1000Euro/kilo
-> no dependency to a currency
Possibility 1:
=> the corresponding weight can be different to each participant - probably he wants his silver/gold back.
=> there is an average weight for each credit
Possibility 2:
=> price fixing 1 credit is 1 gram gold or 2 gram silver

### Idea 4:
Let the payment platform produce its own money:
-> one tenth of a per cent for operations.
-> one tenth of a per cent for development.

### Idea 5:
Plan an upward revaluation of the credits and a complete isolation of the credits over a couple of years (~5).
-> secure regional trades with goods for the daily life.

### Idea 6:
Suggest prices for services.
-> e.g. 1 hour cleaning - 8 C 

### Idea 7:
Circulation stimulus:
-> every quarter for OPCN
20 C -> 0,5  C = 10%/year
10 C -> 0,25 C = 10%/year
 5 C -> 0,10 C = 8%/year
-> every day at midnight for credit or when placed on deposit for all days since SPCN was printed
   1 -    10 C -> 0 C 
  10 -   100 C -> 0,0003C/C = 10,95 %
 100 -   500 C -> 0,0004C/C = 
 500 -  1000 C -> 0,0005C/C = 
1000 - 10000 C -> 0,0006C/C = 
Exceptions:
- only the credits above the business volume of the day is included in the calculation.
- if you give someone a loan (in steps of 500) this diminishes the amount from the higher end.
=> Examples
person|credits|businessVolume|loan|lower limit|upper limit|circulation stimulus|
A     |   1499|           600| 500|        500|        499|                   0|
B     |   3000|            50|1000|         50|       1000|0,015 0,16 0,25     |
C     |     89|            54|   0|         54|         89|0,011               |

### Idea 8:
Exchange for other commodities/energy
-> no idea - ask Kuno again

Abbreviations
-------------

C       Credit
OPCN    Officially Printed Credit Note
SPCN    Self Printed Credit Note 
VAT     Value Added Tax

Translations
------------

business volume      Umsatz
circulation          Umlauf
circulation stimulus Umlaufimpuls
club fee             Vereinsbeitrag
gold backing         Golddeckung
price fixing         Preisbindung
upward revaluation   Aufwertung 
value added tax      Umsatzsteuer

