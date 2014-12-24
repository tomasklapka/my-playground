as yet unclassified
defaultPortForScheme: scheme
	scheme = #file ifTrue: [ ^ nil ].
	(#(http ws) includes: scheme) ifTrue: [ ^ 80 ].
	(#(https wss) includes: scheme)  ifTrue: [ ^ 443 ].
	^ nil