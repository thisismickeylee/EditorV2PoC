//
//  EditorV2PoCApp.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 04/02/2022.
//

import SwiftUI

@main
struct EditorV2PoCApp: App {
    
    @StateObject var editorModel = EditorModel()
    
    var body: some Scene {
        WindowGroup {
            AllView(editorModel: editorModel)
        }
    }
}
