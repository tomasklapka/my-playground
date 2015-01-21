as yet unclassified
testRelativeFromStringParent

	| path |
	
	path := IRIPath from: '../..'.
	
	self assert: path isRelative.
	self assert: path size equals: 3.
	self assert: (path at: 1) equals: '..'.
	self assert: (path at: 2) equals: '..'.
	self assert: (path at: 3) equals: ''