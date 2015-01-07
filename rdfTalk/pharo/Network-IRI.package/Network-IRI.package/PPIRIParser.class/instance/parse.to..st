grammar
parse: aString to: anIRI
	| parsed lastSegment |
	parsed := self parse: aString.
	parsed isPetitFailure ifTrue: [ PPIRIParserError signal: parsed message ].
	"anIRI clear."
	anIRI isUsingSegmentSeparator: false.
	parsed flattened do: [ :node |
		(node isKindOf: PPIRIProperty) ifTrue: [
			node class == PPIRIComponent
				ifTrue: [
					node name = 'scheme' ifTrue: [ anIRI scheme: node value ] ifFalse: [
					node name = 'username' ifTrue: [ anIRI username: node value ] ifFalse: [
					node name = 'password' ifTrue: [ anIRI password: node value ] ifFalse: [
					node name = 'host' ifTrue: [ anIRI host: node value ] ifFalse: [
					node name = 'port' ifTrue: [ anIRI port: node value ] ifFalse: [
					node name = 'segment' ifTrue: [
						lastSegment := node value.
						lastSegment ~= '.' ifTrue: [
							(lastSegment = '..' and: anIRI canGoPathUp)
								ifTrue: [ anIRI removeLastPathSegment ]
								ifFalse: [ anIRI addPathSegment: node value ] ] ] ifFalse: [
					node name = 'segment-separator' ifTrue: [
						anIRI isUsingSegmentSeparator: true.
						"lastSegment ifNil: [ anIRI addPathSegment: #/ ]."
						lastSegment := node value ] ifFalse: [
					node name = 'query'
						ifTrue: [ anIRI query: (ZnResourceMetaUtils parseQueryFrom: (ReadStream on: node value)) ] ifFalse: [
					node name = 'fragment' ifTrue: [ anIRI fragment: node value ] ] ] ] ] ] ] ] ] ] ] ].
	lastSegment ifNotNil: [
		anIRI isSchemeUsingPath: true.
		lastSegment = #/ ifTrue: [ anIRI addPathSegment: lastSegment ] ]
