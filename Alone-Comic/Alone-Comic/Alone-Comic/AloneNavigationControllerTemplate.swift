//
//  AloneNavigationControllerTemplate.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 5/2/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit

class AloneNavigationControllerTemplate: UINavigationController {
    
    // set all subpanels IN ORDER
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
           // UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_1_a")
        ]
    }()
    
    private var totalPanels : Int = -1
    
    private var currPanel : Int = 0
    
    func addSubPanel(View: UIViewController ){
        orderedViewControllers.append(View)
        totalPanels+=1
        print(orderedViewControllers)
       // print (totalPanels)
       // print (currPanel)
        
        
    }
    
    
    
    
    
    
    
    @objc func goForward() {
        print(orderedViewControllers)
        print (totalPanels)
        print (currPanel)
        if currPanel==totalPanels {
            print (totalPanels)
            print (currPanel)
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
