public class Star {

  private float x;
  private float y;
  private float size;

  public Star() {
    x = (float)(Math.random() * width);
    y = (float)(Math.random() * height);
    size = (float)(Math.random() * 3) + 1;
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse(x, y, size, size);
  }
}
