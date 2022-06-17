//
//  AppRootViewController.swift
//  PracticeRIBs
//
//  Created by G00332 on 16/6/2022.
//

import RIBs
import RxSwift
import UIKit

import FinanceHome

protocol AppRootPresentableListener: AnyObject {
    
}

final class AppRootViewController: UIViewController, AppRootPresentable, AppRootViewControllable {
    
    weak var listener: AppRootPresentableListener?
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        
        FinanceHomeVO()
    }
}
