// Copyright 2017 Brightec
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

class CollectionViewController: UIViewController {

    
    
    var isOrder = false
    var isOrderDetails = false
    var isProduct = false
    var isProductReviews = false
    var isProductCategory = false
    var isSiteReviews = false
    var isSuppliers = false
    var isCustomers = false
    var isBankDetails = false
    
    
    
    
    
    
    
    let contentCellIdentifier = "ContentCellIdentifier"

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        addButton()
        
        collectionView.register(UINib(nibName: "ContentCollectionViewCell", bundle: nil),
                                forCellWithReuseIdentifier: contentCellIdentifier)
    }
    
    
    func addButton ()
    {
        let btn: UIButton = UIButton(frame: CGRect(x: 10, y: 25, width: 50, height: 30))
       btn.tintColor = UIColor.black
        btn.setTitle("", for: .normal)
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        btn.tag = 1
        self.view.addSubview(btn)
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            
            dismiss(animated: true, completion: nil)
        }
    }
//    @IBAction func back(_ sender: Any) {
//        print ("Here")
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//   
//        present(vc, animated: true, completion: nil)
//    }
    
    
}

// MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if isCustomers {
            return MyVariables.customers.count
        } else if isSuppliers {
            return MyVariables.suppliers.count
        } else if isOrder {
            return MyVariables.orders.count
        } else if isOrderDetails {
            return MyVariables.orderDetails.count
        } else if isProduct {
            return MyVariables.products.count
        } else if isProductReviews {
            return MyVariables.productReviews.count
        } else if isProductCategory{
            return MyVariables.productCategories.count
        } else if isSiteReviews{
            return MyVariables.siteReviews.count
        }  else if isBankDetails{
            return MyVariables.bankDetails.count
        }
        return 50
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("-- \(MyVariables.numberOfColumns)")
        return MyVariables.numberOfColumns
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellIdentifier,
                                                      for: indexPath) as! ContentCollectionViewCell

        if indexPath.section % 2 != 0 {
            cell.backgroundColor = UIColor(white: 242/255.0, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.white
        }

        if indexPath.section == 0 {
            if isCustomers {
                print(indexPath.row)
                cell.contentLabel.text =
                    MyVariables.customerColumns[indexPath.row]
            } else if isSuppliers {
                cell.contentLabel.text =
                    MyVariables.suppliersColumns[indexPath.row]
            } else if isOrder {
                cell.contentLabel.text =
                    MyVariables.orderColumns[indexPath.row]
            } else if isOrderDetails {
                cell.contentLabel.text =
                    MyVariables.orderDetailsColumns[indexPath.row]
            } else if isProduct {
                cell.contentLabel.text =
                    MyVariables.productColumns[indexPath.row]
            } else if isProductReviews {
                cell.contentLabel.text =
                    MyVariables.productReviewsColumns[indexPath.row]
            } else if isProductCategory{
                cell.contentLabel.text = MyVariables.productCategoryColumns[indexPath.row]
            } else if isSiteReviews{
                cell.contentLabel.text = MyVariables.siteReviewColumns[indexPath.row]
            }  else if isBankDetails{
                cell.contentLabel.text = MyVariables.bankColumns[indexPath.row]
            }
        
            
        } else {
            if isCustomers {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getUserID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getPassword())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getStatus())
                }
                    
                if indexPath.row == 4 {
                        cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getFullName())
                }
                if indexPath.row == 5 {
                    cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getGender())
                }
                if indexPath.row == 6 {
                    cell.contentLabel.text = String(MyVariables.customers[indexPath.section - 1].getBankDetails().bankNumber)
                }
            }
            
            
            if isOrderDetails {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.orderDetails[indexPath.section - 1].getOrder().getOrderID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.orderDetails[indexPath.section - 1].getProduct().getProductID())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.orderDetails[indexPath.section - 1].getQuantity())
                }
                
                if indexPath.row == 4 {
                    cell.contentLabel.text = String(MyVariables.orderDetails[indexPath.section - 1].getPrice())
                }
                if indexPath.row == 5 {
                    cell.contentLabel.text = String(MyVariables.orderDetails[indexPath.section - 1].getDiscount())
                }
            }
            if isOrder {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.orders[indexPath.section - 1].getOrderID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.orders[indexPath.section - 1].getCustomer().getUserID())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.orders[indexPath.section - 1].getOrderDate())
                }
                
                if indexPath.row == 4 {
                    cell.contentLabel.text = String(MyVariables.orders[indexPath.section - 1].getStatus())
                }
            }
            if isProduct {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getProductID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getProductName())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getProductCategory().categoryID)
                }
                
                if indexPath.row == 4 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getProductSupplier().getSupplierId())
                }
                if indexPath.row == 5 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getProductDescription())
                }
                if indexPath.row == 6 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getAvaiable())
                }
                if indexPath.row == 7 {
                    cell.contentLabel.text = String(MyVariables.products[indexPath.section - 1].getBuyPrice())
                }
            }
            if isProductCategory {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.productCategories[indexPath.section - 1].getCategoryID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.productCategories[indexPath.section - 1].getCategoryName())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.productCategories[indexPath.section - 1].getCategoryDesc())
                }
            }
            if isProductReviews {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.productReviews[indexPath.section - 1].getProductReviewID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.productReviews[indexPath.section - 1].getCustomerID().getUserID())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.productReviews[indexPath.section - 1].getProduct().getProductID())
                }
                if indexPath.row == 4 {
                    cell.contentLabel.text = String(MyVariables.productReviews[indexPath.section - 1].getReviewDesc())
                }
            }
            if isSiteReviews {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.siteReviews[indexPath.section - 1].getReviewID())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.siteReviews[indexPath.section - 1].getCustomer().getUserID())
                }
                if indexPath.row == 3 {
                    cell.contentLabel.text = String(MyVariables.siteReviews[indexPath.section - 1].getDescription())
                }
            }
            if isSuppliers {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.suppliers[indexPath.section - 1].getSupplierId())
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.suppliers[indexPath.section - 1].getSupplierName())
                }
            }
            
            if isBankDetails {
                if indexPath.row == 0 {
                    cell.contentLabel.text = String(indexPath.section)
                }
                if indexPath.row == 1 {
                    cell.contentLabel.text = String(MyVariables.bankDetails[indexPath.section - 1].getBankNumber())
                
                }
                if indexPath.row == 2 {
                    cell.contentLabel.text = String(MyVariables.bankDetails[indexPath.section - 1].getBankName())
                }
            }
            
        }

        return cell
    }
    
    

}

// MARK: - UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {

}
