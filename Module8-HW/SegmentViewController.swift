//
//  SegmentViewController.swift
//  Module8-HW
//
//  Created by Maksim Demin on 11.05.2021.
//

import UIKit

class SegmentViewController: UIViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    var oneView = UIView()
    var twoView = UIView()
    var threeView = UIView()
    
    var oneTextField = UITextField()
    var twoTextField = UITextField()
    
    var oneButton = UIButton()
    var twoButton = UIButton()
    
    var oneImageView = UIImageView()
    var twoImageView = UIImageView()
    var oneImage = UIImage(named: "p2 2")
    var twoImage = UIImage(named: "p4 2")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        create oneView
        oneView = UIView(frame: CGRect(x: 20, y: 190, width: 374, height: 550))
        oneView.backgroundColor = .green
        oneTextField = UITextField(frame: CGRect(x: 60, y: 150, width: 260, height: 25))
        twoTextField = UITextField(frame: CGRect(x: 60, y: 190, width: 260, height: 25))
        oneTextField.backgroundColor = .gray.withAlphaComponent(0.4)
        twoTextField.backgroundColor = .gray.withAlphaComponent(0.4)
        oneTextField.textAlignment = .center
        twoTextField.textAlignment = .center
        oneTextField.placeholder = "Enter text"
        twoTextField.text = "Text #2"
        view.addSubview(oneView)
        oneView.addSubview(oneTextField)
        oneView.addSubview(twoTextField)
        oneView.isHidden = true
        
//        create twoView
        twoView = UIView(frame: CGRect(x: 20, y: 190, width: 374, height: 550))
        twoView.backgroundColor = .blue
        oneButton = UIButton(frame: CGRect(x: 60, y: 150, width: 240, height: 45))
        twoButton = UIButton(frame: CGRect(x: 60, y: 230, width: 240, height: 45))
        oneButton.backgroundColor = .yellow.withAlphaComponent(0.8)
        twoButton.backgroundColor = .yellow.withAlphaComponent(0.8)
        oneButton.setTitleColor(UIColor.blue, for: .normal)
        oneButton.setTitle(" BUTTON #1", for: .normal)
        twoButton.setTitle(" BUTTON #2", for: .normal)
        view.addSubview(twoView)
        twoView.addSubview(oneButton)
        twoView.addSubview(twoButton)
        twoView.isHidden = true
        
        
//        create threeView
        threeView = UIView(frame: CGRect(x: 20, y: 190, width: 374, height: 550))
        threeView.backgroundColor = .purple
        oneImageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 170, height: 250))
        twoImageView = UIImageView(frame: CGRect(x: 195, y: 290, width: 170, height: 250))
        oneImageView.backgroundColor = .blue
        twoImageView.backgroundColor = .blue
        oneImageView.image = oneImage
        twoImageView.image = twoImage
        
        view.addSubview(threeView)
        threeView.addSubview(oneImageView)
        threeView.addSubview(twoImageView)
        threeView.isHidden = true
    }
    
    @IBAction func showViews(_ sender: Any) {
        switch segment.selectedSegmentIndex {
        case 0:
            oneView.isHidden = false
            twoView.isHidden = true
            threeView.isHidden = true
        case 1:
            oneView.isHidden = true
            twoView.isHidden = false
            threeView.isHidden = true
        case 2:
            oneView.isHidden = true
            twoView.isHidden = true
            threeView.isHidden = false
        default:
            return
        }
    }
 
}
