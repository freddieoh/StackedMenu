//
//  ViewController.swift
//  StackedMenu
//
//  Created by Fredrick Ohen on 3/7/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let data = ["Modern Workspace", "West Coast Style Lifestyle", "Relaxed Environment"]
  
  var views: [UIView] = []
  var animator: UIDynamicAnimator!
  var gravity: UIGravityBehavior!
  var snap: UISnapBehavior!
  var previousTouchPoint: CGPoint?
  var viewDragging = false
  var viewPinned = false

  override func viewDidLoad() {
    super.viewDidLoad()

    addAnimator()
    createGravity()
  }
  
  
  func addViewController (atOffset offset: CGFloat, dataForVC: AnyObject?) -> UIView? {
    return nil
  }
  
  func addAnimator() {
    animator = UIDynamicAnimator(referenceView: self.view)
    animator.addBehavior(gravity)

  }
  
  func createGravity() {
    gravity = UIGravityBehavior()
    gravity.magnitude = 5
  }

}
