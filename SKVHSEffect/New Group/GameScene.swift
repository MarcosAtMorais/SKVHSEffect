//
//  GameScene.swift
//  SKVHSEffect
//
//  Created by Marcos Morais on 28/01/19.
//  Copyright © 2019 Marcos Morais. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let background: SKSpriteNode!
    
    let vhsShader: SKShader?
    
    override func didMove(to view: SKView) {
        self.background.position = CGPoint(x: view.frame.midX, y: view.frame.midY)
        self.addChild(self.background)
        
        guard let shader = self.vhsShader else {
            return
        }
        self.background.shader = shader
    }
    
    override init(size: CGSize) {
        self.background = SKSpriteNode(imageNamed: "Mockup.png")
        self.vhsShader = SKShader(fileNamed: "VHS_Shader.fsh")
        super.init(size: size)
        
        self.vhsShader?.uniforms = [SKUniform(name: "iResolution", vectorFloat2: vector_float2(Float(self.frame.size.width), Float(self.frame.size.height))),
                                    SKUniform(name: "iChannel0", texture: background.texture)]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
