//Assignment 3
int[] rectAttr2 = {0, 190, 380, 570, 760, 950,  1140, 1330, 1520, 1710};
int[] pos10 = {0, 179, 370, 560, 750, 940, 1130, 1320, 1510, 1700, 1890};


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
  for(int r = 0; r < 9; r++){
    rect(x, 50, 180, 610); //starting with leftmost
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
//-----------------------------------------------------------------------------------------------
  for(int traitNum = 1; traitNum < rectAttr2.length; traitNum++){
     int aRect = rectAttr2[traitNum-1];
     counter = 0;
     for(int i = 0; i < 6; i++){
       if(i != 5){
         text(counter, 8 + (36*i) + aRect, 680);
         counter = counter + 2;
       }
       if(i == 5){
         text(10, pos10[traitNum], 680);
         counter = counter + 2;
     }
    }
  }
  
  //ABACUS LINES
  for(int traitNum = 1; traitNum < attributes.length-1; traitNum++){
     int xRec = rectAttr[traitNum];
    for(int i = 0; i < 6; i++){
      line(xRec + (36*i), 50, xRec + (36*i), 670);
    }
  }
}

void colorChart(){
  //Color chart cells
  fill(254,178,76);
  ellipse(800, 735, 10, 10);
  fill(240,59,32);
  ellipse(800, 760, 10, 10);
  
  //Color chart labels
  textSize(14);
  fill(0, 0, 0);
  text("Benign Cell Count: " + benignCount, 810, 740);
  text("Malignant Cell Count: " + malignantCount, 810, 765);
}
  


void setup(){
  size(1720,850);
  background(255,255,150);
  tableParser();
  drawLayout();
  displayCircles();
  colorChart();
}
