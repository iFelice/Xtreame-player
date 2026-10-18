.class public Lorg/videolan/libvlc/util/AndroidUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final isJellyBeanMR2OrLater:Z

.field public static final isKitKatOrLater:Z

.field public static final isLolliPopOrLater:Z

.field public static final isMarshMallowOrLater:Z

.field public static final isNougatMR1OrLater:Z

.field public static final isNougatOrLater:Z

.field public static final isOOrLater:Z

.field public static final isPOrLater:Z

.field public static final isROrLater:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    sput-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isROrLater:Z

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_1
    sput-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isPOrLater:Z

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    const/16 v1, 0x1a

    .line 26
    .line 27
    if-lt v0, v1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 33
    :goto_3
    sput-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isOOrLater:Z

    .line 34
    .line 35
    if-nez v1, :cond_5

    .line 36
    .line 37
    const/16 v1, 0x19

    .line 38
    .line 39
    if-lt v0, v1, :cond_4

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    const/4 v1, 0x0

    .line 43
    goto :goto_5

    .line 44
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 45
    :goto_5
    sput-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isNougatMR1OrLater:Z

    .line 46
    .line 47
    if-nez v1, :cond_7

    .line 48
    .line 49
    const/16 v1, 0x18

    .line 50
    .line 51
    if-lt v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_6

    .line 54
    :cond_6
    const/4 v1, 0x0

    .line 55
    goto :goto_7

    .line 56
    :cond_7
    :goto_6
    const/4 v1, 0x1

    .line 57
    :goto_7
    sput-boolean v1, Lorg/videolan/libvlc/util/AndroidUtil;->isNougatOrLater:Z

    .line 58
    .line 59
    if-nez v1, :cond_8

    .line 60
    .line 61
    const/16 v1, 0x17

    .line 62
    .line 63
    if-lt v0, v1, :cond_9

    .line 64
    .line 65
    :cond_8
    const/4 v2, 0x1

    .line 66
    :cond_9
    sput-boolean v2, Lorg/videolan/libvlc/util/AndroidUtil;->isMarshMallowOrLater:Z

    .line 67
    .line 68
    sput-boolean v3, Lorg/videolan/libvlc/util/AndroidUtil;->isLolliPopOrLater:Z

    .line 69
    .line 70
    sput-boolean v3, Lorg/videolan/libvlc/util/AndroidUtil;->isKitKatOrLater:Z

    .line 71
    .line 72
    sput-boolean v3, Lorg/videolan/libvlc/util/AndroidUtil;->isJellyBeanMR2OrLater:Z

    .line 73
    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileToUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static LocationToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "location has no scheme"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static PathToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static UriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "file://"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Activity;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p0, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lorg/videolan/libvlc/util/AndroidUtil;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
