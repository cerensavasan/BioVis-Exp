//Assignment 3

class Sample{
  int id;
  int[] traits;

  Sample(int[] rowAttributes){
    id  = rowAttributes[0];
    traits = rowAttributes;
  }
}
    



//place markers for each attribute
//would be a for loop going through each object
//if class 2: benign, light orange | if class 4: malignant, red


void drawLayout(){
  //create layout (9 rectangles)
  int x = 10;
  for(int r = 0; r < 10; r++){
    rect(x, 50, 180, 100); //starting with leftmost
    x = x + 190;
  }
  
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
  
  int counter = 0;
  textSize(10);
  //number ticks for layout
  for(int i = 0; i < 6; i++){  //first rectangle
    if(i == 5){
       text(counter, 179, 170);
    } else {
       text(counter, 8 + (36*i), 170);
    }
    counter = counter + 2;
    line(10 + (36*i), 150, 10 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    if(i == 5){
       text(counter, 370 , 170);
    } else {
       text(counter, 198 + (36*i), 170);
    }
    counter = counter + 2;
    line(200 + (36*i), 150, 200 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(390 + (36*i), 150, 390 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(580 + (36*i), 150, 580 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(770 + (36*i), 150, 770 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(960 + (36*i), 150, 960 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(1150 + (36*i), 150, 1150 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(1340 + (36*i), 150, 1340 + (36*i), 160);
  }
  counter = 0;
//-----------------------------------------------------------------------------------------------
  for(int i = 0; i < 6; i++){
    line(1530 + (36*i), 150, 1530 + (36*i), 160);
  }   
}


void setup(){
  size(1720,700);
  background(255,255,150);
  //tableLoader();
  tableParser();
  drawLayout();
  displayCircles();
}
