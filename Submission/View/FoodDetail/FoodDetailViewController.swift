//
//  FoodDetailViewController.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
   
    @IBOutlet weak var foodDesc: UILabel!
    @IBOutlet weak var foodRating: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    
    private var foodData: FoodModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setData()
    }

    public init(_ foodData: FoodModel){
        self.foodData = foodData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setData(){
        self.foodNameLabel.text = self.foodData.foodName ?? ""
        self.foodDesc.text = self.foodData.foodDesc ?? ""
        self.foodPrice.text = self.foodData.foodPrice ?? ""
        self.foodRating.text = self.foodData.foodRating ?? ""
        self.foodImage.sd_setImage(with: URL(string: "\(self.foodData.foodImage ?? "")"), placeholderImage: #imageLiteral(resourceName: "food"))
        self.foodImage.makeRounded()
    }
}
