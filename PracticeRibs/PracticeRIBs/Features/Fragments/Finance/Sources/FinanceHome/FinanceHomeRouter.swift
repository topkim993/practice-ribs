//
//  FinanceHomeRouter.swift
//  PracticeRIBs
//
//  Created by G00332 on 17/6/2022.
//

import RIBs

protocol FinanceHomeInteractable: Interactable {
  var router: FinanceHomeRouting? { get set }
  var listener: FinanceHomeListener? { get set }
}

protocol FinanceHomeViewControllable: ViewControllable {
}

final class FinanceHomeRouter: ViewableRouter<FinanceHomeInteractable, FinanceHomeViewControllable>, FinanceHomeRouting {
  override init(
    interactor: FinanceHomeInteractable,
    viewController: FinanceHomeViewControllable
  ) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
