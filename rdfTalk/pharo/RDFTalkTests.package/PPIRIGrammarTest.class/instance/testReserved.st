as yet unclassified
testReserved
	':/?#[]@!$&''()*+,;=' do: [ :char | self parse: char asString rule: #reserved ]
