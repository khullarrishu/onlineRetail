//
//  siteReview.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation
class SiteReview{
    public private (set) var reviewId: Int
    public private (set) var customer: Customer
    public private (set) var description: String
    
    init (reviewId :Int, customer: Customer, desc: String){
        self.reviewId = reviewId
        self.customer = customer
        self.description = desc
    }
    
    func getReviewID () -> Int {
        return reviewId
    }
    
    func getCustomer () -> Customer {
        return customer
    }
    
    func getDescription () -> String {
        return description
    }
    
    func setReviewID (reviewId : Int) {
        self.reviewId = reviewId
    }
    
    func setCustomer (customer : Customer) {
        self.customer = customer
    }
    
    func setDescription (description : String) {
        self.description = description
    }
 
    
}
