as yet unclassified
testWindowsAbsolutePathName
  
	self assert: (IRIPath from: 'A:\') isAbsolute.
	self assert: (IRIPath from: 'c:\') isAbsolute.
	self assert: (IRIPath from: 'c:\test') isAbsolute.