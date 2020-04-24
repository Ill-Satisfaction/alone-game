//
//  AlonePageViewController.swift
//  Alone-Comic
//
//  Created by akiah tullis on 2020-04-22.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//
//
//  basic structure adapted from https://spin.atomicobject.com/2015/12/23/swift-uipageviewcontroller-tutorial/
//
//

import UIKit

class AlonePageViewController: UIPageViewController {
    
    //  fields
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_2")
        ]
    }()
    
    
    
    
    //  methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        dataSource = self
        
        // load first panel
        if let firstViewController = orderedViewControllers.first {
            setViewControllers ( [firstViewController],
                                 direction: .forward,
                                 animated: true,
                                 completion: nil )
        }
    }
    
    
}

//  ---






//  ---
//  allows loading data from the set created in fields
//  ---

extension AlonePageViewController : UIPageViewControllerDataSource {
    
    //  ---
    //  find prev
    //  ---
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        //  fields
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        
        // returns nil if there are none previous
        guard previousIndex >= 0 else {
            return nil
        }
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        // returns previous
        return orderedViewControllers[previousIndex]
    }
    
    
    
    //  ---
    //  find next
    //  ---
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        //  fields
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                return nil
        }
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        //  returns nil if there are none next
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
           
        //  returns next
        return orderedViewControllers[nextIndex]
    }
}
