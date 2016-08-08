//
//  Person.swift
//  swift-people
//
//  Created by Bettina on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {

    let name: String
    private (set) var ageInYears: Int?
    private (set) var skills : [String] = []
    var qualifiedTutor : Bool {return skills.count >= 4}
    
    //designated initializer
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil) //self.init is calling on designated ini
    }
    
    
    //default initializer, must have to define a default initializer 
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    
    
    func celebrateBirthday () -> String {
        if var age = self.ageInYears {
             age += 1
             self.ageInYears = age //to avoid unwrapping, we set local variable to equalt the property to unwrap the property and on the unwrapped version, doing math/increase it and then we have to set the unwrapped property to the new value of the local variable. Because say self.ageInYears = 29...age +=1 makes age = 30 but self.ageInYears is still 29 so must set it equal to new value of age after incrementing using self.ageInYears = age ( now both of value 30).
            
            // or do self.ageInYears = age + 1 instead but then we'd have to unwrap self.ageInYears again
            let whichOrdinal = age.ordinal() //EXTENSION HERE - appends something to age
            // we've unwrapped age so now we can set the ordinal () to the age property
            
            let message = "HAPPY \(age)\(whichOrdinal.uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
            return message
        }else {
            
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }

    
    
    func learnSkillBash() {
        if !self.skills.contains("bash") {
            self.skills.append("bash")
        }
    }
    
    
    func learnSkillXcode() {
        if !self.skills.contains("Xcode") {
            self.skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !self.skills.contains("Objective-C") {
            self.skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift(){
        if !self.skills.contains("Swift") {
            self.skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !self.skills.contains("Interface Builder") {
            self.skills.append("Interface Builder")
        }
    }
    

}