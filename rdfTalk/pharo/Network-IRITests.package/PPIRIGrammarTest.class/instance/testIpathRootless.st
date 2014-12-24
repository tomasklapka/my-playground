as yet unclassified
testIpathRootless
	#(
		'a' 'b/' '0/9' './_/~/' '../é/%20/!/(/:/@' 'a:b/c'
		'Program+Files/app/' '~john/rosé!' 'john.doe@example.com'
	) do: [ :test | self parse: test rule: #ipathRootless ]