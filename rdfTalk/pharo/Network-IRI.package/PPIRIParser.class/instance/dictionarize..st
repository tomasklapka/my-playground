grammar
dictionarize: aNodes
	| d path |
	d := Dictionary new.
	path := OrderedCollection new.
	aNodes flattened do: [ :node |
		node class == PPIRIProperty
			ifTrue: [ d at: '_', node name put: node value ].
		node class == PPIRIComponent
			ifTrue: [
				node name = 'segment'
					ifTrue: [ path add: node value ]
					ifFalse: [ d at: node name put: node value ] ] ].
	d at: 'path' put: path.
	^ d