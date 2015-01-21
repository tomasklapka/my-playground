private
canonicalizeElements: aCollection
	| result |
	result := OrderedCollection new.
	aCollection withIndexCollect: [ :element :index |
		(element isEmptyOrNil not or: [ element isEmptyOrNil and: (index = aCollection size) ])
			ifTrue: [ self addElement: element to: result ] ].
	result size > 0 ifTrue: [
		(result last = '..' or: result last = '.') ifTrue: [ result add: '' ] ].
	^ result