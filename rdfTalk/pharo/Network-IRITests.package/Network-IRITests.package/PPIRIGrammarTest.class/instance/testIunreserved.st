as yet unclassified
testIunreserved
	'abc0123456789-._~é' do: [ :test |
		self parse: test asString rule: #iunreserved ]