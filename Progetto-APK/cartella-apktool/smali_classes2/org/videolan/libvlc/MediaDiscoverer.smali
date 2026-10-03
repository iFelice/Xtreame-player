.class public Lorg/videolan/libvlc/MediaDiscoverer;
.super Lorg/videolan/libvlc/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaDiscoverer$Description;,
        Lorg/videolan/libvlc/MediaDiscoverer$Event;,
        Lorg/videolan/libvlc/MediaDiscoverer$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/MediaDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaDiscoverer"


# instance fields
.field private mMediaList:Lorg/videolan/libvlc/MediaList;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeNew(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;I)Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 2

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/videolan/libvlc/MediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/videolan/libvlc/MediaDiscoverer$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static list(Lorg/videolan/libvlc/interfaces/ILibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeList(Lorg/videolan/libvlc/interfaces/ILibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static native nativeList(Lorg/videolan/libvlc/interfaces/ILibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
.end method

.method private native nativeNew(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
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

.method public getMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCObject;->retain()Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    new-instance v0, Lorg/videolan/libvlc/MediaList;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/MediaDiscoverer;)V

    .line 19
    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCObject;->retain()Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    throw v0

    .line 34
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw v0
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

.method public onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaDiscoverer$Event;
    .locals 0

    const/16 p2, 0x500

    if-eq p1, p2, :cond_0

    const/16 p2, 0x501

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Lorg/videolan/libvlc/MediaDiscoverer$Event;

    invoke-direct {p2, p1}, Lorg/videolan/libvlc/MediaDiscoverer$Event;-><init>(I)V

    return-object p2
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/MediaDiscoverer;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/MediaDiscoverer$Event;

    move-result-object p1

    return-object p1
.end method

.method public onReleaseNative()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeRelease()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/MediaDiscoverer$EventListener;)V
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
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStart()Z

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
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStop()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "MediaDiscoverer is released"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
