//
//  ViewController.swift
//  DrawPixel
//
//  Created by ChungTran on 12/27/17.
//  Copyright © 2017 ChungTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let marioColorPalette = [#colorLiteral(red: 0.03515542299, green: 0.0390829891, blue: 0.04739325494, alpha: 1), #colorLiteral(red: 0.9260939956, green: 0.7393692136, blue: 0.535525322, alpha: 1), #colorLiteral(red: 0.8486657143, green: 0.1457175612, blue: 0.1098935679, alpha: 1), #colorLiteral(red: 0.2316169739, green: 0.252183795, blue: 0.6651875973, alpha: 1), #colorLiteral(red: 0.5066443086, green: 0.2547130287, blue: 0.1472603977, alpha: 1), #colorLiteral(red: 0.8298331499, green: 0.7703962922, blue: 0.1196306571, alpha: 1)]
    let pixelSize: CGFloat = 15
    let canvasDefaultColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    let theme: Theme = .dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let widthInPixels: Int = Int(view.frame.size.width / 18)
        let heightInPixels: Int = Int(view.frame.size.height / 17)
        let path = getDocumentsDirectory().appendingPathComponent("MyArt.jpg")
        let colorPalette: [UIColor] = marioColorPalette
        let pixelArtMaker = CanvasController (
            width: widthInPixels,
            height: heightInPixels,
            pixelSize: self.pixelSize,
            canvasColor: self.canvasDefaultColor,
            colorPalette: colorPalette,
            theme: self.theme,
            saveURL: path
        )
        pixelArtMaker.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
        view.addSubview(pixelArtMaker)
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

}

