as yet unclassified
testUnixAbsolutePathName

	self assert: (IRIPath from: '/test') isAbsolute.
	self assert: (IRIPath from: '/etc/bin') isAbsolute.