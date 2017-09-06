//
//  MainViewController.swift
//  Kcal4Life
//
//  Created by Samu Mukkala on 31/08/2017.
//  Copyright © 2017 Samu Mukkala. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var creationContainer: UIView!
    @IBOutlet weak var addIngredientContainer: UIView!
    @IBOutlet weak var createIngredientContainer: UIView!
    

    var ingredients: [Ingredient] = []

    enum SegmentVisible: Int {
        case add = 0
        case create = 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Kcal4Life"

        createIngredientContainer.isHidden = true
        

        testFoods()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedControlAction(_ sender: Any) {
        guard let visibleView = SegmentVisible.init(rawValue: segmentedControl.selectedSegmentIndex) else { return }

        showSegmented(view: visibleView)
    }

    private func showSegmented(view: SegmentVisible) {
        switch view {
        case SegmentVisible.add:
            addIngredientContainer.isHidden = false
            createIngredientContainer.isHidden = true
        case SegmentVisible.create:
            addIngredientContainer.isHidden = true
            createIngredientContainer.isHidden = false
        }
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

