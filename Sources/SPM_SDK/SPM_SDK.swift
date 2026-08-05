// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public class SPM {
    public init() { }
    
    @MainActor public func getVC() -> UIViewController {
        return DemoViewController()
    }
}
