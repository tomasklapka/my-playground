printing
printOn: aStream encoded: aBoolean
	self hasScheme ifTrue: [ 
		aStream nextPutAll: self scheme; nextPut: $:.
		self hasHost ifTrue: [ aStream nextPut: $/; nextPut: $/ ] ].
	self printAuthorityOn: aStream encoded: aBoolean.
	self printPathQueryFragmentOn: aStream encoded: aBoolean