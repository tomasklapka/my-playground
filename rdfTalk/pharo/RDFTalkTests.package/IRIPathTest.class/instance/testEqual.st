as yet unclassified
testEqual
	| a b |
	a := IRIPath * 'plonk'.
	b := IRIPath * 'plonk'.
	self deny: a == b.
	self assert: a equals: b.