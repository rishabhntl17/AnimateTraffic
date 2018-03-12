//
//  ViewController.swift
//  AnimateTraffic
//
//  Created by Appinventiv on 3/10/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lightViewRadius = redView.bounds.width/2
        redView.layer.cornerRadius = lightViewRadius
        yellowView.layer.cornerRadius = lightViewRadius
        greenView.layer.cornerRadius = lightViewRadius
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 1, animations: {
            self.redView.backgroundColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)
            self.yellowView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }) { (success : Bool) in
            if success
            {
                UIView.animate(withDuration: 1, animations: {
                    self.yellowView.backgroundColor = #colorLiteral(red: 0.7233663201, green: 0.7233663201, blue: 0.7233663201, alpha: 1)
                    self.greenView.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
                })
            }
            
        }
        
        UIView.animate(withDuration: 5.0, delay: 3, options: .curveEaseIn, animations: {
            self.imageView1.transform = CGAffineTransform(translationX: 0, y: -(self.imageView1.center.x ))
            self.imageView2.transform = CGAffineTransform(translationX: 0, y: -(self.imageView1.center.x))
            self.imageView3.transform = CGAffineTransform(translationX: 0, y: -(self.imageView1.center.x))
            self.imageView4.transform = CGAffineTransform(translationX: 0, y: -(self.imageView1.center.x))
        }, completion: nil)
        
        UIView.animate(withDuration: 3.5, delay: 3, options: .curveEaseIn, animations: {
            self.imageView1.bounds = CGRect(x: self.imageView1.center.x, y: self.imageView1.center.y, width: 0, height: 0)
        }, completion: nil)
        UIView.animate(withDuration: 4, delay: 3, options: .curveEaseIn, animations: {
            self.imageView2.bounds = CGRect(x: self.imageView2.center.x, y: self.imageView2.center.y, width: 0, height: 0)
        }, completion: nil)
        UIView.animate(withDuration: 4.5, delay: 3, options: .curveEaseIn, animations: {
            self.imageView3.bounds = CGRect(x: self.imageView3.center.x, y: self.imageView3.center.y, width: 0, height: 0)
        }, completion: nil)
        UIView.animate(withDuration: 5, delay: 3, options: .curveEaseIn, animations: {
            self.imageView4.bounds = CGRect(x: self.imageView4.center.x, y: self.imageView4.center.y, width: 0, height: 0)
        }, completion: nil)
        view.layoutIfNeeded()
    }


}

