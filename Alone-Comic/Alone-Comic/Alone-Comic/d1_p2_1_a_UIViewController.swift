//
//  d1_p1_2_a_UIViewController.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/2/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit
import Foundation
class d1_p2_1_a_UIView: UIViewController {
     
    let parentVC = UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_1") as! AloneNavigationControllerTemplate
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBAction func nextButtonAction(_ sender: Any){
        parentVC.goForward()
    }
    
    
       
    
   // override func viewDidLoad(){
     //   parentVC =
    
   // }
}
    
