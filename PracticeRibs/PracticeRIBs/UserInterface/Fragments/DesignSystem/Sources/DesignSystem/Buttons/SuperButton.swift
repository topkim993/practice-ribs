//
//  File.swift
//  
//
//  Created by G00332 on 17/6/2022.
//

import UIKit

import SnapKit
import RxCocoa

public final class SuperButton: UIButton {
    
  // MARK: - Public
  
  public init() {
    super.init(frame: .zero)
    setupViews()
  }
  
  public required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupViews()
  }
  
  
  // MARK: - UI Component
  
  private let label: UILabel = {
    let label = UILabel()
    label.text = "Super"
    label.textColor = .orange
    return label
  }()
  
  private func setupViews() {
    addSubview(label)
    
    label.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }
}
