//
//  EditorModel.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 04/02/2022.
//

import Foundation
import Combine

final class EditorModel: ObservableObject {
    
    @Published var components: [Component]
    
    private var cancellables: Set<AnyCancellable> = []
    
    init(components: [Component] = [.default]) {
        self.components = components
        
        components.forEach {
            $0.objectWillChange
                .sink { [weak self] in
                    self?.objectWillChange.send()
                }
                .store(in: &cancellables)
        }
    }
}

final class Component: ObservableObject {
    
    @Published var id: String
    @Published var background: Background
    @Published var layout: Layout
    
    init(id: String, background: Background, layout: Layout) {
        self.id = id
        self.background = background
        self.layout = layout
    }
    
    static var `default`: Component {
        Component(id: "1", background: Background(id: "background"), layout: Layout(id: "layout"))
    }
}

struct Background {
    var id: String
}

struct Layout {
    var id: String
}
