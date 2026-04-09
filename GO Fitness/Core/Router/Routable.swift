//
//  Routable.swift
//  GO Fitness
//
//  Created by Youssif Hany on 09/04/2026.
//

import SwiftUI

public typealias Routable = View & Hashable

public protocol RoutableObject: AnyObject {
    
    associatedtype Destination: Routable
    var stack: [Destination] { get set }
    
    func navigateTo(to destination: Destination)
    func navigateTo(to destinations: [Destination])
    func navigateBack(_ count: Int)
    func navigateBack(to destination: Destination)
    func navigateToRoot()
}

extension RoutableObject {
    public func navigateTo(to destination: Destination) {
        stack.append(destination)
    }
    
    public func navigateTo(to destinations: [Destination]) {
        stack += destinations
    }
    
    public func navigateBack(_ count: Int) {
        guard count > 0 else { return }
        let safeCount = min(count,stack.count)
        stack.removeLast(safeCount)
    }
    
    public func navigateBack(to destination: Destination) {
        if let index = stack.lastIndex(of: destination), index < stack.count {
            stack.removeLast(stack.count - index - 1)
        }
    }
    
    public func navigateToRoot() {
        stack.removeAll()
    }
}
