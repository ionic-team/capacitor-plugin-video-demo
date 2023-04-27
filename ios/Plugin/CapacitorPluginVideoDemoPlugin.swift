import Foundation
import Capacitor
import UIKit
import AVKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPluginVideoDemoPlugin)
public class CapacitorPluginVideoDemoPlugin: CAPPlugin {
    private let implementation = CapacitorPluginVideoDemo()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func playVideo(_ call: CAPPluginCall) {
        guard let url = URL(string: "https://hlsdemooutput.s3.us-west-2.amazonaws.com/Ionic+in+30+Series_+Ionic+Angular.m3u8") else { return }

        let player = AVPlayer(url: url)

        DispatchQueue.main.sync {
            // Create a new AVPlayerViewController and pass it a reference to the player.
            let controller = AVPlayerViewController()
                controller.player = player
            
            // Modally present the player and call the player's play() method when complete.
            self.bridge?.viewController?.present(controller, animated: true) {
                    player.play()
            }
        }

    }

}
