as yet unclassified
testGrandchildOfPath
	| griffle  nurb |
	griffle := IRIPath / 'griffle'.
	nurb := griffle / 'plonk' / 'nurb'.
	self deny: (griffle isChildOf: nurb).
	self deny: (nurb isChildOf: griffle).