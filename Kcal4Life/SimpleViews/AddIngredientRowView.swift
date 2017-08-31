//
//  AddIngredientRowView.swift
//  Kcal4Life
//
//  Created by Samu Mukkala on 31/08/2017.
//  Copyright © 2017 Samu Mukkala. All rights reserved.
//

import UIKit

class AddIngredientRowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }

    private func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds

        addSubview(view)

    }

    private func viewFromNibForClass() -> UIView {

        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView

        return view
    }

}
