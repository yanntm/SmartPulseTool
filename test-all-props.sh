#!/bin/bash

# The config file should be the argument to this script
source "$1"

VeriSol ${FILE_NAME} ${CONTRACT_NAME} /modelReverts /omitSourceLineInfo /omitAxioms /instrumentGas /doModSet /noPrf /noChk /omitDataValuesInTrace /QuantFreeAllocs /instrumentSums /omitBoogieHarness /createMainHarness /noCustomTypes /alias /noNonlinearArith /useMultiDim /stubModel:callback /useNumericOperators /omitUnsignedSemantics /useModularArithmetic /prePostHarness

property_names=(
	"totalsupply"
	"balanceof"
	"allowance"
	"approve"
	"transfer-normal"
	"transfer-self"
	"transfer-fail"
	"transfer-self-fail"
	"transferfrom-normal"
	"transferfrom-self"
	"transferfrom-fail"
	"transferfrom-self-fail"
)

properties=(
"// #LTLProperty: [](started(${TOT_SUP_CONTRACT}.totalSupply) ==> <>(finished(${TOT_SUP_CONTRACT}.totalSupply, return == this.${TOTAL} && this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}))))"

"// #LTLProperty: [](started(${BAL_OF_CONTRACT}.balanceOf(owner)) ==> <>(finished(${BAL_OF_CONTRACT}.balanceOf(owner), return == this.${BALANCES}[owner] && this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}))))"
	
"// #LTLProperty: [](started(${ALLOWANCE_CONTRACT}.allowance) ==> <>(finished(${ALLOWANCE_CONTRACT}.allowance(owner, spender), return == this.${ALLOWANCES}[owner][spender] &&  this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}))))"

"// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${APPROVE_CONTRACT}.approve(spender, value), p1 != msg.sender || p2 != spender) ==> <>(finished(${APPROVE_CONTRACT}.approve(spender, value), return == true && this.${ALLOWANCES}[msg.sender][spender] == value &&  this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES}[p1][p2] == old(this.${ALLOWANCES}[p1][p2]))))"

"// #LTLVariables: p1:Ref
// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), to != null && p1 != msg.sender && p1 != to && msg.sender != to && value <= this.${BALANCES}[msg.sender] && this.${BALANCES}[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), this.${BALANCES}[msg.sender] == old(this.${BALANCES}[msg.sender]) - value && this.${BALANCES}[to] == old(this.${BALANCES}[to]) + value && this.${TOTAL} == old(this.${TOTAL}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}) && this.${BALANCES}[p1] == old(this.${BALANCES}[p1]))))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), to != null && msg.sender == to && value <= this.${BALANCES}[msg.sender]) ==> <>(finished(${TRANSFER_CONTRACT}.transfer(to, value), this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES} == old(this.${ALLOWANCES}))))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), msg.sender != to && (value > this.${BALANCES}[msg.sender] || this.${BALANCES}[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000)) ==> <>(reverted(${TRANSFER_CONTRACT}.transfer)))"

"// #LTLProperty: [](started(${TRANSFER_CONTRACT}.transfer(to, value), msg.sender == to && value > this.${BALANCES}[msg.sender]) ==> <>(reverted(${TRANSFER_CONTRACT}.transfer)))"

"// #LTLVariables: p1:Ref,p2:Ref,p3:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != null && to != null && p1 != from && p1 != to && (p2 != from || p3 != msg.sender) && from != to && value <= this.${BALANCES}[from] && value <= this.${ALLOWANCES}[from][msg.sender] && this.${BALANCES}[to] + value < 0x10000000000000000000000000000000000000000000000000000000000000000) ==> <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), this.${BALANCES}[from] == old(this.${BALANCES}[from]) - value && this.${BALANCES}[to] == old(this.${BALANCES}[to]) + value && this.${ALLOWANCES}[from][msg.sender] == old(this.${ALLOWANCES}[from][msg.sender]) - value && this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES}[p1] == old(this.${BALANCES}[p1]) && this.${ALLOWANCES}[p2][p3] == old(this.${ALLOWANCES}[p2][p3]))))"

"// #LTLVariables: p1:Ref,p2:Ref
// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != null && (p1 != from || p2 != msg.sender) && from == to && value <= this.${BALANCES}[from] && value <= this.${ALLOWANCES}[from][msg.sender]) ==> <>(finished(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), this.${ALLOWANCES}[from][msg.sender] == old(this.${ALLOWANCES}[from][msg.sender]) - value && this.${TOTAL} == old(this.${TOTAL}) && this.${BALANCES} == old(this.${BALANCES}) && this.${ALLOWANCES}[p1][p2] == old(this.${ALLOWANCES}[p1][p2]))))"

"// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from != to && (value > this.${BALANCES}[from] || value > this.${ALLOWANCES}[from][msg.sender] || this.${BALANCES}[to] + value >= 0x10000000000000000000000000000000000000000000000000000000000000000)) ==> <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))"

"// #LTLProperty: [](started(${TRANSFER_FROM_CONTRACT}.transferFrom(from, to, value), from == to && (value > this.${BALANCES}[from] || value > this.${ALLOWANCES}[from][msg.sender])) ==> <>(reverted(${TRANSFER_FROM_CONTRACT}.transferFrom)))"
)

correct=0
counterexample=0
exception=0
timedout=0

# create /logs if it doesn't exist
mkdir -p logs

for i in ${!properties[@]}
do
	echo -e "${properties[$i]}" > ${CONTRACT_NAME}.bpl
	cat  __SolToBoogieTest_out.bpl >> ${CONTRACT_NAME}.bpl
	timeout 10m ./SmartPulse/SmartPulse.sh ${CONTRACT_NAME}.bpl >& logs/${CONTRACT_NAME}-${i}-${property_names[$i]}-log.txt
	RETVAL=$?
	if [[ RETVAL == 124 ]]
	then
		echo "Property ${property_names[$i]} timed out";
		((++timedout));
	else
		logtail=$(tail -n 20 logs/${CONTRACT_NAME}-${i}-${property_names[$i]}-log.txt)
		if [[ "$logtail" == *" correct"* ]]
		then
			echo "Property ${property_names[$i]} verified";
			((++correct));
		elif [[ "$logtail" == *"End of lasso representation"* ]]
		then
			echo "Property ${property_names[$i]} has counterexample";
			((++counterexample));
		else
			echo "Property ${property_names[$i]} had an exception";
			((++exception));
		fi
	fi
done

echo "Verified ${correct} out of ${#properties[@]} properties"
echo "${counterexample} counterexamples"
echo "${exception} exceptions"
echo "${timedout} timed out"

# clean-up
# But leave CONTRACT_NAME.bpl in case user would like to read the Boogie code
rm __SolToBoogieTest_out.bpl