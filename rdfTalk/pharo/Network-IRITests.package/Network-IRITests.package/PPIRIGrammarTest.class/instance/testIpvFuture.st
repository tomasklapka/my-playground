as yet unclassified
testIpvFuture
	#(
		'v0.:'
		'v0123456789ABCDEF.:0123456789abcdeé-._~'
		'v1.0'
		'v75.1.4-test'
	) do: [ :test | self parse: test rule: #ipvFuture ]