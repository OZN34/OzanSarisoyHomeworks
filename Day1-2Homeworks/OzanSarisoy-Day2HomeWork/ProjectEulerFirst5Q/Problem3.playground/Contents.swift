import UIKit

/**
    Problem 3: Largest prime factor
    The prime factors of 13195 are 5, 7, 13 and 29.
    What is the largest prime factor of the number 600851475143 ?
 
 Problem 3: En büyük asal faktör
     13195'in asal çarpanları 5, 7, 13 ve 29'dur.
     600851475143 sayısının en büyük asal çarpanı kaçtır?
 
*/

func EnBuyukAsalFaktor (EnBuyukAsalCarpani : Int) -> Int {


    


    var SayiFaktoru = EnBuyukAsalCarpani


    var AsalFaktor = 2


    


    while SayiFaktoru > 1 {


        if (SayiFaktoru % AsalFaktor == 0) {


            SayiFaktoru /= AsalFaktor


        }


        else {


            AsalFaktor += 1


        }


    }


    return AsalFaktor


}


print(EnBuyukAsalFaktor(EnBuyukAsalCarpani: 600851475143))
