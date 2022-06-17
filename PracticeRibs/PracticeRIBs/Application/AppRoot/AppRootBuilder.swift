//
//  AppRootBuilder.swift
//  PracticeRIBs
//
//  Created by G00332 on 16/6/2022.
//

import RIBs

import FinanceHome

protocol AppRootDependency: Dependency {
}

final class AppRootComponent: Component<AppRootDependency>, FinanceHomeDependency {
  
  let rootViewController: AppRootTabViewController
  
  init(
    dependency: AppRootDependency,
    rootViewController: AppRootTabViewController
  ) {
    self.rootViewController = rootViewController
    super.init(dependency: dependency)
  }
}

// MARK: - Builder

protocol AppRootBuildable: Buildable {
  func build() -> (launchRouter: LaunchRouting, urlHandler: URLHandler)
}

final class AppRootBuilder: Builder<AppRootDependency>, AppRootBuildable {
  
  override init(dependency: AppRootDependency) {
    super.init(dependency: dependency)
  }
  
  func build() -> (launchRouter: LaunchRouting, urlHandler: URLHandler) {
    let viewController = AppRootTabViewController()
    let component = AppRootComponent(
      dependency: dependency,
      rootViewController: viewController
    )
    let interactor = AppRootInteractor(
      presenter: viewController
    )
    
    let financeHome = FinanceHomeBuilder(dependency: component)
    
    let router = AppRootRouter(
      interactor: interactor,
      viewController: viewController,
      financeHomeBuildable: financeHome
    )
    
    return (router, interactor)
  }
}
