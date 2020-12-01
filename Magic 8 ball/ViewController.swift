//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by jason Moses on 2018/10/02.
//  Copyright © 2018 jason Moses. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallIndex: Int = 0
    

    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImages()
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
    
    
        updateBallImages()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImages()
        
        
    }
    
    func updateBallImages() {
        
        randomBallIndex = Int.random(in : 0 ... 4)
        
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
}

}
