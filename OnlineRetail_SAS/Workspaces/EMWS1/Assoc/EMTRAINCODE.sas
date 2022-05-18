*------------------------------------------------------------*;
* Assoc: Sorting Training Data;
*------------------------------------------------------------*;
proc sort data=EMWS1.FIMPORT_train(keep= Description InvoiceNo) out=WORK.SORTEDTRAIN;
by InvoiceNo;
run;
*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Description(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;

%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.SORTEDTRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 100001
normlen= 256
out=WORK.EM_DMDB
;
id
InvoiceNo
;
class %DMDBClass;
target
Description
;
run;
quit;
options nocleanup;
proc assoc dmdb dmdbcat=WORK.EM_DMDB out=EMWS1.Assoc_ASSOC data=WORK.EM_DMDB
pctsup = 15
items=4
;
customer
INVOICENO
;
target
DESCRIPTION
;
run;
quit;
proc rulegen in = EMWS1.Assoc_ASSOC out=EMWS1.Assoc_RULE minconf = 70
;
run;
quit;
*------------------------------------------------------------*;
* Assoc: Selecting rules;
*------------------------------------------------------------*;
proc sort data=EMWS1.Assoc_RULE;
by descending LIFT;
where SET_SIZE>1;
run;
data WORK.ASSOCSUBSET;
set EMWS1.Assoc_RULE(obs=200);
index=_N_;
label index = "%sysfunc(sasmsg(sashelp.dmine, rpt_ruleIndex_vlabel,  NOQUOTE))";
label _LHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_leftHandSide_vlabel,  NOQUOTE))";
label _RHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_rightHandSide_vlabel,  NOQUOTE))";
run;
