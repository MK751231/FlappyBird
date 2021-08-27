//
//  ViewController.swift
//  FlappyBird
//
//  Created by 越川将人 on 2021/08/24.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // SKViewに型を変換する
        let skView = self.view as! SKView

        // FPSを設定する（デフォルトは60）
        skView.preferredFramesPerSecond = 60
        
        // FPSを表示する
        skView.showsFPS = true

        // ノードの数を表示する
        skView.showsNodeCount = true

        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)

        // ビューにシーンを表示する
        skView.presentScene(scene)
    }

    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---
}
