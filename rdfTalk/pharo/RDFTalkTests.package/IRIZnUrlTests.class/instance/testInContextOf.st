testing
testInContextOf
	| baseUrl url |
	baseUrl := 'http://zn.stfx.eu/foo.txt' asIRI.
	url := IRI new addPathSegment: 'bar.txt'.
	self assert: (url inContextOf: baseUrl) equals: 'http://zn.stfx.eu/bar.txt' asIRI.
	"The following holds for all URLs"
	self assert: (baseUrl asRelativeIRI inContextOf: baseUrl) equals: baseUrl