*RenoirSt-HTML-Tests
testVendorPropertySupport

	| style |
	style := CssDeclarationBlock new.
	style vendorPropertyAt: 'border-end-color' put: CssSVGColors black.
	
	self
		assert: style printString
		equals:
			('{<1s><2s><3s>: <4s>;<1s><2s>-moz-<3s>: <4s>;<1s><2s>-webkit-<3s>: <4s>;<1s><2s>-o-<3s>: <4s>;<1s><2s>-ms-<3s>: <4s>;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString
				with: 'border-end-color'
				with: 'black')