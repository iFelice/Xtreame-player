.class public abstract Landroidx/media3/decoder/vp9/VpxLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx0/b;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "media3.decoder.vpx"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lx0/b;

    .line 7
    .line 8
    const-string v1, "vpx"

    .line 9
    .line 10
    const-string v2, "vpxV2JNI"

    .line 11
    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v0, v2, v1}, Lx0/b;-><init>(I[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/media3/decoder/vp9/VpxLibrary;->a:Lx0/b;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    sput v0, Landroidx/media3/decoder/vp9/VpxLibrary;->b:I

    .line 24
    .line 25
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/decoder/vp9/VpxLibrary;->a:Lx0/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/r;->isAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroidx/media3/decoder/vp9/VpxLibrary;->vpxGetVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private static native vpxGetVersion()Ljava/lang/String;
.end method

.method public static native vpxIsSecureDecodeSupported()Z
.end method
