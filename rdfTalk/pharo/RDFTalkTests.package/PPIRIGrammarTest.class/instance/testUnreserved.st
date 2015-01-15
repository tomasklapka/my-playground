as yet unclassified
testUnreserved
	'abc0123456789-._~' do: [ :test |
		self parse: test asString rule: #unreserved ]