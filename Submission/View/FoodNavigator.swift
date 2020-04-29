//
//  FoodNavigator.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import Foundation
import UIKit

final class FoodNavigator {
    
    private weak var navigationController : UINavigationController?
       
    init(navigationController : UINavigationController?) {
        self.navigationController = navigationController
    }
        
    func goToDetail(_ foodData: FoodModel){
        let foodDetailVC = FoodDetailViewController(foodData)
        UIApplication.topViewController()?.navigationController?.pushViewController(foodDetailVC, animated: true)
    }
    
    func goToProfile(){
        let profileVC = ProfileViewController()
        UIApplication.topViewController()?.navigationController?.pushViewController(profileVC, animated: true)
    }
}
