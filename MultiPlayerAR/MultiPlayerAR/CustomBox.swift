//
//  CustomBox.swift
//  MultiPlayerAR
//
//  Created by Ansh Maroo on 11/29/19.
//  Copyright © 2019 Mygen Contac. All rights reserved.
//
import RealityKit
import UIKit

class CustomBox: Entity, HasModel, HasCollision, HasAnchoring {
      init(color: UIColor, position: SIMD3<Float>) {
        super.init()
        self.components[ModelComponent] = ModelComponent(
            mesh: .generateBox(size: [0.2, 0.2, 0.2]),
          materials: [SimpleMaterial(
            color: color,
            isMetallic: false)
          ]
        )
        self.generateCollisionShapes(recursive: true)
        
        self.components[CollisionComponent] = CollisionComponent(
            shapes: [.generateBox(size: [0.2, 0.2, 0.2])]
        )
      }
    
    
    
    required init() {
        super.init()
    }
    
    
    
}
