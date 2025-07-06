//
//  CharacterData.swift
//  InazumaFormation
//
//  Created by Hiro Kawano.
//
import Foundation
import SwiftUI

struct CharacterData: Identifiable, Codable {
    var id = UUID()
    var name: String
    var imageData: Data?
    var position: CGPoint = CGPoint(x: 100, y: 100)
}
