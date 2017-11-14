//
//  BankDetails.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class BankDetails {
    public private (set) var bankNumber:Int
    public private (set) var bankName:String
    
    
    init (bankNumber:Int, bankName:String){
        self.bankNumber = bankNumber
        self.bankName = bankName
    }
    
    func getBankNumber() -> Int {
        return bankNumber
    }
    
    func getBankName() -> String {
        return bankName
    }
    
    func setBankNumber(bankNumber: Int){
        self.bankNumber = bankNumber
    }
    
    func setBankName(bankName: String){
        self.bankName = bankName
    }
    
}


