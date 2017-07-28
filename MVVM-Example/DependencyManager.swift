//
//  DependencyManager.swift
//  MVVM-Example
//
//  Created by John Hammerlund on 7/28/17.
//
//

import Foundation
import Swinject

/// This might be a bit over the top, but this is an IoT container
/// Dependency Injection can work per-module or globally
/// This is an example of globablly registering concrete types, which is common for singletons/things that operate as their own system

class DependencyManager {

    static let shared = DependencyManager()

    private let container: Container

    private init() {
        self.container = Container()

        container.register(FestivalServiceType.self) { r in
            FestivalService.shared
        }
    }

    func resolve<T>(_ type: T.Type) -> T {
        guard let resolved = container.resolve(type) else {
            fatalError("DI managemer malconfigured")
        }
        return resolved
    }

}
