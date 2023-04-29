//
//  ViewController.swift
//  dmkenkadai11
//
//  Created by tsutsumi kenji on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitSegue(segue:UIStoryboardSegue){
        switch segue.identifier {
        case "exitSegue": guard let secondViewController = segue.source as? SecondViewController else { return }
            resultLabel.text = secondViewController.choicePrefecterResult
        default: return
        }
    }
}


