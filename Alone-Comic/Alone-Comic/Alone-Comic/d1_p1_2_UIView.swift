//
//  d1_p1_2_UIView.swift
//  Alone-Comic
//
//  Created by XCodeClub on 2020-04-23.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit

class d1_p1_2_UIView: AloneNavigationControllerTemplate {
    
    
    
    // set all subpanels IN ORDER
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationBarHidden(true, animated: false)
        self.addSubPanel(View: UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_2_a"))
        self.addSubPanel(View: UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_2_b"))
        self.addSubPanel(View: UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_2_c"))
        self.addSubPanel(View: UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_2_d"))
     
            
       
            
            //  load first panel
        self.goForward()
        
    
}
}
