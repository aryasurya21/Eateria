//
//  FoodTableViewCell.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import UIKit
import SDWebImage

class FoodTableViewCell: UITableViewCell {
   
    @IBOutlet weak var imageAvatar: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 6
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 8, bottom: 10, right: 8))
    }

    public func setCell(_ data: FoodModel){
        self.foodNameLabel.text = data.foodName ?? ""
        self.foodPriceLabel.text = data.foodPrice ?? ""
        self.imageAvatar.sd_setImage(with: URL(string: data.foodImage ?? ""), placeholderImage: #imageLiteral(resourceName: "food"))
    }
    
}
