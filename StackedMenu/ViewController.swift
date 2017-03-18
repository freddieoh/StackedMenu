//
//  ViewController.swift
//  StackedMenu
//
//  Created by Fredrick Ohen on 3/7/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let data = ["Modern Workspace", "West Coast Style Living", "Relaxed Environment"]
  
  var views: [UIView] = []
  var animator: UIDynamicAnimator?
  var gravity: UIGravityBehavior?
  var snap: UISnapBehavior?
  var previousTouchPoint: CGPoint?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}

