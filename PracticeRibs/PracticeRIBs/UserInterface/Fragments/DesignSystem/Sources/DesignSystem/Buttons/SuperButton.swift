//
//  SuperButton.swift
//  
//
//  Created by G00332 on 17/6/2022.
//

import UIKit

import Resources

import SnapKit
import RxCocoa

public final class SuperButton: UIControl {
    
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
  
  private let stackView: UIStackView = {
    let stackView = UIStackView()
    stackView.isUserInteractionEnabled = false
    stackView.axis = .horizontal
    stackView.alignment = .fill
    return stackView
  }()
  
  private let label: UILabel = {
    let label = UILabel()
    label.text = "Super"
    label.textColor = .primaryGreen
    return label
  }()
  
  private let imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = .icLocation
    return imageView
  }()
  
  
  // MARK: -
  
  private func setupViews() {
    backgroundColor = .yellow
    
    addSubview(stackView)
    stackView.backgroundColor = .red
    stackView.addArrangedSubview(imageView)
    stackView.addArrangedSubview(label)
    
    stackView.snp.makeConstraints { make in
      make.leading.equalToSuperview()
      make.trailing.equalToSuperview()
      make.top.equalToSuperview()
      make.bottom.equalToSuperview()
    }
  }
}


