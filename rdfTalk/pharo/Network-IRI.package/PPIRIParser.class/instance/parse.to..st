grammar
parse: aString to: anIRI
	| parsed |
	parsed := self parse: aString.
	parsed isPetitFailure ifTrue: [ PPIRIParserError signal: parsed message ].
	"anIRI clear."
	parsed flattened do: [ :node |
		(node isKindOf: PPIRIProperty) ifTrue: [
			node class == PPIRIComponent
				ifTrue: [
					node name = 'scheme' ifTrue: [ anIRI scheme: node value ] ifFalse: [
					node name = 'username' ifTrue: [ anIRI username: node value ] ifFalse: [
					node name = 'password' ifTrue: [ anIRI password: node value ] ifFalse: [
					node name = 'host' ifTrue: [ anIRI host: node value ] ifFalse: [
					node name = 'port' ifTrue: [ anIRI port: node value ] ifFalse: [
					node name = 'segment' ifTrue: [ anIRI path / node value ] ifFalse: [
					node name = 'segment-separator' ifTrue: [ nil ] ifFalse: [
					node name = 'query'
						ifTrue: [ anIRI query: (ZnResourceMetaUtils parseQueryFrom: (ReadStream on: node value)) ] ifFalse: [
					node name = 'fragment' ifTrue: [ anIRI fragment: node value ] ] ] ] ] ] ] ] ] ] ] ].
