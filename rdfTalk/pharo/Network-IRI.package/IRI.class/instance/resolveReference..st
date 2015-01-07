converting
resolveReference: aReference
	| R T |
	(aReference isKindOf: String)
		ifTrue: [
			aReference ifEmpty: [ ^ self copy ].
			R := IRI fromString: aReference ]
		ifFalse: [ R := aReference ].
	(R isKindOf: IRI) ifFalse: [ Error signal: 'Expected IRI or String' ].
	R isEmpty ifTrue: [ ^ self copy ].
	
	R scheme = self scheme ifTrue: [ R scheme: nil ].
	R scheme
		ifNotNil: [ 	T := R defragment. ]
		ifNil: [
			T := IRI new.
			R authority
				ifNotNil: [
					T copyAuthorityFrom: R.
					T addPathSegments: R pathSegments.
					R hasQuery ifTrue: [ T queryAddAll: R query ] ]
				ifNil: [
					R hasPath
						ifFalse: [
							T addPathSegments: self pathSegments.
							R hasQuery
								ifTrue: [ T queryAddAll: R query ]
								ifFalse: [ self hasQuery ifTrue: [ T queryAddAll: self query ] ] ]
						ifTrue: [ 
							R firstPathSegment = #/
								ifTrue: [ T addPathSegments: R pathSegments ]
								ifFalse: [
									self hasPath ifTrue: [ T addPathSegments: self pathSegments ].
									T mergePath: R ]. 
							R hasQuery ifTrue: [ T queryAddAll: R query ] ].
					T copyAuthorityFrom: self ].
			T scheme: self scheme ].
		T fragment: R fragment.
		^ T