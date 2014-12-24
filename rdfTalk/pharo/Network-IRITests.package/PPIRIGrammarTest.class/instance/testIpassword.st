as yet unclassified
testIpassword
	#(
		'abc0123456789-._~é'
		'pass%20word'
		'!$&''()*+,;='
		''
	) do: [ :test | self parse: test rule: #ipassword ]