*------------------------------------------------------------*;
* Assoc: Score Code;
* To run this score code as stand alone uncomment the code below and set the ASSOCDATA and EM_SCORE_OUTPUT macro variables:;
*;
* %let EM_SCORE_OUTPUT=;
* %let ASSOCDATA =;
* data &EM_SCORE_OUTPUT;
* set &ASSOCDATA;
* run;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* &nodeid: Creating RULES data set;
*------------------------------------------------------------*;
data WORK.RULEID;
  length   SET_SIZE                             8
           EXP_CONF                             8
           CONF                                 8
           SUPPORT                              8
           LIFT                                 8
           COUNT                                8
           RULE                             $ 151
           _LHAND                           $ 111
           _RHAND                           $ 111
           ITEM1                            $  35
           ITEM2                            $  35
           ITEM3                            $  35
           ITEM4                            $  35
           ITEM5                            $  35
           index                                8
           ruleid                               8
           ;

  label    SET_SIZE="Relations"
           EXP_CONF="Expected Confidence(%)"
           CONF="Confidence(%)"
           SUPPORT="Support(%)"
           LIFT="Lift"
           COUNT="Transaction Count"
           RULE="Rule"
           _LHAND="Left Hand of Rule"
           _RHAND="Right Hand of Rule"
           ITEM1="Rule Item 1"
           ITEM2="Rule Item 2"
           ITEM3="Rule Item 3"
           ITEM4="Rule Item 4"
           ITEM5="Rule Item 5"
           index="Rule Index"
           ;
  format   SET_SIZE 6.
           EXP_CONF 6.2
           CONF 6.2
           SUPPORT 6.2
           LIFT 6.2
           COUNT 6.2
           ;
SET_SIZE=2; EXP_CONF=2.45357686453576; CONF=75.4266211604095; SUPPORT=1.34550989345509; LIFT=30.7414951007376; COUNT=221; RULE="TOILET METAL SIGN ==> BATHROOM METAL SIGN"; _LHAND="TOILET METAL SIGN"; _RHAND="BATHROOM METAL SIGN"; ITEM1="TOILET METAL SIGN";
ITEM2="==================================>"; ITEM3="BATHROOM METAL SIGN"; ITEM4=""; ITEM5=""; index=1; ruleid=1;
output;
SET_SIZE=2; EXP_CONF=2.64840182648401; CONF=74.8129675810474; SUPPORT=1.82648401826484; LIFT=28.2483446556023; COUNT=300; RULE="WOODEN STAR CHRISTMAS SCANDINAVIAN ==> WOODEN HEART CHRISTMAS SCANDINAVIAN"; _LHAND="WOODEN STAR CHRISTMAS SCANDINAVIAN"; _RHAND="WOODEN HEART CHRISTMAS SCANDINAVIAN";
ITEM1="WOODEN STAR CHRISTMAS SCANDINAVIAN"; ITEM2="==================================>"; ITEM3="WOODEN HEART CHRISTMAS SCANDINAVIAN"; ITEM4=""; ITEM5=""; index=2; ruleid=2;
output;
SET_SIZE=3; EXP_CONF=3.72602739726027; CONF=89.0339425587467; SUPPORT=2.07610350076103; LIFT=23.895138995546; COUNT=341; RULE="ROSES REGENCY TEACUP AND SAUCER & PINK REGENCY TEACUP AND SAUCER ==> GREEN REGENCY TEACUP AND SAUCER";
_LHAND="ROSES REGENCY TEACUP AND SAUCER & PINK REGENCY TEACUP AND SAUCER"; _RHAND="GREEN REGENCY TEACUP AND SAUCER"; ITEM1="ROSES REGENCY TEACUP AND SAUCER"; ITEM2="PINK REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="GREEN REGENCY TEACUP AND SAUCER"; ITEM5="";
index=3; ruleid=3;
output;
SET_SIZE=3; EXP_CONF=3.00152207001522; CONF=71.6510903426791; SUPPORT=1.40030441400304; LIFT=23.8715853727891; COUNT=230; RULE="REGENCY CAKESTAND 3 TIER & GREEN REGENCY TEACUP AND SAUCER ==> PINK REGENCY TEACUP AND SAUCER"; _LHAND="REGENCY CAKESTAND 3 TIER & GREEN REGENCY TEACUP AND SAUCER";
_RHAND="PINK REGENCY TEACUP AND SAUCER"; ITEM1="REGENCY CAKESTAND 3 TIER"; ITEM2="GREEN REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="PINK REGENCY TEACUP AND SAUCER"; ITEM5=""; index=4; ruleid=4;
output;
SET_SIZE=3; EXP_CONF=3.00152207001522; CONF=71.6386554621848; SUPPORT=2.07610350076103; LIFT=23.8674425145311; COUNT=341; RULE="ROSES REGENCY TEACUP AND SAUCER & GREEN REGENCY TEACUP AND SAUCER ==> PINK REGENCY TEACUP AND SAUCER";
_LHAND="ROSES REGENCY TEACUP AND SAUCER & GREEN REGENCY TEACUP AND SAUCER"; _RHAND="PINK REGENCY TEACUP AND SAUCER"; ITEM1="ROSES REGENCY TEACUP AND SAUCER"; ITEM2="GREEN REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="PINK REGENCY TEACUP AND SAUCER"; ITEM5="";
index=5; ruleid=5;
output;
SET_SIZE=3; EXP_CONF=3.72602739726027; CONF=86.7924528301886; SUPPORT=1.40030441400304; LIFT=23.2935627081021; COUNT=230; RULE="REGENCY CAKESTAND 3 TIER & PINK REGENCY TEACUP AND SAUCER ==> GREEN REGENCY TEACUP AND SAUCER"; _LHAND="REGENCY CAKESTAND 3 TIER & PINK REGENCY TEACUP AND SAUCER";
_RHAND="GREEN REGENCY TEACUP AND SAUCER"; ITEM1="REGENCY CAKESTAND 3 TIER"; ITEM2="PINK REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="GREEN REGENCY TEACUP AND SAUCER"; ITEM5=""; index=6; ruleid=6;
output;
SET_SIZE=2; EXP_CONF=3.72602739726027; CONF=81.947261663286; SUPPORT=2.45966514459665; LIFT=21.9931989022789; COUNT=404; RULE="PINK REGENCY TEACUP AND SAUCER ==> GREEN REGENCY TEACUP AND SAUCER"; _LHAND="PINK REGENCY TEACUP AND SAUCER"; _RHAND="GREEN REGENCY TEACUP AND SAUCER";
ITEM1="PINK REGENCY TEACUP AND SAUCER"; ITEM2="==================================>"; ITEM3="GREEN REGENCY TEACUP AND SAUCER"; ITEM4=""; ITEM5=""; index=7; ruleid=7;
output;
SET_SIZE=3; EXP_CONF=4.12785388127853; CONF=84.9056603773585; SUPPORT=1.36986301369863; LIFT=20.5689597595591; COUNT=225; RULE="REGENCY CAKESTAND 3 TIER & PINK REGENCY TEACUP AND SAUCER ==> ROSES REGENCY TEACUP AND SAUCER"; _LHAND="REGENCY CAKESTAND 3 TIER & PINK REGENCY TEACUP AND SAUCER";
_RHAND="ROSES REGENCY TEACUP AND SAUCER"; ITEM1="REGENCY CAKESTAND 3 TIER"; ITEM2="PINK REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="ROSES REGENCY TEACUP AND SAUCER"; ITEM5=""; index=8; ruleid=8;
output;
SET_SIZE=3; EXP_CONF=4.12785388127853; CONF=84.4059405940594; SUPPORT=2.07610350076103; LIFT=20.4478993253307; COUNT=341; RULE="PINK REGENCY TEACUP AND SAUCER & GREEN REGENCY TEACUP AND SAUCER ==> ROSES REGENCY TEACUP AND SAUCER";
_LHAND="PINK REGENCY TEACUP AND SAUCER & GREEN REGENCY TEACUP AND SAUCER"; _RHAND="ROSES REGENCY TEACUP AND SAUCER"; ITEM1="PINK REGENCY TEACUP AND SAUCER"; ITEM2="GREEN REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="ROSES REGENCY TEACUP AND SAUCER"; ITEM5="";
index=9; ruleid=9;
output;
SET_SIZE=3; EXP_CONF=3.72602739726027; CONF=75.2840909090909; SUPPORT=1.61339421613394; LIFT=20.2049214572192; COUNT=265; RULE="ROSES REGENCY TEACUP AND SAUCER & REGENCY CAKESTAND 3 TIER ==> GREEN REGENCY TEACUP AND SAUCER"; _LHAND="ROSES REGENCY TEACUP AND SAUCER & REGENCY CAKESTAND 3 TIER";
_RHAND="GREEN REGENCY TEACUP AND SAUCER"; ITEM1="ROSES REGENCY TEACUP AND SAUCER"; ITEM2="REGENCY CAKESTAND 3 TIER"; ITEM3="==================================>"; ITEM4="GREEN REGENCY TEACUP AND SAUCER"; ITEM5=""; index=10; ruleid=10;
output;
SET_SIZE=3; EXP_CONF=4.12785388127853; CONF=82.5545171339563; SUPPORT=1.61339421613394; LIFT=19.999379703912; COUNT=265; RULE="REGENCY CAKESTAND 3 TIER & GREEN REGENCY TEACUP AND SAUCER ==> ROSES REGENCY TEACUP AND SAUCER"; _LHAND="REGENCY CAKESTAND 3 TIER & GREEN REGENCY TEACUP AND SAUCER";
_RHAND="ROSES REGENCY TEACUP AND SAUCER"; ITEM1="REGENCY CAKESTAND 3 TIER"; ITEM2="GREEN REGENCY TEACUP AND SAUCER"; ITEM3="==================================>"; ITEM4="ROSES REGENCY TEACUP AND SAUCER"; ITEM5=""; index=11; ruleid=11;
output;
SET_SIZE=2; EXP_CONF=3.72602739726027; CONF=70.2064896755162; SUPPORT=2.89802130898021; LIFT=18.8421828908554; COUNT=476; RULE="ROSES REGENCY TEACUP AND SAUCER ==> GREEN REGENCY TEACUP AND SAUCER"; _LHAND="ROSES REGENCY TEACUP AND SAUCER"; _RHAND="GREEN REGENCY TEACUP AND SAUCER";
ITEM1="ROSES REGENCY TEACUP AND SAUCER"; ITEM2="==================================>"; ITEM3="GREEN REGENCY TEACUP AND SAUCER"; ITEM4=""; ITEM5=""; index=12; ruleid=12;
output;
SET_SIZE=2; EXP_CONF=4.12785388127853; CONF=77.7777777777777; SUPPORT=2.89802130898021; LIFT=18.8421828908554; COUNT=476; RULE="GREEN REGENCY TEACUP AND SAUCER ==> ROSES REGENCY TEACUP AND SAUCER"; _LHAND="GREEN REGENCY TEACUP AND SAUCER"; _RHAND="ROSES REGENCY TEACUP AND SAUCER";
ITEM1="GREEN REGENCY TEACUP AND SAUCER"; ITEM2="==================================>"; ITEM3="ROSES REGENCY TEACUP AND SAUCER"; ITEM4=""; ITEM5=""; index=13; ruleid=13;
output;
SET_SIZE=2; EXP_CONF=4.12785388127853; CONF=77.6876267748478; SUPPORT=2.33181126331811; LIFT=18.8203432120483; COUNT=383; RULE="PINK REGENCY TEACUP AND SAUCER ==> ROSES REGENCY TEACUP AND SAUCER"; _LHAND="PINK REGENCY TEACUP AND SAUCER"; _RHAND="ROSES REGENCY TEACUP AND SAUCER";
ITEM1="PINK REGENCY TEACUP AND SAUCER"; ITEM2="==================================>"; ITEM3="ROSES REGENCY TEACUP AND SAUCER"; ITEM4=""; ITEM5=""; index=14; ruleid=14;
output;
SET_SIZE=3; EXP_CONF=4.61491628614916; CONF=76.4492753623188; SUPPORT=1.28462709284627; LIFT=16.5656906045657; COUNT=211; RULE="ALARM CLOCK BAKELIKE PINK & ALARM CLOCK BAKELIKE GREEN ==> ALARM CLOCK BAKELIKE RED"; _LHAND="ALARM CLOCK BAKELIKE PINK & ALARM CLOCK BAKELIKE GREEN";
_RHAND="ALARM CLOCK BAKELIKE RED"; ITEM1="ALARM CLOCK BAKELIKE PINK"; ITEM2="ALARM CLOCK BAKELIKE GREEN"; ITEM3="==================================>"; ITEM4="ALARM CLOCK BAKELIKE RED"; ITEM5=""; index=15; ruleid=15;
output;
SET_SIZE=2; EXP_CONF=4.39573820395738; CONF=71.9780219780219; SUPPORT=1.59512937595129; LIFT=16.3745015372439; COUNT=262; RULE="BAKING SET SPACEBOY DESIGN ==> BAKING SET 9 PIECE RETROSPOT"; _LHAND="BAKING SET SPACEBOY DESIGN"; _RHAND="BAKING SET 9 PIECE RETROSPOT";
ITEM1="BAKING SET SPACEBOY DESIGN"; ITEM2="==================================>"; ITEM3="BAKING SET 9 PIECE RETROSPOT"; ITEM4=""; ITEM5=""; index=16; ruleid=16;
output;
SET_SIZE=2; EXP_CONF=4.51750380517503; CONF=73.0462519936204; SUPPORT=2.78843226788432; LIFT=16.1696049729813; COUNT=458; RULE="GARDENERS KNEELING PAD CUP OF TEA ==> GARDENERS KNEELING PAD KEEP CALM"; _LHAND="GARDENERS KNEELING PAD CUP OF TEA"; _RHAND="GARDENERS KNEELING PAD KEEP CALM";
ITEM1="GARDENERS KNEELING PAD CUP OF TEA"; ITEM2="==================================>"; ITEM3="GARDENERS KNEELING PAD KEEP CALM"; ITEM4=""; ITEM5=""; index=17; ruleid=17;
output;
SET_SIZE=3; EXP_CONF=6.81887366818873; CONF=74.1258741258741; SUPPORT=1.29071537290715; LIFT=10.8706918081918; COUNT=212; RULE="LUNCH BAG WOODLAND & LUNCH BAG PINK POLKADOT ==> LUNCH BAG RED RETROSPOT"; _LHAND="LUNCH BAG WOODLAND & LUNCH BAG PINK POLKADOT"; _RHAND="LUNCH BAG RED RETROSPOT";
ITEM1="LUNCH BAG WOODLAND"; ITEM2="LUNCH BAG PINK POLKADOT"; ITEM3="==================================>"; ITEM4="LUNCH BAG RED RETROSPOT"; ITEM5=""; index=18; ruleid=18;
output;
SET_SIZE=2; EXP_CONF=7.91476407914764; CONF=72.5373134328358; SUPPORT=1.47945205479452; LIFT=9.16481056257175; COUNT=243; RULE="PAINTED METAL PEARS ASSORTED ==> ASSORTED COLOUR BIRD ORNAMENT"; _LHAND="PAINTED METAL PEARS ASSORTED"; _RHAND="ASSORTED COLOUR BIRD ORNAMENT";
ITEM1="PAINTED METAL PEARS ASSORTED"; ITEM2="==================================>"; ITEM3="ASSORTED COLOUR BIRD ORNAMENT"; ITEM4=""; ITEM5=""; index=19; ruleid=19;
output;
;
run;
*------------------------------------------------------------*;
* Assoc: Creating RULEMAP and Output data sets;
*------------------------------------------------------------*;
%let _scoreDs = &EM_SCORE_OUTPUT;
proc sort data=&_scoreDs;
by InvoiceNo;
run;
proc mbscore data=&_scoreDs out=score_ruleid INCLUDE ALL_ID
no_rhs
;
customer InvoiceNo;
target Description;
;
rules data=work.ruleid;
run;
data &_scoreDs;
set score_ruleid;
array _r{19} _r1-_r19 (19*0);
by InvoiceNo;
if first.InvoiceNo then do;
do i=1 to 19;
_r[i]=0;
end;
end;
if ruleid ne . then _r[ruleid]=1;
if last.InvoiceNo then output;
drop i ruleid;
run;
%let _lib=%str();
%let _ds=%str();
%macro _dsname;
%let _lib =%scan(&EM_SCORE_OUTPUT, 1, .);
%let _ds =%scan(&EM_SCORE_OUTPUT, 2, .);
%if "&_ds" = "" %then %do;
%let _lib=WORK;
%let _ds=%scan(&EM_SCORE_OUTPUT, 1, .);
%end;
%mend _dsname;
%_dsname;
data _null_;
set ruleid end = eof;
if _N_=1 then do;
call execute("proc datasets lib=&_lib nolist;");
call execute("   modify &_ds;");
end;
call execute("   rename _r"!!strip(put(_N_, best.))!!"= RULE"!!strip(put(INDEX, best.))!!";");
call execute("   label  RULE"!!strip(put(INDEX, best.))!!'='!!quote(RULE)!!";");
if eof then do;
call execute("run;");
call execute("quit;");
end;
run;
proc datasets lib=work nolist;
delete score_ruleid ruleid;
run;
quit;
