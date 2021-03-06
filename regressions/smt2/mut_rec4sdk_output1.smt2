
; Copyright (c) 2015 Microsoft Corporation
( set-logic QF_AUFLIRA)
( set-info :source | SMT-COMP'06 organizers |)
( set-info :smt-lib-version 2.0)
( set-info :category "check")
( declare-datatypes ()
  ( ( Even ( ECons ( EElem Real) ( OTl Odd)) ( ENil))
    ( Odd ( OCons ( OElem Real) ( ETl Even)) ( ONil))))
( declare-fun SumOdd ( Odd) Real)
( declare-fun SumEven ( Even) Real)
( declare-fun v1 () Real)
( declare-fun v2 () Real)
( declare-fun e1 () Even)
( declare-fun e2 () Even)
( declare-fun e3 () Even)
( declare-fun o1 () Odd)
( declare-fun o2 () Odd)
( declare-fun o3 () Odd)
( assert ( = e1 ( ECons 5.0 o2)))
( assert ( = e2 ( ECons 5.0 o3)))
( assert ( = o1 ( OCons 5.0 e2)))
( assert ( = o2 ( OCons 5.0 e3)))
( assert ( = ( SumEven e3) 5.0))
( assert ( = ( SumOdd o3) 5.0))
( assert ( = ( SumEven e1) 8.0))
(check-sat)
(exit)
