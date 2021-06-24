import UIKit

/**
 
 Smallest multiple
 
 Problem 5
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 
 Problem 5
  2520, 1'den 10'a kadar olan sayıların her birine kalansız bölünebilen en küçük sayıdır.

  1'den 20'ye kadar olan sayıların tamamına tam bölünebilen en küçük pozitif sayı kaçtır?
 
 
 */

var SmallestMultiple = 1


func numbers(_ num1: Int, _ num2: Int) -> Int {


    let sayi = num1 % num2


    if sayi != 0 {


        return numbers(num2, sayi)


    } else {


        return num2


    }


}


for num2 in 1...20 {


    SmallestMultiple = (SmallestMultiple * num2) / numbers(SmallestMultiple, num2)


}


print(SmallestMultiple)

