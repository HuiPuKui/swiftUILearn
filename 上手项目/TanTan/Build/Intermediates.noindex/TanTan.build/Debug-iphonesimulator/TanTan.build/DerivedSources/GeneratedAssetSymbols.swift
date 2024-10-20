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

    /// The "AccentColor" asset catalog color resource.
    static let accent = DeveloperToolsSupport.ColorResource(name: "AccentColor", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "User1" asset catalog image resource.
    static let user1 = DeveloperToolsSupport.ImageResource(name: "User1", bundle: resourceBundle)

    /// The "User2" asset catalog image resource.
    static let user2 = DeveloperToolsSupport.ImageResource(name: "User2", bundle: resourceBundle)

    /// The "User3" asset catalog image resource.
    static let user3 = DeveloperToolsSupport.ImageResource(name: "User3", bundle: resourceBundle)

    /// The "User4" asset catalog image resource.
    static let user4 = DeveloperToolsSupport.ImageResource(name: "User4", bundle: resourceBundle)

    /// The "User5" asset catalog image resource.
    static let user5 = DeveloperToolsSupport.ImageResource(name: "User5", bundle: resourceBundle)

    /// The "User6" asset catalog image resource.
    static let user6 = DeveloperToolsSupport.ImageResource(name: "User6", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "AccentColor" asset catalog color.
    static var accent: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .accent)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "AccentColor" asset catalog color.
    static var accent: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .accent)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "User1" asset catalog image.
    static var user1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user1)
#else
        .init()
#endif
    }

    /// The "User2" asset catalog image.
    static var user2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user2)
#else
        .init()
#endif
    }

    /// The "User3" asset catalog image.
    static var user3: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user3)
#else
        .init()
#endif
    }

    /// The "User4" asset catalog image.
    static var user4: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user4)
#else
        .init()
#endif
    }

    /// The "User5" asset catalog image.
    static var user5: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user5)
#else
        .init()
#endif
    }

    /// The "User6" asset catalog image.
    static var user6: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .user6)
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

    /// The "User1" asset catalog image.
    static var user1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user1)
#else
        .init()
#endif
    }

    /// The "User2" asset catalog image.
    static var user2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user2)
#else
        .init()
#endif
    }

    /// The "User3" asset catalog image.
    static var user3: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user3)
#else
        .init()
#endif
    }

    /// The "User4" asset catalog image.
    static var user4: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user4)
#else
        .init()
#endif
    }

    /// The "User5" asset catalog image.
    static var user5: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user5)
#else
        .init()
#endif
    }

    /// The "User6" asset catalog image.
    static var user6: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .user6)
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

    private init?(thinnableName: String, bundle: Bundle) {
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

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
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

    private init?(thinnableName: String, bundle: Bundle) {
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

