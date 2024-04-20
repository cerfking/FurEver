//
//  ViewController.swift
//  FurEver
//
//  Created by Sebastian on 4/15/24.
//

import Foundation

import UIKit
import SceneKit
import GLTFKit2

class ViewController: UIViewController {
    var asset: GLTFAsset? {
        didSet {
            if let asset = asset {
                let source = GLTFSCNSceneSource(asset: asset)
                sceneView.scene = source.defaultScene
                animations = source.animations
                if let defaultAnimation = animations.first {
                    defaultAnimation.animationPlayer.animation.usesSceneTimeBase = false
                    defaultAnimation.animationPlayer.animation.repeatCount = .greatestFiniteMagnitude
                    sceneView.scene?.rootNode.addAnimationPlayer(defaultAnimation.animationPlayer, forKey: nil)
                    defaultAnimation.animationPlayer.play()
                }
                sceneView.scene?.rootNode.addChildNode(cameraNode)
            }
        }
    }

    private var sceneView: SCNView = SCNView()

    private var animations = [GLTFSCNAnimation]()

    private let camera = SCNCamera()
    private let cameraNode = SCNNode()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadAsset()
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = .systemBackground
        view.addSubview(sceneView)
        
        
        
    }
    override func viewDidLayoutSubviews() {
        sceneView.frame = CGRect(x: 0, y: 0, width: 400, height: 700)
    }

    private func loadAsset() {
        guard let assetURL = Bundle.main.url(forResource: "Labrador1",
                                                   withExtension: "glb")
        else {
            print("Failed to find asset for URL")
            return
        }

        GLTFAsset.load(with: assetURL, options: [:]) { (progress, status, maybeAsset, maybeError, _) in
            DispatchQueue.main.async {
                if status == .complete {
                    self.asset = maybeAsset
                } else if let error = maybeError {
                    print("Failed to load glTF asset: \(error)")
                }
            }
        }
    }
}
