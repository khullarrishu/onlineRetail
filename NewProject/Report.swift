//
//  Report.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-15.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Report {
    
    var admin : Admin
    
    init (admin:Admin) {
        self.admin = admin
    }
    
    func PrintReport1() {
        
        
        for element in admin.orderDetails{
            element.product.totalQuantity += element.quantity
            
        }
        
        admin.orderDetails.sort{ $0.product.totalQuantity > $1.product.totalQuantity }

        // PRINT TOP 5 PRODUCTS
        print ("TOP 5 PRODUCTS")
        
        var i = 0
        
        var topFiveProducts = [Product]()
        
        
        
        while topFiveProducts.count < 5 && topFiveProducts.count < admin.orderDetails.count  {
            if !topFiveProducts.contains( where: {$0 == admin.orderDetails[i].product}){
                topFiveProducts.append(admin.orderDetails[i].product)
            }
           
            
            i += 1
        }
        
        topFiveProducts.forEach { (p) in
            print("\(p.productName) : \(p.totalQuantity)")
        }
    }
    
    func PrintReport2 () {
        for orderDetail in admin.orderDetails {
            orderDetail.order.customer.totalAmountSpent += orderDetail.price * Double (orderDetail.quantity)
        }
        
        print ("Total amount spend by customers")
        
        for customer in admin.customers {
            print ("\(customer.fullName) \(customer.totalAmountSpent)")
        }
        
    }
    
    func PrintReport3() {
        
        
        for element in admin.productReviews{
            element.product.totalReviews += 1
            
        }
        
        admin.productReviews.sort{ $0.product.totalReviews > $1.product.totalReviews }
        
        // PRINT TOP 5 PRODUCTS
        print ("TOP PRODUCTS based on reviews")
        
        var i = 0
        
        var topProducts = [Product]()
        
        
        
        while i < admin.productReviews.count  {
            
            if !topProducts.contains ( where: {$0 == admin.productReviews[i].product}) {
                topProducts.append(admin.productReviews[i].product)
            }
            
            
            i += 1
        }
        
        topProducts.forEach { (p) in
            print("\(p.productName) : \(p.totalReviews)")
        }
    }
    
    func PrintReport4() {
        
        var inActiveCustomers = [Customer]()
        
        for customer in admin.customers {
            
            var customerInOrders = false
            for order in admin.orders {
                if order.customer == customer {
                    customerInOrders = true
                }
            }
            if !customerInOrders {
                inActiveCustomers.append(customer)
            }
            
        }
        
        print("InActive Customers")
        for customer in inActiveCustomers {
            print(customer.fullName)
        }
        
    }
    
    func PrintReport5() {
        
        var femaleAmount = 0.0
        var maleAmount = 0.0
        
        for orderDetail in admin.orderDetails {
            
            if orderDetail.order.customer.gender == "M" {
                maleAmount += orderDetail.price
            } else {
                femaleAmount += orderDetail.price
            }
            
        }
        
        
        print("Female Amount : \(femaleAmount)")
        print("Male Amount : \(maleAmount)")
        
        
        
        
    }
    
}
