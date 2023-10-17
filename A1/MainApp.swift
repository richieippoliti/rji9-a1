//
//  MainApp.swift
//  A1
//
//  Created by Vin Bui on 5/31/23.
//

// ===== DO NOT CHANGE THE FUNCTION HEADER =====

import Foundation

class MainApp {
    
    /**
     Returns the String `"Hi! My name is <name>. I am <age> years old."
     
     For example, `introduce(name: "Antoinette", age: 4)` returns `"Hi! My name is Antoinette. I am 4 years old."`
     */
    func introduce(name: String, age: Int) -> String {
        // TODO: 1 ⭐️
        
        // Hint: Use string interpolation.
        
        return "Hi! My name is " + name + ". I am " + String(age) + " years old."  // Replace this line
    }
    
    /**
     Returns a dictionary with the following key-value pairs:
     - "name": `name`
     - "netid": `netid`
     - "year": `year`
     */
    func getStudentInfo(name: String, netid: String, year: Int) -> [String: String] {
        // TODO: 2 ⭐️
        
        // Hint: The parameter `year` is an Int, but the values in the dictionary are of type String.
        
        return ["name" : name, "netid" : netid, "year" : String(year)]  // Replace this l
    }
    
    /**
     Returns the number of even numbers in `arr`
     
     For example, `countEvens([1,2,3,4])` returns `2`
     */
    func countEvens(_ arr: [Int]) -> Int {
        // TODO: 3 ⭐️⭐️
        var n:Int = 0
        for i in arr {
            if (i % 2) == 0 {
                n = n + 1
            }
        }
        // Hint: An integer divided by 2 with remainder 0 is even.
        return n // Replace this line
        
    }
    
    /**
     Returns a new array of Strings containing every element in `arr` but capitalized and
     preserving the order
     
     For example, `capitalizeStrings(["vin", "richie"])` returns `["VIN", "RICHIE"]`
     */
    func capitalizeStrings(_ arr: [String]) -> [String] {
        // TODO: 4 ⭐️⭐️
        return arr.map { $0.uppercased() }
        //var uppercaseArr: [String] = []
        //for i in arr{
        //    uppercaseArr.append(i.uppercased())

            // Hint: You will need to use two functions provided by Swift. If you press `.` on
            // your keyboard after the variable name, Xcode will provide a list of functions
            // that you could use.
            
        }
        
        /**
         Returns a new array of Strings containing `str` as an element `count` times
         
         If `count` is less than 0, treat it as a 0
         
         For example, `repeatString(str: "Vin", count: 3)` returns `["Vin", "Vin", "Vin"]`
         */
        func repeatString(str: String, count: Int) -> [String] {
            // TODO: 5 ⭐️⭐️⭐️
            var newArray: [String] = []
            for _ in 0..<max(count, 0) {
                newArray.append(str)
            }
            
            // Hint: How do you specify the number of iterations using a for loop?
            
            return newArray // Replace this line
        }
        
        /**
         Returns the number of words in `str` where each word is separated by a space (or multiple spaces)
         
         If there are no words, return `nil`
         
         For example,
         `countWords("Cornell AppDev")` returns `2`
         `countWords(" AppDev")` returns `1`
         `countWords("")` returns `nil`
         */
        func countWords(_ str: String) -> Int? {
            // TODO: 6 ⭐️⭐️⭐️
            if str == "" {
                return nil
            }
            else{
                let str = str.split(separator: " ")
                let length: Int = str.count
                
                // Hint: Use the `split` method. Google if needed.
                
                return length // Replace this line
            }
        }
        
        /**
         Returns `true` if `str` contains the numbers 0-9 and`false` otherwise
         
         Note that `str` has type `String?`. If `str` is `nil`, return `false`
         
         For example,
         `containsNum(nil)` returns `false`
         `containsNum("R1chie")` returns `true`
         */
    func containsNum(_ str: String?) -> Bool {
        // TODO: 7 ⭐️⭐️⭐️⭐️
        guard let input = str else {
            return false
        }
        
        let numbers = "0123456789"
        
        for character in input {
            if numbers.contains(character) {
                return true
            }
        }
        
        return false
    }
        /**
         Returns the name of the lead for subteam `subteam`
         
         If the subteam name is invalid, `nil` is returned
         Helper function for `uppercaseLead`
         */
        func getSubteamLead(subteam: String) -> String? {
            if subteam == "ios" { return "Tiffany Pan" }
            if subteam == "design" { return "Christina Zeng" }
            if subteam == "marketing" { return "Eddie Chi" }
            if subteam == "android" { return "Emily Hu" }
            if subteam == "backend" { return "Joyce Wu" }
            
            return nil
        }
        
        /**
         Returns the name of the lead for subteam `subteam` but uppercased
         
         If `subteam` is not one of `"ios"`,  `"design"`, `"marketing"`, `"android"`, or `"backend"`,
         return `"Invalid"`
         
         For example,
         `uppercaseLead(subteam: "design")` returns `"CHRISTINA ZENG"`
         `uppercaseLead(subteam: "webdev")` returns `"Invalid"`
         */
        func uppercaseLead(subteam: String) -> String {
            // TODO: 8 ⭐️⭐️⭐️⭐️
            let subteams: [String] = ["ios", "design", "marketing", "android", "backend"]
            if subteams.contains(subteam){
                if let lead = getSubteamLead(subteam: subteam){
                    return lead.uppercased()
                }
            }
            // Hint: Use `getSubteamLead` above as a helper function
            
            return "Invalid"
            }
             // Replace this line
        
        
        /**
         Returns an array of Strings with the same elements as `arr` but with Strings that contains vowels removed
         and preserving the order
         
         The vowels are "a", "e", "i", "o", and "u". "y" is not considered a vowel
         
         For example,
         `filterImposter(in: ["hello", "nymph", "world"])` returns `["nymph"]`
         `filterImposter(in: ["dry", "cry", "brr"])` returns `["dry", "cry", "brr"]`
         */
      
        func containsVowel(in str: String) -> Bool {
        let vowels = "aeiouAEIOU"
        return str.contains { vowels.contains($0) }
        }
    
        func filterImposter(in arr: [String]) -> [String] {
            // TODO: 9 ⭐️⭐️⭐️⭐️⭐️
            var newArray: [String] = []
            for i in arr{
                if !containsVowel(in: i){
                    newArray.append(i)
                }
                    
            }
            // Hint: Use the `filter` higher-order function and create your own helper function
            // We did not cover this to get you to Google on your own!
            
            return newArray // Replace this line
        }
        
    }

