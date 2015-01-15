as yet unclassified
testContains
	| ancestor descendent |
	ancestor := IRIPath / 'plonk'.
	descendent := IRIPath / 'plonk' / 'griffle' / 'bork'.
	self assert: (ancestor contains: descendent).
	self deny: (descendent contains: ancestor)