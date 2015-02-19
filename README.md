# Experiments in Biology
by Ceren Savasan

### The Dataset
The breast cancer sample database was obtained from the University of Wisconsin Hospitals, Madison from Dr. William H. Wolberg. It can be found in the Experiment folder which also contains the source code.
I have reduced the size of the data set for the sake of fitting everything into the window.

I was also asked to cite the following as part of the agreement to be able to use this dataset:
O. L. Mangasarian and W. H. Wolberg: "Cancer diagnosis via linear programming", SIAM News, Volume 23, Number 5, September 1990, pp 1 & 18.

### Major Transformations to Data
I load and parse the data set into Sample objects with all the attributes as an integer array, then sort each sample into the 9 attribute rectangles. The value each sample has matches the alignment with the numbers below. Each circle represents where the sample cell lies on each attribute's rectangle. If the cell is malignant, it is shown as red circle, and if it is benign it will be represented as a yellow circle.

### Adaptability to Other Data Sets
If the data set is smaller, the biovisualization would operate the same way if the file was placed in the Example folder with the same name as the data set right now. If a really large data set was used, the cells would go off the window grid, so potentially it would not work as intended, but it would not break the program either. I could limit the number of cells that can be shown in each attribute at each scale, but this would require me to make some changes in the code.

### Code Source
I started from scratch.

### Biological Significance
The best conclusion to draw from the biovisualization is to see is that some attributes have a direct correlation between the attribute value and if it affects whether or not the cell is malignant or benign. Higher values seem to directly be related to cancerous cells.

### Technical Significance
There are a lot of for-loops where I had to choose the costly path and iterate through my list of samples for the sake of the brevity of the code. I chose this to avoid having to manually hard code the layout and other features.

### How to Run the Code
Run the Experiment.pde file in Processing.
