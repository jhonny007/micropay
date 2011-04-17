MICROPAYMENT
============

Overview
--------

There are officially printed credit notes (OPCN) in values of 1 C, 2 C , 5 C, 10 C and 20 C and credit on your electronic purse.
Payments of smaller amounts are not possible with credit notes.
Payments of small amounts (up to 100 C (credits)) is possible in an electronic way.
Self printed credit notes (SPCN) can be used to facilitate payment.


Usecases
--------

The use cases have two participants (Person A and B) and a total amount of 25 credits. The amount is always constant.


### UC1 - electronic payment only

              Person A                    Person B
    Step 1    10 C                         5 C
              10 OPCN

    Step 2    Person A buys something for 3 credits from Person B electronically

    Step 3     7 C                         8 C
              10 OPCN


### UC2 - combined cash and electronic payment

              Person A                    Person B
    Step 1     7 C                         8 C
              10 OPCN                        

    Step 2    Person A buys something for 3 credits from Person B with a credit note of value 10
              Person A gets back 7 credits from Person B

    Step 3    14 C                         1 C
                                          10 OPCN 


### UC3 - print a credit note

    Step 1    Person A
              14 C

    Step 2    Person A prints a credit note of value 10

    Step 3     4 C
              10 SPCN(A)


### UC4 - cash payment

              Person A                    Person B
    Step 1     4 C                         1 C
              10 SPCN (A)                 10 OPCN

    Step 2    Person A buys something from Person B and gives him his printed credit note of value 10

    Step 3     4 C                         1 C
                                          10 OPCN
                                          10 SPCN (A)

            
### UC5/1 - validating of a credit note - credit note is valid

    Step 1    Person B validates the credit note of person A - credit note is valid


### UC6 - deposit a credit note to your electronic purse

                                           Person B
    Step 1                                  1 C
                                           10 OPCN
                                           10 SPCN(A)

    Step 2    Person B deposits 10 credits to her electronic purse

    Step 3                                 11 C
                                           10 OPCN 
                                           10 SPCN(A) (invalid)


### UC5/2 - validating of a credit note - credit note is invalid

    Step 1    Person B validates the credit note of person A - credit note is invalid


Facts/Conclusion
----------------

Everyone can act as a Bank: Give me a credit note and I transfer credits to your electronic purse.
Everyone can print a credit note: Print a credit note with the credits of your electronic purse.
Credits on an electronic purse and a credit note are equivalent.
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

 * Dealing with small amounts of money.
 * Regional users.
 * Costs should be kept to a minimum.
 * Make all users public. Photo and Name.
 * Make the electronic purse balance public up to 100 C (e.g. `?.???.?56,479 C`)
Conclusion: *Keep it simple*.

Implementation Notes
--------------------

 * Central platform 
 * support mobile devices (web-browsers)
 * Securing a SPCN with a barcode (like tickes of deutsch bahn) and data of both (including picture)
 * Quantity structure:
 * 1 million participants with 2 trades a day between 6:00 and 21:00 -> 37 transactions/second
 * If each payment takes 15 seconds we have 555 concurrent users.
 * audit proof  

### Iteration 1

 * Basic Infrastructure
 * Object model
 * Web-Application without authentication
 * 10 predefined participants with 50 C each
 * UC1
 * show business volume

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
-> Replace all taxes with a 10% VAT tax and do not distinguish between private and business.
-> Add a fee from 10% to 40% depending on the distance of the persons involved exceeding more than one 1 kohr = 21 km.
-> You can vote for which projects 50% of the taxes and fees are used.
-> there are special accounts for the state and regions and they have the same rules.

### Idea 2:
Take gold and silver as securities.(1 troy ounce = 31,1035g)
Price: Silver: ~20Euro/troy ounce Gold: ~1000Euro/troy ounce
-> commodities are the currencies
=> 1 gold credit (GC) is 1 gram gold and 1 silver credit (SC) is 1 gram silver
=> a specialized pawnshop gives the credit for the given security (see PfandlV).
=> a fee must ensure the insurance payments for the gold an silver stored.(preferable in per cent
of the stored commodities.

### Idea 3:
Each new participant needs a certain amount of money to participate in trading (my personal guess: 60 SC).
-> But there should be no club and club fee - everyone can participate.
-> You can sponsor the currency and there is a ranking.

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
     100 -   500 C -> 0,0004C/C = 14,60 %
     500 -  1000 C -> 0,0005C/C = 18,25 %
    1000 - 10000 C -> 0,0006C/C = 21,90 %

Exceptions:
 - only the credits above the business volume of the day is included in the calculation.
 - if you give someone a loan (in steps of 500) this diminishes the amount from the higher end.
=> Examples
    person|credits|businessVolume|loan|lower limit|upper limit|circulation stimulus|
    A     |   1499|           600| 500|        500|        499|                   0|
    B     |   3000|            50|1000|         50|       1000|0,015 0,16 0,25     |
    C     |     89|            54|   0|         54|         89|0,011               |

if the money on the special accounts is not used, then it flows back to all users.

### Idea 8:
Exchange for other commodities/energy
-> no idea - ask Kuno again

### Idea 9:
Create own bank.
 - account balances over HBCI?
 - There is a client app for iPad that can display balances of all different online banking accounts created by [Star Finanz](http://www.starfinanz.de) and is available for different bank brandings (comdirect, sparkasse)
 - There is HBCI server implemented in java (I asked for the sources) [hbci4java](http://hbci4java.kapott.org)

### Idea 10:
Include a rating and new ideas for:
 - the paymentprocess
 - the other party in the payment process (build your own reputation)
 
### Idea 11:
Franchise the pawnshops.
 - vault
 - documents
 - ...

### Idea 12:
Loans are given personally or by the gouvernment.
The risk holds the lender.

### Idea 13:
Let other regional currencies use the same system.

### Idea 14:
All languages and regional dialects should be choosable.

### Idea 15:
Use 10 as the base -> no fractions(?).

      0%  person           I
     10%  family           children, parents
     20%  local group      friends, wagnis 3
     30%  district         messestadt
     40%  city             munich
     50%  one kohr         21 km
     60%  rural district   munich
     70%  province         bavaria
     80%  country          germany
     90%  kontinent        europe
    100%  planet           earth

If you leave the world, it costs you 50% of your assets :-).   
   
GUI:

    o rate the transaction process
      o easy  o cumbersome o ...
    o rate the other party
      - friendliness
      - ...

Abbreviations
-------------

    C       Credit
    OPCN    Officially Printed Credit Note
    SPCN    Self Printed Credit Note 
    VAT     Value Added Tax

Translations
------------

    audit proof          revisionssicher
    business volume      Umsatz
    circulation          Umlauf
    circulation stimulus Umlaufimpuls
    club fee             Vereinsbeitrag
    electronic purse     elektronische Geldbörse
    gold backing         Golddeckung
    lender               Darlehensgeber
    price fixing         Preisbindung
    pawnshop             Pfandleihe
    upward revaluation   Aufwertung 
    value added tax      Umsatzsteuer

