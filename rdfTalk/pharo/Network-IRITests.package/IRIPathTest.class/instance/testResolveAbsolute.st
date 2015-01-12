as yet unclassified
testResolveAbsolute
	| path |
	path := IRIPath / 'griffle'.
	self assert: path resolve == path.
	self assert: path isAbsolute