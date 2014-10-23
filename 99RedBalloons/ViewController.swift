//
//  ViewController.swift
//  99RedBalloons
//
//  Created by User  on 2014-10-22.
//  Copyright (c) 2014 Wub.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImageView: UIImageView!
    @IBOutlet weak var ballonsLabel: UILabel!
    var balloonArray:[Balloon] = []
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateBalloons()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func balloonNextButton(sender: UIBarButtonItem) {
        if count < 99
        {
            balloonImageView.image = balloonArray[count].image
            ballonsLabel.text = "\(balloonArray[count++].number)"
        }
        else
        {
            count = 0
        }
    }

    
    func generateBalloons(){
        
        
        for i in 0...99{
            
            var balloon = Balloon()
            balloon.number = i + 1
            
            var randomNumber:Int = Int(arc4random_uniform((4)))
            
            switch randomNumber{
            case 4:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            case 3:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            case 2:
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            case 1:
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            default:
                balloon.image = UIImage(named: "BerlinTVTower.jpg")
                
            }
            
            self.balloonArray.append(balloon)
        }

    }
}

