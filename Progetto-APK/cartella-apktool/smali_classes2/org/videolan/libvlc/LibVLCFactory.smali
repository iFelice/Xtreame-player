.class public Lorg/videolan/libvlc/LibVLCFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/ILibVLCFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/videolan/libvlc/interfaces/ILibVLCFactory;->factoryId:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lorg/videolan/libvlc/LibVLCFactory;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/videolan/libvlc/LibVLCFactory;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/videolan/libvlc/FactoryManager;->registerFactory(Ljava/lang/String;Lorg/videolan/libvlc/interfaces/IComponentFactory;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromContext(Landroid/content/Context;)Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 2

    .line 1
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
