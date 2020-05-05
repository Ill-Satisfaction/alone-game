//
//  AR_Test_3_UIViewController.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/4/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit
import ARKit

class AR_Test_3_UIViewController: UIViewController {


    
    
    @IBOutlet weak var AloneAR2: ARSCNView!
    let config = ARWorldTrackingConfiguration()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    AloneAR2.session.run(config)
}


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
