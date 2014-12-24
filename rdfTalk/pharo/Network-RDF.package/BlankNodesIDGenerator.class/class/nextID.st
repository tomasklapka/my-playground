as yet unclassified
nextID
        count ifNil: [ count := 0 ].
        count := count + 1.
        ^ 'b', count asString
