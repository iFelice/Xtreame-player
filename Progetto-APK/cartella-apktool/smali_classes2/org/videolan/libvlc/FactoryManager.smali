.class public Lorg/videolan/libvlc/FactoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/videolan/libvlc/interfaces/IComponentFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/videolan/libvlc/FactoryManager;->factories:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IComponentFactory;
    .locals 2

    .line 1
    sget-object v0, Lorg/videolan/libvlc/FactoryManager;->factories:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/videolan/libvlc/interfaces/IComponentFactory;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    const-string v0, "FactoryManager"

    .line 12
    .line 13
    const-string v1, "Factory doesn\'t exist. Falling back to hard coded one"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    sget-object v0, Lorg/videolan/libvlc/interfaces/IMediaFactory;->factoryId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lorg/videolan/libvlc/MediaFactory;

    .line 27
    .line 28
    invoke-direct {v1}, Lorg/videolan/libvlc/MediaFactory;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/videolan/libvlc/FactoryManager;->registerFactory(Ljava/lang/String;Lorg/videolan/libvlc/interfaces/IComponentFactory;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v0, Lorg/videolan/libvlc/interfaces/ILibVLCFactory;->factoryId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Lorg/videolan/libvlc/LibVLCFactory;

    .line 43
    .line 44
    invoke-direct {v1}, Lorg/videolan/libvlc/LibVLCFactory;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lorg/videolan/libvlc/FactoryManager;->registerFactory(Ljava/lang/String;Lorg/videolan/libvlc/interfaces/IComponentFactory;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object v0, Lorg/videolan/libvlc/FactoryManager;->factories:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    move-object v0, p0

    .line 57
    check-cast v0, Lorg/videolan/libvlc/interfaces/IComponentFactory;

    .line 58
    .line 59
    :cond_2
    return-object v0
.end method

.method public static registerFactory(Ljava/lang/String;Lorg/videolan/libvlc/interfaces/IComponentFactory;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/videolan/libvlc/FactoryManager;->factories:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
