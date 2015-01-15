as yet unclassified
testRelativeFromStringNormalization

	| path |
	
	path := IRIPath from: 'plonk/../griffle'.
	
	self assert: path isRelative.
	self assert: path size equals: 1.
	self assert: (path at: 1) equals: 'griffle'.