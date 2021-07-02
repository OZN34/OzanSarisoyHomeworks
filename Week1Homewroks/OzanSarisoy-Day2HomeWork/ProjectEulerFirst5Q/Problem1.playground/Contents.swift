import UIKit

/*?
 Multiples of 3 and 5
 Problem 1
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

 Find the sum of all the multiples of 3 or 5 below 1000.
 
 3 ve 5'in katları
  Problem 1
  3 veya 5'in katı olan 10'un altındaki tüm doğal sayıları listelersek 3, 5, 6 ve 9 elde ederiz. Bu katların toplamı 23'tür.

  1000'in altındaki 3 veya 5'in tüm katlarının toplamını bulun.
 
 */


var SumOfAllTheMultiples = 0;

for i in 1..<1000
    {
    if (i%3 == 0) || (i%5 == 0){
        SumOfAllTheMultiples = SumOfAllTheMultiples + i
    }
}

print(SumOfAllTheMultiples )
