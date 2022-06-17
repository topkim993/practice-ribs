//
//  FinanceHomeViewController.swift
//  PracticeRIBs
//
//  Created by G00332 on 17/6/2022.
//

import UIKit

import DesignSystem

import RIBs
import RxSwift

protocol FinanceHomePresentableListener: AnyObject {
}

final class FinanceHomeViewController: UIViewController, FinanceHomePresentable, FinanceHomeViewControllable {
  
  // MARK: - Init
  
  init() {
    super.init(nibName: nil, bundle: nil)
    setupViews()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupViews()
  }
  
  // MARK: - FinanceHomePresentable Impl
  
  weak var listener: FinanceHomePresentableListener?
  
  
  // MARK: - UI Compoents
  
  private var superButton: SuperButton = {
    let button = SuperButton()
    return button
  }()
  
  
  // MARK: - Private
  
  private let disposeBag = DisposeBag()
  
  private func setupViews() {
    setupComponents()
    setupLayouts()
    setupEvents()
  }
  
  private func setupComponents() {
    view.backgroundColor = .systemTeal
    view.addSubview(superButton)
  }
  
  private func setupLayouts() {
    superButton.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }
  
  private func setupEvents() {
    superButton.rx.tap
      .asDriver()
      .drive(onNext: { _ in
        print("테스트")
      })
      .disposed(by: disposeBag)
  }
}
