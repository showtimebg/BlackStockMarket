//
//  ViewController.swift
//  BlackStockMarket2
//
//  Created by Chris Toney on 5/22/19.
//  Copyright © 2019 Chris Toney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        service.request(router: Router.getReviewData) { (result: [BlackReviewData]) in
//            print(result)
//        }
        var test = ServiceLayer.request()
//        print(test[0])
        print(test[0].author)
        print(test[0].itemReviewed)
    }
}
