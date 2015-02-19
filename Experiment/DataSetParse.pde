//arrays with the data
String[] attributes = {"Code Number",
                     "Clump Thickness",
                     "Uniformity of Cell Size",
                     "Uniformity of Cell Shape",
                     "Marginal Adhesion",
                     "Single Epithelial Cell Size",
                     "Bare Nuclei",
                     "Bland Chromatin",
                     "Normal Nucleoli",
                     "Mitoses",
                     "Class"};
                                
String[] dataType = {"Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric",
                     "Numeric"};
                     
ArrayList<Sample> samples = new ArrayList<Sample>();
String[] content;

void tableParser(){
  content = loadStrings("breast-cancer-wisconsin.data");
  for(int i=0; i < content.length; i++){
    int[] list = int(split(content[i], ","));
    samples.add(new Sample(list));
  }
}

void printSample(Sample thisSample){
  for(int i = 0; i < attributes.length; i++){
    println(thisSample.traits[i]);
  }
}
