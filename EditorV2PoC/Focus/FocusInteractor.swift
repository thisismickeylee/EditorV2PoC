//
//  FocusInteractor.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 07/02/2022.
//

import Combine
import SwiftUI

final class FocusInteractor {
    
    let mutations: Mutations
    
    init(mutations: Mutations) {
        self.mutations = mutations
    }
    
    func changeBackground() {
        mutations.background.changeBackground()
    }
    
    func changeLayout() {
        mutations.layout.changeLayout()
    }
}
