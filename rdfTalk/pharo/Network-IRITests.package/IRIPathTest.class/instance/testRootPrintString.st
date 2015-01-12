as yet unclassified
testRootPrintString
	| path actual |
	path := IRIPath root.
	actual := path printString.
	self assert: actual equals: 'IRIPath root'