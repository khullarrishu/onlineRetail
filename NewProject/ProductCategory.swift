//
//  ProductCategory.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class ProductCategory {
    
    public private (set) var categoryID: Int
    public private (set) var categoryName: String
    public private (set) var categoryDesc: String
   
    
    
    init (categoryID: Int, categoryName: String, categoryDesc: String) {
        self.categoryID = categoryID
        self.categoryName = categoryName
        self.categoryDesc = categoryDesc
    }
    
    func getCategoryID () -> Int {
        return categoryID
    }
    
    func getCategoryName () -> String {
        return categoryName
    }
    
    func getCategoryDesc () -> String {
        return categoryDesc
    }
    
    func setCategoryID (categoryID : Int) {
        self.categoryID = categoryID
    }
    
    func getCategoryName (categoryName : String) {
        self.categoryName = categoryName
    }
    
    func getCategoryDesc (categoryDesc : String){
        self.categoryDesc = categoryDesc
    }
}
