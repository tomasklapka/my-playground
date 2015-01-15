accessing
userinfo
	"I return RFC 3986/3987 userinfo, ie. 'username:password', or nil"
	self username ifNil: [ ^ nil ]
		ifNotNil: [ self password ifNil: [ ^ self username ].
	^ self username, ':', self password ]