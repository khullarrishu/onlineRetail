//
//  ViewController.swift
//  NewProject
//
//  Created by Gurdeep bhullar on 2017-11-10.
//  Copyright © 2017 Gurdeep bhullar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var setc = 0
    public var Mycustomers: [Customer] = []
    var admin = Admin ()
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initialize()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    func initialize (){
        
        
        
        // creating banks
        var bank1 = BankDetails (bankNumber: 1, bankName: "Scotia")
        var bank2 = BankDetails (bankNumber: 2, bankName: "ICICI")
        var bank3 = BankDetails (bankNumber: 3, bankName: "RBC")
        var bank4 = BankDetails (bankNumber: 4, bankName: "CanadaTrust")
        
        // adding banks
        admin.addBankDetail(bankDetail: bank1)
        admin.addBankDetail(bankDetail: bank2)
        admin.addBankDetail(bankDetail: bank3)
        admin.addBankDetail(bankDetail: bank4)
        
        // creating customers
        var customer1 = Customer(userID: 1, password: "1234", status: "Active", fullName: "Aman", bankDetails: bank1, gender: "M")
        var customer2 = Customer(userID: 2, password: "1234", status: "Active", fullName: "Gurdeep", bankDetails: bank1, gender: "M")
        var customer3 = Customer(userID: 3, password: "1234", status: "Active", fullName: "Chaman", bankDetails: bank2, gender: "F")
        var customer4 = Customer(userID: 4, password: "1234", status: "Active", fullName: "Rishu",bankDetails: bank2, gender: "M")
        var customer5 = Customer(userID: 5, password: "1234", status: "Active", fullName: "Lavi", bankDetails: bank3, gender: "M")
        var customer6 = Customer(userID: 6, password: "1234", status: "Active", fullName: "Sukhdeep", bankDetails: bank3, gender: "F")
        var customer7 = Customer(userID: 7, password: "1234", status: "Active", fullName: "Jassi", bankDetails: bank4, gender: "F")
        var customer8 = Customer(userID: 8, password: "1234", status: "Active", fullName: "Neeru", bankDetails: bank4, gender: "F")
        var customer9 = Customer(userID: 9, password: "1234", status: "Active", fullName: "Navi", bankDetails: bank1, gender: "M")
        var customer10 = Customer(userID: 10, password: "1234", status: "Active", fullName: "Ramnik", bankDetails: bank3, gender: "M")
        
        Mycustomers.append(customer1)
        Mycustomers.append(customer2)
        Mycustomers.append(customer3)
        
        // adding customers
        admin.addCustomer(customer: customer1)
        admin.addCustomer(customer: customer2)
        admin.addCustomer(customer: customer3)
        admin.addCustomer(customer: customer4)
        admin.addCustomer(customer: customer5)
        admin.addCustomer(customer: customer6)
        admin.addCustomer(customer: customer7)
        admin.addCustomer(customer: customer8)
        admin.addCustomer(customer: customer9)
        admin.addCustomer(customer: customer10)
        
        // creating orders
        
        var order1 = Order(orderID: 1, customer: customer1, orderDate: "01/02/2017", status: "Shipped")
        var order2 = Order(orderID: 2, customer: customer2, orderDate: "01/02/2017", status: "Shipped")
        var order3 = Order(orderID: 3, customer: customer3, orderDate: "01/02/2017", status: "Shipped")
        var order4 = Order(orderID: 4, customer: customer4, orderDate: "01/02/2017", status: "Shipped")
        var order5 = Order(orderID: 5, customer: customer5, orderDate: "01/02/2017", status: "Shipped")
        var order6 = Order(orderID: 6, customer: customer6, orderDate: "01/02/2017", status: "Shipped")
        var order7 = Order(orderID: 7, customer: customer7, orderDate: "01/02/2017", status: "Shipped")
        var order8 = Order(orderID: 8, customer: customer8, orderDate: "01/02/2017", status: "Shipped")
        
        // adding orders
        admin.addOrder(order: order1)
        admin.addOrder(order: order2)
        admin.addOrder(order: order3)
        admin.addOrder(order: order4)
        admin.addOrder(order: order5)
        admin.addOrder(order: order6)
        admin.addOrder(order: order7)
        admin.addOrder(order: order8)
        
        
        // creating product category
        var productCategory1 = ProductCategory(categoryID: 1, categoryName: "Classic Cars", categoryDesc: "")
        
        var productCategory2 = ProductCategory(categoryID: 2, categoryName: "Buses and Trucks", categoryDesc: "")
        
        var productCategory3 = ProductCategory(categoryID: 3, categoryName: "Planes", categoryDesc: "")
        
        var productCategory4 = ProductCategory(categoryID: 4, categoryName: "Vintage Cars", categoryDesc: "")
        
        var productCategory5 = ProductCategory(categoryID: 5, categoryName: "Motorcycles", categoryDesc: "")
        
        
        
        
        
        // adding product categories
        
        admin.addProductCategory(productCategory: productCategory1)
        admin.addProductCategory(productCategory: productCategory2)
        admin.addProductCategory(productCategory: productCategory3)
        admin.addProductCategory(productCategory: productCategory4)
        admin.addProductCategory(productCategory: productCategory5)
        
        // creating Suppliers
        
        var supplier1 = Supplier(supplierId: 1, supplierName: "Supplier1")
        var supplier2 = Supplier(supplierId: 2, supplierName: "Supplier2")
        var supplier3 = Supplier(supplierId: 3, supplierName: "Supplier3")
        var supplier4 = Supplier(supplierId: 4, supplierName: "Supplier4")
        
        // adding suppliers
        
        admin.addSupplier(supplier: supplier1)
        admin.addSupplier(supplier: supplier2)
        admin.addSupplier(supplier: supplier3)
        admin.addSupplier(supplier: supplier4)
        
        
        
        // creating products
        
        var product1 = Product (productID: "1", productName: " Harley Davidson", productCategory: productCategory5, productSupplier: supplier4, productDescription: "", avaiable: 7933, buyPrice: 48.81)
        var product2 = Product (productID: "2", productName: " Alpine Renault", productCategory: productCategory1, productSupplier: supplier2, productDescription: "", avaiable: 7305, buyPrice: 98.58)
        
        var product3 = Product (productID: "3", productName: "Moto Guzzi", productCategory: productCategory5, productSupplier: supplier3, productDescription: "", avaiable: 6625, buyPrice: 68.99)
        
        var product4 = Product (productID: "4", productName: " Harley Davidson", productCategory: productCategory5, productSupplier: supplier4, productDescription: "", avaiable: 3252, buyPrice: 103.42)
        
        var product5 = Product (productID: "5", productName: " Lancia", productCategory: productCategory1, productSupplier: supplier1, productDescription: "", avaiable: 1579, buyPrice: 95.59)
        
        var product6 = Product (productID: "6", productName: "Setra Bus", productCategory: productCategory2, productSupplier: supplier3, productDescription: "", avaiable: 9997, buyPrice: 77.90)
        
        var product7 = Product (productID: "7", productName: "Chevy Pickup", productCategory: productCategory2, productSupplier: supplier1, productDescription: "", avaiable: 6125, buyPrice: 55.70)
        
        var product8 = Product (productID: "8", productName: " Black hawk", productCategory: productCategory3, productSupplier: supplier2, productDescription: "", avaiable: 5330, buyPrice: 155.89)
        
        var product9 = Product (productID: "9", productName: "Linclon Berline", productCategory: productCategory4, productSupplier: supplier4, productDescription: "", avaiable: 8696, buyPrice: 77.27)
        
        var product10 = Product (productID: "10", productName: "Mercedes", productCategory: productCategory4, productSupplier: supplier4, productDescription: "", avaiable: 9042, buyPrice: 84.38)
        
        // adding products
        
        admin.addProduct(product: product1)
        admin.addProduct(product: product2)
        admin.addProduct(product: product3)
        admin.addProduct(product: product4)
        admin.addProduct(product: product5)
        admin.addProduct(product: product6)
        admin.addProduct(product: product7)
        admin.addProduct(product: product8)
        admin.addProduct(product: product9)
        admin.addProduct(product: product10)
        
        
        // creating orderDetails
        var orderDetail1 = OrderDetails (order: order1, product: product1, quantity: 5, price: 90, discount: 10)
        var orderDetail2 = OrderDetails (order: order2, product: product2, quantity: 14, price: 180, discount: 34)
        var orderDetail3 = OrderDetails (order: order3, product: product3, quantity: 25, price: 167, discount: 25)
        var orderDetail4 = OrderDetails (order: order4, product: product4, quantity: 7, price: 154, discount: 22)
        var orderDetail5 = OrderDetails (order: order5, product: product5, quantity: 18, price: 133, discount: 18)
        var orderDetail6 = OrderDetails (order: order6, product: product1, quantity: 5, price: 133, discount: 18)
        var orderDetail7 = OrderDetails (order: order7, product: product2, quantity: 6, price: 133, discount: 18)
        var orderDetail8 = OrderDetails (order: order8, product: product6, quantity: 8, price: 133, discount: 18)
        
        
        // adding orderDetails
        admin.addOrderDetails(orderDetail:  orderDetail1)
        admin.addOrderDetails(orderDetail:  orderDetail2)
        admin.addOrderDetails(orderDetail:  orderDetail3)
        admin.addOrderDetails(orderDetail:  orderDetail4)
        admin.addOrderDetails(orderDetail:  orderDetail5)
        admin.addOrderDetails(orderDetail:  orderDetail6)
        admin.addOrderDetails(orderDetail:  orderDetail7)
        admin.addOrderDetails(orderDetail:  orderDetail8)
        
        // creating productReviews
        var productReview1 = ProductReviews(productReviewId: 1, customerId: customer1, product: product1, reviewDesc: "Good")
        var productReview2 = ProductReviews(productReviewId: 2, customerId: customer2, product: product1, reviewDesc: "Average")
        var productReview3 = ProductReviews(productReviewId: 3, customerId: customer3, product: product1, reviewDesc: "Good")
        var productReview4 = ProductReviews(productReviewId: 4, customerId: customer4, product: product2, reviewDesc: "Good")
        var productReview5 = ProductReviews(productReviewId: 5, customerId: customer5, product: product2, reviewDesc: "Good")
        var productReview6 = ProductReviews(productReviewId: 6, customerId: customer6, product: product3, reviewDesc: "Bad")
        var productReview7 = ProductReviews(productReviewId: 7, customerId: customer1, product: product4, reviewDesc: "Good")
        
        // adding productReviews
        admin.addProductReview(productReview: productReview1)
        admin.addProductReview(productReview: productReview2)
        admin.addProductReview(productReview: productReview3)
        admin.addProductReview(productReview: productReview4)
        admin.addProductReview(productReview: productReview5)
        admin.addProductReview(productReview: productReview6)
        admin.addProductReview(productReview: productReview7)
        
        // creating SiteReviews
        
        var siteReview1 = SiteReview (reviewId :1, customer: customer1, desc: "Good")
        var siteReview2 = SiteReview (reviewId :2, customer: customer2, desc: "Bad")
        
        
        
        
        // adding siteReviews
        admin.addSiteReview(siteReview: siteReview1)
        admin.addSiteReview(siteReview: siteReview2)
        
        
        MyVariables.orders = admin.orders
        MyVariables.orderDetails = admin.orderDetails
        MyVariables.products = admin.products
        MyVariables.productCategories = admin.productCategories
        MyVariables.productReviews = admin.productReviews
        MyVariables.siteReviews = admin.siteReviews
        MyVariables.suppliers = admin.suppliers
        MyVariables.customers = admin.customers
        MyVariables.bankDetails = admin.bankDetails
        
        
        
        // REPORTS

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func OrderDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isOrder = true
        MyVariables.numberOfColumns = MyVariables.orderColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func OrderDetailDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isOrderDetails = true
        MyVariables.numberOfColumns = MyVariables.orderDetailsColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func ProductDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isProduct = true
        MyVariables.numberOfColumns = MyVariables.productColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func ProductCategoryDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isProductCategory = true
        MyVariables.numberOfColumns = MyVariables.productCategoryColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func CustomerDisplay(_ sender: Any) {
        
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isCustomers = true
        MyVariables.numberOfColumns = MyVariables.customerColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func SupplierDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isSuppliers = true
        MyVariables.numberOfColumns = MyVariables.suppliersColumns.count
        
        self.present(controller, animated: true, completion: nil)

    }
    
    @IBAction func ProductReviewDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isProductReviews = true
        MyVariables.numberOfColumns = MyVariables.productReviewsColumns.count
        self.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func BankDetailDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isBankDetails = true
        MyVariables.numberOfColumns = MyVariables.bankColumns.count
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func SiteReviewDisplay(_ sender: Any) {
        let controller: CollectionViewController = CollectionViewController(nibName: "CollectionViewController", bundle: nil)
        
        controller.isSiteReviews = true
        MyVariables.numberOfColumns = MyVariables.siteReviewColumns.count
        
        self.present(controller, animated: true, completion: nil)
    }
    
    
}

