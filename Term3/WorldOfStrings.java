class WorldOfStrings {
  static int age = 200;
  static String firstName = "First";
  static String lastName = "Last";
  static String ay = "-ay";
  public static void main(String args[]) {

    String[] firstName = String.split(firstName.length(1));
    String[] lastName = String.split(lastName.length(1));

    String pigFirst = firstName[1] + firstName[0] + ay;
    String pigLast = lastName[1] + lastName[0] + ay;

    String Str = new String(pigFirst + " " + pigLast + " " + age);

    System.out.println(Str.toUpperCase());

  }
}