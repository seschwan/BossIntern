//
//  ViewController.swift
//  InternBoss
//
//  Created by Mac Mini on 5/4/19.
//  Copyright © 2019 Mac Mini. All rights reserved.
//

import UIKit

class InternViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseSideBtn(_ sender: Any) {
        let boss = storyboard?.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        boss.chooseDelegate = self
        present(boss, animated: true, completion: nil)
    }
    
}

extension InternViewController: ChooseASideDelegate {
    func chooseASide(for label: String) {
        statusLabel.text = label
        print(label)
    }
    
    
    
    
}
