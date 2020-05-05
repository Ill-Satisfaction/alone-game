//
//  d5_p14_4_UIView.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/4/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit

class d5_p14_4_UIView: UINavigationController {
    
    // set all subpanels IN ORDER
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p14_4_a")
        ]
    }()
    
    private var currPanel : Int = 0
    
    
    
    override func viewDidLoad() {
        //  initialize screen
        super.viewDidLoad()
        self.setNavigationBarHidden(true, animated: false)
        
        
        //  load first panel
        self.goForward()
        
        
        
        
        
        
        
        //  --------------------------------
        //  THIS SECTION IS CHANGED FROM PANEL TO PANEL,
        //  DEPENDING ON WHAT WE NEED
        //  --------------------------------
        
        
        //  --------------------------------
        
        
        
        
        
        
        
        
    }
    
    @objc func goForward() {
        if currPanel==orderedViewControllers.count {
            print ("hit the wall")
            return
        }
        
        self.pushViewController(orderedViewControllers[currPanel], animated: true)
        currPanel+=1
    }
    
    func goBack() {
        if currPanel==0 {
            return
        }
        
        self.popViewController( animated: true )
        currPanel-=1
    }
    
}
