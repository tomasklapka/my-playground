private
addElement: element to: result
	element = '..'
		ifTrue: [ ^ self addParentElementTo: result ].
	element = ''
		ifTrue: [ ^ self addEmptyElementTo: result ].
	result add: element