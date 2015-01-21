accessing - path
closePath
	self pathOrRoot last isEmptyOrNil not ifTrue: [ self path: self pathOrRoot / '' ]