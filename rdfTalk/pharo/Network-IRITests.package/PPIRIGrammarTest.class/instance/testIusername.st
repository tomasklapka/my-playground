as yet unclassified
testIusername
	#(
		'abc0123456789-._~é'
		'user%20name'
		'!$&''()*+,;='
		''
	) do: [ :test | self parse: test rule: #iusername ]