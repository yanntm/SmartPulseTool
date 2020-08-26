(set-option :produce-proofs true)
(set-logic QF_UFLIA)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun f ( Int) Int)
(assert (and (= (f x) 5) (= (f y) 42) (= x y)))
(check-sat)
(exit)