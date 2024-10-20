#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.autohome.TanTan";

/// The "AccentColor" asset catalog color resource.
static NSString * const ACColorNameAccentColor AC_SWIFT_PRIVATE = @"AccentColor";

/// The "User1" asset catalog image resource.
static NSString * const ACImageNameUser1 AC_SWIFT_PRIVATE = @"User1";

/// The "User2" asset catalog image resource.
static NSString * const ACImageNameUser2 AC_SWIFT_PRIVATE = @"User2";

/// The "User3" asset catalog image resource.
static NSString * const ACImageNameUser3 AC_SWIFT_PRIVATE = @"User3";

/// The "User4" asset catalog image resource.
static NSString * const ACImageNameUser4 AC_SWIFT_PRIVATE = @"User4";

/// The "User5" asset catalog image resource.
static NSString * const ACImageNameUser5 AC_SWIFT_PRIVATE = @"User5";

/// The "User6" asset catalog image resource.
static NSString * const ACImageNameUser6 AC_SWIFT_PRIVATE = @"User6";

#undef AC_SWIFT_PRIVATE
