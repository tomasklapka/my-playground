as yet unclassified
testRelativeToBranch
	| parent child relative |
	parent := IRIPath / 'griffle' / 'bibb'.
	child := IRIPath / 'griffle' / 'plonk' / 'nurp'.
	relative := child relativeTo: parent.
	self assert: relative  equals: (IRIPath parent / 'plonk' / 'nurp')