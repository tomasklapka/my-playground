as yet unclassified
testWorkingDirectoryParent
	| path |
	path := IRIPath workingDirectory parent.
	self assert: path size equals: 1.
	self assert: (path at: 1) equals: '..'