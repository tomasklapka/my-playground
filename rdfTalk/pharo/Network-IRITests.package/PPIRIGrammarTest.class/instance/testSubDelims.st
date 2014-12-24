as yet unclassified
testSubDelims
	'!$&''()*+,;=' do: [ :char | self parse: char asString rule: #subDelims ]
