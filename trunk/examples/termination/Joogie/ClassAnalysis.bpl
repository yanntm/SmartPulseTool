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



var ClassAnalysis.A$ClassAnalysis.ClassAnalysis$field254 : Field ref;
var int$ClassAnalysis.Random$index0 : int;
var java.lang.String$lp$$rp$$ClassAnalysis.Random$args255 : [int]ref;


// procedure is generated by joogie.
function {:inline true} $neref(x : ref, y : ref) returns (__ret : int) {
if (x != y) then 1 else 0
}


// procedure is generated by joogie.
function {:inline true} $realarrtoref($param00 : [int]realVar) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $modreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $leref($param00 : ref, $param11 : ref) returns (__ret : int);



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


	 //  @line: 2
// <ClassAnalysis.ClassAnalysis: void <init>()>
procedure void$ClassAnalysis.ClassAnalysis$$la$init$ra$$2232(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r09 : ref;
Block33:
	r09 := __this;
	 assert ($neref((r09), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r09));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $subref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $inttoreal($param00 : int) returns (__ret : realVar);



// procedure is generated by joogie.
function {:inline true} $shrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $negReal($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $refarrtoref($param00 : [int]ref) returns (__ret : ref);



// <java.lang.String: int length()>
procedure int$java.lang.String$length$59(__this : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $mulref($param00 : ref, $param11 : ref) returns (__ret : ref);



// procedure is generated by joogie.
function {:inline true} $neint(x : int, y : int) returns (__ret : int) {
if (x != y) then 1 else 0
}


	 //  @line: 7
// <ClassAnalysis.Random: int random()>
procedure int$ClassAnalysis.Random$random$2236() returns (__ret : int)
  modifies $stringSize, int$ClassAnalysis.Random$index0;
 {
var r023 : ref;
var $r122 : [int]ref;
var $i124 : int;
var $i225 : int;
var $i021 : int;
var $i326 : int;
	 //  @line: 8
Block40:
	 //  @line: 8
	$r122 := java.lang.String$lp$$rp$$ClassAnalysis.Random$args255;
	 //  @line: 8
	$i021 := int$ClassAnalysis.Random$index0;
	 assert ($geint(($i021), (0))==1);
	 assert ($ltint(($i021), ($refArrSize[$r122[$arrSizeIdx]]))==1);
	 //  @line: 8
	r023 := $r122[$i021];
	 //  @line: 9
	$i124 := int$ClassAnalysis.Random$index0;
	 //  @line: 9
	$i225 := $addint(($i124), (1));
	 //  @line: 9
	int$ClassAnalysis.Random$index0 := $i225;
	$i326 := $stringSize[r023];
	 //  @line: 10
	__ret := $i326;
	 return;
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



// procedure is generated by joogie.
function {:inline true} $shrref($param00 : ref, $param11 : ref) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $ushrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shrreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $divreal($param00 : realVar, $param11 : realVar) returns (__ret : realVar);



	 //  @line: 19
// <ClassAnalysis.A: void <init>()>
procedure void$ClassAnalysis.A$$la$init$ra$$2228(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r01 : ref;
Block16:
	r01 := __this;
	 assert ($neref((r01), ($null))==1);
	 //  @line: 20
	 call void$java.lang.Object$$la$init$ra$$28((r01));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $orint($param00 : int, $param11 : int) returns (__ret : int);



	 //  @line: 4
// <ClassAnalysis.Random: void <clinit>()>
procedure void$ClassAnalysis.Random$$la$clinit$ra$$2237()
  modifies int$ClassAnalysis.Random$index0;
 {
	 //  @line: 5
Block41:
	 //  @line: 5
	int$ClassAnalysis.Random$index0 := 0;
	 return;
}


// procedure is generated by joogie.
function {:inline true} $reftorealarr($param00 : ref) returns (__ret : [int]realVar);



// procedure is generated by joogie.
function {:inline true} $cmpref(x : ref, y : ref) returns (__ret : int) {
if ($ltref((x), (y)) == 1) then 1 else if ($eqref((x), (y)) == 1) then 0 else -1
}


	 //  @line: 6
// <ClassAnalysis.ClassAnalysis: void main(java.lang.String[])>
procedure void$ClassAnalysis.ClassAnalysis$main$2233($param_0 : [int]ref)
  modifies $stringSize, java.lang.String$lp$$rp$$ClassAnalysis.Random$args255, $HeapVar;
 {
var r010 : [int]ref;
var $r313 : ref;
var $r211 : ref;
var r112 : ref;
var $r414 : ref;
Block34:
	r010 := $param_0;
	 //  @line: 7
	java.lang.String$lp$$rp$$ClassAnalysis.Random$args255 := r010;
	 //  @line: 8
	$r211 := $newvariable((35));
	 assume ($neref(($newvariable((35))), ($null))==1);
	 assert ($neref(($r211), ($null))==1);
	 //  @line: 8
	 call void$ClassAnalysis.ClassAnalysis$$la$init$ra$$2232(($r211));
	 //  @line: 8
	r112 := $r211;
	 //  @line: 9
	$r313 := $newvariable((36));
	 assume ($neref(($newvariable((36))), ($null))==1);
	 assert ($neref(($r313), ($null))==1);
	 //  @line: 9
	 call void$ClassAnalysis.A$$la$init$ra$$2228(($r313));
	 assert ($neref((r112), ($null))==1);
	 //  @line: 9
	$HeapVar[r112, ClassAnalysis.A$ClassAnalysis.ClassAnalysis$field254] := $r313;
	 //  @line: 10
	$r414 := $newvariable((37));
	 assume ($neref(($newvariable((37))), ($null))==1);
	 assert ($neref(($r414), ($null))==1);
	 //  @line: 10
	 call void$ClassAnalysis.B$$la$init$ra$$2230(($r414));
	 assert ($neref((r112), ($null))==1);
	 //  @line: 10
	$HeapVar[r112, ClassAnalysis.A$ClassAnalysis.ClassAnalysis$field254] := $r414;
	 assert ($neref((r112), ($null))==1);
	 //  @line: 11
	 call void$ClassAnalysis.ClassAnalysis$eval$2234((r112));
	 return;
}


	 //  @line: 14
// <ClassAnalysis.ClassAnalysis: void eval()>
procedure void$ClassAnalysis.ClassAnalysis$eval$2234(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r017 : ref;
var i016 : int;
var $i115 : int;
var $r118 : ref;

 //temp local variables 
var $freshlocal0 : int;

Block38:
	r017 := __this;
	 //  @line: 15
	 call $i115 := int$ClassAnalysis.Random$random$2236();
	 //  @line: 15
	i016 := $modint(($i115), (100));
	 assert ($neref((r017), ($null))==1);
	 //  @line: 16
	$r118 := $HeapVar[r017, ClassAnalysis.A$ClassAnalysis.ClassAnalysis$field254];
	 assert ($neref(($r118), ($null))==1);
	 //  @line: 16
	 call $freshlocal0 := boolean$ClassAnalysis.A$test$2229(($r118), (i016));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $realtoint($param00 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $geref($param00 : ref, $param11 : ref) returns (__ret : int);



	 //  @line: 21
// <ClassAnalysis.A: boolean test(int)>
procedure boolean$ClassAnalysis.A$test$2229(__this : ref, $param_0 : int) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var i04 : int;
var r03 : ref;
Block17:
	r03 := __this;
	i04 := $param_0;
	 goto Block18;
	 //  @line: 22
Block18:
	 goto Block21, Block19;
	 //  @line: 22
Block21:
	 //  @line: 22
	 assume ($negInt(($leint((i04), (0))))==1);
	 goto Block22;
	 //  @line: 22
Block19:
	 assume ($leint((i04), (0))==1);
	 goto Block20;
	 //  @line: 23
Block22:
	 goto Block25, Block23;
	 //  @line: 29
Block20:
	 //  @line: 29
	__ret := 1;
	 return;
	 //  @line: 23
Block25:
	 //  @line: 23
	 assume ($negInt(($leint((i04), (10))))==1);
	 //  @line: 24
	i04 := $addint((i04), (-1));
	 goto Block18;
	 //  @line: 23
Block23:
	 assume ($leint((i04), (10))==1);
	 goto Block24;
	 //  @line: 26
Block24:
	 //  @line: 26
	i04 := $addint((i04), (1));
	 goto Block26;
	 //  @line: 26
Block26:
	 goto Block18;
}


// procedure is generated by joogie.
function {:inline true} $orreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



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


	 //  @line: 34
// <ClassAnalysis.B: boolean test(int)>
procedure boolean$ClassAnalysis.B$test$2231(__this : ref, $param_0 : int) returns (__ret : int)  requires ($neref((__this), ($null))==1);
 {
var i08 : int;
var r07 : ref;
Block28:
	r07 := __this;
	i08 := $param_0;
	 goto Block29;
	 //  @line: 35
Block29:
	 goto Block30, Block32;
	 //  @line: 35
Block30:
	 assume ($leint((i08), (0))==1);
	 goto Block31;
	 //  @line: 35
Block32:
	 //  @line: 35
	 assume ($negInt(($leint((i08), (0))))==1);
	 //  @line: 36
	i08 := $addint((i08), (-1));
	 goto Block29;
	 //  @line: 38
Block31:
	 //  @line: 38
	__ret := 1;
	 return;
}


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


// <java.lang.Object: void <init>()>
procedure void$java.lang.Object$$la$init$ra$$28(__this : ref);



// procedure is generated by joogie.
function {:inline true} $gereal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $eqref(x : ref, y : ref) returns (__ret : int) {
if (x == y) then 1 else 0
}


	 //  @line: 2
// <ClassAnalysis.Random: void <init>()>
procedure void$ClassAnalysis.Random$$la$init$ra$$2235(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r020 : ref;
Block39:
	r020 := __this;
	 assert ($neref((r020), ($null))==1);
	 //  @line: 3
	 call void$java.lang.Object$$la$init$ra$$28((r020));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $cmpint(x : int, y : int) returns (__ret : int) {
if (x < y) then 1 else if (x == y) then 0 else -1
}


	 //  @line: 32
// <ClassAnalysis.B: void <init>()>
procedure void$ClassAnalysis.B$$la$init$ra$$2230(__this : ref)  requires ($neref((__this), ($null))==1);
 {
var r05 : ref;
Block27:
	r05 := __this;
	 assert ($neref((r05), ($null))==1);
	 //  @line: 33
	 call void$ClassAnalysis.A$$la$init$ra$$2228((r05));
	 return;
}


// procedure is generated by joogie.
function {:inline true} $andint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $andreal($param00 : realVar, $param11 : realVar) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $shlint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $xorint($param00 : int, $param11 : int) returns (__ret : int);



// procedure is generated by joogie.
function {:inline true} $subint(x : int, y : int) returns (__ret : int) {
(x - y)
}

