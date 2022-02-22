//
//  RenderModel.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 04/02/2022.
//

import Foundation

final class RenderModel: ObservableObject {
    
    @Published var components: [ComponentRenderModel] = []
    
    init(editorModel: EditorModel) {
        components = editorModel.components.map {
            ComponentRenderModel(component: $0)
        }
    }
}

final class ComponentRenderModel: ObservableObject {
    
    @Published var background: String
    @Published var layout: String
    
    init(component: Component) {
        self.background = component.background.id
        self.layout = component.layout.id
    }
}
