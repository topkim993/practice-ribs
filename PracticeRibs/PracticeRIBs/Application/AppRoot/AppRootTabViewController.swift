//
//  AppRootTabViewController.swift
//  PracticeRIBs
//
//  Created by G00332 on 16/6/2022.
//

import RIBs
import RxSwift
import UIKit

protocol AppRootPresentableListener: AnyObject {
}

final class AppRootTabViewController: UITabBarController, AppRootPresentable {
 
  weak var listener: AppRootPresentableListener?
  
  override func viewDidLoad() {
    view.backgroundColor = .green
  }
}

extension AppRootTabViewController: AppRootViewControllable {
  func setViewControllers(_ viewControllers: [ViewControllable]) {
    super.setViewControllers(
      viewControllers.map(\.uiviewController),
      animated: false
    )
  }
}
