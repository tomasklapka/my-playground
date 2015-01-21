private
addParentElementTo: result
	((result isEmpty or: [ result last = '..' ]) or: [ result last = '.' ])
		ifTrue: [ result add: '..' ]
		ifFalse: [ result removeLast ]
		