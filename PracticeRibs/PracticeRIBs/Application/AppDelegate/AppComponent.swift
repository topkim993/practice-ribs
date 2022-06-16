//
//  AppComponent.swift
//  PracticeRibs
//
//  Created by G00332 on 16/6/2022.
//

import RIBs

class AppComponent: Component<EmptyDependency>, AppRootDependency {

    init() {
        super.init(dependency: EmptyComponent())
    }
}
