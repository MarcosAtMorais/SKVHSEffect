//
//  GameScene + TouchEvents.swift
//  SKVHSEffect
//
//  Created by Marcos Morais on 28/01/19.
//  Copyright © 2019 Marcos Morais. All rights reserved.
//

import SpriteKit

/**
 
 Touch Event methods
 
 */

extension GameScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.background.shader = nil;
        self.background.setScale(0.65)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.background.shader = self.vhsShader
        self.background.setScale(1.0)
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
}
