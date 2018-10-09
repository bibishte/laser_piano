#define NOTE_1 A0
#define NOTE_2 A1
#define NOTE_3 A2
#define NOTE_4 A3
#define NOTE_5 A4
#define sound 9
void setup() {
  pinMode(sound, OUTPUT);
  Serial.begin(9600);
  // put your setup code here, to run once:
  
}

void loop() {
  //Serial.println(analogRead(A0));
  
  if (analogRead(NOTE_1) < 900)
  {
     tone(sound, 523, 130);
     //Serial.println( analogRead(A0));
     Serial.println("a\n");
     delay(1000);
     return;
  }
  if (analogRead(NOTE_2) < 900)
  {
      tone(8, 587, 130);
     //Serial.println( analogRead(A0));
     Serial.println("s\n");
     delay(1000);
     return;
  }

  if (analogRead(NOTE_3) < 900)
  {
     tone(8, 659, 130);
     //Serial.println( analogRead(A0));
     Serial.println("d\n");
     delay(1000);
     return;
  }

  if (analogRead(NOTE_4) < 900)
  {
     tone(8, 699, 130);
     //Serial.println( analogRead(A0));
     Serial.println("f\n");
     delay(1000);
     return;
  }

  if (analogRead(NOTE_5) < 900)
  {
     tone(8, 784, 130);
     //Serial.println( analogRead(A0));
     Serial.println("g\n");
     delay(1000);
     return;
  }
  
  Serial.println("n\n");
  delay(100);
    
  
}
