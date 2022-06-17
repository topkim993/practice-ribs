//
//  SuperButton+Rx.swift
//  
//
//  Created by G00332 on 17/6/2022.
//

import UIKit

import RxCocoa
import RxSwift

public extension Reactive where Base: SuperButton {
  var tap: ControlEvent<Void> {
    controlEvent(.touchUpInside)
  }
}
