.class Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceTextureThread"
.end annotation


# instance fields
.field private mDoRelease:Z

.field private mFrameAvailable:Z

.field private mIsAttached:Z

.field private mLooper:Landroid/os/Looper;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    .line 6
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    .line 7
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    .line 8
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z

    .line 9
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;-><init>()V

    return-void
.end method

.method public static synthetic access$1200(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->attachToGLContext(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1600(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->detachFromGLContext()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;[F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->waitAndUpdateTexImage([F)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1800(Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;)Landroid/view/Surface;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->getSurface()Landroid/view/Surface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private declared-synchronized attachToGLContext(I)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->createSurface()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method private declared-synchronized createSurface()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    monitor-exit p0

    .line 27
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :cond_0
    :try_start_2
    new-instance v0, Landroid/view/Surface;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    :cond_1
    monitor-exit p0

    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :goto_1
    monitor-exit p0

    .line 42
    throw v0
.end method

.method private declared-synchronized detachFromGLContext()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :try_start_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :catch_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mThread:Ljava/lang/Thread;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 38
    .line 39
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 45
    .line 46
    .line 47
    :goto_1
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_2
    monitor-exit p0

    .line 52
    throw v0
.end method

.method private declared-synchronized getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->createSurface()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method private declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mIsAttached:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mDoRelease:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurface:Landroid/view/Surface;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit p0

    .line 34
    throw v0
.end method

.method private waitAndUpdateTexImage([F)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :catch_0
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v2, 0x1f4

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_2
    monitor-exit p0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    .line 21
    .line 22
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    throw p1
.end method


# virtual methods
.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mFrameAvailable:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "An available frame was not updated"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mLooper:Landroid/os/Looper;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceTextureThread;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0
.end method
