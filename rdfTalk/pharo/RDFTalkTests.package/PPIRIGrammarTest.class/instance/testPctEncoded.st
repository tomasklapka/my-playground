as yet unclassified
testPctEncoded
	#( '%00' '%01' '%9A' '%B8' '%CD' '%FF' '%e5' ) do: [ :test |
		self parse: test rule: #pctEncoded ]