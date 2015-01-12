as yet unclassified
testWorkingDirPrintString
	| path actual |
	path := IRIPath workingDirectory. 
	actual := path printString.
	self assert: actual equals: 'IRIPath workingDirectory'