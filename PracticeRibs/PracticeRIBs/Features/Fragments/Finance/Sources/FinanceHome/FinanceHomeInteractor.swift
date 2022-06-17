//
//  FinanceHomeInteractor.swift
//  PracticeRIBs
//
//  Created by G00332 on 17/6/2022.
//

import RIBs
import RxSwift

public protocol FinanceHomeRouting: ViewableRouting {
}

protocol FinanceHomePresentable: Presentable {
  var listener: FinanceHomePresentableListener? { get set }
}

public protocol FinanceHomeListener: AnyObject {
}

final class FinanceHomeInteractor:
  PresentableInteractor<FinanceHomePresentable>,
  FinanceHomeInteractable,
  FinanceHomePresentableListener {
  
  weak var router: FinanceHomeRouting?
  weak var listener: FinanceHomeListener?
  
  override init(presenter: FinanceHomePresentable) {
    super.init(presenter: presenter)
    presenter.listener = self
  }
  
  override func didBecomeActive() {
    super.didBecomeActive()
  }
  
  override func willResignActive() {
    super.willResignActive()
    
  }
}
