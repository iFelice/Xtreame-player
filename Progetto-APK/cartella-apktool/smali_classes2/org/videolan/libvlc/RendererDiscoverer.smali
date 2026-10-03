.class public Lorg/videolan/libvlc/RendererDiscoverer;
.super Lorg/videolan/libvlc/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/RendererDiscoverer$EventListener;,
        Lorg/videolan/libvlc/RendererDiscoverer$Description;,
        Lorg/videolan/libvlc/RendererDiscoverer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/RendererDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/RendererDiscoverer"


# instance fields
.field private final index:Lr/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr/j;"
        }
    .end annotation
.end field

.field final mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/videolan/libvlc/RendererItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->mRenderers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lr/j;

    .line 12
    .line 13
    invoke-direct {v0}, Lr/j;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Lr/j;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeNew(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Description;
    .locals 2

    .line 1
    new-instance v0, Lorg/videolan/libvlc/RendererDiscoverer$Description;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/RendererDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/RendererDiscoverer$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static createItemFromNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lorg/videolan/libvlc/RendererItem;
    .locals 8

    .line 1
    new-instance v7, Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move-wide v5, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/videolan/libvlc/RendererItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 10
    .line 11
    .line 12
    return-object v7
.end method

.method private declared-synchronized insertItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeNewItem(J)Lorg/videolan/libvlc/RendererItem;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Lr/j;

    .line 7
    .line 8
    invoke-virtual {v1, v0, p1, p2}, Lr/j;->g(Ljava/lang/Object;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->mRenderers:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public static list(Lorg/videolan/libvlc/interfaces/ILibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeList(Lorg/videolan/libvlc/interfaces/ILibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static native nativeList(Lorg/videolan/libvlc/interfaces/ILibVLC;)[Lorg/videolan/libvlc/RendererDiscoverer$Description;
.end method

.method private native nativeNew(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V
.end method

.method private native nativeNewItem(J)Lorg/videolan/libvlc/RendererItem;
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method

.method private declared-synchronized removeItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Lr/j;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lr/j;->d(J)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/videolan/libvlc/RendererItem;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->index:Lr/j;

    .line 13
    .line 14
    iget-object v2, v1, Lr/j;->H:[J

    .line 15
    .line 16
    iget v3, v1, Lr/j;->J:I

    .line 17
    .line 18
    invoke-static {v2, v3, p1, p2}, Ls/a;->b([JIJ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ltz p1, :cond_0

    .line 23
    .line 24
    iget-object p2, v1, Lr/j;->I:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v2, p2, p1

    .line 27
    .line 28
    sget-object v3, Lr/k;->a:Ljava/lang/Object;

    .line 29
    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    aput-object v3, p2, p1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, v1, Lr/j;->G:Z

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/RendererDiscoverer;->mRenderers:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCObject;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    monitor-exit p0

    .line 49
    return-object v0

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw p1
.end method


# virtual methods
.method public bridge synthetic getInstance()J
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getInstance()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Event;
    .locals 0

    const/16 p4, 0x502

    if-eq p1, p4, :cond_1

    const/16 p4, 0x503

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p4, Lorg/videolan/libvlc/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lorg/videolan/libvlc/RendererDiscoverer;->removeItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lorg/videolan/libvlc/RendererDiscoverer$Event;-><init>(IJLorg/videolan/libvlc/RendererItem;)V

    return-object p4

    .line 3
    :cond_1
    new-instance p4, Lorg/videolan/libvlc/RendererDiscoverer$Event;

    invoke-direct {p0, p2, p3}, Lorg/videolan/libvlc/RendererDiscoverer;->insertItemFromEvent(J)Lorg/videolan/libvlc/RendererItem;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lorg/videolan/libvlc/RendererDiscoverer$Event;-><init>(IJLorg/videolan/libvlc/RendererItem;)V

    return-object p4
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/RendererDiscoverer;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererDiscoverer$Event;

    move-result-object p1

    return-object p1
.end method

.method public onReleaseNative()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->mRenderers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/videolan/libvlc/RendererItem;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/videolan/libvlc/VLCObject;->release()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer;->mRenderers:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeRelease()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/RendererDiscoverer$EventListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public start()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeStart()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "MediaDiscoverer is released"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/RendererDiscoverer;->setEventListener(Lorg/videolan/libvlc/RendererDiscoverer$EventListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/videolan/libvlc/RendererDiscoverer;->nativeStop()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->release()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "MediaDiscoverer is released"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method
