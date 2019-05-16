import java.io.*;
import java.util.Scanner;
public class FileWriting {
  public static void main(String args[]) throws IOException {
      FileReader in = null;
      FileWriter out = null;
      Scanner sc = new Scanner (System.in);
      
      try {
    String filename= "Output.txt";
    FileWriter fw = new FileWriter(filename,true);
    String uIn = sc.nextLine();
    fw.write(uIn);
    fw.close();
    }
  }
}