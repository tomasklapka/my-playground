as yet unclassified
testRelativeTo
	"self run: #testRelativeTo"
	"aPath relativeTo: aParent returns a new path relative to the parent"
	
	| parent child relative |
	parent := IRIPath / 'griffle'.
	child := IRIPath / 'griffle' / 'plonk' / 'nurp'.
	relative := child relativeTo: parent.
	self assert: relative equals: (IRIPath * 'plonk' / 'nurp')