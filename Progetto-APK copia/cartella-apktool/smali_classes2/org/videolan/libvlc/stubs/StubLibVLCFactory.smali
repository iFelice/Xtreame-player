.class public Lorg/videolan/libvlc/stubs/StubLibVLCFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/ILibVLCFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromContext(Landroid/content/Context;)Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubLibVLC;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/videolan/libvlc/stubs/StubLibVLC;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getFromOptions(Landroid/content/Context;Ljava/util/List;)Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/videolan/libvlc/interfaces/ILibVLC;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubLibVLC;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubLibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
