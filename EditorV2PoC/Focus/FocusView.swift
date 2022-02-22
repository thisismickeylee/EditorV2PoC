//
//  FocusView.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 04/02/2022.
//

import SwiftUI
import Combine

enum FocusFactory {
    
    static func make(render: ComponentRenderModel, component: Component) -> FocusView {
        let mutatinos = Mutations(
            background: BackgroundMutation(component: component),
            layout: LayoutMutation(component: component))
        let interactor = FocusInteractor(mutations: mutatinos)
        return FocusView(render: render, interactor: interactor)
    }
}

struct FocusView: View {
    
    @ObservedObject var render: ComponentRenderModel
    private let interactor: FocusInteractor
    
    init(render: ComponentRenderModel, interactor: FocusInteractor) {
        self.render = render
        self.interactor = interactor
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Current Background")
                .font(.headline)
            Text(render.background)
                .font(.title)
            Button("Change backgroud") { [weak interactor] in
                interactor?.changeBackground()
            }

            Divider()

            Text("Current Layout")
                .font(.headline)
            Text(render.layout)
                .font(.title)
            Button("Change layout") { [weak interactor] in
                interactor?.changeLayout()
            }
        }
    }
}
