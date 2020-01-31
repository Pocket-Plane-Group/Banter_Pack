CHAIN IF WEIGHT #13
~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Alignment("Sarevok",CHAOTIC_EVIL)
Alignment("Anomen",LAWFUL_GOOD)
InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("PGAnoAerThreatenSare","LOCALS",0)~ THEN BANOME25 threatensarevok
@200 DO ~SetGlobal("PGAnoAerThreatenSare","LOCALS",1)~
== BSAREV25 @201
== BAERIE25 @202
== BANOME25 @203
== BSAREV25 @204
== BAERIE25 @205
== BANOME25 @206
== BSAREV25 @207
= @208
== BAERIE25 @209
== BSAREV25 @210
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("PGImoOldTimes","LOCALS",0)~ THEN BIMOEN25 oldtimes
@211 DO ~SetGlobal("PGImoOldTimes","LOCALS",1)~
== BMINSC25 @212
== BIMOEN25 @213
== BMINSC25 @214
== BIMOEN25 @215
== BMINSC25 @216
== BIMOEN25 @217
= @218
= @219
== BJAHEI25 @220
== BIMOEN25 @221
== BJAHEI25 @222
= @223
== BIMOEN25 @224
= @225
= @226
== BJAHEI25 @227
== BMINSC25 @228
== BIMOEN25 @229
EXIT



CHAIN IF WEIGHT #-1 ~InParty("HaerDalis")
See("HaerDalis")
!Dead("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("PGAerieHDScars","LOCALS",0)~ THEN BAERIE25 hdscars
@230 DO ~SetGlobal("PGAerieHDScars","LOCALS",1)~
== BHAERD25 @231
== BAERIE25 @232
== BHAERD25 @233
== BAERIE25 @234
== BHAERD25 @235
= @236
== BAERIE25 @237
== BHAERD25 @238
== BAERIE25 @239
== BHAERD25 @240
== BAERIE25 @241
== BHAERD25 @242
== BAERIE25 @243
== BHAERD25 @244
== BAERIE25 @245
== BHAERD25 @246
= @247
= @248
= @249
== BAERIE25 @250
== BHAERD25 @251
EXIT


APPEND BCERND25
IF WEIGHT #2 ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
GlobalGT("SaradushSacked","GLOBAL",0)
Global("PGCerndSara","LOCALS",0)~
THEN cerndsara
SAY @252
++ @253 DO ~SetGlobal("PGCerndSara","LOCALS",1)~ + Cycle
++ @254 DO ~SetGlobal("PGCerndSara","LOCALS",1)~ + Bhaalspawn
++ @255 DO ~SetGlobal("PGCerndSara","LOCALS",1)~ + Salve
++ @256 DO ~SetGlobal("PGCerndSara","LOCALS",1)~ + Hell
++ @257 DO ~SetGlobal("PGCerndSara","LOCALS",1)~ + Mistaken
END

IF ~~ Cycle
SAY @258
++ @259 + lecture
++ @260 + Troubled
++ @261 + Mistaken
END

IF ~~ Bhaalspawn
SAY @262
++ @263 + Cycle
++ @264 + Mistaken
++ @265 + Troubled
++ @266 + youknow
++ @267 + Mistaken
END

IF ~~ youknow
SAY @268
IF ~~ GOTO Cycle
END

IF ~~ Salve
SAY @269
++ @270 EXIT
++ @271 + SquirrelPoo
END

IF ~~ Hell
SAY @272
IF ~~ GOTO Cycle
END

IF ~~ Mistaken
SAY @273
++ @274 + leaveme
++ @275 + Disappointing
++ @276 + Encouraging
END

IF ~~ leaveme
SAY @277
IF ~~ EXIT
END

IF ~~ lecture
SAY @278
= @279
= @280
++ @281 + Regrettable
+ ~Class(Player1, DRUID)~ + @282 + druid
++ @283 + Encouraging
++ @284 + Regrettable
++ @285 + Regrettable
END

IF ~~ druid
SAY @286
IF ~~ EXIT
END

IF ~~ Troubled
SAY @287
IF ~~ GOTO lecture
END

IF ~~ SquirrelPoo
SAY @288
IF ~~ EXIT
END

IF ~~ Disappointing
SAY @289
IF ~~ EXIT
END

IF ~~ Encouraging
SAY @290
IF ~~ EXIT
END

IF ~~ Regrettable
SAY @291
IF ~~ EXIT
END

END

CHAIN IF WEIGHT #8 ~NumInPartyGT(4)
InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Global("FWBanTOBKorgan1","LOCALS",0)~ THEN BKORGA25 negotiate
@100 DO ~SetGlobal("FWBanTOBKorgan1","LOCALS",1)~
== BEDWIN25 @101
== BKORGA25 @102
== BEDWIN25 @103
== BKORGA25 @104
= @105
= @106
== BEDWIN25 @107
== BKORGA25 @108
END
++ @109 EXTERN BEDWIN25 divide
++ @110 EXTERN BEDWIN25 othermates
++ @111 EXTERN BKORGA25 trinkets
++ @112 EXTERN BEDWIN25 minds
++ @113 EXTERN BEDWIN25 equal
++ @114 EXTERN BKORGA25 killyou

CHAIN BEDWIN25 divide
@115
== BKORGA25 @116
== BEDWIN25 @117
== BKORGA25 @118
EXIT

CHAIN BKORGA25 killyou
@119
EXIT

CHAIN BEDWIN25 othermates
@120
== BKORGA25 @121
= @122
EXIT

CHAIN BKORGA25 trinkets
@123
= @124
== BEDWIN25 @125
EXIT

CHAIN BEDWIN25 minds
@126
== BKORGA25 @127
EXIT

CHAIN BEDWIN25 equal
@128
== BKORGA25 @129
= @130
EXIT



CHAIN IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("FWBanTOBEdwin1","LOCALS",0)~ THEN BEDWIN25 sarevokmirror
@131
DO ~SetGlobal("FWBanTOBEdwin1","LOCALS",1)~
== BSAREV25 @132
== BEDWIN25 @133
= @134
== BSAREV25 IF ~Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @135
== BEDWIN25 IF ~Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @136
== BSAREV25 IF ~!Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @137
== BEDWIN25 IF ~!Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @138
EXIT


CHAIN IF WEIGHT #8
~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
G("ViconiaRomanceActive",2)
Alignment("Viconia",NEUTRAL)
Global("FWBanTOBVicoLateRom","GLOBAL",1)~ THEN BIMOEN25 vicorom
@139
DO ~SetGlobal("FWBanTOBVicoLateRom","GLOBAL",2)~
== BVICON25 @140
== BIMOEN25 @141
= @142
== BVICON25 @143
= @144
== BIMOEN25 @145
== BVICON25 @146
== BIMOEN25 @147
EXIT

CHAIN IF WEIGHT #8
~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
G("ViconiaRomanceActive",2)
!Alignment("Viconia",NEUTRAL)
Global("FWBanTOBVicoLateRom","GLOBAL",1)~ THEN BIMOEN25 vicorom
@148
DO ~SetGlobal("FWBanTOBVicoLateRom","GLOBAL",2)~
== BVICON25 @140
== BIMOEN25 @141
= @149
== BVICON25 @150
= @151
== BIMOEN25 @152
== BVICON25 @153
== BIMOEN25 @154
== BVICON25 @155
= @156
END
++ @157 EXTERN BIMOEN25 elg
++ @158 EXTERN BIMOEN25 askherto
++ @159 EXTERN BIMOEN25 hurt
++ @160 EXTERN BIMOEN25 perfect
++ @161 EXTERN BVICON25 using

APPEND BIMOEN25
IF ~~ elg
SAY @162
IF ~~ EXTERN BVICON25 spareme
END

IF ~~ perfect
SAY @163
IF ~~ EXIT
END

IF ~~ hurt
SAY @164
IF ~~ EXIT
END

IF ~~ askherto
SAY @165
IF ~~ EXIT
END

END

APPEND BVICON25
IF ~~ spareme
SAY @166
IF ~~ EXIT
END

IF ~~ using
SAY @167
IF ~~ EXIT
END

END

CHAIN IF WEIGHT #8
~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("LovedOne","GLOBAL",1)
G("AerieRomanceActive",2)
Global("FWBanTOBImoen1","LOCALS",0)~ THEN BIMOEN25 teaseaerie
@168
DO ~SetGlobal("FWBanTOBImoen1","LOCALS",1)~
== BAERIE25 @169
== BIMOEN25 @170
= @171
== BAERIE25 @172
== BIMOEN25 @173
= @174
== BAERIE25 @175
== BIMOEN25 @176
EXIT


CHAIN IF WEIGHT #12
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("FWBanTOBAerie1","LOCALS",0)~
THEN BAERIE25 detente
@0
DO ~SetGlobal("FWBanTOBAerie1","LOCALS",1)~
== BJAHEI25 @1
== BAERIE25 @2
== BJAHEI25 @3
== BAERIE25 @4
== BJAHEI25 @5
== BAERIE25 @6
EXIT

CHAIN IF WEIGHT #13
~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
HPPercentLT("Korgan",80)
Global("FWBanTOBAnomen1","LOCALS",0)~
THEN BANOME25 dirtykorgan
@7
DO ~SetGlobal("FWBanTOBAnomen1","LOCALS",1)~
== BKORGA25 @8
== BANOME25 @9
== BKORGA25 @10
== BKORGA25 IF ~G("AnomenIsKnight",1)~ THEN @11
== BANOME25 @12
== BKORGA25 @13
EXIT


CHAIN IF WEIGHT #5
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
GlobalGT("ExpBKeldorn1","LOCALS",0)
Global("FWBanTOBKeldorn2","LOCALS",0)~
THEN BKELDO25 cerndkid
@14 DO ~SetGlobal("FWBanTOBKeldorn2","LOCALS",1)~
== BCERND25 @15
== BKELDO25 @16
== BCERND25 @17
= @18
== BKELDO25 @19
== BCERND25 @20
== BKELDO25 @21
== BCERND25 @22
== BKELDO25 @23
== BCERND25 @24
EXIT


APPEND BSAREV25
IF WEIGHT #-1 ~GlobalGT("ExpBSarevok10","GLOBAL",2)
Global("PGSarevokDisciple","GLOBAL",0)
Alignment("Sarevok",MASK_EVIL)~ noreallyletme
SAY @300
= @301
= @302
++ @303 DO ~SetGlobal("PGSarevokDisciple","GLOBAL",1)~ + main
++ @304 DO ~SetGlobal("PGSarevokDisciple","GLOBAL",1)~ + disgust
++ @305 DO ~SetGlobal("PGSarevokDisciple","GLOBAL",1)~ + iota
++ @306 DO ~SetGlobal("PGSarevokDisciple","GLOBAL",1)~ + youget
++ @307 DO ~SetGlobal("PGSarevokDisciple","GLOBAL",1)~ + throwme
END

IF ~~ youget
SAY @308
= @309
IF ~~ GOTO main
END

IF ~~ main
SAY @310
= @311
++ @312 + disgust
++ @313 + task
++ @314 + task
++ @315 + trust
++ @316 + waste
END

IF ~~ task
SAY @317
IF ~~ DO ~SG("PGSarevokDisciple",2)~ EXIT
END

IF ~~ bitter
SAY @318
IF ~~ EXIT
END

IF ~~ waste
SAY @319
IF ~~ EXIT
END

END

CHAIN BSAREV25 iota
@320
== BSAREV25 IF ~NumInParty(2)~ THEN @321
== BSAREV25 @322
== BSAREV25 IF ~Alignment(Player1,MASK_EVIL)~ THEN @323
== BSAREV25 IF ~!Alignment(Player1,MASK_EVIL)~ THEN @324
END
++ @325 + main
++ @326 + disgust
++ @327 + trust

CHAIN BSAREV25 disgust
@328
== BSAREV25 IF ~OR(2)
G("J#KelseyRomanceActive",2)
G("AnomenRomanceActive",2)~ THEN
@329
== BSAREV25 IF ~OR(3)
G("JaheiraRomanceActive",2)
G("AerieRomanceActive",2)
G("ViconiaRomanceActive",2)~ THEN
@330
== BSAREV25 @331
EXIT

CHAIN BSAREV25 throwme
@332
== BSAREV25 IF ~Global("SarevokOath","GLOBAL",1)~ THEN @333
== BSAREV25 @334
END BSAREV25 main

CHAIN BSAREV25 trust
@335
== BSAREV25 IF ~Global("SarevokOath","GLOBAL",1)~ THEN @336
== BSAREV25 @337
END
++ @338 + task
++ @339 + bitter
++ @316 + waste
++ @340 + disgust

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("PGCerndViconia1","LOCALS",0)~ THEN BVICON25 beast
@341
DO ~SetGlobal("PGCerndViconia1","LOCALS",1)~
== BCERND25 @342
== BVICON25 @343
= @344
== BCERND25 @345
= @346
== BVICON25 @347
EXIT

