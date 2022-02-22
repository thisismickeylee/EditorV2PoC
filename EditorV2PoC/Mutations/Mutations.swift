//
//  Mutations.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 07/02/2022.
//

import SwiftUI

protocol BackgroundMutating {
    func changeBackground()
}

struct BackgroundMutation {
    
    @ObservedObject private var component: Component
    
    init(component: Component) {
        self.component = component
    }
}

extension BackgroundMutation: BackgroundMutating {
    
    func changeBackground() {
        component.background.id += " + changed"
        print(component.background.id)
    }
}

protocol LayoutMutating {
    func changeLayout()
}

struct LayoutMutation {
    
    @ObservedObject private var component: Component
    
    init(component: Component) {
        self.component = component
    }
}

extension LayoutMutation: LayoutMutating {
    
    func changeLayout() {
        component.layout.id += " + changed"
        print(component.layout.id)
    }
}

struct Mutations {
    let background: BackgroundMutating
    let layout: LayoutMutating
}
