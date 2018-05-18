//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ginny Munson on 5/17/18.
//  Copyright © 2018 Ginny Munson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallIndex : Int = 0

    @IBOutlet weak var magicBallImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImages()
    }
    
    func updateBallImages() {
        randomBallIndex = Int(arc4random_uniform(5))
        
        magicBallImage.image = UIImage(named: ballArray[randomBallIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }
}

