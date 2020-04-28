//
//  FoodViewModel.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

final class FoodViewModel: ViewModelType {
    
    public struct Input {
        let refreshTrigger: Driver<Void>
    }
    
    public struct Output {
        let data: Driver<[FoodResponseWrapper]>
    }
    
    func transform(input: FoodViewModel.Input) -> FoodViewModel.Output {
        let foodData = input.refreshTrigger.flatMapLatest{ _ -> Driver<[FoodResponseWrapper]> in
    
            let foodTarget = FoodTarget.instance
            let foodData = foodTarget.getFoodList()
            
            var arrData: [FoodResponseWrapper] = []
            var tempValues: [String] = []
            
            for food in foodData {
                var tempFood = FoodResponseWrapper(foodName: "", foodDesc: "", foodPrice: "", foodRating: "", foodImage: "")
                
                tempValues.append(food["foodName"]!)
                tempValues.append(food["foodDesc"]!)
                tempValues.append(food["foodPrice"]!)
                tempValues.append(food["foodRating"]!)
                tempValues.append(food["foodImage"]!)
                
                tempFood.foodName = tempValues[0]
                tempFood.foodDesc = tempValues[1]
                tempFood.foodPrice = tempValues[2]
                tempFood.foodRating = tempValues[3]
                tempFood.foodImage = tempValues[4]
                
                tempValues = []
                arrData.append(tempFood)
            }
            return Driver.of(arrData)
        }
        
        return Output(
            data: foodData
        )
    }
}
