//
//  ViewController.swift
//  FunFactv2
//
//  Created by Timothy Hoover on 6/23/17.
//  Copyright © 2017 Timothy Hoover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FactLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FactLabel.text = randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMore() {
        FactLabel.text = randomFact()
    }

    @IBAction func shareButton(_ sender: Any) {
        let activity = UIActivityViewController(activityItems: ["I just learned that:", FactLabel.text," via the Fun Fact app!"], applicationActivities: nil)
        activity.popoverPresentationController?.sourceView = self.view
        
        self.present(activity, animated: true, completion: nil)
    }
}

