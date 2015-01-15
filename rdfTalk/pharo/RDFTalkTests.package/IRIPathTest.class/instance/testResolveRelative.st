as yet unclassified
testResolveRelative
	| path |
	path := IRIPath * 'griffle'.
	self assert: path resolve == path.
	self assert: path isRelative