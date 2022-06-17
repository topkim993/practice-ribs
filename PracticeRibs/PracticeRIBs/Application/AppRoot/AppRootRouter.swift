//
//  AppRootRouter.swift
//  PracticeRIBs
//
//  Created by G00332 on 16/6/2022.
//

import RIBs

import FinanceHome

protocol AppRootInteractable: Interactable,
                              FinanceHomeListener {
  var router: AppRootRouting? { get set }
  var listener: AppRootListener? { get set }
}

protocol AppRootViewControllable: ViewControllable {
  func setViewControllers(_ viewControllers: [ViewControllable])
}

final class AppRootRouter: LaunchRouter<AppRootInteractable, AppRootViewControllable> {
  
  private let financeHomeBuildable: FinanceHomeBuildable
  
  init(
    interactor: AppRootInteractable,
    viewController: AppRootViewControllable,
    financeHomeBuildable: FinanceHomeBuildable
  ) {
    self.financeHomeBuildable = financeHomeBuildable
    
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}

extension AppRootRouter: AppRootRouting {
  func attachTabs() {
    let financeHome = financeHomeBuildable.build(withListener: interactor)
    
    attachChild(financeHome)
    
    viewController.setViewControllers(
      [
        financeHome.viewControllable
      ]
    )
  }
}
