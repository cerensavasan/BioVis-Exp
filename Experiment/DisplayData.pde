int[] rectAttr = {10, 200, 390, 580, 770, 960,  1150, 1340, 1530, 1720, 1910};

void displayCircles(){
  int xcor = 0;
  int ycor = 0;
  int xRec = 0;
  int addMore0 = 0, addMore = 0, addMore2 = 0, addMore3 = 0, addMore4 = 0, addMore5 = 0, addMore6 = 0, addMore7 = 0, addMore8 = 0, addMore9 = 0, addMore10 = 0; 
  for(int traitNum = 0; traitNum < attributes.length; traitNum++){
   addMore0 = 0;
   addMore = 0;
   addMore2 = 0;
   addMore3 = 0;
   addMore4 = 0;
   addMore5 = 0; 
   addMore6 = 0;
   addMore7 = 0;
   addMore8 = 0;
   addMore9 = 0;
   addMore10 = 0;
   xcor = 0;
   ycor = 0;
   
   for(int i = 0; i < samples.size(); i++){
    Sample s = samples.get(i);
    xRec = rectAttr[traitNum];
    println(traitNum);
  
    //YELLOW IF BENIGN, RED IF MALIGNANT
    if(s.traits[10] == 2){
      fill(254,178,76);
    }
    if(s.traits[10] == 4){
      fill(240,59,32);
    }
    
    //Clump Thickness
    int keyTrait = s.traits[traitNum];
    switch (keyTrait) {
            case 0:  xcor = xRec;
                     ycor = 55 + addMore0;
                     ellipse(xcor,ycor, 5,5);
                     addMore0 = addMore0 + 5;
                     break;
            case 1:  xcor = xRec + 18;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 2:  xcor = xRec + 36;
                     ycor = 55 + addMore2;
                     ellipse(xcor,ycor, 5,5);
                     addMore2 = addMore2 + 5;
                     break;
            case 3:  xcor = xRec + 54;
                     ycor = 55 + addMore3;
                     ellipse(xcor,ycor, 5,5);
                     addMore3 = addMore3 + 5;
                     break;
            case 4:  xcor = xRec + 72;
                     ycor = 55 + addMore4;
                     ellipse(xcor,ycor, 5,5);
                     addMore4 = addMore4 + 5;
                     break;
            case 5:  println("Inside first trait's xcor: " + xcor);
                     xcor = xRec + 90;
                     ycor = 55 + addMore5;
                     ellipse(xcor,ycor, 5,5);
                     addMore5 = addMore5 + 5;
                     break;
            case 6:  xcor = xRec + 108;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 5;
                     break;
            case 7:  xcor = xRec + 126;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 5;
                     break;
            case 8:  xcor = xRec + 144;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 5;
                     break;
            case 9:  xcor = xRec + 162;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 5;
                     break;
            case 10: xcor = xRec + 180;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 5;
                     break;
            default: break;
    }
   }
  }
}
   /*
   addMore = 0;
   addMore2 = 0;
   addMore3 = 0;
   addMore4 = 0;
   addMore5 = 0;
   addMore6 = 0;
   addMore7 = 0;
   addMore8 = 0;
   addMore9 = 0;
   addMore10 = 0;
   
   //Uniformity of Cell Size
   for(int i = 0; i < samples.size(); i++){
      Sample s = samples.get(i);
      //YELLOW IF BENIGN, RED IF MALIGNANT
      if(s.traits[10] == 2){
        fill(254,178,76);
      }
      if(s.traits[10] == 4){
        fill(240,59,32);
      }
      int uniformitySize = s.traits[2];
      int rec2x = 200; 
      switch (uniformitySize) {
            case 0:  xcor = rec2x;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 1:  xcor = rec2x + 18;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 2:  xcor = rec2x + 36;
                     ycor = 55 + addMore2;
                     ellipse(xcor,ycor, 5,5);
                     addMore2 = addMore2 + 5;
                     break;
            case 3:  xcor = rec2x + 54;
                     ycor = 55 + addMore3;
                     ellipse(xcor,ycor, 5,5);
                     addMore3 = addMore3 + 5;
                     break;
            case 4:  xcor = rec2x + 72;
                     ycor = 55 + addMore4;
                     ellipse(xcor,ycor, 5,5);
                     addMore4 = addMore4 + 5;
                     break;
            case 5:  xcor = rec2x + 90;
                     ycor = 55 + addMore5;
                     ellipse(xcor,ycor, 5,5);
                     addMore5 = addMore5 + 5;
                     break;
            case 6:  xcor = rec2x + 108;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 5;
                     break;
            case 7:  xcor = rec2x + 126;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 5;
                     break;
            case 8:  xcor = rec2x + 144;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 5;
                     break;
            case 9:  xcor = rec2x + 162;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 5;
                     break;
            case 10: xcor = rec2x + 180;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 5;
                     break;
            default: break;
    }
   }
   
   addMore = 0;
   addMore2 = 0;
   addMore3 = 0;
   addMore4 = 0;
   addMore5 = 0;
   addMore6 = 0;
   addMore7 = 0;
   addMore8 = 0;
   addMore9 = 0;
   addMore10 = 0;
   
   //Uniformity of Cell Shape
   for(int i = 0; i < samples.size(); i++){
     Sample s = samples.get(i);
     //YELLOW IF BENIGN, RED IF MALIGNANT
     if(s.traits[10] == 2){
       fill(254,178,76);
     }
     if(s.traits[10] == 4){
       fill(240,59,32);
     }
     int uniformityShape = s.traits[3];
     int rec3x = 390;
     switch (uniformityShape) {
            case 0:  xcor = rec3x;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 1:  xcor = rec3x + 18;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 2:  xcor = rec3x + 36;
                     ycor = 55 + addMore2;
                     ellipse(xcor,ycor, 5,5);
                     addMore2 = addMore2 + 5;
                     break;
            case 3:  xcor = rec3x + 54;
                     ycor = 55 + addMore3;
                     ellipse(xcor,ycor, 5,5);
                     addMore3 = addMore3 + 5;
                     break;
            case 4:  xcor = rec3x + 72;
                     ycor = 55 + addMore4;
                     ellipse(xcor,ycor, 5,5);
                     addMore4 = addMore4 + 5;
                     break;
            case 5:  xcor = rec3x + 90;
                     ycor = 55 + addMore5;
                     ellipse(xcor,ycor, 5,5);
                     addMore5 = addMore5 + 5;
                     break;
            case 6:  xcor = rec3x + 108;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 5;
                     break;
            case 7:  xcor = rec3x + 126;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 5;
                     break;
            case 8:  xcor = rec3x + 144;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 5;
                     break;
            case 9:  xcor = rec3x + 162;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 5;
                     break;
            case 10: xcor = rec3x + 180;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 5;
                     break;
            default: break;
    }
  }
  */
