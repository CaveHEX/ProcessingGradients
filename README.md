# ProcessingGradients
 A simple way to handle gradients in Processing <br />

1 - Generate a Palette with the generator, save it, export it to the "data/palette/" of the targeted sketch <br />
2 - Slide the short version in the IDE with the targeted sketch open to add the tab <br />
3 - Use as shown in the example <br />
	a - Create an instance of Palette <br />
	b - Instanciate with new, give it the name of a saved palette, or use generateRandom() afterward <br />
	c - Get the color with "palette.col(n)" with n [0.0 : 1.0] <br />