//
//  Suppliers.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Supplier{
    
    public private (set) var supplierId:Int
    public private (set) var supplierName:String
    
    init(supplierId: Int, supplierName: String ){
        self.supplierId = supplierId
        self.supplierName = supplierName
    }
    
    func getSupplierId () -> Int {
        return supplierId
    }
    
    func getSupplierName () -> String {
        return supplierName
    }
 
    func setSupplierId (supplierId : Int) {
        self.supplierId = supplierId
    }
    
    func setSupplierName (supplierName : String) {
        self.supplierName = supplierName
    }

}
