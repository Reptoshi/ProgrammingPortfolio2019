public class Box {
  // Memeber Variables
  int lb, wb, hb;

  // Constructor
  public Box(int lb, int wb, int hb) {
    this.lb = lb;
    this.wb = wb;
    this.hb = hb;
  }

  // Method for Volume
  public double getVolumeB() {
    double valVB = lb*wb*hb;
    return valVB;
  }
  // Method for Surface Area
  public double getSurfaceAreaB() {
    double valSB = (2*(lb*wb))+(2*(lb*hb))+(2*(wb*hb));
    return valSB;
  }
}