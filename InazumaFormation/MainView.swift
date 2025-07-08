//
//  MainView.swift
//  InazumaFormation
//
//  Created by Hiro Kawano.
//
import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = FormationViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
            List(viewModel.formations) { formation in
                    NavigationLink(destination: FormationFieldView(formation: formation)) {
                        Text(formation.name)
                    }
                }
            }
            .onAppear {
                print("formations: \(viewModel.formations)")
            }
            .navigationTitle("フォーメーション一覧")
        }
    }
}
