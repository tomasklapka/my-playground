converting
copyAuthorityFrom: aReference
	self username: aReference username.
	self password: aReference password.
	self host: aReference host.
	self port: aReference port.
	^ self