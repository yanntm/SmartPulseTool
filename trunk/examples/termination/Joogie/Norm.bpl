type ref;
type realVar;
type classConst;
// type Field x;
// var $HeapVar : <x>[ref, Field x]x;

const unique $null : ref ;
const unique $intArrNull : [int]int ;
const unique $realArrNull : [int]realVar ;
const unique $refArrNull : [int]ref ;

const unique $arrSizeIdx : int;
var $intArrSize : [int]int;
var $realArrSize : [realVar]int;
var $refArrSize : [ref]int;

var $stringSize : [ref]int;

//built-in axioms 
axiom ($arrSizeIdx == -1);

//note: new version doesn't put helpers in the perlude anymore//Prelude finished 



var java.lang.String$lp$$rp$$Norm.Random$args257 : [int]ref;
var Norm.Form$Norm.Form$yes255 : Field ref;
var int$Norm.Random$index0 : int;
var Norm.Form$Norm.Form$no256 : Field ref;
var Norm.Form$Norm.Form$cond254 : Field ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 7
// <Norm.Random: int random()>
procedure int$Norm.Random$random$2231() returns (__ret : int)
  modifies $stringSize, int$Norm.Random$index0;
 {
var r017 : ref;
var $i015 : int;
var $i320 : int;
var $r116 : [int]ref;
var $i118 : int;
var $i219 : int;
	 //  @line: 8
Block29:
	 //  @line: 8
	$r116 := java.lang.String$lp$$rp$$Norm.Random$args257;
	 //  @line: 8
	$i015 := int$Norm.Random$index0;
	 assert ($geint(($i015), (0))==1);
	 assert ($ltint(($i015), ($refArrSize[$r116[$arrSizeIdx]]))==1);
	 //  @line: 8
	r017 := $r116[$i015];
	 //  @line: 9
	$i118 := int$Norm.Random$index0;
	 //  @line: 9
	$i219 := $addint(($i118), (1));
	 //  @line: 9
	int$Norm.Random$index0 := $i219;
	$i320 := $stringSize[r017];
	 //  @line: 10
	__ret := $i320;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 7
// <Norm.Form: void <init>(Norm.Form,Norm.Form,Norm.Form)>
procedure void$Norm.Form$$la$init$ra$$2228(__this : ref, $param_0 : ref, $param_1 : ref, $param_2 : ref)
  modifies $HeapVar;
  requires ($neref((__this), ($null))==1);
 {
var r34 : ref;
var r01 : ref;
var r12 : ref;
var r23 : ref;
Block16:
	r01 := __this;
	r12 := $param_0;
	r23 := $param_1;
	r34 := $param_2;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 8
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 assert ($neref((r01), ($null))==1);
	 //  @line: 9
	$HeapVar[r01, Norm.Form$Norm.Form$cond254] := r12;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 10
	$HeapVar[r01, Norm.Form$Norm.Form$yes255] := r23;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 11
	$HeapVar[r01, Norm.Form$Norm.Form$no256] := r34;
	 return;
}


	 //  @line: 2
// <Norm.Norm: void <init>()>
procedure void$Norm.Norm$$la$init$ra$$2233(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r021 : ref;
Block31:
	r021 := __this;
	 assert ($neref((r021), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r021));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $modint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $gtref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrealarray($param00 : [int]realVar, $param11 : [int]realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addint(x : int, y : int) returns (__ret : int) {
(x + y)
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 5
// <Norm.Norm: Norm.Form norm(Norm.Form)>
procedure Norm.Form$Norm.Norm$norm$2234($param_0 : ref) returns (__ret : ref)
  modifies $HeapVar;
 {
var $r1437 : ref;
var $r1640 : ref;
var $r826 : ref;
var $r1842 : ref;
var $r724 : ref;
var r022 : ref;
var r531 : ref;
var $r1134 : ref;
var $r1741 : ref;
var r227 : ref;
var $r928 : ref;
var $r1033 : ref;
var $r1336 : ref;
var r125 : ref;
var $r1538 : ref;
var $r623 : ref;
var r430 : ref;
var r329 : ref;
var $r1235 : ref;
Block32:
	r022 := $param_0;
	 goto Block33;
	 //  @line: 6
Block33:
	 goto Block36, Block34;
	 //  @line: 6
Block36:
	 //  @line: 6
	 assume ($negInt(($neref((r022), ($null))))==1);
	 //  @line: 7
	__ret := $null;
	 return;
	 //  @line: 6
Block34:
	 assume ($neref((r022), ($null))==1);
	 goto Block35;
	 //  @line: 8
Block35:
	 assert ($neref((r022), ($null))==1);
	 //  @line: 8
	$r623 := $HeapVar[r022, Norm.Form$Norm.Form$cond254];
	 goto Block37;
	 //  @line: 8
Block37:
	 goto Block38, Block40;
	 //  @line: 8
Block38:
	 assume ($neref(($r623), ($null))==1);
	 goto Block39;
	 //  @line: 8
Block40:
	 //  @line: 8
	 assume ($negInt(($neref(($r623), ($null))))==1);
	 //  @line: 9
	$r1437 := $newvariable((41));
	 assume ($neref(($newvariable((41))), ($null))==1);
	 assert ($neref((r022), ($null))==1);
	 //  @line: 9
	$r1538 := $HeapVar[r022, Norm.Form$Norm.Form$yes255];
	 //  @line: 9
	 call $r1640 := Norm.Form$Norm.Norm$norm$2234(($r1538));
	 assert ($neref((r022), ($null))==1);
	 //  @line: 9
	$r1741 := $HeapVar[r022, Norm.Form$Norm.Form$no256];
	 //  @line: 9
	 call $r1842 := Norm.Form$Norm.Norm$norm$2234(($r1741));
	 assert ($neref(($r1437), ($null))==1);
	 //  @line: 9
	 call void$Norm.Form$$la$init$ra$$2228(($r1437), ($null), ($r1640), ($r1842));
	 //  @line: 9
	__ret := $r1437;
	 return;
	 //  @line: 11
Block39:
	 assert ($neref((r022), ($null))==1);
	 //  @line: 11
	$r724 := $HeapVar[r022, Norm.Form$Norm.Form$cond254];
	 goto Block42;
	 //  @line: 11
Block42:
	 assert ($neref(($r724), ($null))==1);
	 //  @line: 11
	r125 := $HeapVar[$r724, Norm.Form$Norm.Form$cond254];
	 assert ($neref((r022), ($null))==1);
	 //  @line: 12
	$r826 := $HeapVar[r022, Norm.Form$Norm.Form$cond254];
	 assert ($neref(($r826), ($null))==1);
	 //  @line: 12
	r227 := $HeapVar[$r826, Norm.Form$Norm.Form$yes255];
	 assert ($neref((r022), ($null))==1);
	 //  @line: 13
	$r928 := $HeapVar[r022, Norm.Form$Norm.Form$cond254];
	 assert ($neref(($r928), ($null))==1);
	 //  @line: 13
	r329 := $HeapVar[$r928, Norm.Form$Norm.Form$no256];
	 assert ($neref((r022), ($null))==1);
	 //  @line: 14
	r430 := $HeapVar[r022, Norm.Form$Norm.Form$no256];
	 assert ($neref((r022), ($null))==1);
	 //  @line: 15
	r531 := $HeapVar[r022, Norm.Form$Norm.Form$yes255];
	 assert ($neref((r022), ($null))==1);
	 //  @line: 16
	$HeapVar[r022, Norm.Form$Norm.Form$no256] := $null;
	 assert ($neref((r022), ($null))==1);
	 //  @line: 16
	$HeapVar[r022, Norm.Form$Norm.Form$yes255] := $null;
	 assert ($neref((r022), ($null))==1);
	 //  @line: 16
	$HeapVar[r022, Norm.Form$Norm.Form$cond254] := $null;
	 //  @line: 17
	$r1033 := $newvariable((43));
	 assume ($neref(($newvariable((43))), ($null))==1);
	 //  @line: 17
	$r1134 := $newvariable((44));
	 assume ($neref(($newvariable((44))), ($null))==1);
	 assert ($neref(($r1134), ($null))==1);
	 //  @line: 17
	 call void$Norm.Form$$la$init$ra$$2228(($r1134), (r227), (r531), (r430));
	 //  @line: 17
	$r1235 := $newvariable((45));
	 assume ($neref(($newvariable((45))), ($null))==1);
	 assert ($neref(($r1235), ($null))==1);
	 //  @line: 17
	 call void$Norm.Form$$la$init$ra$$2228(($r1235), (r329), (r531), (r430));
	 assert ($neref(($r1033), ($null))==1);
	 //  @line: 17
	 call void$Norm.Form$$la$init$ra$$2228(($r1033), (r125), ($r1134), ($r1235));
	 //  @line: 17
	 call $r1336 := Norm.Form$Norm.Norm$norm$2234(($r1033));
	 //  @line: 17
	__ret := $r1336;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorefarr($param00 : ref) returns (__ret : [int]ref);



// procedure is generated by joogie.
function {:inline true} $gtint(x : int, y : int) returns (__ret : int) {
if (x > y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $reftoint($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $addref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $xorreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 2
// <Norm.Random: void <init>()>
procedure void$Norm.Random$$la$init$ra$$2230(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r014 : ref;
Block28:
	r014 := __this;
	 assert ($neref((r014), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r014));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpreal(x : realVar, y : realVar) returns (__ret : int) {
if ($ltreal((x), (y)) == 1) then 1 else if ($eqreal((x), (y)) == 1) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $addreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $gtreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqreal(x : realVar, y : realVar) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ltint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $newvariable($param00 : int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $divint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geint(x : int, y : int) returns (__ret : int) {
if (x >= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $mulint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $leint(x : int, y : int) returns (__ret : int) {
if (x <= y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $shlref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqrefarray($param00 : [int]ref, $param11 : [int]ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftointarr($param00 : ref) returns (__ret : [int]int);



// procedure is generated by joogie.
function {:inline true} $ltref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $mulreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 4
// <Norm.Random: void <clinit>()>
procedure void$Norm.Random$$la$clinit$ra$$2232()
  modifies int$Norm.Random$index0;
 {
	 //  @line: 5
Block30:
	 //  @line: 5
	int$Norm.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



	 //  @line: 21
// <Norm.Norm: void main(java.lang.String[])>
procedure void$Norm.Norm$main$2235($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$Norm.Random$args257;
 {
var r043 : [int]ref;
var r146 : ref;
var $i044 : int;

 //temp local variables 
var $freshlocal0 : ref;

Block46:
	r043 := $param_0;
	 //  @line: 22
	java.lang.String$lp$$rp$$Norm.Random$args257 := r043;
	 //  @line: 23
	 call $i044 := int$Norm.Random$random$2231();
	 //  @line: 23
	 call r146 := Norm.Form$Norm.Form$createForm$2229(($i044));
	 //  @line: 24
	 call $freshlocal0 := Norm.Form$Norm.Norm$norm$2234((r146));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $eqint(x : int, y : int) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $ushrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $modref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $eqintarray($param00 : [int]int, $param11 : [int]int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negRef($param00 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $lereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $nereal(x : realVar, y : realVar) returns (__ret : int) {
if (x != y) then 1 else 0
}


// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $instanceof($param00 : ref, $param11 : classConst) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $orref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $intarrtoref($param00 : [int]int) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $subreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shlreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negInt(x : int) returns (__ret : int) {
if (x == 0) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 14
// <Norm.Form: Norm.Form createForm(int)>
procedure Norm.Form$Norm.Form$createForm$2229($param_0 : int) returns (__ret : ref) {
var $r19 : ref;
var $i16 : int;
var $i412 : int;
var $i310 : int;
var $r07 : ref;
var $i28 : int;
var $r211 : ref;
var $r313 : ref;
var i05 : int;
Block17:
	i05 := $param_0;
	 goto Block18;
	 //  @line: 15
Block18:
	 goto Block19, Block21;
	 //  @line: 15
Block19:
	 assume ($leint((i05), (0))==1);
	 goto Block20;
	 //  @line: 15
Block21:
	 //  @line: 15
	 assume ($negInt(($leint((i05), (0))))==1);
	 //  @line: 16
	 call $i16 := int$Norm.Random$random$2231();
	 goto Block22;
	 //  @line: 16
Block20:
	 //  @line: 16
	__ret := $null;
	 return;
	 //  @line: 16
Block22:
	 goto Block23, Block25;
	 //  @line: 16
Block23:
	 assume ($leint(($i16), (42))==1);
	 goto Block24;
	 //  @line: 16
Block25:
	 //  @line: 16
	 assume ($negInt(($leint(($i16), (42))))==1);
	 goto Block20;
	 //  @line: 18
Block24:
	 //  @line: 18
	$r07 := $newvariable((26));
	 assume ($neref(($newvariable((26))), ($null))==1);
	 goto Block27;
	 //  @line: 18
Block27:
	 //  @line: 18
	$i28 := $subint((i05), (1));
	 //  @line: 18
	 call $r19 := Norm.Form$Norm.Form$createForm$2229(($i28));
	 //  @line: 18
	$i310 := $subint((i05), (1));
	 //  @line: 18
	 call $r211 := Norm.Form$Norm.Form$createForm$2229(($i310));
	 //  @line: 18
	$i412 := $subint((i05), (1));
	 //  @line: 18
	 call $r313 := Norm.Form$Norm.Form$createForm$2229(($i412));
	 assert ($neref(($r07), ($null))==1);
	 //  @line: 18
	 call void$Norm.Form$$la$init$ra$$2228(($r07), ($r19), ($r211), ($r313));
	 //  @line: 18
	__ret := $r07;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

