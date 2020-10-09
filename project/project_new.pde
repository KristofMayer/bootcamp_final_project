import processing.sound.*;
SoundFile song;

int radius; 
float numPoints;

void setup()
{
  size(500, 500);
  radius    = 200;
  numPoints = random(255);
  song  = new SoundFile(this, "ES_Silent Hills - Martin Baekkevold.mp3");
  song.play();

}

void draw()
{
  fill(0, 20);
  noStroke();
  rect(0, 0, width, height);
  stroke(random(255), random(255), random(255));
  noFill();

  float t = frameCount/40.0;
  beginShape();
  for (int p=0; p<numPoints; p++)
  {
    if (p % 2 == 0) {
      vertex(width/2  + radius*cos(0.1*t*p/numPoints + t/20), 
        height/2 + radius*sin(0.1*t*p/numPoints + t/20));
    } else {

      vertex(width/2  + radius*cos(0.1*t*p/numPoints + -t/30), 
        height/2 + radius*sin(0.1*t*p/numPoints + -t/30));
    }
  }
  endShape(CLOSE);
}
