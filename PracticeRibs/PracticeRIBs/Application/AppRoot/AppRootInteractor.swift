//
//  AppRootInteractor.swift
//  PracticeRIBs
//
//  Created by G00332 on 16/6/2022.
//

import Foundation

import RIBs
import RxSwift

protocol AppRootRouting: ViewableRouting {
  func attachTabs()
}

protocol AppRootPresentable: Presentable {
  var listener: AppRootPresentableListener? { get set }
}

protocol AppRootListener: AnyObject {
}

final class AppRootInteractor: PresentableInteractor<AppRootPresentable>, AppRootInteractable, AppRootPresentableListener {
  
  weak var router: AppRootRouting?
  weak var listener: AppRootListener?
  
  override init(presenter: AppRootPresentable) {
    super.init(presenter: presenter)
    presenter.listener = self
  }
  
  override func didBecomeActive() {
    super.didBecomeActive()
    router?.attachTabs()
  }
  
  override func willResignActive() {
    super.willResignActive()
  }
}

extension AppRootInteractor: URLHandler {
  func handle(_ url: URL) {
    
  }
}
