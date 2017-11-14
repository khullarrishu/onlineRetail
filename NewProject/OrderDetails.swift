//
//  OrderDetails.swift
//  SwiftProject
//
//  Created by Aman Bhullar on 2017-10-13.
//  Copyright © 2017 Aman Bhullar. All rights reserved.
//

import Foundation

class OrderDetails {
    
    public private (set) var order: Order
    public private (set) var product: Product
    public private (set) var quantity:Int
    public private (set) var price:Double
    public private (set) var discount:Double
    
    
    init (order: Order, product: Product, quantity:Int, price:Double, discount:Double){
        self.order = order
        self.product = product
        self.quantity = quantity
        self.price = price
        self.discount = discount
    }
    
    func getOrder () -> Order {
        return order
    }
    
    func getProduct () -> Product {
        return product
    }
    
    func getQuantity () -> Int {
        return quantity
    }
    
    func getPrice () -> Double {
        return price
    }
    
    func getDiscount () -> Double {
        return discount
    }
    
    func setOrder (order : Order) {
        self.order = order
    }
    
    func setProduct (product : Product) {
        self.product = product
    }
    
    func setQuantity (quantity : Int) {
        self.quantity = quantity
    }
    
    func setPrice (price : Double) {
        self.price = price
    }
    
    func setDiscount (discount : Double) {
        self.discount = discount
    }
    
}
