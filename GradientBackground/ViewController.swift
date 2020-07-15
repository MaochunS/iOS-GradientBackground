//
//  ViewController.swift
//  GradientBackground
//
//  Created by maochun on 2020/7/15.
//  Copyright © 2020 maochun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func makeGradientLayer(`for` object : UIView, startPoint : CGPoint, endPoint : CGPoint, gradientColors : [Any], round:Bool) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = gradientColors
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.frame = CGRect(x: 0, y: 0, width: object.frame.size.width, height: object.frame.size.height)
        
        if round{
            gradient.type = .radial
        }
        
        
        return gradient
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //horizontal
        //let start : CGPoint = CGPoint(x: 0.0, y: 1.0)
        //let end : CGPoint = CGPoint(x: 1.0, y: 1.0)
        
        //Vertical
        //let start : CGPoint = CGPoint(x: 1.0, y: 0.0)
        //let end : CGPoint = CGPoint(x: 1.0, y: 1.0)
        
        //45 degree
        //let start : CGPoint = CGPoint(x: 0.0, y: 0.0)
        //let end : CGPoint = CGPoint(x: 1.0, y: 1.0)
        
        //let gradient: CAGradientLayer = makeGradientLayer(for: self.view, startPoint: start, endPoint: end, gradientColors: [
        //    UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.black.cgColor])
        
        //round
        let endY = 0.5 + view.frame.size.width / view.frame.size.height / 2
        let endX = 0.5 + view.frame.size.height / view.frame.size.width / 2
        let start : CGPoint = CGPoint(x: 0.5, y: 0.5)
        let end : CGPoint = CGPoint(x: endX, y: 1.0)
        

        
        let gradient: CAGradientLayer = makeGradientLayer(for: self.view, startPoint: start, endPoint: end, gradientColors: [
            UIColor.black.cgColor, UIColor(red: 0.007843137255, green: 0.5764705882, blue: 0.8, alpha: 1).cgColor], round: true)

        self.view.layer.insertSublayer(gradient, at: 0)
    }


}

