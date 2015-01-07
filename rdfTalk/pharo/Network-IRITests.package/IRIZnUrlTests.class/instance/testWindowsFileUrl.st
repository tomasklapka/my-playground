testing
testWindowsFileUrl
	| url |
	url := 'file://localhost/C:/users/Sven/Desktop/foo.txt' asIRI.
	self assert: url isFile.
	self assert: url pathSegments equals: #( 'C:' 'users' 'Sven' 'Desktop' 'foo.txt' ) asOrderedCollection 