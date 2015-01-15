tests
testUserinfo
	"userinfo"
	self assert: (self iri1 userinfo) equals: nil.
	self assert: (self iri2 userinfo) equals: 'user:pass'.
	self assert: (self iri3 userinfo) equals: nil.
	self assert: (self iri4 userinfo) equals: nil.
	self assert: (self iri5 userinfo) equals: nil.
	self assert: (self iri6 userinfo) equals: nil.

	self assert: (self iri1 username) equals: nil.
	self assert: (self iri1 password) equals: nil.
	self assert: (self iri2 username) equals: 'user'.
	self assert: (self iri2 password) equals: 'pass'
