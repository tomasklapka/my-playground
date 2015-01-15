as yet unclassified
testIuserinfo
	#(
		'abc0123456789-._~é'
		'user%20name'
		'!$&''()*+,;='
		''
		'abc0123456789-._~é:abc0123456789-._~é'
		'user%20name:pass%20word'
		'!$&''()*+,;=:!$&''()*+,;='
		':'
	) do: [ :test | self parse: test rule: #iuserinfo ]