.class public Lorg/videolan/libvlc/MediaList;
.super Lorg/videolan/libvlc/VLCObject;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/IMediaList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/interfaces/IMediaList$Event;",
        ">;",
        "Lorg/videolan/libvlc/interfaces/IMediaList;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaList"


# instance fields
.field private mCount:I

.field private mLocked:Z

.field private final mMediaArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/videolan/libvlc/interfaces/IMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/MediaDiscoverer;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/IVLCObject;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 10
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 11
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V

    .line 12
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 4
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 5
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromLibVlc(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 6
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/IMedia;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/VLCObject;-><init>(Lorg/videolan/libvlc/interfaces/IVLCObject;)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 16
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 17
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 18
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->lock()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeGetCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Lorg/videolan/libvlc/Media;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/IMediaList;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->unlock()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private declared-synchronized insertMediaFromEvent(I)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-lt v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 31
    .line 32
    new-instance v0, Lorg/videolan/libvlc/Media;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/IMediaList;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :goto_1
    monitor-exit p0

    .line 45
    throw p1
.end method

.method private declared-synchronized lock()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "already locked"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    throw v0
.end method

.method private native nativeGetCount()I
.end method

.method private native nativeLock()V
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/interfaces/ILibVLC;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V
.end method

.method private native nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeUnlock()V
.end method

.method private declared-synchronized removeMediaFromEvent(I)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 25
    .line 26
    if-ge p1, v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 29
    .line 30
    add-int/lit8 v2, p1, 0x1

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    move p1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw p1
.end method

.method private declared-synchronized unlock()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "not locked"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    throw v0
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

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

.method public declared-synchronized getMediaAt(I)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaList;->getCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public declared-synchronized isLocked()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
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

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/MediaList;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/IMediaList$Event;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/IMediaList$Event;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p4, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-nez p4, :cond_4

    const/4 p4, 0x1

    .line 3
    iput-boolean p4, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    const/16 p5, 0x200

    const/4 p6, 0x0

    const/4 p7, -0x1

    const/4 v0, 0x0

    if-eq p1, p5, :cond_2

    const/16 p4, 0x202

    if-eq p1, p4, :cond_1

    const/16 p2, 0x204

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lorg/videolan/libvlc/interfaces/IMediaList$Event;

    invoke-direct {p2, p1, p6, v0, p7}, Lorg/videolan/libvlc/interfaces/IMediaList$Event;-><init>(ILorg/videolan/libvlc/interfaces/IMedia;ZI)V

    move-object p6, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    long-to-int p3, p2

    if-eq p3, p7, :cond_3

    .line 5
    invoke-direct {p0, p3}, Lorg/videolan/libvlc/MediaList;->removeMediaFromEvent(I)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p2

    .line 6
    new-instance p6, Lorg/videolan/libvlc/interfaces/IMediaList$Event;

    invoke-direct {p6, p1, p2, v0, p3}, Lorg/videolan/libvlc/interfaces/IMediaList$Event;-><init>(ILorg/videolan/libvlc/interfaces/IMedia;ZI)V

    goto :goto_0

    :cond_2
    long-to-int p3, p2

    if-eq p3, p7, :cond_3

    .line 7
    invoke-direct {p0, p3}, Lorg/videolan/libvlc/MediaList;->insertMediaFromEvent(I)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p2

    .line 8
    new-instance p6, Lorg/videolan/libvlc/interfaces/IMediaList$Event;

    invoke-direct {p6, p1, p2, p4, p3}, Lorg/videolan/libvlc/interfaces/IMediaList$Event;-><init>(ILorg/videolan/libvlc/interfaces/IMedia;ZI)V

    .line 9
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-object p6

    .line 11
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already locked from event callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onReleaseNative()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeRelease()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
