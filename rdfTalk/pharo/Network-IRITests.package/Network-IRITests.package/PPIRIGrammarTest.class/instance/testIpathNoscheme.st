as yet unclassified
testIpathNoscheme
	#(
		'a' 'b/' '0/9' './_/~/' '../é/%20/!/(/:/@'
		'Program+Files/app/' '~john/rosé!' 'john.doe@example.com'
	) do: [ :test | self parse: test rule: #ipathNoscheme ]