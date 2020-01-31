

// Let's fix stupid Korgan loop (Biobug)

/* fix from Fixpack */
// korgan not setting variable to track whether this talk has occurred
ADD_TRANS_ACTION BKORGAN
BEGIN 109 END
BEGIN END
~SetGlobal("BKorgan24","LOCALS",1)~

/* outdated
REPLACE BKORGAN
IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("BKorgan24","LOCALS",0)~ THEN BEGIN 109
  SAY #18201
  IF ~~ THEN REPLY #61034 DO ~SetGlobal("BKorgan24","LOCALS",1)~ GOTO 65
  IF ~~ THEN REPLY #61035 DO ~SetGlobal("BKorgan24","LOCALS",1)~ GOTO 78
END
END
*/



// Let's fix even stupider Jaheira loop (Biobug)


ADD_TRANS_ACTION bjaheir
BEGIN 68 END
BEGIN END
~SetGlobal("LoveTalk","LOCALS",9)~

/* outdated
REPLACE BJAHEIR

IF ~Global("JaheiraMatch","GLOBAL",0)
Global("LoveTalk","LOCALS",8)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 68
  SAY #20307
  IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1)~ REPLY #20331 GOTO 69
  IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1)~ REPLY #20334 GOTO 70
  IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1)~ REPLY #20335 GOTO 71
END
END
*/



// And also fix stupid Viconia loop (Biobug!)

/* we take better fix from Fixpack: */
// Viccy not setting variable to track whether this talk has occurred

ADD_TRANS_ACTION BVICONI
BEGIN 27 END
BEGIN 1 END
~SetGlobal("BViconia12","LOCALS",1)~

/* outdated
REPLACE BVICONI

IF
~%CLEVER_EDITORIAL_COMMENT%
Gender(Player1,FEMALE)
!StateCheck(Player1,STATE_SLEEPING)
Global("BViconia12","LOCALS",0)~ THEN BEGIN 27
  SAY #8657 /* ~What brought you to the Life?  Surely some measure of madness.~ [VICONI66] */
  IF ~~ THEN REPLY #8658 DO ~SetGlobal("BViconia12","LOCALS",1)~ GOTO 28
  IF ~~ THEN REPLY #8659 DO ~SetGlobal("BViconia12","LOCALS",1)~ GOTO 29
END

END

*/

