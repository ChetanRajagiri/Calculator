//
//  ViewController.swift
//  calc
//
//  Created by chetan rajagiri on 05/09/17.
//  Copyright © 2017 chetan rajagiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var labelNumber: Double = 0
    var previousNumber:Double = 0
    var functioning = false
    var operatorPerforming = 0

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var entryLbl: UILabel!
    @IBOutlet weak var vvvvview: UIView!
    @IBOutlet weak var trigOl: UIView!
    @IBOutlet weak var sinLabel: UIButton!
    @IBOutlet weak var coslbl: UIButton!
    @IBOutlet weak var tanLbl: UIButton!
    @IBOutlet weak var cotLbl: UIButton!
    @IBOutlet weak var secLbl: UIButton!
    @IBOutlet weak var cscLbl: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clearLongPrsd(_ sender: UILongPressGestureRecognizer) {
    entryLbl.text = ""
    }
    @IBAction func longPressTrig(_ sender: UILongPressGestureRecognizer) {
        switch sender.state {
        case .began:
            UIView.animate(withDuration: 1, animations: {
                self.trigOl.isHidden = false
            })
        case .ended:
            let point: CGPoint = sender.location(in: trigOl)
            if sinLabel.frame.contains(point) {
                print("sinnn")
                self.trigOl.isHidden = true
            }
            if cotLbl.frame.contains(point) {
                print("cot")
                self.trigOl.isHidden = true
            }
          self.trigOl.isHidden = true
        default:
            break
        }

    }
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if  entryLbl.text == "Pss..try hold-pressing this button ->"  || functioning == true {
            entryLbl.text = String(sender.tag - 1)
            labelNumber = Double (entryLbl.text!)!
            functioning = false
        } else {
            entryLbl.text = entryLbl.text! + String(sender.tag-1)
            labelNumber = Double (entryLbl.text!)!
        }
    }

    @IBAction func functions(_ sender: UIButton)
    {
        if entryLbl.text != "" && entryLbl.text != "Pss..try hold-pressing this button ->" && sender.tag != 15 {
            previousNumber = Double (entryLbl.text!)!
            switch sender.tag {
            case 11:
                entryLbl.text = entryLbl.text! + "÷"
            case 12:
                entryLbl.text = entryLbl.text! + "x"
            case 13:
                entryLbl.text = entryLbl.text! + "-"
            case 14:
                entryLbl.text = entryLbl.text! + "+"
            default:
                break
            }
            operatorPerforming = sender.tag
            functioning = true
            
        }
        else  if entryLbl.text != "" && entryLbl.text != "Pss..try hold-pressing this button ->" && sender.tag == 15 {
        
            switch operatorPerforming {
            case 14:
                entryLbl.text = String (previousNumber + labelNumber)
            case 13:
                entryLbl.text = String (previousNumber - labelNumber)
            case 12:
                entryLbl.text = String (previousNumber * labelNumber)
            case 11:
                entryLbl.text = String (previousNumber / labelNumber)
            default:
                break
            }
            
    }
    }
}

















