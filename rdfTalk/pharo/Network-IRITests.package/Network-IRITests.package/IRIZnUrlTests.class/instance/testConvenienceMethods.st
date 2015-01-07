testing
testConvenienceMethods
	| baseUrl |
	baseUrl := 'http://api.host.com' asIRI.
	self 
		assert: baseUrl 
		equals: 'http://api.host.com' asIRI.
	self 
		assert: baseUrl / 'doc' / 'file.html'
		equals: 'http://api.host.com/doc/file.html' asIRI.
	self 
		assert: baseUrl / 'doc/file.html'
		equals: 'http://api.host.com/doc/file.html' asIRI.
	self 
		assert: baseUrl / #( 'doc' 'file.html' )
		equals: 'http://api.host.com/doc/file.html' asIRI.
	self 
		assert: baseUrl / 'doc/file.html' asIRI
		equals: 'http://api.host.com/doc/file.html' asIRI.
	self 
		assert: (baseUrl / 'search' ? (#q -> 'Smalltalk') & (#lang -> #en))
		equals: 'http://api.host.com/search?q=Smalltalk&lang=en' asIRI.
	self 
		assert: baseUrl 
		equals: 'http://api.host.com' asIRI