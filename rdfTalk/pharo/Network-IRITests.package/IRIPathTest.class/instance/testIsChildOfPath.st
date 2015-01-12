as yet unclassified
testIsChildOfPath
	| parent child |
	parent := IRIPath / 'griffle'.
	child := parent / 'nurb'.
	self assert: (child isChildOf: parent).
	self deny: (parent isChildOf: child)