#define TRIG_PIN 6
#define ECHO_PIN 7

void setup() {

  //Ultrasonic pins
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);


}

void loop() {
 

  get_distance();
  delay(125);

}

long get_distance()
{

  static long duration, cm;

  pinMode(ECHO_PIN, INPUT);
  
  // The sensor is triggered by a HIGH pulse of 10 or more microseconds.
  // Give a short LOW pulse beforehand to ensure a clean HIGH pulse:
  digitalWrite(TRIG_PIN, LOW);
  delayMicroseconds(5);
  digitalWrite(TRIG_PIN, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG_PIN, LOW);

  
 // pinMode(ECHO_PIN, OUTPUT);
 // digitalWrite(ECHO_PIN, LOW);

  

 
  
}
