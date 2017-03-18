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
  
  
  func addViewController (atOffset offset: CGFloat, dataForVC data: AnyObject?) -> UIView? {
    
    let frameForView = self.view.bounds.offsetBy(dx: 0, dy: self.view.bounds.size.height - offset)
    let sb = UIStoryboard(name: "Main", bundle: nil)
    let stackElementVC = sb.instantiateViewController(withIdentifier: "StackElement") as! StackElementViewController
    
    if let view = stackElementVC.view {
      view.frame = frameForView
      view.layer.cornerRadius = 5
      view.layer.shadowOffset = CGSize(width: 5, height: 5)
      view.layer.shadowColor = UIColor.black.cgColor
      view.layer.shadowRadius = 3
      view.layer.shadowOpacity = 0.5
      
  
    }

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
