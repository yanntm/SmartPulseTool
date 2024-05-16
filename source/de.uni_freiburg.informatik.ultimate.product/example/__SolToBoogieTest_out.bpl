type Ref = int;
type ContractName = int;
const unique null: Ref;
const unique Wallet: ContractName;
function {:smtdefined "x"} ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
function {:smtdefined "((as const (Array Int Int)) 0)"} zeroRefintArr() returns (ret: [Ref]int);
function nonlinearMul(x: int, y: int) returns (ret: int);
function nonlinearDiv(x: int, y: int) returns (ret: int);
function nonlinearPow(x: int, y: int) returns (ret: int);
function nonlinearMod(x: int, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_Ref_int: [Ref][Ref]int;
var sum_balance0: [Ref]int;
var Length: [Ref]int;
var revert: bool;
var now: int;
procedure {:inline 1} FreshRefGenerator__success() returns (newRef: Ref);
modifies Alloc;
procedure {:inline 1} Wallet_Wallet_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies balance_Wallet;
modifies sum_balance0;
procedure {:inline 1} Wallet_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies Balance;
modifies balance_Wallet;
modifies sum_balance0;
implementation Wallet_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
call Wallet_Wallet__fail(this, msgsender_MSG, msgvalue_MSG);
assume (revert);
} else {
call Wallet_Wallet__success(this, msgsender_MSG, msgvalue_MSG);
assume (!(revert));
}
}

var {:access "this.balance[i1]=balance_Wallet[this][i1]"} {:sum "sum(this.balance)=sum_balance0[this]"} balance_Wallet: [Ref][Ref]int;
procedure {:public} {:payable} {:inline 1} deposit_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies Balance;
modifies sum_balance0;
modifies balance_Wallet;
implementation deposit_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
// ---- Logic for payable function START 
assume ((__tmp__Balance[msgsender_MSG]) >= (msgvalue_MSG));
__tmp__Balance[msgsender_MSG] := (__tmp__Balance[msgsender_MSG]) - (msgvalue_MSG);
__tmp__Balance[this] := (__tmp__Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call deposit_Wallet__fail(this, msgsender_MSG, msgvalue_MSG);
assume (revert);
} else {
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call deposit_Wallet__success(this, msgsender_MSG, msgvalue_MSG);
assume (!(revert));
}
}

procedure {:public} {:inline 1} withdraw~uint256_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies sum_balance0;
modifies balance_Wallet;
modifies Balance;
implementation withdraw~uint256_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
call withdraw~uint256_Wallet__fail(this, msgsender_MSG, msgvalue_MSG, amt_s46);
assume (revert);
} else {
call withdraw~uint256_Wallet__success(this, msgsender_MSG, msgvalue_MSG, amt_s46);
assume (!(revert));
}
}

procedure {:public} {:inline 1} transfer~address~uint256_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies sum_balance0;
modifies balance_Wallet;
implementation transfer~address~uint256_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
call transfer~address~uint256_Wallet__fail(this, msgsender_MSG, msgvalue_MSG, to_s75, amt_s75);
assume (revert);
} else {
call transfer~address~uint256_Wallet__success(this, msgsender_MSG, msgvalue_MSG, to_s75, amt_s75);
assume (!(revert));
}
}

procedure {:public} {:inline 1} balanceOf~address_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int);
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
implementation balanceOf~address_Wallet(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int)
{
var __exception: bool;
havoc __exception;
revert := false;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
call __ret_0_ := balanceOf~address_Wallet__fail(this, msgsender_MSG, msgvalue_MSG, user_s87);
assume (revert);
} else {
call __ret_0_ := balanceOf~address_Wallet__success(this, msgsender_MSG, msgvalue_MSG, user_s87);
assume (!(revert));
}
}

procedure {:inline 1} FallbackDispatch__success(from: Ref, to: Ref, amount: int);
procedure {:inline 1} Fallback_UnknownType__success(from: Ref, to: Ref, amount: int);
procedure {:inline 1} send__success(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies revert;
modifies Balance;
procedure CorralChoice_Wallet(this: Ref);
modifies now;
modifies Alloc;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies Balance;
modifies sum_balance0;
modifies balance_Wallet;
procedure main();
modifies Alloc;
modifies Balance;
modifies balance_Wallet;
modifies sum_balance0;
modifies now;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
var __tmp__Balance: [Ref]int;
var __tmp__DType: [Ref]ContractName;
var __tmp__Alloc: [Ref]bool;
var __tmp__balance_ADDR: [Ref]int;
var __tmp__M_Ref_int: [Ref][Ref]int;
var __tmp__sum_balance0: [Ref]int;
var __tmp__Length: [Ref]int;
var __tmp__now: int;
var __tmp__balance_Wallet: [Ref][Ref]int;
procedure {:inline 1} FreshRefGenerator__fail() returns (newRef: Ref);
modifies __tmp__Alloc;
procedure {:inline 1} Wallet_Wallet_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__balance_Wallet;
modifies __tmp__sum_balance0;
procedure {:inline 1} Wallet_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies Balance;
modifies balance_Wallet;
modifies sum_balance0;
procedure {:inline 1} Wallet_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__Balance;
modifies __tmp__balance_Wallet;
modifies __tmp__sum_balance0;
procedure {:payable} {:inline 1} deposit_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies sum_balance0;
modifies balance_Wallet;
procedure {:payable} {:inline 1} deposit_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
modifies __tmp__sum_balance0;
modifies __tmp__balance_Wallet;
procedure {:inline 1} withdraw~uint256_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int);
modifies sum_balance0;
modifies balance_Wallet;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies Balance;
procedure {:inline 1} withdraw~uint256_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int);
modifies __tmp__sum_balance0;
modifies __tmp__balance_Wallet;
modifies revert;
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__Length;
modifies __tmp__now;
procedure {:inline 1} transfer~address~uint256_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int);
modifies sum_balance0;
modifies balance_Wallet;
procedure {:inline 1} transfer~address~uint256_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int);
modifies __tmp__sum_balance0;
modifies __tmp__balance_Wallet;
procedure {:inline 1} balanceOf~address_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int);
procedure {:inline 1} balanceOf~address_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int);
procedure {:inline 1} FallbackDispatch__fail(from: Ref, to: Ref, amount: int);
procedure {:inline 1} Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int);
procedure {:inline 1} send__fail(from: Ref, to: Ref, amount: int) returns (success: bool);
modifies __tmp__Balance;
modifies __tmp__DType;
modifies __tmp__Alloc;
modifies __tmp__balance_ADDR;
modifies __tmp__M_Ref_int;
modifies __tmp__sum_balance0;
modifies __tmp__Length;
modifies __tmp__now;
modifies __tmp__balance_Wallet;
modifies revert;
implementation FreshRefGenerator__fail() returns (newRef: Ref)
{
havoc newRef;
assume ((__tmp__Alloc[newRef]) == (false));
__tmp__Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation FreshRefGenerator__success() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

implementation Wallet_Wallet_NoBaseCtor__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
__tmp__Balance[this] := msgvalue_MSG;
__tmp__balance_Wallet[this] := zeroRefintArr();
__tmp__sum_balance0[this] := 0;
// end of initialization
}

implementation Wallet_Wallet_NoBaseCtor__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := msgvalue_MSG;
balance_Wallet[this] := zeroRefintArr();
sum_balance0[this] := 0;
// end of initialization
}

implementation Wallet_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Wallet_Wallet_NoBaseCtor__fail(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation Wallet_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call Wallet_Wallet_NoBaseCtor__success(this, msgsender_MSG, msgvalue_MSG);
if (revert) {
return;
}
}

implementation deposit_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) - (__tmp__balance_Wallet[this][msgsender_MSG]);
__tmp__balance_Wallet[this][msgsender_MSG] := (__tmp__balance_Wallet[this][msgsender_MSG]) + (msgvalue_MSG);
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) + (__tmp__balance_Wallet[this][msgsender_MSG]);
}

implementation deposit_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
sum_balance0[this] := (sum_balance0[this]) - (balance_Wallet[this][msgsender_MSG]);
balance_Wallet[this][msgsender_MSG] := (balance_Wallet[this][msgsender_MSG]) + (msgvalue_MSG);
sum_balance0[this] := (sum_balance0[this]) + (balance_Wallet[this][msgsender_MSG]);
}

implementation withdraw~uint256_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int)
{
var __var_1: bool;
if ((__tmp__balance_Wallet[this][msgsender_MSG]) >= (amt_s46)) {
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) - (__tmp__balance_Wallet[this][msgsender_MSG]);
__tmp__balance_Wallet[this][msgsender_MSG] := (__tmp__balance_Wallet[this][msgsender_MSG]) - (amt_s46);
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) + (__tmp__balance_Wallet[this][msgsender_MSG]);
call __var_1 := send__fail(this, msgsender_MSG, amt_s46);
if (!(__var_1)) {
revert := true;
return;
}
}
}

implementation withdraw~uint256_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, amt_s46: int)
{
var __var_1: bool;
if ((balance_Wallet[this][msgsender_MSG]) >= (amt_s46)) {
sum_balance0[this] := (sum_balance0[this]) - (balance_Wallet[this][msgsender_MSG]);
balance_Wallet[this][msgsender_MSG] := (balance_Wallet[this][msgsender_MSG]) - (amt_s46);
sum_balance0[this] := (sum_balance0[this]) + (balance_Wallet[this][msgsender_MSG]);
call __var_1 := send__success(this, msgsender_MSG, amt_s46);
if (!(__var_1)) {
revert := true;
return;
}
}
}

implementation transfer~address~uint256_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int)
{
if ((__tmp__balance_Wallet[this][msgsender_MSG]) >= (amt_s75)) {
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) - (__tmp__balance_Wallet[this][msgsender_MSG]);
__tmp__balance_Wallet[this][msgsender_MSG] := (__tmp__balance_Wallet[this][msgsender_MSG]) - (amt_s75);
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) + (__tmp__balance_Wallet[this][msgsender_MSG]);
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) - (__tmp__balance_Wallet[this][to_s75]);
__tmp__balance_Wallet[this][to_s75] := (__tmp__balance_Wallet[this][to_s75]) + (amt_s75);
__tmp__sum_balance0[this] := (__tmp__sum_balance0[this]) + (__tmp__balance_Wallet[this][to_s75]);
}
}

implementation transfer~address~uint256_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s75: Ref, amt_s75: int)
{
if ((balance_Wallet[this][msgsender_MSG]) >= (amt_s75)) {
sum_balance0[this] := (sum_balance0[this]) - (balance_Wallet[this][msgsender_MSG]);
balance_Wallet[this][msgsender_MSG] := (balance_Wallet[this][msgsender_MSG]) - (amt_s75);
sum_balance0[this] := (sum_balance0[this]) + (balance_Wallet[this][msgsender_MSG]);
sum_balance0[this] := (sum_balance0[this]) - (balance_Wallet[this][to_s75]);
balance_Wallet[this][to_s75] := (balance_Wallet[this][to_s75]) + (amt_s75);
sum_balance0[this] := (sum_balance0[this]) + (balance_Wallet[this][to_s75]);
}
}

implementation balanceOf~address_Wallet__fail(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int)
{
__ret_0_ := __tmp__balance_Wallet[this][user_s87];
return;
}

implementation balanceOf~address_Wallet__success(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, user_s87: Ref) returns (__ret_0_: int)
{
__ret_0_ := balance_Wallet[this][user_s87];
return;
}

implementation FallbackDispatch__fail(from: Ref, to: Ref, amount: int)
{
if ((__tmp__DType[to]) == (Wallet)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__fail(from, to, amount);
if (revert) {
return;
}
}
}

implementation FallbackDispatch__success(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (Wallet)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType__success(from, to, amount);
if (revert) {
return;
}
}
}

implementation Fallback_UnknownType__fail(from: Ref, to: Ref, amount: int)
{
}

implementation Fallback_UnknownType__success(from: Ref, to: Ref, amount: int)
{
}

implementation send__fail(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
var __snap___tmp__Balance: [Ref]int;
var __snap___tmp__DType: [Ref]ContractName;
var __snap___tmp__Alloc: [Ref]bool;
var __snap___tmp__balance_ADDR: [Ref]int;
var __snap___tmp__M_Ref_int: [Ref][Ref]int;
var __snap___tmp__sum_balance0: [Ref]int;
var __snap___tmp__Length: [Ref]int;
var __snap___tmp__now: int;
var __snap___tmp__balance_Wallet: [Ref][Ref]int;
havoc __exception;
if (__exception) {
__snap___tmp__Balance := __tmp__Balance;
__snap___tmp__DType := __tmp__DType;
__snap___tmp__Alloc := __tmp__Alloc;
__snap___tmp__balance_ADDR := __tmp__balance_ADDR;
__snap___tmp__M_Ref_int := __tmp__M_Ref_int;
__snap___tmp__sum_balance0 := __tmp__sum_balance0;
__snap___tmp__Length := __tmp__Length;
__snap___tmp__now := __tmp__now;
__snap___tmp__balance_Wallet := __tmp__balance_Wallet;
if ((__tmp__Balance[from]) >= (amount)) {
// ---- Logic for payable function START 
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume (revert);
__tmp__Balance := __snap___tmp__Balance;
__tmp__DType := __snap___tmp__DType;
__tmp__Alloc := __snap___tmp__Alloc;
__tmp__balance_ADDR := __snap___tmp__balance_ADDR;
__tmp__M_Ref_int := __snap___tmp__M_Ref_int;
__tmp__sum_balance0 := __snap___tmp__sum_balance0;
__tmp__Length := __snap___tmp__Length;
__tmp__now := __snap___tmp__now;
__tmp__balance_Wallet := __snap___tmp__balance_Wallet;
revert := false;
} else {
if ((__tmp__Balance[from]) >= (amount)) {
// ---- Logic for payable function START 
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
call FallbackDispatch__fail(from, to, amount);
success := true;
} else {
success := false;
}
assume (!(revert));
}
}

implementation send__success(from: Ref, to: Ref, amount: int) returns (success: bool)
{
var __exception: bool;
havoc __exception;
if (__exception) {
__tmp__Balance := Balance;
__tmp__DType := DType;
__tmp__Alloc := Alloc;
__tmp__balance_ADDR := balance_ADDR;
__tmp__M_Ref_int := M_Ref_int;
__tmp__sum_balance0 := sum_balance0;
__tmp__Length := Length;
__tmp__now := now;
__tmp__balance_Wallet := balance_Wallet;
if ((__tmp__Balance[from]) >= (amount)) {
// ---- Logic for payable function START 
__tmp__Balance[from] := (__tmp__Balance[from]) - (amount);
__tmp__Balance[to] := (__tmp__Balance[to]) + (amount);
// ---- Logic for payable function END 
call FallbackDispatch__fail(from, to, amount);
}
success := false;
assume (revert);
revert := false;
} else {
if ((Balance[from]) >= (amount)) {
// ---- Logic for payable function START 
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
call FallbackDispatch__success(from, to, amount);
success := true;
} else {
success := false;
}
assume (!(revert));
}
}

implementation CorralChoice_Wallet(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var amt_s46: int;
var to_s75: Ref;
var amt_s75: int;
var user_s87: Ref;
var __ret_0_balanceOf: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc amt_s46;
havoc to_s75;
havoc amt_s75;
havoc user_s87;
havoc __ret_0_balanceOf;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Wallet));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
assume ((msgvalue_MSG) >= (0));
call deposit_Wallet(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
assume ((msgvalue_MSG) == (0));
call withdraw~uint256_Wallet(this, msgsender_MSG, msgvalue_MSG, amt_s46);
} else if ((choice) == (2)) {
assume ((msgvalue_MSG) == (0));
call transfer~address~uint256_Wallet(this, msgsender_MSG, msgvalue_MSG, to_s75, amt_s75);
} else if ((choice) == (1)) {
assume ((msgvalue_MSG) == (0));
call __ret_0_balanceOf := balanceOf~address_Wallet(this, msgsender_MSG, msgvalue_MSG, user_s87);
}
}

implementation main()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
assume ((null) == (0));
call this := FreshRefGenerator__success();
assume ((now) >= (0));
assume ((DType[this]) == (Wallet));
assume ((msgvalue_MSG) == (0));
call Wallet_Wallet__success(this, msgsender_MSG, msgvalue_MSG);
assume (!(revert));
while (true)
{
call CorralChoice_Wallet(this);
}
}


// #LTLProperty: [](!finished(*, Wallet.balanceOf(null) != 0 || Wallet.balanceOf(this) != 0))

