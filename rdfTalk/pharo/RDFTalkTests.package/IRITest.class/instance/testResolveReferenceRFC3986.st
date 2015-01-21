tests
testResolveReferenceRFC3986
	"resolveReference: <g:h>"
	self assert: ((self iri3 resolveReference: 'g:h') asString) equals: 'g:h'.
	"resolveReference: <g>"
	self assert: ((self iri3 resolveReference: 'g') asString) equals: 'http://a/b/c/g'.
	"resolveReference: <./g>"
	self assert: ((self iri3 resolveReference: './g') asString) equals: 'http://a/b/c/g'.
	"resolveReference: <g/>"
	self assert: ((self iri3 resolveReference: 'g/') asString) equals: 'http://a/b/c/g/'.
	"resolveReference: </g>"
	self assert: ((self iri3 resolveReference: '/g') asString) equals: 'http://a/g'.
	"resolveReference: <//g>"
	"self assert: ((self iri3 resolveReference: '//g') asString) equals: 'http://g/'."
	"resolveReference: <?y>"
	self assert: ((self iri3 resolveReference: '?y') asString) equals: 'http://a/b/c/d;p?y'.
	"resolveReference: <g?y>"
	self assert: ((self iri3 resolveReference: 'g?y') asString) equals: 'http://a/b/c/g?y'.
	"resolveReference: <#s>"
	self assert: ((self iri3 resolveReference: '#s') asString) equals: 'http://a/b/c/d;p?q#s'.
	"resolveReference: <g#s>"
	self assert: ((self iri3 resolveReference: 'g#s') asString) equals: 'http://a/b/c/g#s'.
	"resolveReference: <g?y#s>"
	self assert: ((self iri3 resolveReference: 'g?y#s') asString) equals: 'http://a/b/c/g?y#s'.
	"resolveReference: <;x>"
	self assert: ((self iri3 resolveReference: ';x') asString) equals: 'http://a/b/c/;x'.
	"resolveReference: <g;x>"
	self assert: ((self iri3 resolveReference: 'g;x') asString) equals: 'http://a/b/c/g;x'.
	"resolveReference: <g;x?y#s>"
	self assert: ((self iri3 resolveReference: 'g;x?y#s') asString) equals: 'http://a/b/c/g;x?y#s'.
	"resolveReference: <>"
	self assert: ((self iri3 resolveReference: '') asString) equals: 'http://a/b/c/d;p?q'.
	"resolveReference: <.>"
	self assert: ((self iri3 resolveReference: '.') asString) equals: 'http://a/b/c/'.
	"resolveReference: <./>"
	self assert: ((self iri3 resolveReference: './') asString) equals: 'http://a/b/c/'.
	"resolveReference: <..>"
	self assert: ((self iri3 resolveReference: '..') asString) equals: 'http://a/b/'.
	"resolveReference: <../>"
	self assert: ((self iri3 resolveReference: '../') asString) equals: 'http://a/b/'.
	"resolveReference: <../g>"
	self assert: ((self iri3 resolveReference: '../g') asString) equals: 'http://a/b/g'.
	"resolveReference: <../..>"
	self assert: ((self iri3 resolveReference: '../..') asString) equals: 'http://a/'.
	"resolveReference: <../../>"
	self assert: ((self iri3 resolveReference: '../../') asString) equals: 'http://a/'.
	"resolveReference: <../../g>"
	self assert: ((self iri3 resolveReference: '../../g') asString) equals: 'http://a/g'.
	"resolveReference: <../../../g>"
	self assert: ((self iri3 resolveReference: '../../../g') asString) equals: 'http://a/g'.
	"resolveReference: <../../../../g>"
	self assert: ((self iri3 resolveReference: '../../../../g') asString) equals: 'http://a/g'.
	"resolveReference: </./g>"
	self assert: ((self iri3 resolveReference: '/./g') asString) equals: 'http://a/g'.
	"resolveReference: </../g>"
	self assert: ((self iri3 resolveReference: '/../g') asString) equals: 'http://a/g'.
	"resolveReference: <g.>"
	self assert: ((self iri3 resolveReference: 'g.') asString) equals: 'http://a/b/c/g.'.
	"resolveReference: <.g>"
	self assert: ((self iri3 resolveReference: '.g') asString) equals: 'http://a/b/c/.g'.
	"resolveReference: <g..>"
	self assert: ((self iri3 resolveReference: 'g..') asString) equals: 'http://a/b/c/g..'.
	"resolveReference: <..g>"
	self assert: ((self iri3 resolveReference: '..g') asString) equals: 'http://a/b/c/..g'.
	"resolveReference: <./../g>"
	self assert: ((self iri3 resolveReference: './../g') asString) equals: 'http://a/b/g'.
	"resolveReference: <./g/.>"
	self assert: ((self iri3 resolveReference: './g/.') asString) equals: 'http://a/b/c/g/'.
	"resolveReference: <g/./h>"
	self assert: ((self iri3 resolveReference: 'g/./h') asString) equals: 'http://a/b/c/g/h'.
	"resolveReference: <g/../h>"
	self assert: ((self iri3 resolveReference: 'g/../h') asString) equals: 'http://a/b/c/h'.
	"resolveReference: <g;x=1/./y>"
	self assert: ((self iri3 resolveReference: 'g;x=1/./y') asString) equals: 'http://a/b/c/g;x=1/y'.
	"resolveReference: <g;x=1/../y>"
	self assert: ((self iri3 resolveReference: 'g;x=1/../y') asString) equals: 'http://a/b/c/y'.
	"resolveReference: <g?y/./x>"
	self assert: ((self iri3 resolveReference: 'g?y/./x') asString) equals: 'http://a/b/c/g?y/./x'.
	"resolveReference: <g?y/../x>"
	self assert: ((self iri3 resolveReference: 'g?y/../x') asString) equals: 'http://a/b/c/g?y/../x'.
	"resolveReference: <g#s/./x>"
	self assert: ((self iri3 resolveReference: 'g#s/./x') asString) equals: 'http://a/b/c/g#s/./x'.
	"resolveReference: <g#s/../x>"
	self assert: ((self iri3 resolveReference: 'g#s/../x') asString) equals: 'http://a/b/c/g#s/../x'