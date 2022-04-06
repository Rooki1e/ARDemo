//
//  ARViewContainer.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI
import ARKit
import RealityKit

struct SCNViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> SCNView {
        
        let view = SCNView(frame: .zero)
        let scene = SCNScene()
        scene.background.contents = UIColor.clear
        scene.rootNode.addChildNode(SCNNode(geometry: SCNBox()))
        view.scene = scene
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {}
    
}
