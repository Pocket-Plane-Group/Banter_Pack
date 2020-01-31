BEGIN FWLILCOR

CHAIN IF ~Global("PGImoTweaksEdwina","LOCALS",2)~ THEN IMOEN2J tweakedwina
@600 DO ~SetGlobal("PGImoTweaksEdwina","LOCALS",3)~
== BEDWIN @601
== IMOEN2J @602
== BEDWIN @603
== IMOEN2J @604
== IMOEN2J IF ~Gender(Player1,FEMALE)~ THEN @605
== IMOEN2J IF ~Gender(Player1,MALE)~ THEN @606
== BEDWIN @607
= @608
== IMOEN2J @609
== BEDWIN @610
== IMOEN2J @611
== BEDWIN @612
== IMOEN2J @613
== BEDWIN @614
== IMOEN2J @615
== BEDWIN @616
== IMOEN2J @617
== BEDWIN @618
== IMOEN2J @619
= @620
== BEDWIN @621
== IMOEN2J @622
== BEDWIN @623
== IMOEN2J @624
= @625
== BEDWIN @626
== IMOEN2J @627
= @628
EXIT

CHAIN IF ~Global("PGImoTweaksPostEdwina","LOCALS",2)~ THEN IMOEN2J tweakpostedwina
@629 DO ~SetGlobal("PGImoTweaksPostEdwina","LOCALS",3)~
== BEDWIN @630
== IMOEN2J @631
== BEDWIN @632
== IMOEN2J @633
== BEDWIN @634
== IMOEN2J @635
== BEDWIN @636
== IMOEN2J @637
= @638
== BEDWIN @639
= @640
== BHAERDA IF ~IsValidForPartyDialogue("HaerDalis")~ THEN @641
== BMINSC IF ~IsValidForPartyDialogue("Minsc")~ THEN @642
== BKORGAN IF ~IsValidForPartyDialogue("Korgan")~ THEN @643
== BJAN IF ~IsValidForPartyDialogue("Jan")~ THEN @644
== IMOEN2J IF ~!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")~ THEN @645
== BEDWIN @646
== IMOEN2J @647
== BEDWIN @648
EXIT



CHAIN IF ~InParty("Yoshimo")
!Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("PGNaliaYoshimoWhoseLine","LOCALS",0)~ THEN BNALIA whoseline
@649 DO ~SetGlobal("PGNaliaYoshimoWhoseLine","LOCALS",1)~
== BYOSHIM @650
== BNALIA @651
== BYOSHIM @652
== BNALIA @653
== BYOSHIM @654
== BNALIA @655
== BYOSHIM @656
== BNALIA @657
== BYOSHIM @658
== BNALIA @659
= @660
== BYOSHIM @661
== BNALIA @662
== BYOSHIM @663
== BNALIA @664
== BYOSHIM @665
== BNALIA @666
== BYOSHIM @667
== BNALIA @668
== BYOSHIM @669
== BNALIA @670
= @671
== BYOSHIM @672
== BNALIA @673
== BYOSHIM @674
== BNALIA @675
== BYOSHIM @676
== BNALIA @677
== BYOSHIM @678
== BNALIA @679
== BYOSHIM @680
== BNALIA @681
== BYOSHIM @682
== BNALIA @683
EXIT


CHAIN IF WEIGHT #5 ~InParty("Nalia")
!Dead("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Gender("Edwin",FEMALE)
Global("PGNaliaEdwinaBoobs","LOCALS",0)~ THEN BEDWIN boobs
@684 DO ~SetGlobal("PGNaliaEdwinaBoobs","LOCALS",1)~
== BNALIA @685
== BEDWIN @686
== BNALIA @687
== BEDWIN @688
== BNALIA @689
= @690
== BEDWIN @691
== BNALIA @692
== BEDWIN @693
= @694
== BNALIA @695
== BEDWIN @696
== BNALIA @697
EXIT



CHAIN IF WEIGHT #27
~InParty("Nalia")
See("Nalia")
!Dead("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
InParty("Valygar")
See("Valygar")
!Dead("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
AreaType(FOREST)
Global("PGAerieFishing","LOCALS",0)~ THEN BAERIE fishin
@698 DO ~SetGlobal("PGAerieFishing","LOCALS",1)~
== BNALIA @699
== BAERIE @700
= @701
== BNALIA @702
== BAERIE @703
== BNALIA @704
= @705
== BVALYGA @706
== BNALIA @707
== BVALYGA @708
== BAERIE @709
== BNALIA @710
== BAERIE @711
== BVALYGA @712
== BAERIE @713
= @714
== BNALIA @715
== BAERIE @716
= @717
= @718
== BNALIA @719
== BVALYGA @720
= @721
== BVICONI IF ~IsValidForPartyDialogue("Viconia")~ THEN @722
EXIT


CHAIN IF WEIGHT #-1 ~Global("PGMinscLarryKeldorn","LOCALS",2)~ THEN BMINSC larrykeldorn
@723
DO ~SetGlobal("PGMinscLarryKeldorn","LOCALS",3)~
== FWLILCOR @724
== BKELDOR @725
== BMINSC @726
== FWLILCOR @727
== BKELDOR @728
== BMINSC @729
== BKELDOR @730
== BMINSC @731
== FWLILCOR @732
== BMINSC @733
== BKELDOR @734
= @735
== FWLILCOR @736
= @737 DO ~DestroySelf()~
== BKELDOR @738
EXIT





CHAIN IF
~%CLEVER_EDITORIAL_COMMENT%
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("FWBanterHD1","LOCALS",0)~ THEN BHAERDA edjahsong
@400 DO ~SetGlobal("FWBanterHD1","LOCALS",1)~
= @401
= @402
= @403
== BEDWIN @404
== BJAHEIR @405
== BEDWIN @406
== BJAHEIR @407
== BHAERDA @408
== BJAHEIR @409
== BHAERDA @410
= @411
= @412
== BEDWIN @413
== BJAHEIR @414
== BHAERDA @415
EXIT



CHAIN IF WEIGHT #-1 ~Global("FWMinscLarryJaheira","LOCALS",2)~ THEN BMINSC larryjaheira
@416
DO ~SetGlobal("FWMinscLarryJaheira","LOCALS",3)~
== FWLILCOR @417
== BJAHEIR @418
== BMINSC @419
== FWLILCOR @420
== BJAHEIR @421
== FWLILCOR @422
== BMINSC @423
== FWLILCOR @424
== BMINSC @425
== BJAHEIR @426
== FWLILCOR @427
== BJAHEIR @428
== BMINSC @429
== BJAHEIR @430
== FWLILCOR @431
== BMINSC @432
== FWLILCOR @433
== BJAHEIR @434
== FWLILCOR @435 DO ~DestroySelf()~
EXIT


CHAIN IF WEIGHT #18
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("FWBanterKorgan2","LOCALS",0)~ THEN BKORGAN jaheirasip
@436
DO ~SetGlobal("FWBanterKorgan2","LOCALS",1)~
= @437
== BJAHEIR @438
== BKORGAN @439
== BJAHEIR @440
== BKORGAN @441
== BJAHEIR @442
== BKORGAN @443
== BJAHEIR @444
== BKORGAN @445
= @446
== BJAHEIR @447
== BKORGAN @448
EXIT


APPEND IMOEN2J
IF ~Global("FWBanterAnoLateRomance","GLOBAL",4)~ THEN cnanomurder
SAY @449
++ @450 DO ~SetGlobal("FWBanterAnoLateRomance","GLOBAL",10)~ + notime
++ @451 DO ~SetGlobal("FWBanterAnoLateRomance","GLOBAL",10)~ + cnanochain
++ @452 DO ~SetGlobal("FWBanterAnoLateRomance","GLOBAL",10)~ + ever
END

IF ~~ ever
SAY @453
IF ~~ EXIT
END

IF ~~ notime
SAY @454
IF ~~ GOTO cnanochain
END
END

CHAIN IMOEN2J cnanochain
@455
== IMOEN2J IF ~GlobalGT("AnomenKeldornFight","GLOBAL",0)
GlobalTimerExpired("AnomenAttacksAerie","GLOBAL")~ THEN @456
== IMOEN2J IF ~!GlobalGT("AnomenKeldornFight","GLOBAL",0)
GlobalTimerExpired("AnomenAttacksAerie","GLOBAL")~ THEN @457
== IMOEN2J IF ~GlobalGT("AnomenKeldornFight","GLOBAL",0)
!GlobalTimerExpired("AnomenAttacksAerie","GLOBAL")~ THEN @458
== IMOEN2J @459
= @460
END
++ @461 + everythingfine
++ @462 + getrid
++ @463 + arrangement
++ @464 + madehim
++ @465 + outofkilling
++ @466 + ever
++ @467 + feelbetter
++ @468 + goingtodo

APPEND IMOEN2J
IF ~~ outofkilling
SAY @469
= @470
IF ~~ EXIT
END

IF ~~ arrangement
SAY @471
= @472
IF ~~ EXIT
END

IF ~~ everythingfine
SAY @473
= @474
= @475
IF ~~ EXIT
END

IF ~~ getrid
SAY @476
IF ~~ EXIT
END

IF ~~ madehim
SAY @477
= @478
= @479
IF ~~ EXIT
END

IF ~~ feelbetter
SAY @480
IF ~~ EXIT
END

IF ~~ goingtodo
SAY @481
= @482
IF ~~ EXIT
END

END


CHAIN IF ~Global("FWBanterAnoLateRomance","GLOBAL",3)~ THEN IMOEN2J cnano
@483 DO ~SetGlobal("FWBanterAnoLateRomance","GLOBAL",10)~
== BANOMEN @484
== IMOEN2J @485
= @486
== IMOEN2J IF ~Dead("C6Bodhi")~ THEN @487
== IMOEN2J IF ~!Dead("C6Bodhi")~ THEN @488
== BANOMEN @489
== IMOEN2J @490
== BANOMEN @491
= @492
== IMOEN2J @493
EXIT


CHAIN IF ~Global("FWBanterAnoLateRomance","GLOBAL",2)~ THEN IMOEN2J lgano
@494 DO ~SetGlobal("FWBanterAnoLateRomance","GLOBAL",10)~
== BANOMEN @495
== IMOEN2J @496
== BANOMEN @497
== IMOEN2J @498
== BANOMEN @499
== IMOEN2J @500
== BANOMEN @501
== IMOEN2J @502
= @503
= @504
== BANOMEN @505
== IMOEN2J @502
= @506
== BANOMEN @507
== IMOEN2J @508
== BANOMEN @509
= @510
== IMOEN2J @511
= @512
EXIT


CHAIN IF WEIGHT #-1 ~Global("FWAerieImmyInUD","GLOBAL",3)~ THEN BAERIE outtaud
@513
DO ~SetGlobal("FWAerieImmyInUD","GLOBAL",4)~
== IMOEN2J @514
== BAERIE @515
== IMOEN2J @516
== BAERIE @517
== IMOEN2J @518
== BAERIE @519
= @520
== IMOEN2J @521
== BAERIE @522
== IMOEN2J @523
== BAERIE @524
== IMOEN2J @525
== IMOEN2J IF ~IsValidForPartyDialogue("Viconia")~ THEN @526
== BVICONI IF ~IsValidForPartyDialogue("Viconia")~ THEN @527
EXIT


CHAIN IF ~Global("FWBanterJaheiraLateRomance","GLOBAL",3)~ THEN IMOEN2J jaheira
@528 DO ~SetGlobal("FWBanterJaheiraLateRomance","GLOBAL",4)~
== BJAHEIR IF ~Dead("c6bodhi")~ THEN @529
== BJAHEIR IF ~!Dead("C6BODHI")~ THEN @530
== IMOEN2J IF ~!Dead("C6BODHI")~ THEN @531
== IMOEN2J @532
== IMOEN2J IF ~G("JaheiraNookie",1)~ THEN @533
== IMOEN2J IF ~!G("JaheiraNookie",1)~ THEN @534
== IMOEN2J @535
== BJAHEIR @536
== IMOEN2J @537
= @538
== BJAHEIR @539
= @540
= @541
== IMOEN2J @542
== BJAHEIR @543
== IMOEN2J IF ~!Dead("C6BODHI")~ THEN @544
== IMOEN2J IF ~Dead("C6BODHI")~ THEN @545
EXIT



CHAIN IF WEIGHT #-1 ~Global("FWMinscLarry","LOCALS",2)~
THEN BMINSC larry
@200
DO ~SetGlobal("FWMinscLarry","LOCALS",3)~
== BNALIA @201
= @202
== BMINSC @203
== FWLILCOR @204
== BMINSC @205
== FWLILCOR @206
== BNALIA @207
= @208
== FWLILCOR @209
== BNALIA @210
== FWLILCOR @211
== BNALIA @212
== FWLILCOR @213 DO ~DestroySelf()~
== BMINSC @214
EXIT



CHAIN IF WEIGHT #51 ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
GlobalGT("BJaheira11","LOCALS",0)
Global("FWBanterJaheira2","LOCALS",0)~
THEN BJAHEIR cerndstorm
@215 DO ~SetGlobal("FWBanterJaheira2","LOCALS",1)~
== BCERND @216
== BJAHEIR @217
== BCERND @218
== BJAHEIR @219
== BCERND @220
= @221
== BJAHEIR @222
== BCERND @223
= @224
== BJAHEIR @225
== BCERND @226
EXIT



CHAIN IF WEIGHT #-1 ~Global("FWBanterEHSleep","GLOBAL",2)~ THEN BEDWIN hdsleep
@227
DO ~SetGlobal("FWBanterEHSleep","GLOBAL",3)~
== BHAERDA @228
== BEDWIN @229
== BHAERDA @230
== BEDWIN @231
EXIT


APPEND BMAZZY
IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("feudplot","GLOBAL",2)
Global("loganmantle","GLOBAL",2)
!Global("GrovePoisoned","GLOBAL",1)
!Dead("trfued01")
!Dead("trfued05")
!Dead("trgeni01")
Dead("Shadel")
ReputationGT(Player1,12)
Global("FWBanterMazzy2","LOCALS",0)~ THEN mazzypcchat
SAY @232
= @233
+ ~Global("FWBanterMazQ1","LOCALS",0)~ + @234 DO ~SetGlobal("FWBanterMazQ1","LOCALS",1)~ + ihtafeer
+ ~Global("FWBanterMazQ2","LOCALS",0)~ + @235 DO ~SetGlobal("FWBanterMazQ2","LOCALS",1)~ + faldorn
+ ~Global("FWBanterMazQ3","LOCALS",0)~ + @236 DO ~SetGlobal("FWBanterMazQ3","LOCALS",1)~ + coprith
+ ~Global("FWBanterMazQ4","LOCALS",0)~ + @237 DO ~SetGlobal("FWBanterMazQ4","LOCALS",1)~ + nobles
++ @238 + blush
++ @239 + moving
END

IF ~~ blush
SAY @240
IF ~~ DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

IF ~~ moving
SAY @241
IF ~~ DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

IF ~~ coprith
SAY @242
= @243
+ ~Global("FWBanterMazQ1","LOCALS",0)~ + @234 DO ~SetGlobal("FWBanterMazQ1","LOCALS",1)~ + ihtafeer
+ ~Global("FWBanterMazQ2","LOCALS",0)~ + @235 DO ~SetGlobal("FWBanterMazQ2","LOCALS",1)~ + faldorn
+ ~Global("FWBanterMazQ3","LOCALS",0)~ + @236 DO ~SetGlobal("FWBanterMazQ3","LOCALS",1)~ + coprith
+ ~Global("FWBanterMazQ4","LOCALS",0)~ + @237 DO ~SetGlobal("FWBanterMazQ4","LOCALS",1)~ + nobles
++ @244 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
++ @245 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

IF ~~ nobles
SAY @246
= @247
= @248
= @249
+ ~Global("FWBanterMazQ1","LOCALS",0)~ + @234 DO ~SetGlobal("FWBanterMazQ1","LOCALS",1)~ + ihtafeer
+ ~Global("FWBanterMazQ2","LOCALS",0)~ + @235 DO ~SetGlobal("FWBanterMazQ2","LOCALS",1)~ + faldorn
+ ~Global("FWBanterMazQ3","LOCALS",0)~ + @236 DO ~SetGlobal("FWBanterMazQ3","LOCALS",1)~ + coprith
+ ~Global("FWBanterMazQ4","LOCALS",0)~ + @237 DO ~SetGlobal("FWBanterMazQ4","LOCALS",1)~ + nobles
++ @244 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
++ @245 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

IF ~~ faldorn
SAY @250
= @251
= @252
+ ~Global("FWBanterMazQ1","LOCALS",0)~ + @234 DO ~SetGlobal("FWBanterMazQ1","LOCALS",1)~ + ihtafeer
+ ~Global("FWBanterMazQ2","LOCALS",0)~ + @235 DO ~SetGlobal("FWBanterMazQ2","LOCALS",1)~ + faldorn
+ ~Global("FWBanterMazQ3","LOCALS",0)~ + @236 DO ~SetGlobal("FWBanterMazQ3","LOCALS",1)~ + coprith
+ ~Global("FWBanterMazQ4","LOCALS",0)~ + @237 DO ~SetGlobal("FWBanterMazQ4","LOCALS",1)~ + nobles
++ @244 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
++ @245 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

IF ~~ ihtafeer
SAY @253
= @254
+ ~Global("FWBanterMazQ1","LOCALS",0)~ + @234 DO ~SetGlobal("FWBanterMazQ1","LOCALS",1)~ + ihtafeer
+ ~Global("FWBanterMazQ2","LOCALS",0)~ + @235 DO ~SetGlobal("FWBanterMazQ2","LOCALS",1)~ + faldorn
+ ~Global("FWBanterMazQ3","LOCALS",0)~ + @236 DO ~SetGlobal("FWBanterMazQ3","LOCALS",1)~ + coprith
+ ~Global("FWBanterMazQ4","LOCALS",0)~ + @237 DO ~SetGlobal("FWBanterMazQ4","LOCALS",1)~ + nobles
++ @244 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
++ @245 DO ~SetGlobal("FWBanterMazzy2","LOCALS",1)~ EXIT
END

END






CHAIN IF WEIGHT #35
~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
OR(2)
AreaCheck("AR1100")
AreaCheck("AR2000")
!G("AnomenIsNotKnight",1)
Global("FWBanterAnomen2","LOCALS",0)~ THEN BANOMEN cities
@255 DO ~SetGlobal("FWBanterAnomen2","LOCALS",1)~
== BVALYGA @256
== BKELDOR @257
== BANOMEN @258
== BVALYGA @259
== BKELDOR @260
EXIT





CHAIN IF WEIGHT #18 ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("FWBanterKorgan1","LOCALS",0)~ THEN BKORGAN mumbley
@261 DO ~SetGlobal("FWBanterKorgan1","LOCALS",1)~
== BYOSHIM @262
== BEDWIN IF ~IsValidForPartyDialog("Edwin")~ THEN @263
== BKORGAN @264
== BANOMEN IF ~IsValidForPartyDialog("Anomen") !G("AnomenIsNotKnight",1)~ THEN @265
== BYOSHIM @266
== BHAERDA IF ~IsValidForPartyDialog("HaerDalis")~ THEN @267
== BKORGAN @268
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN @269
== BYOSHIM @270
== BKORGAN @271
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @272
== BYOSHIM @273
= @274
== BKORGAN @275
== BYOSHIM @276
== BKORGAN @277
= @278
== BYOSHIM @279
EXIT


CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
OR(2)
AreaType(FOREST)
AreaType(DUNGEON)
Global("FWBanterNalia1","LOCALS",0)~ THEN BNALIA cerndbacon
@280
DO ~SetGlobal("FWBanterNalia1","LOCALS",1)~
== BCERND @281
== BNALIA @282
== BCERND @283
= @284
== BNALIA @285
== BCERND @286
== BNALIA @287
== BCERND @288
== BNALIA @289
== BCERND @290
= @291
= @292
EXIT

// The world's shortest banter!

APPEND BVICONI
IF WEIGHT #-1 ~Global("FWBanterEdVic","GLOBAL",2)~ evendying
SAY @293 
IF ~~ DO ~SetGlobal("FWBanterEdVic","GLOBAL",3) RestParty()~ EXIT
END
END



// Allow check for Yoshimo definitely having been at the Spellhold battle

EXTEND_BOTTOM YOSHIMOX 2
IF ~~ DO ~SetGlobal("FWBanterYoshiBetray","GLOBAL",1) Enemy()~ EXIT
END

CHAIN IF WEIGHT #20 ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("FWBanterEdwin1","LOCALS",0)~ THEN BEDWIN nalisteal
@0
DO ~SetGlobal("FWBanterEdwin1","LOCALS",1)~
= @1
== BNALIA @2
== BEDWIN @3
== BNALIA @4
== BEDWIN @5
== BNALIA @6
== BEDWIN @7
== BNALIA @8
= @9
== BEDWIN @10
EXIT


CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
InParty("Jan")
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("FWBanterMazzy1","LOCALS",0)~ THEN BMAZZY shortpeople
@11
DO ~SetGlobal("FWBanterMazzy1","LOCALS",1)~
== BKORGAN @12
= @13
= @14
== BJAN @15
== BMAZZY @16
== BJAN @17
== BKORGAN @18
== BJAN @19
== BMAZZY @20
== BJAN @21
EXIT



CHAIN IF WEIGHT #-1 ~Global("FWBanterMinscVamp","LOCALS",2)~ THEN BKELDOR minscvamp
@22
DO ~SetGlobal("FWBanterMinscVamp","LOCALS",3)~
== BMINSC @23
== BKELDOR @24
= @25
== BMINSC @26
= @27
= @28
= @29
== BKELDOR @30
EXIT


CHAIN IF WEIGHT #35
~G("AnomenIsNotKnight",1)
!G("AnomenRomanceActive",2)
InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
G("FWBanterAnoHD",1)
Global("FWBanterAnomen1","LOCALS",0)~ THEN BANOMEN hdchicks
@31 DO ~SetGlobal("FWBanterAnomen1","LOCALS",1)~
== BHAERDA @32
== BANOMEN @33
== BHAERDA @34
== BANOMEN @35
= @36
== BHAERDA @37
== BANOMEN @38
== BHAERDA @39
== BAERIE IF ~IsValidForPartyDialogue("Aerie") OR(2) G("HaerDalisRomanceActive",1) G("HaerDalisRomanceActive",2)~ THEN @40
== BHAERDA IF ~IsValidForPartyDialogue("Aerie") OR(2) G("HaerDalisRomanceActive",1) G("HaerDalisRomanceActive",2)~ THEN @41
== BHAERDA @42
= @43
= @44
== BANOMEN @45
== BHAERDA @46
EXIT


CHAIN IF WEIGHT #42
~G("FWBanterMazzyViconia",1)
Dead("SHADEL")
AreaType(OUTDOOR)
InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)~ THEN BVICONI mazzyhate
@47 DO ~SG("FWBanterMazzyViconia",2)~
== BMAZZY @48
== BVICONI @49
== BMAZZY @50
== BVICONI @51
== BMAZZY @52
== BVICONI @53
== BVICONI IF ~GlobalLT("Lovetalk","LOCALS",40) Gender(Player1,MALE)~ THEN @54
== BVICONI IF ~OR(2) !GlobalLT("Lovetalk","LOCALS",40) !Gender(Player1,MALE)~ THEN @55
== BMAZZY @56
== BVICONI @57
= @58
EXIT


CHAIN IF WEIGHT #51 ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("C6Bodhi")
GGT("Chapter",%bg2_chapter_1%)
Global("FWBanterYoshiBetray","GLOBAL",1)
Global("FWBanterJaheira1","LOCALS",0)~ THEN BJAHEIR imoenyoshi
@59 DO ~SetGlobal("FWBanterJaheira1","LOCALS",1)~
== IMOEN2J @60
= @61
== BJAHEIR @62
== IMOEN2J @63
== BJAHEIR @64
== IMOEN2J @65
== BJAHEIR @66
== IMOEN2J @67
== BJAHEIR @68
== IMOEN2J @69
== BJAHEIR @70
== IMOEN2J @71
== BJAHEIR @72
= @73
== IMOEN2J IF ~PartyHasItem("miscbu")~ THEN @74
== BJAHEIR IF ~PartyHasItem("miscbu")~ THEN @75
== IMOEN2J @76
== BJAHEIR @77
== IMOEN2J @78
== BJAHEIR @79
EXIT




CHAIN IF WEIGHT #27 ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("FWBanterAerie1","LOCALS",0)
OR(2)
!InParty("Keldorn")
Global("FWBanterKelValGods","GLOBAL",1)~ THEN BAERIE valyreligion
@80 DO ~SetGlobal("FWBanterAerie1","LOCALS",1)~
== BVALYGA @81
== BAERIE @82
== BVALYGA @83
== BAERIE @84
== BVALYGA @85
== BAERIE @86
== BVALYGA @87
= @88
== BAERIE @89
= @90
== BVALYGA @91
= @92
= @93
== BAERIE @94
== BVALYGA @95
EXIT

CHAIN IF WEIGHT #-1 ~Global("FWBanterVASleep","GLOBAL",2)
See("Aerie")
InParty("Aerie")~ THEN BVICONI aeriesleep
@96
DO ~SetGlobal("FWBanterVASleep","GLOBAL",3)~
== BAERIE @97
== BVICONI @98
= @99
== BAERIE @100
== BVICONI @101
== BAERIE @102
= @103
== BVICONI @104
EXIT



CHAIN IF WEIGHT #15 ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("FWBanterRockPaper","LOCALS",0)~ THEN BMINSC rockpaper
@105 DO ~SetGlobal("FWBanterRockPaper","LOCALS",1)~
== BAERIE @106
== BMINSC @107
== BAERIE @108
== BYOSHIM @109
== BMINSC @110
== BYOSHIM @111
== BAERIE @112
== BYOSHIM @113
== BMINSC @114
== BYOSHIM @115
== BMINSC @116
== BYOSHIM @117
== BMINSC @118
== BYOSHIM @119
== BMINSC @120
= @121
== BYOSHIM @116
== BMINSC @117
= @122
== BYOSHIM @123
== BAERIE @124
== BMINSC @125
== BYOSHIM @126
== BMINSC @127
== BYOSHIM @128
== BMINSC @129
== BYOSHIM @130
= @131
== BMINSC @132
== BAERIE @133
EXIT

CHAIN IF WEIGHT #15 ~%CLEVER_EDITORIAL_COMMENT%
InParty("Imoen2")
See("Imoen2")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("C6Bodhi")
Global("FWBanterMinsc1","LOCALS",0)~ THEN BMINSC minsc1
@134
DO ~SetGlobal("FWBanterMinsc1","LOCALS",1)~
== IMOEN2J @135
== BMINSC @136
== IMOEN2J @137
= @138
== BMINSC @139
== IMOEN2J @140
= @141
== BMINSC @142
= @143
== IMOEN2J @144
EXIT

CHAIN IF WEIGHT #5 ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
GlobalGT("BJan8","LOCALS",0)
Global("FWBanterJan1","LOCALS",0)~ THEN BJAN valygarbow
@145
DO ~SetGlobal("FWBanterJan1","LOCALS",1)~
== BVALYGA @146
== BJAN @147
== BVALYGA @148
== BJAN @149
== BVALYGA @150
== BJAN @151
= @152
== BVALYGA @153
== BJAN @154
== BVALYGA @155
== BJAN @156
== BVALYGA @157
= @158
== BJAN @159 DO ~GiveItemCreate("J#JanXbo","Valygar",1,0,0)~
EXIT

APPEND JANJ
IF WEIGHT #-1
~Global("FWBanterJanBoltGift","LOCALS",1)~ boltgift

SAY @294
= @295
++ @296 DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",2)~ + insects
++ @297  DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",2)~ + turnips
++ @298 DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",2)~ + main
++ @299 DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",2)~ + insects
END

IF ~~ insects
SAY @300
IF ~~ GOTO main
END

IF ~~ turnips
SAY @301
IF ~~ GOTO main
END

IF ~~ main
SAY @302
= @303
IF ~~ DO ~StartCutSceneMode()
StartCutScene("J#JanBol")~ EXIT
END

IF WEIGHT #-1
~Global("FWBanterJanBoltGift","LOCALS",2)~ boltgift2
SAY @304
++ @305 DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",3)~ + escape
++ @306 DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",3)~ + genius
++ @307  DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",3)~ + kill
++ @308  DO ~SetGlobal("FWBanterJanBoltGift","LOCALS",3)~ + demonstrations
END

IF ~~ escape
SAY @309
IF ~~ DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ genius
SAY @310
IF ~~ EXIT
END

IF ~~ kill
SAY @311
= @312
IF ~~ EXIT
END

IF ~~ demonstrations
SAY @313
IF ~~ DO ~RunAwayFrom(Player1,50)~
EXIT
END

IF WEIGHT #-1
~Global("FWBanterJanBootGift","LOCALS",2)~ bootgift
SAY @160
= @161
= @162
= @163
= @164
++ @165 + hideous
++ @166 + special
++ @167 + gifts
++ @168 + welcome
END

IF ~~ welcome
SAY @169
IF ~~ GOTO talkdown
END

IF ~~ gifts
SAY @170
IF ~~ GOTO talkdown
END

IF ~~ special
SAY @171
IF ~~ GOTO talkdown
END

IF ~~ hideous
SAY @172
= @173
IF ~~ GOTO talkdown
END

IF ~~ talkdown
SAY @174
IF ~~ DO ~SetGlobal("FWBanterJanBootGift","LOCALS",3)
GiveItemCreate("J#JanShu",Player1,50,0,0)~ EXIT
END

// J#JBoot 1

END

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
OR(2)
AreaType(FOREST)
AreaType(DUNGEON)
Global("PGBanterEdwinMazzy1","LOCALS",0)~ THEN BEDWIN shoes
@800
DO ~SetGlobal("PGBanterEdwinMazzy1","LOCALS",1)~
== BMAZZY @801
== BEDWIN @802
== BMAZZY @803
== BEDWIN @804
= @805
== BMAZZY @806
== BEDWIN @807
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("PGBanterMinscNalia1","LOCALS",0)~ THEN BNALIA walking
@808
DO ~SetGlobal("PGBanterMinscNalia1","LOCALS",1)~
== BMINSC @809
== BNALIA @810
= @811
== BMINSC @812
== BNALIA @813
= @814
== BMINSC @815
= @816
== BNALIA @817
= @818
== BMINSC @819
EXIT


// 051808

CHAIN IF 
~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!G("AnomenIsNotKnight",1)
!G("AnomenIsKnight",1)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("FWBanterHDAno2","LOCALS",0)~ THEN BHAERDA hddrinks
@850 DO ~SetGlobal("FWBanterHDAno2","LOCALS",1)~
== BANOMEN @851
== BHAERDA @852 = @853
== BANOMEN @854
== BHAERDA @855
== BANOMEN @856
== BHAERDA @857
EXIT

CHAIN IF WEIGHT #42
~%CLEVER_EDITORIAL_COMMENT%
InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Global("ViconiaRomanceActive","GLOBAL",2)
!Dead("C6Bodhi")
Global("FWBanterVicImoen1","LOCALS",0)~ THEN BVICONI imoenmuses
@858 DO ~SetGlobal("FWBanterVicImoen1","LOCALS",1)~
== IMOEN2J @859 = @860
== BVICONI @861
== IMOEN2J @862
== BVICONI @863
== IMOEN2J @864
== BVICONI @865
== IMOEN2J @866
EXIT

CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("PGBanterNaliaKeld1","LOCALS",0)~ THEN BNALIA orderchat
@867
DO ~SetGlobal("PGBanterNaliaKeld1","LOCALS",1)~
== BKELDOR @868
== BNALIA @869
== BKELDOR @870 = @871
== BNALIA @872 = @873
== BKELDOR @874
EXIT
