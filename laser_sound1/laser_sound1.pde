import processing.sound.*;
SoundFile note_do;
SoundFile note_re;
SoundFile note_mi;
SoundFile note_fa;
SoundFile note_sol;
SoundFile note_la;
SoundFile note_si;


boolean keyP=true;
char keyispressed;
int count=0;

boolean[] arr=new boolean[7];

void setup() {
  size(640, 360);
  background(255);
  
  
  note_do = new SoundFile(this, "do1.mp3");
  note_re = new SoundFile(this, "re1.mp3");
  note_mi = new SoundFile(this, "mi1.mp3");
  note_fa = new SoundFile(this, "fa1.mp3");
  note_sol = new SoundFile(this, "sol1.mp3");
  note_la = new SoundFile(this, "la1.mp3");
  note_si = new SoundFile(this, "si1.mp3");
  keyispressed='a';
  
  
  
}      

void draw() { 
  background(255);
  
  fill(0);
  text("press a!",10,110);
      
  if (keyP == true)
  {
      keyPressed();
  }
  keyP=false;
  
  if(arr[0]==true)
  {
    fill(0);
    text("press s!",10,120);
    if(arr[1]==true)
    { 
      fill(0);
      text("press d!",10,130);
      if(arr[2]==true)
      {
        fill(0);
        text("press f!",10,140);
        if(arr[3]==true)
        {
          fill(0);
          text("press g!",10,150);
          if(arr[4]==true)
          {
            fill(0);
            text("press h!",10,160);
            if(arr[5]==true)
            {
              fill(0);
              text("press j!",10,170);
              if(arr[6]==true)
              {  
                fill(0);
                text("congratssss!",10,180);
        
              }
              else
              {
                fill(0);
                text("pls Aaa!",100,180);
              }
            }
            else
            {
              fill(0);
              text("pls Aaa!",100,170);
            }
          }
          else
          {
            fill(0);
            text("pls Aaa!",100,160);
          }
        }
        else
        {
          fill(0);
          text("pls Aa!",100,140);
        }
      }
      else
      {
        fill(0);
        text("pls A!",100,140);
      }
      
    }
    else
    {
      fill(0);
      text("p a!",100,130);
    }
  }
  else
  {
    fill(0);
    text("pls a!",100,120);
  }
  
  
  
  
}

void keyPressed() {
  
  if (key == 'a') {
    keyP=true;
    note_do.play();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='a';
    count=1;
    arr[0]=true;
  }
  if (key == 's') {
    keyP=true;
    note_do.stop();
    note_re.play();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='s';
    count=2;
    arr[1]=true;
  }
  if (key == 'd') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.play();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.stop();
    keyispressed='d';
    count=3;
    arr[2]=true;
  }
  if (key == 'f') {
     keyP=true;
     note_do.stop();
     note_re.stop();
     note_mi.stop();
     note_fa.play();
     note_sol.stop();
     note_la.stop();
     note_si.stop();
     keyispressed='f';
     count=4;
     arr[3]=true;
  }
  if (key == 'g') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.play();
    note_la.stop();
    note_si.stop();
    keyispressed='g';
    count=5;
    arr[4]=true;
  }
  if (key == 'h') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.play();
    note_si.stop();
    keyispressed='h';
    count=6;
    arr[5]=true;
  }
  if (key == 'j') {
    keyP=true;
    note_do.stop();
    note_re.stop();
    note_mi.stop();
    note_fa.stop();
    note_sol.stop();
    note_la.stop();
    note_si.play();
    keyispressed='j';
    count=7;
    arr[6]=true;
  }
}
