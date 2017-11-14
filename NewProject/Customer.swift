//
//  Customer.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Customer : Equatable {
    public private (set) var userID: Int
    public private (set) var password: String
    public private (set) var status: String
    public private (set) var fullName: String
    public private (set) var gender: String
    public private (set) var bankDetails: BankDetails
    
    public var totalAmountSpent : Double
    
    init (userID:Int, password:String, status:String, fullName:String, bankDetails: BankDetails, gender: String){
        self.userID = userID
        self.password = password
        self.status = status
        self.fullName = fullName
        self.bankDetails = bankDetails
        self.gender = gender
        self.totalAmountSpent = 0.0
    }
    
    func getUserID() -> Int {
        return userID
    }
    
    func getPassword() -> String {
        return password
    }
    
    func getStatus () -> String {
        return status
    }
    
    func getFullName () -> String {
        return fullName
    }
    
    func getBankDetails () -> BankDetails {
        return bankDetails
    }
    
    func getGender () -> String {
        return gender
    }
    
    func setUserID(userID: Int) {
        self.userID = userID
    }
    
    func setPassword(password: String) {
        self.password = password
    }
    
    func setStatus (status : String) {
        self.status = status
    }
    
    func setFullName (fullName: String) {
        self.fullName = fullName
    }
    
    func setBankDetails (bankDetails: BankDetails) {
        self.bankDetails = bankDetails
    }
    
    func setGender (gender: String) {
        self.gender = gender
    }
    
    
    
    public static func ==(lhs: Customer, rhs: Customer) -> Bool{
        return
            lhs.userID == rhs.userID
        
    }
    
}
