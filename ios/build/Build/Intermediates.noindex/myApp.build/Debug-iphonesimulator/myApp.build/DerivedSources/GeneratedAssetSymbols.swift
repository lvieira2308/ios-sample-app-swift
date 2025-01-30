import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "cosmoCats" asset catalog image resource.
    static let cosmoCats = DeveloperToolsSupport.ImageResource(name: "cosmoCats", bundle: resourceBundle)

    /// The "nene" asset catalog image resource.
    static let nene = DeveloperToolsSupport.ImageResource(name: "nene", bundle: resourceBundle)

    /// The "neneProfile" asset catalog image resource.
    static let neneProfile = DeveloperToolsSupport.ImageResource(name: "neneProfile", bundle: resourceBundle)

    /// The "pipo" asset catalog image resource.
    static let pipo = DeveloperToolsSupport.ImageResource(name: "pipo", bundle: resourceBundle)

    /// The "pipoProfile" asset catalog image resource.
    static let pipoProfile = DeveloperToolsSupport.ImageResource(name: "pipoProfile", bundle: resourceBundle)

    /// The "spaceCat" asset catalog image resource.
    static let spaceCat = DeveloperToolsSupport.ImageResource(name: "spaceCat", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "cosmoCats" asset catalog image.
    static var cosmoCats: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cosmoCats)
#else
        .init()
#endif
    }

    /// The "nene" asset catalog image.
    static var nene: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .nene)
#else
        .init()
#endif
    }

    /// The "neneProfile" asset catalog image.
    static var neneProfile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .neneProfile)
#else
        .init()
#endif
    }

    /// The "pipo" asset catalog image.
    static var pipo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pipo)
#else
        .init()
#endif
    }

    /// The "pipoProfile" asset catalog image.
    static var pipoProfile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pipoProfile)
#else
        .init()
#endif
    }

    /// The "spaceCat" asset catalog image.
    static var spaceCat: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .spaceCat)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "cosmoCats" asset catalog image.
    static var cosmoCats: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cosmoCats)
#else
        .init()
#endif
    }

    /// The "nene" asset catalog image.
    static var nene: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .nene)
#else
        .init()
#endif
    }

    /// The "neneProfile" asset catalog image.
    static var neneProfile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .neneProfile)
#else
        .init()
#endif
    }

    /// The "pipo" asset catalog image.
    static var pipo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pipo)
#else
        .init()
#endif
    }

    /// The "pipoProfile" asset catalog image.
    static var pipoProfile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pipoProfile)
#else
        .init()
#endif
    }

    /// The "spaceCat" asset catalog image.
    static var spaceCat: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .spaceCat)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

