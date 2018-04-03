//
//  ViewController.swift
//  Alien View03
//
//  Created by D7703_19 on 2018. 4. 3..
//  Copyright © 2018년 D7703_19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var de = true
    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var lbl01: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫 번째 이미지가 출력
        alienImageView.image = UIImage(named: "frame1.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateImage(_ sender: Any) {
        
        
        if counter == 5 {
            de = false
        } else if counter == 1 {
            de = true
        }
        
        if de == false {
            counter = counter - 1
            
        } else {
            counter = counter + 1
        }
        alienImageView.image = UIImage(named: "frame\(counter).png")
        lbl01.text = "\(counter)"
        
        
    }
    
}

