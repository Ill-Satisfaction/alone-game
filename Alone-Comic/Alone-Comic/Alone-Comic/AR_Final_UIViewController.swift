//
//  AR_Final_UIViewController.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/5/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit
import ARKit

class AR_Final_UIViewController: UIViewController {


    @IBOutlet weak var ARFinal: ARSCNView!
    let config = ARWorldTrackingConfiguration()
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    ARFinal.session.run(config)
}


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}
