//
//  StackElementViewController.swift
//  StackedMenu
//
//  Created by Fredrick Ohen on 3/7/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class StackElementViewController: UIViewController {

  @IBOutlet weak var headerLabel: UILabel!
  
  var headerString: String? {
    didSet {
      configureView()
      
    }
  }

  override func viewDidLoad() {
        super.viewDidLoad()

    }
  
  func configureView() {
    headerLabel.text = headerString
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
