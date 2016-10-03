//
//  Person.swift
//  swift-people
//
//  Created by Missy Allan on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    
    var qualifiedTutor: Bool {
        if self.skills.count >= 4 {
            return true
        }else{
            return false
        }
        
    }

    init()  {
        self.name = "John Doe"
        self.ageInYears = nil
    }
    
    init (name: String, ageInYears: Int?) {
        
        self.name = name
        if let age = ageInYears {
        self.ageInYears = age
    
      }
    
    }
        
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)

    }
    
    
    func celebrateBirthday() -> String {
        
        let defaultString = ""
    
        if ageInYears ==  nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }else if ageInYears != nil {
            if let age = ageInYears{
                self.ageInYears = age + 1
        }
               return "HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
            }
        return defaultString
    }
    
    
    
    //4. learnSkill Methods
    
    func learnSkillBash() {
        if skills.contains("bash") != true {
          skills.append("bash")
        }
    }

    func learnSkillXcode() {
        if skills.contains("Xcode") != true {
            skills.append("Xcode")
        }
    }
  
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C") != true {
              skills.append("Objective-C")
        }
    }
            
    func learnSkillSwift() {
        if skills.contains("Swift") != true {
                skills.append("Swift")
        }
    }
    
  
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder") != true {
                skills.append("Interface Builder")
            }
        }
    

// !!!! DO NOT DELETE !!!! This brace ends Class Person!
}

