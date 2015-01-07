as yet unclassified
testAbsoluteIRI
	#(
		'http://127.0.0.1/index.html'
		'https://example.com?start'
		'http://user:pass@www.éxample.com:81/some/path/somewhere.dat'
		'mailto:john.doe@example.com'
		'telnet:host.example.com'
		'urn:someid:123456'
		'urn:some:another:id:1-874AZ'
	) do: [ :test | self parse: test rule: #absoluteIRI ]