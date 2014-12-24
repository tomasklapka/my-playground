enumerating
difference: aGraph
        | newGraph |
        newGraph := Graph new.
        self do: [ :t | (aGraph some: [ :t2 | t equals: t2 ]) ifFalse: [ newGraph add: t ] ].
        ^ newGraph
