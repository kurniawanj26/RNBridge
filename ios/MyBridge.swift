//
//  MyBridge.swift
//  RNBridge
//
//  Created by Jayadi Kurniawan on 29/03/23.
//

import Foundation
import UIKit

@objc(SimpleBridge)

class SimpleBridge: NSObject, RCTBridgeModule{
  
  static func moduleName() -> String! {
    return "SimpleBridge"
  }
  
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  // @objc utk export method ke RN
  @objc
  func DisplayText(_ text:NSString, duration:Double) -> Void {
    let popUp = UIAlertController(title: "My Popup", message: text as String, preferredStyle: .alert)
    let seconds: Double = duration
    popUp.view?.backgroundColor = .blue
    popUp.view?.alpha = 0.5
    popUp.view.layer.cornerRadius = 50
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(popUp, animated: true, completion: nil)
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds , execute:{
      popUp.dismiss(animated: true, completion: nil)
    })
  }
}
