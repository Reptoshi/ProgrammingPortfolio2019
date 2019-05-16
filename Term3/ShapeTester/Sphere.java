public class Sphere {
 // Memeber Variables
  int r;

  // Constructor
  public Sphere(int r) {
    this.r = r;
  }

  // Method for Volume
  public double getVolumeS() {
    double valVS = ((4/3)*Math.PI)*((r*r)*r);
    return valVS;
  }

  // Method for Surface Area
  public double getSurfaceAreaS() {
    double valSS = 4*Math.PI*(r*r);
    return valSS;
  }
}