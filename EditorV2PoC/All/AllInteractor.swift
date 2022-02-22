//
//  AllInteractor.swift
//  EditorV2PoC
//
//  Created by Mickey Lee on 07/02/2022.
//

import SwiftUI

protocol AllInteracting { }

struct AllIneteractor: AllInteracting {
    
    @ObservedObject var editorModel: EditorModel
}
