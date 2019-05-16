public class Pyramid {
    // Memeber Variables
  int lp, wp, hp;

  // Constructor
  public Pyramid(int lp, int wp, int hp) {
    this.lp = lp;
    this.wp = wp;
    this.hp = hp;
  }

  // Method for Volume
  public double getVolumeP() {
    double valVP = (lp*wp*hp)/3;
    return valVP;
  }

  // Method for Surface Area
  public double getSurfaceAreaP() {
    double valSP = (lp*wp)+(lp*Math.sqrt(((wp/2)*wp)+(hp*hp)))+(wp*Math.sqrt(((lp/2)*lp)+(hp*hp)));
    return valSP;
  }
}