# ProcessingGradients
 A simple way to handle gradients in Processing

1 - Generate a Palette with the generator, save it, export it to the "data/palette/" of the targeted sketch
2 - Slide the short version in the IDE with the targeted sketch open to add the tab
3 - Use as shown in the example
	a - Create an instance of Palette
	b - Instanciate with new, give it the name of a saved palette, or use generateRandom() afterward
	c - Get the color with "palette.col(n)" with n [0.0 : 1.0]