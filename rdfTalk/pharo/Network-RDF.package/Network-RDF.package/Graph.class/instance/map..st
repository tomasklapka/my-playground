enumerating
map: aBlock
        | result |
        result := #().
        self do: [ :t | result add: (aBlock value: t) ].
        ^ result
