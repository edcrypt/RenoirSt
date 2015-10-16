private
baseline110ForUnitsCompatibility: spec
	spec package: #'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ].
	spec
		for: #UnitsIsPresent
		do: [ 
			spec
				group: 'Minimal' with: #('RenoirSt' 'RenoirSt-HTML' 'RenoirSt-UnitsCompatibility');
				group: 'default' with: #('Minimal' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests');
				yourself ].
	spec
		for: #UnitsIsAbsent
		do: [ 
			spec
				group: 'Minimal' with: #('RenoirSt' 'RenoirSt-HTML');
				group: 'default' with: #('Minimal' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests');
				yourself ]