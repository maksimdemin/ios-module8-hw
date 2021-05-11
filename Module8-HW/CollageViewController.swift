//
//  CollageViewController.swift
//  Module8-HW
//
//  Created by Maksim Demin on 10.05.2021.
//

import UIKit

class CollageViewController: UIViewController {
    
    let randomInt = Int.random(in: 0..<5)
    
    var myView = UIImageView()
    var myLabel = UILabel()

    var currentXForView: CGFloat = 20
    var currentYForView: CGFloat = 90
    var widthForView: CGFloat = 185
    var heightForView: CGFloat = 337
    
    var currentXForLabel: CGFloat = 20
    var currentYForLabel: CGFloat = 406
    var widthForLabel: CGFloat = 185
    var heightForLabel: CGFloat = 21

    
    var imageArray: [UIImage] = [UIImage(named: "p5 2")!, UIImage(named: "p3 2")!, UIImage(named: "pl3")!, UIImage(named: "pl4")!, UIImage(named: "pl2")!, UIImage(named: "p8 2")!]
    
    var labelArray: [String] = ["Перцы", "Ежевика", "Драгонфрут", "Грецкий орех", "Джеконфрут", "Броколли"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        for i in 0...3 {
            
            myView = UIImageView(frame: CGRect(x: currentXForView, y: currentYForView, width: widthForView, height: heightForView))
            myLabel = UILabel(frame: CGRect(x: currentXForLabel, y: currentYForLabel, width: widthForLabel, height: heightForLabel))
            
            myView.image = imageArray[i]
            myView.contentMode = .scaleToFill
            myLabel.textAlignment = .center
            myLabel.backgroundColor = .gray.withAlphaComponent(0.4)
            myLabel.text = labelArray[i]
            view.addSubview(myView)
            view.addSubview(myLabel)

            if i % 2 == 0 {
                currentXForView += widthForView + 10
                currentXForLabel += widthForLabel + 10
            }
            else {
                currentYForView += heightForView + 10
                currentXForView = 20
                currentYForLabel += heightForLabel + 325
                currentXForLabel = 20
            }
        }
    }
}
