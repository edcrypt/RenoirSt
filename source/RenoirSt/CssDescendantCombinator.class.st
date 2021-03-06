"
At times, authors may want selectors to describe an element that is the descendant of another element in the document tree (e.g., ""an EM element that is contained within an H1 element""). Descendant combinators express such a relationship. A descendant combinator is whitespace that separates two sequences of simple selectors. A selector of the form ""A B"" represents an element B that is an arbitrary descendant of some ancestor element A.
"
Class {
	#name : #CssDescendantCombinator,
	#superclass : #CssSelector,
	#instVars : [
		'ancestor',
		'descendant'
	],
	#category : #'RenoirSt-Selectors'
}

{ #category : #'Instance Creation' }
CssDescendantCombinator class >> between: anAncestorSelector and: aDescendantSelector [

	^ anAncestorSelector isImplicitUniversal
		ifTrue: [ aDescendantSelector ]
		ifFalse: [ self new initializeBetween: anAncestorSelector and: aDescendantSelector ]
]

{ #category : #Printing }
CssDescendantCombinator >> cssContentOn: aStream [ 
	
	ancestor cssContentOn: aStream.
	aStream space.
	descendant cssContentOn: aStream 
]

{ #category : #'initialize-release' }
CssDescendantCombinator >> initializeBetween: anAncestorSelector and: aDescendantSelector [ 
	
	ancestor := anAncestorSelector .
	descendant  := aDescendantSelector 
]
