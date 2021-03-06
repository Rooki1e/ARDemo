//
//  ARViewContainer.swift
//  ARDemo
//
//  Created by rick on 2022/3/30.
//

import SwiftUI
import ARKit
import RealityKit

struct ARViewContainer: UIViewRepresentable {
    
    @Binding var displayAR:Bool
    
    func getAllAnchors() -> [RealityKit.Entity & RealityKit.HasAnchoring] {
        let yscAnchor = try! Experience.loadYSC()
        let ballAnchor = try! Experience.loadBall()
        return [yscAnchor,ballAnchor]
    }
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load All Anchors to the scene
        for anchor in getAllAnchors() {
            arView.scene.addAnchor(anchor)
        }
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        debugPrint("fuck you swiftUI", $displayAR.wrappedValue)
        if $displayAR.wrappedValue == false {
            uiView.cameraMode = .nonAR
            return
        }
        uiView.cameraMode = .ar
    }
    
}
