//
//  ViewController.swift
//  Alone-Comic
//
//  Created by Adam Azevedo on 4/17/20.
//  Copyright © 2020 250_DreamTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // backgroundImageView.image = imageResize(imageObj:  UIImage(named: "Kitchen extended" )!, sizeChange: <#T##CGSize#>())
        VStack {
            GeometryReader { geo in
                Image("Example")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
        self.view.backgroundColor = UIColor.black

    }
    
    func imageResize(imageObj:UIImage, sizeChange:CGSize)-> UIImage {

        let hasAlpha = false
        let origin: CGPoint = CGPoint(x: 0, y: 0)
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen

        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        imageObj.draw(in: CGRect(origin: origin, size: sizeChange))

        guard let scaledImage = UIGraphicsGetImageFromCurrentImageContext() else { return <#default value#> }
        UIGraphicsEndImageContext() // !!!
        return scaledImage
    }
    
    


}

