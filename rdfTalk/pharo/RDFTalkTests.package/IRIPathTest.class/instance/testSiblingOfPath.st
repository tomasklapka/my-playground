as yet unclassified
testSiblingOfPath
	| griffle  nurb |
	griffle := IRIPath / 'griffle'.
	nurb := IRIPath / 'nurb'.
	self deny: (griffle isChildOf: nurb).
	self deny: (nurb isChildOf: griffle).