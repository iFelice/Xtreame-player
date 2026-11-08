.class public final Landroidx/media3/decoder/mpegh/MpeghLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOADER:Lp0/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "media3.decoder.mpegh"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/media3/decoder/mpegh/MpeghLibrary$1;

    .line 7
    .line 8
    const-string v1, "mpeghJNI"

    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroidx/media3/decoder/mpegh/MpeghLibrary$1;-><init>([Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/media3/decoder/mpegh/MpeghLibrary;->LOADER:Lp0/r;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/decoder/mpegh/MpeghLibrary;->LOADER:Lp0/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/r;->isAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static varargs setLibraries([Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/decoder/mpegh/MpeghLibrary;->LOADER:Lp0/r;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lp0/r;->setLibraries([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
