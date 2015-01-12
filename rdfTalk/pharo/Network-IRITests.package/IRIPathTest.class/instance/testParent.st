as yet unclassified
testParent
	| path parent |
	path := (IRIPath * 'plonk') / 'griffle'.
	parent := path parent.
	self assert: parent isRelative.
	self assert: (parent at: 1) equals: 'plonk'