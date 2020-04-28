//
//  FoodDetailViewController.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    private var foodData: FoodResponseWrapper
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    public init(_ foodData: FoodResponseWrapper){
        self.foodData = foodData
        print("wkwkkw")
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
