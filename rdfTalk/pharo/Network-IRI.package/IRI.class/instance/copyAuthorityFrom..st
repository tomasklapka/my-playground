converting
copyAuthorityFrom: aReference
	self slashes: aReference slashes.
	self username: aReference username.
	self password: aReference password.
	self host: aReference host.
	self port: aReference port.
	^ self