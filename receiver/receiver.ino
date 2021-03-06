#define TRIG_PIN 6
#define ECHO_PIN 7

void setup() {

  //Ultrasonic pins
  pinMode(TRIG_PIN, INPUT);
  pinMode(ECHO_PIN, INPUT);
  pinMode(2, INPUT);

  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(2), get_distance, FALLING);
}

long dist;
void loop() {
 

  

}

long get_distance()
{

  static unsigned long duration, mm;
 
 
  // Read the signal from the sensor: a HIGH pulse whose
  // duration is the time (in microseconds) from the sending
  // of the ping to the reception of its echo off of an object.
  duration = pulseIn(ECHO_PIN, HIGH);

  // Convert the time into a distance
  mm = (duration) / 2.94;     // Divide by 29.1 or multiply by 0.0343

  if ((mm< 1500 && mm>100))
  {
    Serial.print(mm);
   Serial.println(" mm");
   // Serial.println(duration);
  }
  
}
