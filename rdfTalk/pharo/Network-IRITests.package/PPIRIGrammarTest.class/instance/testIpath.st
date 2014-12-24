as yet unclassified
testIpath
	#(
		'' '/' '/aaa' '/bbb/' '/ccc/ddd' 'eee' 'fff/' 'abc/def/012'
		'//example.com'
		'//user:pass@www.éxample.com:81/some/path/somewhere.dat'
	) do: [ :test | self parse: test rule: #ipath ]