as yet unclassified
testCommaAddsExtensionAgain
	| path result |
	path := IRIPath * 'plonk.griffle'.
	result := path, 'nurp'.
	self assert: result basename equals: 'plonk.griffle.nurp'