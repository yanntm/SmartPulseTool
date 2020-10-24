
BASEDIR_LEMMAS=$(RESOURCES)/lemmas-buf.md
LOCAL_LEMMAS:=../verification.k \
			  ../../resources/abstract-semantics-segmented-gas.k \
			  ../../resources/evm-symbolic.k \
			  ../evm-data-map-symbolic.k
TMPLS:=../module-tmpl.k ../spec-tmpl.k

KPROVE_OPTS=--smt-prelude $(RESOURCES)/evm.smt2

ifeq ($(SPEC_NAMES),)
	SPEC_NAMES:=totalSupply \
            balanceOf \
            allowance \
            approve \
            transfer-success-1 \
            transfer-success-2 \
            transfer-failure-1-a \
            transfer-failure-1-b \
            transfer-failure-2 \
            transferFrom-success-1 \
            transferFrom-success-2 \
            transferFrom-failure-1-a \
            transferFrom-failure-1-b \
            transferFrom-failure-2
endif

include ../../resources/kprove.mak
