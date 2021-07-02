import UIKit

// EXTENSION ODEV
/*
Girilen bir sayının assal olup olmadığını bulan bir extension yazınız */

func primeNumber (number: Int)-> Bool {
    
    guard number >= 2 else
    {
        return false
    }
    guard number != 2 else
    {
        return true
    }
        for prime in 2..<number {
            print(prime)
            if number % prime == 0 {
                return false
            }
        }
        return true
}

primeNumber(number: 15)


// İki parametreli ve farklı tipli bir generic örneği yapınız. (T, U) tipinde olan bir generic yazılabilir mi ? Onu yapmaya çalış.


/*func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
     
 
}*/



//Euler Project 6

var sqr = 0
var sum = 0

for i in 1...100 {
    sum += i*i
    sqr += i
}

sqr *= sqr

print(sqr-sum)



//Euler Project 7

func isPrime(n:Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    var i = 3
    while i * i < n {
        if n % i == 0 {
            return false
        }
        i += 2
    }

    return true;
}

let limit = 10001
var n = 3
var c = 2

while c < limit {
    n += 2
    if isPrime(n: n) == true {
        c += 1
    }
}

print(n)


// ÖDEV: Şişe vurma oyunu kodlayınız.

// İf let guard let farkını reponuza yazı olarak yazın.



/* İf let ve guard arasındaki fark

 İf let yapısı önce verileri okuyor daha sonra elsede hata belirttiysek onu okuyor. Nil olan bir değer varsa. Nil olan değeri işleyemiyor.
 
 Guard yapısında hatayı en başında yakalayıp çalışmayı sonlandırıyor. Bu da performans anlamında fayda sağlıyor.
 
*/


/*
 Static keyword neden kullanırız ? Örnek bir kullanım yapınız.
 
 
 Class üst sınıflarda yazılıp, alt sınıflara override olabiliyor. Fakat static alt sınıflarda override olamıyor yani final yapıdadır.

 Override kavramı ise alt sınıflar bir üst ata sınıfının tüm özelliklerini taşır. Bu ata sınıf (SuperClass), alt sınıfa tüm özelliklerini taşıtabilir. Bazı durumlar da alt sınıfın bir özelliğini değiştirebilme ya da alt sınıf için özel hale getirme ihtiyacı olabilir. Bu duruma override denir.
 
 */

class ExClass {
    
    class func exampleclass() {
        print("Hello Class func.")
    }
    
    static func byeCls() { // final func
        print("byeCls Static func.")
    }
}

class SubExClass: ExClass {
    
    override class func exampleclass() {
        print("override Hello Class func.")
    }
    
    // override static func byeCls() {} #error
}



fill = 0 /* Scale the SKScene to fill the entire SKView. */

aspectFill = 1 /* Scale the SKScene to fill the SKView while preserving the scene's aspect ratio. Some cropping may occur if the view has a different aspect ratio. */

aspectFit = 2 /* Scale the SKScene to fit within the SKView while preserving the scene's aspect ratio. Some letterboxing may occur if the view has a different aspect ratio. */

resizeFill = 3 /* Modify the SKScene's actual size to exactly match the SKView. */


/*
SKSceneScaleMode.Fill
Sahnenin her ekseni bağımsız olarak ölçeklenir, böylece sahnedeki her eksen, görünümdeki eksenin uzunluğuyla tam olarak eşleşir.

SKSceneScaleMode.ResizeFill
Sahne, görünüme uyacak şekilde ölçeklenmemiş.
Bunun yerine sahne, boyutları her zaman görünümün boyutlarıyla eşleşecek şekilde otomatik olarak yeniden boyutlandırılır.

SKSceneScaleMode.AspectFit
Her boyutun ölçeklendirme faktörü hesaplanır ve ikisinden küçük olanı seçilir.
Sahnenin her ekseni aynı ölçekleme faktörüyle ölçeklenir.
Bu, tüm sahnenin görünür olmasını garanti eder ancak görünümde sinemaskop yapılmasını gerektirebilir.

SKSceneScaleMode.AspectFill
Her boyutun ölçeklendirme faktörü hesaplanır ve ikisinden büyük olanı seçilir.
Sahnenin her ekseni aynı ölçekleme faktörüyle ölçeklenir.
Bu, görünümün tüm alanının doldurulmasını garanti eder ancak sahnenin bazı kısımlarının kırpılmasına neden olabilir.
 
 
Segmented Control value changed başladığında ilk aksiyonu alıyor.
 
 viewWillAppear Fonksiyonu
 ViewController görünmeden,
 görünümü başlatılmadan hazır hale geliyor,çalışıyor. Ram de tutuluyor. Birden fazla kez çalıştırılabilir. Kullanıcı arayüz güncellemelerinde sık sık kullanılıyor.

 ViewController ile ilişkilidir. Bir yaşam döngüsü dahilindedir.
