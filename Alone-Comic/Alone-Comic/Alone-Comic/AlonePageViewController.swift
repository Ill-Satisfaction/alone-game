//
//  AlonePageViewController.swift
//  Alone-Comic
//
//  Created by XCodeClub on 2020-04-22.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit

class AlonePageViewController: UIPageViewController {
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p1_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "GreenViewController")
        ]
    }()
    
    
    //  ---
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        // load first panel
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                animated: true,
                completion: nil)
        }
    }
    
}


//


extension AlonePageViewController : UIPageViewControllerDataSource {
    
    // find prev
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    // find next
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                return nil
        }
                
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
                
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
                
        return orderedViewControllers[nextIndex]
    }
}
