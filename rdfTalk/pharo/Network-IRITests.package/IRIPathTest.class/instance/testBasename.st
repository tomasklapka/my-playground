as yet unclassified
testBasename
	| path |
	path := IRIPath * 'plonk' / 'griffle'.
	self assert: path basename equals: 'griffle'