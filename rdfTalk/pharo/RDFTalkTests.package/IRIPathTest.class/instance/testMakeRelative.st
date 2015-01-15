as yet unclassified
testMakeRelative
	"self run: #testMakeRelative"
	
	| parent child relative |
	parent := IRIPath / 'griffle' / 'bibb'.
	child := IRIPath / 'griffle' / 'plonk' / 'nurp'.
	relative := parent makeRelative: child.
	self assert: relative equals: (IRIPath parent / 'plonk' / 'nurp')