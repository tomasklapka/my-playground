as yet unclassified
testParseTrailingSlash
	| path |
	path := IRIPath from: 'griffle/' delimiter: $/.
	self assert: path size equals: 2.
	self assert: (path at: 1) equals: 'griffle'.
	self assert: (path at: 2) isEmptyOrNil