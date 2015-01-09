as yet unclassified
testIpath
"""
ipath          = ipath-abempty   ; begins with '/' or is empty
                  / ipath-absolute  ; begins with '/' but not '//'
                  / ipath-noscheme  ; begins with a non-colon segment
                  / ipath-rootless  ; begins with a segment
                  / ipath-empty     ; zero characters
"""
	#(
		'/begins/with/colon'
		'/surrounded/by/colons/'
		'/'
		'' "empty"
		'relative/path'
		'/absolute:with:colons/path'
		'fff/a' 'abc/def/012'
		'john@example.com'
	) do: [ :test | self parse: test rule: #ipath ]