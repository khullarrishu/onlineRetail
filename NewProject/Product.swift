//
//  Product.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Product : Equatable {
    // database properties
    public private (set) var productID: String
    public private (set) var productName: String
    public private (set) var productCategory: ProductCategory
    public private (set) var productSupplier: Supplier
    public private (set) var productDescription: String
    public private (set) var avaiable: Int
    public private (set) var buyPrice: Double
    
    func getProductID () -> String {
        return productID
    }
    func getProductName () -> String {
        return productName
    }
    func getProductCategory () -> ProductCategory {
        return productCategory
    }
    func getProductSupplier () -> Supplier {
        return productSupplier
    }
    func getProductDescription () -> String {
        return productDescription
    }
    func getAvaiable () -> Int {
        return avaiable
    }
    func getBuyPrice () -> Double {
        return buyPrice
    }
    
    func setProductID ( productID : String ) {
        self.productID = productID
    }
    func setProductName (productName : String) {
        self.productName = productName
    }
    func setProductCategory (productCategory : ProductCategory) {
        self.productCategory = productCategory
    }
    func setProductSupplier (productSupplier : Supplier)  {
        self.productSupplier = productSupplier
    }
    func setProductDescription (productDescription : String)
    {
        self.productDescription = productDescription
    }
    func setAvaiable (avaiable : Int){
        self.avaiable = avaiable
    }
    func setBuyPrice (buyPrice : Double) {
        self.buyPrice = buyPrice
    }
    
    // extra properties
    public var totalQuantity : Int
    public var totalReviews : Int
    
    
    
    init (productID: String, productName: String, productCategory: ProductCategory, productSupplier: Supplier, productDescription: String, avaiable: Int, buyPrice: Double) {
        self.productID = productID
        self.productName = productName
        self.productCategory = productCategory
        self.productSupplier = productSupplier
        self.productDescription = productDescription
        self.avaiable = avaiable
        self.buyPrice = buyPrice
        
        self.totalQuantity = 0
        self.totalReviews = 0
    }
    
    
    public static func ==(lhs: Product, rhs: Product) -> Bool{
        return
            lhs.productID == rhs.productID
        
    }

    
    
}
