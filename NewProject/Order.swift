//
//  Order.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class Order {
    public private (set) var orderID:Int
    public private (set) var customer: Customer
    public private (set) var orderDate:String
    public private (set) var status:String
    
    
    init (orderID:Int, customer:Customer, orderDate:String, status:String){
        self.orderID = orderID
        self.customer = customer
        self.orderDate = orderDate
        self.status = status
    }
    
    func getOrderID () -> Int {
        return orderID
    }
    
    func getCustomer () -> Customer {
        return customer
    }
    
    func getOrderDate () -> String {
        return orderDate
    }
    
    func getStatus () -> String {
        return status
    }
    
    func setOrderID (orderID : Int) {
        self.orderID = orderID
    }
    
    func setCustomer (customer : Customer) {
        self.customer = customer
    }
    
    func setOrderDate (orderDate: String) {
        self.orderDate = orderDate
    }
    
    func setStatus (status: String) {
        self.status = status
    }
}
