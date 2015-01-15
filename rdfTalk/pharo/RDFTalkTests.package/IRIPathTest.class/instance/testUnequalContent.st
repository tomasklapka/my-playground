as yet unclassified
testUnequalContent
	| a b |
	a := IRIPath * 'plonk'.
	b := IRIPath * 'griffle'.
	self deny: a = b.