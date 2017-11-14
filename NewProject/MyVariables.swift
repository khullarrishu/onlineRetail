//
//  MyVariables.swift
//  NewProject
//
//  Created by Aman Bhullar on 2017-11-12.
//  Copyright © 2017 Gurdeep bhullar. All rights reserved.
//

import Foundation


struct MyVariables {
    static var numberOfColumns = 8
    
    static var orderColumns = ["", "ID", "CustomerID", "OrderDate", "Status"]
    static var orderDetailsColumns = ["", "ID", "ProductID", "Quantity", "Price", "Discount"]
    static var productColumns = ["", "ID", "Name", "Category", "Supplier", "Desc", "Avaiable", "BuyPrice"]
    static var productCategoryColumns = ["", "ID", "Name", "Desc"]
    static var productReviewsColumns = ["", "ID", "CustomerID", "ProductID", "Desc"]
    
    static var siteReviewColumns = ["", "ID", "CustomerID", "Desc"]
    static var suppliersColumns = ["", "ID", "Name" ]
    static var customerColumns = ["", "UserID", "Password", "Status", "FullName", "Gender", "BankID"]
    static var bankColumns = ["", "ID", "Name" ]
    
    static var customers = [Customer]()
    
    static var bankDetails = [BankDetails] ()
    
    static var orders = [Order] ()
    
    static var orderDetails = [OrderDetails] ()
    
    static var products = [Product]()
    
    static var productCategories = [ProductCategory] ()
    
    static var productReviews = [ProductReviews]()
    
    static var siteReviews = [SiteReview]()
    
    static var suppliers = [Supplier]()
}
