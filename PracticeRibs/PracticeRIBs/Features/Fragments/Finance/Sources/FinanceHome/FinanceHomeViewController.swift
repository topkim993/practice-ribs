//
//  FinanceHomeViewController.swift
//  PracticeRIBs
//
//  Created by G00332 on 17/6/2022.
//

import RIBs
import RxSwift
import UIKit

protocol FinanceHomePresentableListener: AnyObject {
}

final class FinanceHomeViewController: UIViewController, FinanceHomePresentable, FinanceHomeViewControllable {
  weak var listener: FinanceHomePresentableListener?
  
  // MARK: - Init
  
  init() {
    super.init(nibName: nil, bundle: nil)
    setupViews()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupViews()
  }
  
  // MARK: - UI Compoents
  
  private let label: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  
  // MARK: - Private
  
  private func setupViews() {
    label.text = "Finance Home"
    view.backgroundColor = .systemTeal
    view.addSubview(label)
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}
