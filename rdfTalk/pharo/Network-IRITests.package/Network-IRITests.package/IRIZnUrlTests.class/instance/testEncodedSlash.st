testing
testEncodedSlash
	self assert: 'http://example.com/foo//' asIRI pathPrintString = '/foo/'.
	self assert: 'http://example.com/foo//bar/' asIRI pathPrintString = '/foo/bar/'.
	self assert: 'http://example.com/foo//bar/file.txt' asIRI pathPrintString = '/foo/bar/file.txt'.

	self assert: 'http://example.com/foo/%2F' asIRI pathPrintString = '/foo/%2F'.
	self assert: 'http://example.com/foo/%2Fbar/' asIRI pathPrintString = '/foo/%2Fbar/'.
	self assert: 'http://example.com/foo/%2F/bar/' asIRI pathPrintString = '/foo/%2F/bar/'.
	self assert: 'http://example.com/foo/%2Ffoo.txt' asIRI pathPrintString = '/foo/%2Ffoo.txt'.

