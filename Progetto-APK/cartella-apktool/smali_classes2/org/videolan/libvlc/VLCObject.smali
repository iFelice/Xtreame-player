.class abstract Lorg/videolan/libvlc/VLCObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/IVLCObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/videolan/libvlc/interfaces/IVLCObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

.field private mInstance:J

.field private mNativeRefCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 15
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    .line 18
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 3
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    .line 6
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/IVLCObject;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 9
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    .line 12
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    return-void
.end method

.method private declared-synchronized dispatchEventFromNative(IJJFLjava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/VLCObject;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    new-instance p4, Lorg/videolan/libvlc/VLCObject$1EventRunnable;

    .line 25
    .line 26
    invoke-direct {p4, p0, p2, p1}, Lorg/videolan/libvlc/VLCObject$1EventRunnable;-><init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw p1
.end method

.method private native nativeDetachEvents()V
.end method


# virtual methods
.method public declared-synchronized finalize()V
    .locals 3

    .line 1
    const-string v0, "VLCObject ("

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ") finalized but not natively released ("

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " refs)"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public native getInstance()J
.end method

.method public getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mILibVLC:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized isReleased()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public abstract onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJF",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onReleaseNative()V
.end method

.method public release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-lez v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, -0x1

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;->nativeDetachEvents()V

    .line 28
    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->onReleaseNative()V

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    throw v0

    .line 39
    :cond_3
    :goto_1
    return-void

    .line 40
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v0
.end method

.method public final declared-synchronized retain()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventListener(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 5
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    if-nez p1, :cond_1

    .line 6
    iput-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_1
    iput-object p2, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method
