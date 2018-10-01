import processing.sound.*;
SoundFile note_do;
SoundFile note_re;
SoundFile note_mi;
SoundFile note_fa;
SoundFile note_sol;
SoundFile note_la;
SoundFile note_si;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  note_do = new SoundFile(this, "do1.mp3");
  note_re = new SoundFile(this, "re.mp3");
  note_mi = new SoundFile(this, "mi.mp3");
  note_fa = new SoundFile(this, "fa.mp3");
  note_sol = new SoundFile(this, "sol.mp3");
  note_la = new SoundFile(this, "la.mp3");
  note_si = new SoundFile(this, "si.mp3");
  //file.play();
}      

void draw() {
}

void keyPressed() {
  
  if (key == 'a') {
    note_do.play();
  }
  if (key == 's') {
    note_re.play();
  }
  if (key == 'd') {
    note_mi.play();
  }
  if (key == 'f') {
    note_fa.play();
  }
  if (key == 'g') {
    note_sol.play();
  }
  if (key == 'h') {
    note_la.play();
  }
  if (key == 'j') {
    note_si.play();
  }
}