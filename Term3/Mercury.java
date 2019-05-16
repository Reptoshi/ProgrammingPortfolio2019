// Devin Killinger
// 02-28-2019

public class Mercury {
  
  // Member variables
  int w;
  int age;

  // Constructors
  personWeight(w) {
    this.w = w;
  }

  // Methods
  wToMercury () {
    double mw = w*(3.7/9.81);
    return mw;
  }

  ageToMercury () {
    double mage = age*(88/365);
    return mage;
  }
}