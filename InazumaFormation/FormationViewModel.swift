//
//  FormationViewModel.swift
//  InazumaFormation
//
//  Created by Hiro Kawano.
//
import SwiftUI

class FormationViewModel: ObservableObject {
    @Published var formations: [Formation] = []
    
    init() {
        formations = [
            Formation(id: UUID(), name: "フォーメーションA", positions: [
                CGPoint(x: 100, y: 100),
                CGPoint(x: 150, y: 150),
                CGPoint(x: 200, y: 200)
            ]),
            Formation(id: UUID(), name: "フォーメーションB", positions: [
                CGPoint(x: 50, y: 50),
                CGPoint(x: 100, y: 200),
                CGPoint(x: 200, y: 100)
            ])
        ]
    }
}
