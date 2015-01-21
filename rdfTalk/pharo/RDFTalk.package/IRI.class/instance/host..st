accessing - instance variables
host: hostName
	host := hostName ifNil: [ nil ] ifNotNil: [ hostName asLowercase ]