import java.util.Scanner;

public class ShapeTester {
  public static void main(String args[]) {
    Scanner sc = new Scanner (System.in);
    System.out.println("Hello! Please type \"b\" to make a box, \"p\" to make a pyramid, or \"s\" to make a sphere, then hit the enter key");
    char choice = sc.next().charAt(0);
    if (choice == 'b') {

      System.out.println("What is the length of your box?");
      int lb = sc.nextInt();
      System.out.println("What is the width of your box?");
      int wb = sc.nextInt();
      System.out.println("What is the height of your box?");
      int hb = sc.nextInt();

      Box b1 = new Box(lb, wb, hb);
      System.out.println("The volume of your box is: " + b1.getVolumeB());
      System.out.println("The surface area of your box is: " + b1.getSurfaceAreaB());

    } else if (choice == 'p') {

      System.out.println("What is the length of the base of your pyramid?");
      int lp = sc.nextInt();
      System.out.println("What is the width of the base of your pyramid?");
      int wp = sc.nextInt();
      System.out.println("What is the height of your pyramid?");
      int hp = sc.nextInt();

      Pyramid p1 = new Pyramid(lp, wp, hp);
      System.out.println("The volume of your pyramid is: " + p1.getVolumeP());
      System.out.println("The surface area of your pyramid is: " + p1.getSurfaceAreaP());

    } else if (choice == 's') {

      System.out.println("What is the radius of your sphere?");
      int r = sc.nextInt();

      Sphere s1 = new Sphere(r);
      System.out.println("The volume of your sphere is: " + s1.getVolumeS());
      System.out.println("The surface area of your sphere is: " + s1.getSurfaceAreaS());
      
    }
    System.out.println("Restart the program to do another shape");
  }
}