as yet unclassified
testIsChildOfReference
	| parent child |
	parent := IRIPath / 'griffle'.
	child := (FileSystem memory referenceTo: parent / 'nurb').
	self deny: (child isChildOf: parent).
	self deny: (parent isChildOf: child)