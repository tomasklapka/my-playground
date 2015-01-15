accessing
mailToAddress
	self scheme = #mailto ifTrue: [ ^ self path ].
	(self hasHost and: self hasUsername) ifTrue: [ ^ self username, '@', self host ].
	^ nil