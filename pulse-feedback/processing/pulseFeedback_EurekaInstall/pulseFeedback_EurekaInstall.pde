/*******************************************************************
 *  VideoAlchemy "Pulse Feedback" 
 *       Biofeedback Light Sculpture informed by a user's pulse
 *  Jason Stephens, Owen Williams, Lia Goloff, Michael Colombo
 *  Installed at Eureka! The Spirituality of Science
        Allegro Ballroom, Emmeryville, CA, Mar 2014
        
 - v.1 based COMPLETELY on the example code provided by PulseSensor
 *******************************************************************/


/*
THIS PROGRAM WORKS WITH PulseSensorAmped_Arduino-xx ARDUINO CODE
THE PULSE DATA WINDOW IS SCALEABLE WITH SCROLLBAR AT BOTTOM OF SCREEN
PRESS 'S' OR 's' KEY TO SAVE A PICTURE OF THE SCREEN IN SKETCH FOLDER (.jpg)
MADE BY JOEL MURPHY AUGUST, 2012
*/


import processing.serial.*;
PFont font;
Scrollbar scaleBar;

Serial port;     

int Sensor;      // HOLDS PULSE SENSOR DATA FROM ARDUINO
int IBI;         // HOLDS TIME BETWEN HEARTBEATS FROM ARDUINO
int BPM;         // HOLDS HEART RATE VALUE FROM ARDUINO
int[] RawY;      // HOLDS HEARTBEAT WAVEFORM DATA BEFORE SCALING
int[] ScaledY;   // USED TO POSITION SCALED HEARTBEAT WAVEFORM
int[] rate;      // USED TO POSITION BPM DATA WAVEFORM
float zoom;      // USED WHEN SCALING PULSE WAVEFORM TO PULSE WINDOW
float offset;    // USED WHEN SCALING PULSE WAVEFORM TO PULSE WINDOW
color eggshell = color(255, 253, 248);
int heart = 0;   // This variable times the heart image 'pulse' on screen
//  THESE VARIABLES DETERMINE THE SIZE OF THE DATA WINDOWS
int PulseWindowWidth = 490;
int PulseWindowHeight = 512; 
int BPMWindowWidth = 180;
int BPMWindowHeight = 340;
boolean beat = false;    // set when a heart beat is detected, then cleared when the BPM graph is advanced


void setup() {
  size(displayWidth,displayHeight);
  //size(700, 600);  // Stage size
  frameRate(100);  
  font = loadFont("Arial-BoldMT-24.vlw");
  textFont(font);
  textAlign(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);  
// Scrollbar constructor inputs: x,y,width,height,minVal,maxVal
  scaleBar = new Scrollbar (400, 575, 180, 12, 0.5, 1.0);  // set parameters for the scale bar
  RawY = new int[PulseWindowWidth];          // initialize raw pulse waveform array
  ScaledY = new int[PulseWindowWidth];       // initialize scaled pulse waveform array
  rate = new int [BPMWindowWidth];           // initialize BPM waveform array
  zoom = 0.75;                               // initialize scale of heartbeat window
    
// set the visualizer lines to 0
 for (int i=0; i<rate.length; i++){
    rate[i] = 555;      // Place BPM graph line at bottom of BPM Window 
   }
 for (int i=0; i<RawY.length; i++){
    RawY[i] = height/2; // initialize the pulse window data line to V/2
 }
   
// GO FIND THE ARDUINO
  println(Serial.list());    // print a list of available serial ports
  // choose the number between the [] that is connected to the Arduino
  
  //importe
  int portNumber = 0; 
  String portName = "/dev/tty.usbmodemfd121";//Serial.list()[portNumber];
  println("Connecting to port "+portName);
  port = new Serial(this, portName, 115200);
  
  //port = new Serial(this, Serial.list()[5], 115200);  // make sure Arduino is talking serial at this baud rate
  port.clear();            // flush buffer
  port.bufferUntil('\n');  // set buffer full flag on receipt of carriage return
}



void draw() {
  fill(0, 0, 0, 24);
  rect(width/2, height/2, width, height);

  noStroke();
 
// DRAW THE HEART AND MAYBE MAKE IT BEAT
  fill(250,0,0);
  stroke(250,0,0,25);
  // the 'heart' variable is set in serialEvent when arduino sees a beat happen
  heart--;                    // heart is used to time how long the heart graphic swells when your heart beats
  heart = max(heart,0);       // don't let the heart variable go into negative numbers
  if (heart > 0){             // if a beat happened recently, 
    strokeWeight(8);          // make the heart big
  }
  smooth();   // draw the heart with two bezier curves
 // bezier(width-100,50, width-20,-20, width,140, width-100,150);
 // bezier(width-100,50, width-190,-20, width-200,140, width-100,150);
  strokeWeight(1);          // reset the strokeWeight for next time

  drawCircles();

}  //end of draw loop


float myNoise = 0;
float delta = 1;

void drawCircles() {
  noStroke();  
  
  circle(50,  0.001, 40, 100, 200);
  circle(100, 0.002, 80, 10, 200);
  circle(150, 0.003, 120, 100, 10);
  circle(200, 0.004, 160, 10, 200);
  circle(250, 0.005, 200, 200, 80);
  circle(300, 0.006, 245, 100, 90);
  circle(350, 0.006, 100, 150, 10);
  circle(400, 0.007, 190, 100, 200);
  circle(450, 0.008, 10, 255, 90);
  circle(500, 0.007, 50, 90, 200);
  circle(550, 0.006, 255, 140, 100);
  circle(600, 0.005, 110, 10, 110);
  circle(700, 0.004, 180, 180, 20);
  circle(800, 0.003, 50, 50, 200);
  circle(900, 0.002, 170, 70, 255);
  myNoise += delta;
}
float circleSize = 0;
void circle(int ellipseSize, float factor, int circleFillA, int circleFillB, int circleFillC) {
  
//  circleSize = noise(myNoise * factor, ellipseSize) * ellipseSize;

  if (beat == true) {
   println("beat");
//   delta = -1 * delta;
   circleSize = height; 
   beat = false;
  } else {
     circleSize -= 3.5;
     if (circleSize < 200) circleSize = 200; 
  }
  
  /*
  fill(
    noise(1, myNoise * factor)*circleFillA, 
    noise(2, myNoise * factor)*circleFillB, 
    noise(3, myNoise * factor)*circleFillC, 
    noise(4, myNoise * factor)*150
  );
  */
  
 
  ellipseMode(CENTER);
  ellipse(width/2, height/2, circleSize, circleSize);
}

