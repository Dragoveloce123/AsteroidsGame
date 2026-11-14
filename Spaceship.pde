
public class Spaceship extends Floater {

  public Spaceship() {

    corners = 7;

    
    xCorners = new int[] {
      18,  // Front tip
      -8,
      -13,
      -13,
      -8,
      -13,
      -13
    };

    yCorners = new int[] {
      0,
      -8,
      -13,
      -6,
      0,
      6,
      13
    };

    myColor = color(255);

    myCenterX = 300;
    myCenterY = 300;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
  }

  public void show() {

    fill(255);
    stroke(255);

    translate((float)myCenterX, (float)myCenterY);

    float dRadians = (float)(myPointDirection * Math.PI / 180);

    rotate(dRadians);

    beginShape();

    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }

    endShape(CLOSE);

    rotate(-dRadians);

    translate(-1 * (float)myCenterX, -1 * (float)myCenterY);
  }

  public void hyperspace() {

    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = Math.random() * 360;
  }
}
