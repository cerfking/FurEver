//
//  VirtualView.swift
//  FurEver
//
//  Created by Sebastian on 4/15/24.
//

import Foundation
import SwiftUI
struct VirtualView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    
    init() {
        
    }
    func makeUIViewController(context: Context) -> ViewController {
        let vc = ViewController()
        return vc
    }
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
}
#Preview {
    VirtualView()
}
