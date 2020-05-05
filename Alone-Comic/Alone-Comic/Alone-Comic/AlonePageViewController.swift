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
import AVFoundation

class AlonePageViewController: UIPageViewController {
    
    //  fields
    
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [
            //Title Screen
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AloneDoor"),
            //UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Door1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "TitleScreen_screen"),
            // Day 1
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Day1_screen"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_1"),
            //UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_5"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_6"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p2_7"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p3_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p3_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p3_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p3_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p4_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p4_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p4_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p4_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p5_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p5_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p5_3"),
           //UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Door1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p6_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p7_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p7_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p7_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p7_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p8_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p8_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p8_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p8_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p9_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d1_p9_2"),
            // Day 2
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Day2_screen"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p10_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p10_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p10_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p11_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p11_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p11_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p11_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p12_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p12_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p12_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p12_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p13_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p13_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p13_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p13_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AR"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p14_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p14_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p14_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p15_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p15_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p15_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d2_p15_4"),
            // Day 3
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Day3_screen"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p16_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p16_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p17_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p17_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p17_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p17_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p18_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p18_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p18_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p18_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p19_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AR_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p19_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p19_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p20_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p20_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AR_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p20_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p1_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p2_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p2_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p2_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p2_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p3_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p3_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p3_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d3_p3_4"),
            // Day 4
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Day4_screen"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p4_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p4_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p4_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p5_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p5_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p5_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p5_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p6_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p6_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p6_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p6_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p7_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p7_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p7_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p8_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p8_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p8_5"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p8_6"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p8_7"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p9_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p9_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p9_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p9_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_5"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_6"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p10_7"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p11_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d4_p11_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AR_4"),
            // Day 5
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "Day5_screen"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p12_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p12_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p13_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p13_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p13_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p13_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p14_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p14_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p14_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p14_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p15_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p15_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p15_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p16_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p16_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p16_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p16_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p17_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "climax_animation"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p20_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p20_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p20_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p20_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p20_5"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p1_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p1_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p1_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p1_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_4"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_5"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_6"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p2_7"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p3_1"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p3_2"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "d5_p3_3"),
            UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(withIdentifier: "AR_5")
            
            
            
            
            
        ]
    }()
    
    
    //music
    lazy var audioPlayer = AVAudioPlayer()

    
    //  methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        dataSource = self
        
        let sound = Bundle.main.path(forResource: "Jay-Lounge - Alone", ofType: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            //audioPlayer.set(numberOfLoops) = -1
            audioPlayer.numberOfLoops = 100
            audioPlayer.play()
        }
        catch{
            print(error)
        }
        
        
        

        
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
