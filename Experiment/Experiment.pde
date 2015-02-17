//Assignment 3

class Sample{
  Integer id;
  Integer[] traits;

  Sample(Integer[] rowAttributes){
    id  = rowAttributes[0];
    traits = rowAttributes;
  }
}
    



//place markers for each attribute
//would be a for loop going through each object
//if class 2: benign, light orange | if class 4: malignant, red


void drawLayout(){
  //create layout (9 rectangles)
  rect(10, 50, 180, 100); //starting with leftmost
  rect(200, 50, 180, 100);
  rect(390, 50, 180, 100);
  rect(580, 50, 180, 100);
  rect(770, 50, 180, 100);
  rect(960, 50, 180, 100);
  rect(1150, 50, 180, 100);
  rect(1340, 50, 180, 100);
  rect(1530, 50, 180, 100);
  
  //labels for layout
  fill(0,0,0);
  textSize(14);
  text(attributes[1],45, 40);
  text(attributes[2],220, 40);
  text(attributes[3],400, 40);
  text(attributes[4],610, 40);
  text(attributes[5],775, 40);
  text(attributes[6],1015, 40);
  text(attributes[7],1185, 40);
  text(attributes[8],1380, 40);
  text(attributes[9],1590, 40);
  
  //number ticks for layout
  line(
  
}


void setup(){
  size(1720,200);
  background(255,255,150);
  tableLoader();
  drawLayout();
}
