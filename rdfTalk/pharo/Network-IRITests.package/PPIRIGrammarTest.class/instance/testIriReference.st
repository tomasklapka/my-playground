as yet unclassified
testIriReference
	#(
		'http://127.0.0.1/index.html#me'
		'https://example.com?start#1'
		'http://user:pass@www.éxample.com:81/some/path/somewhere.dat'
		'mailto:john.doe@example.com'
		'telnet:host.example.com'
		'urn:someid:123456#23'
		'urn:some:another:id:1-874AZ'
		'' '/#me' '/aaa?a=1' '/bbb/?r=é#rosé' '/ccc/ddd' 'eee?1#2' 'fff/' 'abc/def/012'
		'//example.com?start'
		'//user:pass@www.éxample.com:81/some/path/somewhere.dat#row45'
	) do: [ :test | self parse: test rule: #iriReference ]