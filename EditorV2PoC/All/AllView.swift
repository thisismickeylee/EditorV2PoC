//
//  ContentView.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 04/02/2022.
//

import SwiftUI

struct AllView: View {
    
    @ObservedObject var renderModel: RenderModel
    private let interactor: AllIneteractor
    
    init(editorModel: EditorModel) {
        self.renderModel = RenderModel(editorModel: editorModel)
        self.interactor = AllIneteractor(editorModel: editorModel)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Components amount: \(renderModel.components.count)")
                NavigationLink("First component") {
                    FocusFactory.make(
                        render: renderModel.components[0],
                        component: interactor.editorModel.components[0])
                }
                
                Divider()
                
                Text("Current first component background")
                    .font(.headline)
                Text(renderModel.components[0].background)
                    .font(.title)
                
                Divider()
                
                Text("Current first component layout")
                    .font(.headline)
                Text(renderModel.components[0].layout)
                    .font(.title)

            }
        }
    }
}
