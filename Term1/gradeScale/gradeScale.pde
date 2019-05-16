// Devin Killinger
//09/19/18

float grade = random(0, 101);
println(grade);
if (grade >= 94) {
  println(grade + " Assign letter grade A.");
} else if (grade >= 89 && grade < 94) {
  println(grade + " Assign letter grade A-.");
} else if (grade >= 87 && grade < 89) {
  println(grade + " Assign letter grade B+.");
} else if (grade >= 83 && grade < 87) {
  println(grade + " Assign letter grade B.");
} else if (grade >= 80 && grade < 83) {
  println(grade + " Assign letter grade B-.");
} else if (grade >= 77 && grade < 80) {
  println(grade + " Assign letter grade C+.");
} else if (grade >= 73 && grade < 77) {
  println(grade + " Assign letter grade C.");
} else if (grade >= 70 && grade < 73) {
  println(grade + " Assign letter grade C-.");
} else if (grade >= 67 && grade < 70) {
  println(grade + " Assign letter grade D+.");
} else if (grade >= 63 && grade < 67) {
  println(grade + " Assign letter grade D.");
} else if (grade >= 60 && grade < 63) {
  println(grade + " Assign letter grade D-.");
} else {
  println(grade + " Assign letter grade F.");
}
