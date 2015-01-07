as yet unclassified
decodeRegex
	^	'%[2-7][0-9A-F]|',
		'%[CD][0-9A-F]%[89AB][0-9A-F]|',
		'%[E][0-9A-F](%[89AB][0-9A-F]){2}|',
		'%[F][0-7](%[89AB][0-9A-F]){3}|',
		'%[F][89AB](%[89AB][0-9A-F]){4}|',
		'%[F][CD](%[89AB][0-9A-F]){5}'
	
