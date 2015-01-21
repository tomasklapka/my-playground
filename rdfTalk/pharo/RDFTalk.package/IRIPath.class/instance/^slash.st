navigating
/ aString
	| path |

	(self size > 0 and: [ (self at: self size) isEmptyOrNil ])
		ifTrue: [ Error signal: 'Path element cannot have empty or nil parent element' ].
		
	path := self class new: self size + 1.
	path copyFrom: self.
	path at: path size put: aString.
	^ path