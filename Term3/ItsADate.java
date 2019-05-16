import java.util.*;
import java.text.*;
class ItsADate {

  public static void main(String args[]) {
    Date dNow = new Date();

    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
    String strDate = dateFormat.format(dNow);

    System.out.println(strDate);
  }
}