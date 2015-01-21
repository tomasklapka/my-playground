grammar
parse: aString to: anIRI
	| parsed path isDirectoryPath |
	parsed := self parse: aString.
	parsed isPetitFailure ifTrue: [ PPIRIParserError signal: parsed message ].

	path := nil.
	isDirectoryPath := false.

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
						path isNil ifTrue: [ path := IRIRelativePath new ].
						path := path / node value.
						isDirectoryPath := false ] ifFalse: [
					node name = 'segment-separator' ifTrue: [
						path isNil ifTrue: [ path := IRIAbsolutePath new ].
						isDirectoryPath := true ] ifFalse: [
					node name = 'query'
						ifTrue: [ anIRI query: (ZnResourceMetaUtils parseQueryFrom: (ReadStream on: node value)) ] ifFalse: [
					node name = 'fragment' ifTrue: [ anIRI fragment: node value ] ] ] ] ] ] ] ] ] ] ] ].

	isDirectoryPath ifTrue: [ path := path / '' ].
	anIRI path: path