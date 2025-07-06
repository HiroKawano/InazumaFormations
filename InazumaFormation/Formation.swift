//
//  Formation.swift
//  InazumaFormation
//
//  Created by Hiro Kawano.
//
import Foundation
import SwiftUI

struct Formation: Identifiable {
    var id: UUID
    var name: String
    var positions: [CGPoint] = []
}
