Particle[] Quantums;
int g = 0;
int m = 240;

void setup(){
  noStroke();
  size(700, 700);
  frameRate(60);
  Quantums = new Particle[100];
  for(int i = 0; i < Quantums.length; i++) {
   Quantums[i] = new Stars();
   Quantums[0] = new SpaceShip();
   Quantums[1] = new Comets();
   
  }
     
     
}


void draw(){
  translate(width/2, height/2);
  
  if(mousePressed){
  fill(0, 10);
  rect(-width/2, -height/2, width, height); 
  frameRate(60 + g);
  g += 1;
    
  }
  else{
  fill(0, 100);
  rect(-width/2, -height/2, width, height); 
  frameRate(60);


  }

  for(int i = 0; i < Quantums.length; i++){

   Quantums[i].Show();
   Quantums[i].Warp();
   
  }   
}


class Stars implements Particle{
  float x;
  float y;
  float a;
  float Size;
  
  Stars(){
    x = (float)(Math.random()*1401) - 700;
    y = (float)(Math.random()*1401) - 700;
    Size = (float)(Math.random()*6) + 1;
    a = 1;

    

   
   }
   

   
   public void Show(){
    fill(255);


    ellipse(x, y, Size, Size);
    
    if(x > width - 300 || x < -width + 300){
         
     x = (float)(Math.random()*201) - 100;
      
      
    }
    
     if(y > width - 300 || y < -width + 300){
         
       y = (float)(Math.random()*201) - 100;
      
      
    }

}
   
   public void Warp(){
     a = (float)(Math.random()*10) +1;
    if(x > 0 &&  y > 0){
     
     x = x + a;
     y = y + a;
     
    }
    
    if(x < 0 && y < 0){
     
     x = x - a;
     y = y - a;
     
    }
    
    if(x > 0 &&  y < 0){
     
     x = x + a;
     y = y - a;
     
    }
    
    if(x < 0 &&  y > 0){
     
     x = x - a;
     y = y + a;
     
    }
    


   }
}


interface Particle{
  public void Warp();
  public void Show();
}

//uses an interface
class SpaceShip implements Particle{
  
  float x, y;
  
  public void Show(){
    fill(247, 240, 90);
    ellipse(x, y - 5, 10, 10);
    
    fill(180, 182, 185);
    ellipse(x, y, 30, 10);
    
  }
  public void Warp(){
  
    x = mouseX - width/2;
    y = mouseY - height/2;
  
  }
  
  
  
}

//uses inheritance
class Comets extends Stars{
   public void Show(){
    fill(255);


    ellipse(x, y, 30, 30);
    
        if(x > width - 300 || x < -width + 300){
         
     x = (float)(Math.random()*201) - 100;
      
      
    }
    
     if(y > width - 300 || y < -width + 300){
         
       y = (float)(Math.random()*201) - 100;
      
      
    }


}

   

}













