//import UIKit

import Foundation

/**
 
2- Elimizde uzun bir cümle olsun. Bazı kelimeler tekrar edecek bir cümle düşünün. İstediğimiz ise, hangi kelimeden kaç tane kullanıldığını bulmanız.

string = "merhaba nasılsınız. iyiyim siz nasılsınız. bende iyiyim."

*/

// HomeWork 2

var str = "merhaba nasılsınız. iyiyim siz nasılsınız. bende iyiyim."

let words = str.components(separatedBy: .whitespaces)

print(words)

var wordsnumbers = [String: Int]()

for word in words {
    if wordsnumbers[word] == nil {
        wordsnumbers[word] = 1
    }else{
        wordsnumbers[word]! += 1
    }
}

print(wordsnumbers)
