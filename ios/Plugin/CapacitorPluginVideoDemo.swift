import Foundation

@objc public class CapacitorPluginVideoDemo: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
