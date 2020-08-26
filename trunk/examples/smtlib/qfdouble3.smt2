(set-option :produce-proofs true)
(set-logic AUFLIA)
(declare-fun P ( Int) Bool)
(assert (forall ((x Int)) (and (exists ((y Int)) (P y)) (not (P x)))))
(check-sat)
(exit)