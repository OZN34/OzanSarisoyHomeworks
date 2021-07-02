import UIKit

var str = "Hello, playground"


/*A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
 
 Palindromik bir sayı her iki şekilde de aynı şekilde okunur. İki basamaklı iki sayının çarpımından yapılan en büyük palindrom 9009 = 91 × 99'dur.

 3 basamaklı iki sayının çarpımından oluşan en büyük palindromu bulun.
 
*/


var result : Int = 0


func PalindromuBul() {


    for Sayi1 in stride (from: 999, to: 100, by: -1){


        for Sayi2 in stride(from: 999, to: 100, by: -1) {


            let Sayi = Sayi1 * Sayi2


            let noInStr = String(Sayi)


            let reverseNoInStr = String(noInStr.reversed())


            if (noInStr == reverseNoInStr) {


                if (result < Sayi) {


                    result = Sayi


                    break
                }


            }


        }


    }


    print(result)


}


PalindromuBul()


