//
//  MainViewController.swift
//  Kcal4Life
//
//  Created by Samu Mukkala on 31/08/2017.
//  Copyright © 2017 Samu Mukkala. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var ingredients: [Ingredient] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        title = "Kcal4Life"
        
        testFoods()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func testFoods() {
        for i in  0...9 {
           var ingredient = Ingredient()
            ingredient.name = "Food\(i)"
            ingredient.carbs = 10
            ingredient.fat = 20
            ingredient.kcal = 100
            ingredient.protein = 5
            ingredients.append(ingredient)
        }
    }


}

