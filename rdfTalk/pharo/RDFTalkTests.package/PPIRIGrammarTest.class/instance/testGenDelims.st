as yet unclassified
testGenDelims
	':/?#[]@' do: [ :char | self parse: char asString rule: #genDelims ]
