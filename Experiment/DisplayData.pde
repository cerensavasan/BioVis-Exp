void displayCircles(){
  int xcor = 0;
  int ycor = 0;
  int addMore = 0, addMore2 = 0, addMore3 = 0, addMore4 = 0, addMore5 = 0, addMore6 = 0, addMore7 = 0, addMore8 = 0, addMore9 = 0, addMore10 = 0; 
  
  for(int i = 0; i < samples.size(); i++){
    Sample s = samples.get(i);
  
    //YELLOW IF BENIGN, RED IF MALIGNANT
    if(s.traits[10] == 2){
      fill(254,178,76);
    }
    if(s.traits[10] == 4){
      fill(240,59,32);
    }
    
    //Clump Thickness
    int thickness = s.traits[1];
    switch (thickness) {
            case 0:  xcor = 10;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 3,3);
                     addMore = addMore + 6;
                     break;
            case 1:  xcor = 28;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 2:  xcor = 46;
                     ycor = 55 + addMore2;
                     ellipse(xcor,ycor, 5,5);
                     addMore2 = addMore2 + 5;
                     break;
            case 3:  xcor = 64;
                     ycor = 55 + addMore3;
                     ellipse(xcor,ycor, 5,5);
                     addMore3 = addMore3 + 5;
                     break;
            case 4:  xcor = 82;
                     ycor = 55 + addMore4;
                     ellipse(xcor,ycor, 5,5);
                     addMore4 = addMore4 + 5;
                     break;
            case 5:  xcor = 100;
                     ycor = 55 + addMore5;
                     ellipse(xcor,ycor, 5,5);
                     addMore5 = addMore5 + 10;
                     break;
            case 6:  xcor = 118;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 10;
                     break;
            case 7:  xcor = 136;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 10;
                     break;
            case 8:  xcor = 154;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 10;
                     break;
            case 9:  xcor = 172;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 10;
                     break;
            case 10: xcor = 190;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 10;
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
   
   for(int i = 0; i < samples.size(); i++){
      Sample s = samples.get(i);
      //YELLOW IF BENIGN, RED IF MALIGNANT
      if(s.traits[10] == 2){
        fill(254,178,76);
      }
      if(s.traits[10] == 4){
        fill(240,59,32);
      }
      //Uniformity of Cell Size
      int uniformitySize = s.traits[2];
      int rec2x = 200; 
      switch (uniformitySize) {
            case 0:  xcor = rec2x;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 3,3);
                     addMore = addMore + 6;
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
                     addMore5 = addMore5 + 10;
                     break;
            case 6:  xcor = rec2x + 108;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 10;
                     break;
            case 7:  xcor = rec2x + 126;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 10;
                     break;
            case 8:  xcor = rec2x + 144;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 10;
                     break;
            case 9:  xcor = rec2x + 162;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 10;
                     break;
            case 10: xcor = rec2x + 180;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 10;
                     break;
            default: break;
    }
   }
    /*
    //Uniformity of Cell Shape
    int uniformityShape = s.traits[3];
    switch (uniformityShape) {
            case 0:  xcor = 10;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 3,3);
                     addMore = addMore + 6;
                     break;
            case 1:  xcor = 28;
                     ycor = 55 + addMore;
                     ellipse(xcor,ycor, 5,5);
                     addMore = addMore + 5;
                     break;
            case 2:  xcor = 46;
                     ycor = 55 + addMore2;
                     ellipse(xcor,ycor, 5,5);
                     addMore2 = addMore2 + 5;
                     break;
            case 3:  xcor = 64;
                     ycor = 55 + addMore3;
                     ellipse(xcor,ycor, 5,5);
                     addMore3 = addMore3 + 5;
                     break;
            case 4:  xcor = 82;
                     ycor = 55 + addMore4;
                     ellipse(xcor,ycor, 5,5);
                     addMore4 = addMore4 + 5;
                     break;
            case 5:  xcor = 100;
                     ycor = 55 + addMore5;
                     ellipse(xcor,ycor, 5,5);
                     addMore5 = addMore5 + 10;
                     break;
            case 6:  xcor = 118;
                     ycor = 55 + addMore6;
                     ellipse(xcor,ycor, 5,5);
                     addMore6 = addMore6 + 10;
                     break;
            case 7:  xcor = 136;
                     ycor = 55 + addMore7;
                     ellipse(xcor,ycor, 5,5);
                     addMore7 = addMore7 + 10;
                     break;
            case 8:  xcor = 154;
                     ycor = 55 + addMore8;
                     ellipse(xcor,ycor, 5,5);
                     addMore8 = addMore8 + 10;
                     break;
            case 9:  xcor = 172;
                     ycor = 55 + addMore9;
                     ellipse(xcor,ycor, 5,5);
                     addMore9 = addMore9 + 10;
                     break;
            case 10: xcor = 190;
                     ycor = 55 + addMore10;
                     ellipse(xcor,ycor, 5,5);
                     addMore10 = addMore10 + 10;
                     break;
            default: break;
    }
    */
}
