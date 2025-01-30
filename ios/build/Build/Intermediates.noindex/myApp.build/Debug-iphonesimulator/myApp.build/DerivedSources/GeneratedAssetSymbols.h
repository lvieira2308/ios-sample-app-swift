#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "cosmoCats" asset catalog image resource.
static NSString * const ACImageNameCosmoCats AC_SWIFT_PRIVATE = @"cosmoCats";

/// The "nene" asset catalog image resource.
static NSString * const ACImageNameNene AC_SWIFT_PRIVATE = @"nene";

/// The "neneProfile" asset catalog image resource.
static NSString * const ACImageNameNeneProfile AC_SWIFT_PRIVATE = @"neneProfile";

/// The "pipo" asset catalog image resource.
static NSString * const ACImageNamePipo AC_SWIFT_PRIVATE = @"pipo";

/// The "pipoProfile" asset catalog image resource.
static NSString * const ACImageNamePipoProfile AC_SWIFT_PRIVATE = @"pipoProfile";

/// The "spaceCat" asset catalog image resource.
static NSString * const ACImageNameSpaceCat AC_SWIFT_PRIVATE = @"spaceCat";

#undef AC_SWIFT_PRIVATE
