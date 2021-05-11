//
//  ViewController.swift
//  Module8-HW
//
//  Created by Maksim Demin on 09.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vvv: UIImageView!
    
    var i = 0
    
    @IBOutlet weak var labelIndex: UILabel!
    
    var logoImage: [UIImage] = [UIImage(named: "l3")!,
                                UIImage(named: "l2")!,
                                UIImage(named: "l4")!,
                                UIImage(named: "l6")!]
    
    
    @IBAction func showNextImage(_ sender: UIButton) {
        
        if i < logoImage.count - 1 {
            plusIndex()
        vvv.image = logoImage[i]
            labelIndex.text = "page \(i + 1)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vvv.image = logoImage[0]
        labelIndex.text = "page 1"
    }


    @IBAction func goHome(_ sender: Any) {
        vvv.image = logoImage[0]
        i = 0
        labelIndex.text = "page 1"
    }
    
    @IBAction func prevImage(_ sender: Any) {
        if i > 0 {
            minusIndex()
        vvv.image = logoImage[i]
            labelIndex.text = "page \(i + 1)"
        }
    }
    
    func plusIndex() {
        i+=1
    }
    
    func minusIndex() {
        i-=1
    }
}

