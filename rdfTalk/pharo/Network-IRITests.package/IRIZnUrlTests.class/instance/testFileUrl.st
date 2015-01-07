testing
testFileUrl
	| url |
	url := 'file://localhost/users/Sven/Desktop/foo.txt' asIRI.
	self assert: url isFile.
	self assert: url pathSegments equals: #( 'users' 'Sven' 'Desktop' 'foo.txt' ) asOrderedCollection 