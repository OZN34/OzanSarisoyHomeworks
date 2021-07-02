import Foundation

func splitChar(text:String, repeatCount : Int)-> String
{
    
    var list = [Character: Int]()
    
    for char in text
    {
        if let _ = list[char]
        {
            list[char]! += 1
        }else{
            list[char] = 1
        }
    }
    
    for (char, count) in list
    {
        if count >= repeatCount, char != " "
        {
            list.removeValue(forKey: char)
        }
    }
    
    var returnText = ""
    for c in text{
        if list.keys.contains(c){
            returnText.append(c)
        }
    }
    
    return returnText
}

print(splitChar(text: "aaba kouq bux", repeatCount: 2))
