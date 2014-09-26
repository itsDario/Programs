/*
to make a funtion that returns a value, replace the keyword void with the
data type that you want the function to return. In your function, specify
the data to be passed back with the keyword return. For instance, this 
example includes a funtion called calculateMars() that calculates the
weight of a person or object on our neighboring planet:
*/

  void setup(){
    float yourWeight = 132;
    float marsWeight = calculateMars(yourWeight);
    println(marsWeight);
  }
  
  float calculateMars(float w) {
    float newWeight = w * 0.38;
    return newWeight;
  }
  
  /*
Notice the data type float before the funtion name to show that it returns
a floating-point value, and the last line of the block, which returns the vari-
able newWeight. In the second line of setup(), that value is assigned to the 
variable marsWeight. (To see your own weight on Mars, change the value
of the yourWeight variable to your weight.)
*/
