as yet unclassified
testUnequalSize
	| a b |
	a := IRIPath * 'plonk'.
	b := (IRIPath * 'plonk') / 'griffle'.
	self deny: a = b.