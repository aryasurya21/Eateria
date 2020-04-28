//
//  FoodTarget.swift
//  Submission
//
//  Created by IT Division on 28/04/20.
//  Copyright © 2020 com.aryasurya. All rights reserved.
//

public class FoodTarget {
    static let instance = FoodTarget()
    private init(){}
    private var foodData: [[String: String]] = [
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ],
        [
            "foodName": "Nasi Goreng",
            "foodDesc": "Nasi Goreng merupakan nasi yang digoreng",
            "foodPrice": "Rp. 19.000",
            "foodRating": "4/5",
            "foodImage": "http://www.dapurkobe.co.id/wp-content/uploads/nasi-goreng-kencur-kemangi.jpg"
        ]
    ]
    
    public func getFoodList() -> [[String: String]] {
        return self.foodData
    }
}




