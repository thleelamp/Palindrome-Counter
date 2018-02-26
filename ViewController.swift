//
//  ViewController.swift
//  Palindrome Counter
//
//  Created by Tian Hau Lee on 24/02/2018.
//  Copyright © 2018 Tian Hau Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
     
        let sentence = "madam anna kayak help anna Civic racecar"
        let counts = allPalindromeCounts(sentence: sentence)
        print("Counts:", counts)
    }
    func allPalindromeCounts(sentence: String) -> [String: Int]{
        var counts = [String: Int]()
        print(sentence)
        let words = sentence.components(separatedBy: " ")
        words.forEach {(word) in
            
            if isPalindrome(word: word){
                let count = counts[word] ?? 0
                counts[word] = count + 1
                
               // print ("Found Palindrome: ", word)
            }
        }
        return counts
    }
    
    fileprivate func isPalindrome(word: String) -> Bool {
        let characters = Array(word.lowercased())
        var currentIndex = 0
        
        while currentIndex < characters.count / 2 {
            if characters[currentIndex] != characters[characters.count - currentIndex - 1]{
                return false
            }
            currentIndex += 1
        }
        
        return true
    }
}

