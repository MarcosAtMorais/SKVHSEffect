//
//  GameScene.swift
//  SKVHSEffect
//
//  Created by Marcos Morais on 28/01/19.
//  Copyright © 2019 Marcos Morais. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    unowned var background: SKSpriteNode {
        return SKSpriteNode(imageNamed: "Mockup.png")
    }
    
    override func didMove(to view: SKView) {
        self.background.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
        self.background.setScale(2.0)
        
        self.addChild(self.background)
    }
    
}
