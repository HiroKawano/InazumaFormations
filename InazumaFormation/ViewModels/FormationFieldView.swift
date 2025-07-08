//
//  FormationFieldView.swift
//  InazumaFormation
//
//  Created by Hiro Kawano.
//
import SwiftUI

struct FormationFieldView: View {
    @Environment(\.presentationMode) var presentationMode
    let formation: Formation
    
    @State private var characters: [Character] = [
        Character(id: UUID(), name: "キャラA", position: CGPoint(x: 50, y: 50), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラB", position: CGPoint(x: 100, y: 100), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラC", position: CGPoint(x: 150, y: 150), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラD", position: CGPoint(x: 200, y: 200), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラE", position: CGPoint(x: 250, y: 250), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラF", position: CGPoint(x: 300, y: 300), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラG", position: CGPoint(x: 50, y: 200), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラH", position: CGPoint(x: 100, y: 250), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラI", position: CGPoint(x: 150, y: 300), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラJ", position: CGPoint(x: 200, y: 350), imageName: "character_icon"),
        Character(id: UUID(), name: "キャラK", position: CGPoint(x: 250, y: 400), imageName: "character_icon"),
        
    ]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("soccer_field")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width * 1)
                .frame(maxHeight: .infinity)
                .ignoresSafeArea()
            
            ForEach(characters) { character in
                VStack(spacing: 4) {
                    Text(character.name)
                        .font(.caption)
                        .foregroundColor(.black)
                    
                    Image(character.imageName)
                        .resizable()
                        .frame(width: 50, height: 50)
                }
                .position(character.position)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            if let index = characters.firstIndex(where: { $0.id == character.id }) {
                                characters[index].position = value.location
                            }
                        }
                )
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack(spacing: 6) {
                Image(systemName: "arrow.left.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.blue)
                Text("")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding(8)
            .background(Color.white.opacity(0.8))
            .cornerRadius(10)
            .shadow(radius: 4) 
        }
        )
    }
}
