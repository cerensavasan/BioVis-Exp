int[] rectAttr = {0, 10, 200, 390, 580, 770, 960,  1150, 1340, 1530, 1720, 1910};
int malignantCount = 0;
int benignCount = 0;

void displayCircles(){
  int xcor = 0;
  int ycor = 0;
  int xRec = 0;
  int addMore0 = 0, addMore = 0, addMore2 = 0, addMore3 = 0, addMore4 = 0, addMore5 = 0, addMore6 = 0, addMore7 = 0, addMore8 = 0, addMore9 = 0, addMore10 = 0; 
  for(int traitNum = 1; traitNum < attributes.length -1; traitNum++){
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
  
    //YELLOW IF BENIGN, RED IF MALIGNANT
    if(s.traits[10] == 2){
      fill(254,178,76);
      benignCount++;
    }
    if(s.traits[10] == 4){
      fill(240,59,32);
      malignantCount++;
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
                     if(addMore < 600){
                       addMore = addMore + 5;
                       ellipse(xcor,ycor, 5,5);
                     }
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
            case 5:  xcor = xRec + 90;
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
    println(keyTrait);
   }
  }
}

