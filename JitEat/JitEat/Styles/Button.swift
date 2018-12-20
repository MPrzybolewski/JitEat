//
//  Button.swift
//  JitEat
//
//  Created by Marek Przybolewski on 19/12/2018.
//  Copyright © 2018 Marek Przybolewski. All rights reserved.
//

import MaterialComponents

class Button : MDCButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        let buttonScheme = MDCButtonScheme()
        let colorScheme = MDCSemanticColorScheme()
        
        colorScheme.primaryColor = Constants.Color.White
        colorScheme.backgroundColor = Constants.Color.Shadow
        
        buttonScheme.colorScheme = colorScheme
        
        MDCOutlinedButtonThemer.applyScheme(buttonScheme, to: self)
    }
    
}
