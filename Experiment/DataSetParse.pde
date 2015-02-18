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
                     
Table table = new Table(); //initial table to iterate through
Table resultsTable = new Table();  //final table to print to csv table

void tableLoader(){
  table = loadTable("breast-cancer-wisconsin.data", "csv");  //load in the input
  
   for(int j=0; j < attributes.length; j++){
    resultsTable.addColumn(attributes[j]);  //the column titles
   }
  
  //iterates through breast-cancer-wisconsin.data to change 1s to true and 0s to false
  for(TableRow row : table.rows()){
   resultsTable.addRow(row); //strings and numerics get added as they are
  }
  
  saveTable(resultsTable, "cancerData.csv");  //save the edited table as a .csv file
}

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
