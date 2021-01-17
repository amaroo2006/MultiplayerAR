//
//  ViewController.swift
//  MultiPlayerAR
//
//  Created by Ansh Maroo on 11/29/19.
//  Copyright © 2019 Mygen Contac. All rights reserved.
//

import UIKit
import RealityKit
import MultipeerHelper
import ARKit
class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    var multipeerHelp: MultipeerHelper!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.multipeerHelp = MultipeerHelper(
          serviceName: "helper-test",
          sessionType: .both
        )
        
        self.arView.scene.synchronizationService = multipeerHelp.syncService
        
        let config = ARWorldTrackingConfiguration()
        config.isCollaborationEnabled = true
        config.frameSemantics = .personSegmentationWithDepth
        config.isCollaborationEnabled = true
        arView.session.run(config)
        

        
        let box = CustomBox(color: .green, position: [0,1,-1])
        
        arView.installGestures(for: box)
        arView.scene.addAnchor(box)
    }
    
    
    
}
