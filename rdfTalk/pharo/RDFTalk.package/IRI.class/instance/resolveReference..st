converting
resolveReference: aReference
	| R T |
	R := nil.
	T := nil.
	(aReference isString)
		ifTrue: [
			aReference ifEmpty: [ ^ self copy ].
			R := self class fromString: aReference ]
		ifFalse: [ R := aReference ].
	(R isKindOf: IRI) ifFalse: [ Error signal: 'Expected IRI or String' ].
	R isEmpty ifTrue: [ ^ self copy ].
	
	R scheme = self scheme ifTrue: [ R scheme: nil ].
	R scheme
		ifNotNil: [ T := R defragment. ]
		ifNil: [
			T := self class new.
			R authority
				ifNotNil: [
					T copyAuthorityFrom: R.
					T path: R path.
					R hasQuery ifTrue: [ T queryAddAll: R query ] ]
				ifNil: [
					R hasPath
						ifFalse: [
							T path: self path.
							R hasQuery
								ifTrue: [ T queryAddAll: R query ]
								ifFalse: [ self hasQuery ifTrue: [ T queryAddAll: self query ] ] ]
						ifTrue: [ 
							R path isAbsolute
								ifTrue: [ T path: R path ]
								ifFalse: [
									self hasPath ifTrue: [ T path: self path ].
									T path: (T mergePath: R path) ].
							T removeDotSegments. 
							R hasQuery ifTrue: [ T queryAddAll: R query ] ].
					T copyAuthorityFrom: self ].
			T scheme: self scheme ].
		T fragment: R fragment.
		^ T