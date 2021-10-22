import UIKit
// Challenge : Find longest prefix

/*
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and
returns the longest substring that prefixes all words.
*/

func challenge(input:String) -> String  {
    let words = input.components(separatedBy: " ")
    guard let first = words.first else { return "" }
    var bestPerfix = ""
    var currentPerfix = ""

    for char in Array<Character>(first) {
        currentPerfix.append(char)
        for word in words {
            if !word.hasPrefix(currentPerfix) {
               return bestPerfix
            }
        }
        bestPerfix = currentPerfix
    }
    return bestPerfix
}
