enumerating
intersection: aGraph
        | newGraph |
        newGraph := Graph new.
        self do: [ :t | (aGraph some: [ :t2 | t equals: t2 ]) ifTrue: [ newGraph add: t ] ].
        ^ newGraph
