as yet unclassified
testIrelativeRef
	#(
		'' '/#me' '/aaa?a=1' '/bbb/?r=é#rosé' '/ccc/ddd' 'eee?1#2' 'fff/' 'abc/def/012'
		'//example.com?start'
		'//user:pass@www.éxample.com:81/some/path/somewhere.dat#row45'
	) do: [ :test | self parse: test rule: #irelativeRef ]