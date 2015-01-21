as yet unclassified
testEmptyElements
	self
		should: [ IRIPath / 'plonk' / '' / 'griffle' ]
		raise: Error