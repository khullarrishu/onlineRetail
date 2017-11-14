//
//  Admin.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-14.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Admin {
    
    public var customers: [Customer]
    
    public var bankDetails: [BankDetails]
    
    public var orders: [Order]
    
    public var orderDetails: [OrderDetails]
    
    public var products: [Product]
    
    public var productCategories: [ProductCategory]
    
    public var productReviews: [ProductReviews]
    
    public var siteReviews: [SiteReview]
    
    public var suppliers: [Supplier]
    
    init( ) {
        customers = [Customer]()
        bankDetails = [BankDetails]()
        orders = [Order]()
        orderDetails = [OrderDetails]()
        products = [Product]()
        productCategories = [ProductCategory]()
        productReviews = [ProductReviews]()
        siteReviews = [SiteReview]()
        suppliers = [Supplier]()
    }
    
    func addCustomer (customer: Customer) {
        customers.append(customer)
    }
    
    func addBankDetail (bankDetail: BankDetails) {
        bankDetails.append(bankDetail)
    }
    
    func addOrder (order: Order) {
        orders.append(order)
    }
    
    func addOrderDetails (orderDetail: OrderDetails) {
        orderDetails.append(orderDetail)
    }
    
    func addProduct (product: Product) {
        products.append(product)
    }
    
    func addProductCategory (productCategory: ProductCategory) {
        productCategories.append(productCategory)
    }
    
    func addSiteReview (siteReview: SiteReview) {
        siteReviews.append(siteReview)
    }
    
    func addSupplier (supplier: Supplier) {
        suppliers.append(supplier)
    }
 
    func addProductReview (productReview: ProductReviews) {
        productReviews.append(productReview)
    }
    
    
}
