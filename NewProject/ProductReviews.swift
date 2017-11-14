//
//  ProductReviews.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation
class ProductReviews {
    
    public private (set) var productReviewId: Int
    public private (set) var customer: Customer
    public private (set) var product: Product
    public private (set) var reviewDesc: String
    
    
    init (productReviewId: Int, customerId: Customer, product: Product, reviewDesc: String) {
        self.productReviewId = productReviewId
        self.customer = customerId
        self.product = product
        self.reviewDesc = reviewDesc
    }
    
    func getProductReviewID() -> Int {
        return productReviewId
    }
    
    func getCustomerID() -> Customer {
        return customer
    }
    
    func getProduct() -> Product {
        return product
    }
    
    func getReviewDesc () -> String {
        return reviewDesc
    }
 
    
}
