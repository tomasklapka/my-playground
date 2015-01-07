as yet unclassified
testDecOctet
	#( 0 9 10 99 100 199 200 255 ) do: [ :test |
		self parse: test asString rule: #decOctet ]