//
//  FinanceHomeBuilder.swift
//  PracticeRIBs
//
//  Created by G00332 on 17/6/2022.
//

import RIBs

public protocol FinanceHomeDependency: Dependency {
  
}

final class FinanceHomeComponent: Component<FinanceHomeDependency> {
  
}

// MARK: - Builder

public protocol FinanceHomeBuildable: Buildable {
  func build(withListener listener: FinanceHomeListener) -> FinanceHomeRouting
}

public final class FinanceHomeBuilder: Builder<FinanceHomeDependency> {
  public override init(dependency: FinanceHomeDependency) {
    super.init(dependency: dependency)
  }
}

extension FinanceHomeBuilder: FinanceHomeBuildable {
  public func build(withListener listener: FinanceHomeListener) -> FinanceHomeRouting {
    let _ = FinanceHomeComponent(dependency: dependency)
    let viewController = FinanceHomeViewController()
    let interactor = FinanceHomeInteractor(presenter: viewController)
    interactor.listener = listener
    return FinanceHomeRouter(
      interactor: interactor,
      viewController: viewController
    )
  }
}
