// both height and weight need to be in meter and kilogram respectively
double calculateBMI(double height, double weight) => weight / (height * height);

double calculateWeightFromBMI(double height, double bmi) =>
    bmi * (height * height);
