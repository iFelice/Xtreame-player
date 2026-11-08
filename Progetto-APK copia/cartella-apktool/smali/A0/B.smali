.class public final LA0/B;
.super LA0/a0;
.source "SourceFile"


# static fields
.field public static final c0:[I

.field public static final d0:[I

.field public static final e0:J


# instance fields
.field public final J:LF/i;

.field public K:LA0/y;

.field public final L:I

.field public final M:Landroid/view/Surface;

.field public final N:Landroid/graphics/SurfaceTexture;

.field public final O:[F

.field public final P:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final Q:Ljava/util/concurrent/ScheduledExecutorService;

.field public final R:Z

.field public S:I

.field public T:I

.field public U:Z

.field public V:Lm0/u;

.field public W:Lm0/u;

.field public X:Z

.field public Y:Ljava/util/concurrent/ScheduledFuture;

.field public Z:Ljava/util/concurrent/CountDownLatch;

.field public volatile a0:Z

.field public volatile b0:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LA0/B;->c0:[I

    .line 9
    .line 10
    const/16 v0, 0x780

    .line 11
    .line 12
    const/16 v1, 0x440

    .line 13
    .line 14
    filled-new-array {v0, v1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, LA0/B;->d0:[I

    .line 19
    .line 20
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "emulator"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const-string v1, "emu64a"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, "emu64x"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    const-string v1, "generic"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const-wide/16 v0, 0x4e20

    .line 65
    .line 66
    :goto_1
    sput-wide v0, LA0/B;->e0:J

    .line 67
    .line 68
    return-void

    .line 69
    :array_0
    .array-data 4
        0x2
        0x3
        0x6
        0x7
        0x8
        0x9
        0xb
        0xe
    .end array-data
.end method

.method public constructor <init>(LF/i;LA0/h0;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, LA0/a0;-><init>(LA0/h0;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/B;->J:LF/i;

    .line 5
    .line 6
    iput-boolean p3, p0, LA0/B;->X:Z

    .line 7
    .line 8
    iput-boolean p4, p0, LA0/B;->R:Z

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    :try_start_0
    new-array p3, p1, [I

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    invoke-static {p1, p3, p4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lp0/b;->e()V

    .line 18
    .line 19
    .line 20
    aget p3, p3, p4

    .line 21
    .line 22
    const p4, 0x8d65

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x2601

    .line 26
    .line 27
    invoke-static {p4, p3, v0}, Lp0/b;->c(III)V

    .line 28
    .line 29
    .line 30
    iput p3, p0, LA0/B;->L:I
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    new-instance p4, Landroid/graphics/SurfaceTexture;

    .line 33
    .line 34
    invoke-direct {p4, p3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p4, p0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 38
    .line 39
    const/16 p3, 0x10

    .line 40
    .line 41
    new-array p3, p3, [F

    .line 42
    .line 43
    iput-object p3, p0, LA0/B;->O:[F

    .line 44
    .line 45
    new-instance p3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 51
    .line 52
    sget-object p3, Lp0/M;->a:Ljava/lang/String;

    .line 53
    .line 54
    new-instance p3, Lp0/L;

    .line 55
    .line 56
    const-string v0, "ExtTexMgr:Timer"

    .line 57
    .line 58
    invoke-direct {p3, v0, p1}, Lp0/L;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, LA0/B;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 66
    .line 67
    new-instance p1, LA0/A;

    .line 68
    .line 69
    invoke-direct {p1, p0, p2}, LA0/A;-><init>(LA0/B;LA0/h0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Landroid/view/Surface;

    .line 76
    .line 77
    invoke-direct {p1, p4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, LA0/B;->M:Landroid/view/Surface;

    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Lm0/o0;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p2
.end method

.method public static l(IF)F
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    move v2, p0

    .line 3
    const/4 v1, 0x2

    .line 4
    :goto_0
    const/16 v3, 0x100

    .line 5
    .line 6
    if-gt v1, v3, :cond_1

    .line 7
    .line 8
    add-int v3, p0, v1

    .line 9
    .line 10
    add-int/lit8 v3, v3, -0x1

    .line 11
    .line 12
    div-int/2addr v3, v1

    .line 13
    mul-int v3, v3, v1

    .line 14
    .line 15
    invoke-static {p1, v3, p0}, LA0/B;->o(FII)F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {p1, v2, p0}, LA0/B;->o(FII)F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    cmpg-float v4, v4, v5

    .line 24
    .line 25
    if-gez v4, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, LA0/B;->d0:[I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_1
    if-ge v3, v0, :cond_4

    .line 35
    .line 36
    aget v4, v1, v3

    .line 37
    .line 38
    if-ge v4, p0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p1, v4, p0}, LA0/B;->o(FII)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {p1, v2, p0}, LA0/B;->o(FII)F

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    cmpg-float v5, v5, v6

    .line 50
    .line 51
    if-gez v5, :cond_3

    .line 52
    .line 53
    move v2, v4

    .line 54
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    invoke-static {p1, v2, p0}, LA0/B;->o(FII)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const v1, 0x3089705f    # 1.0E-9f

    .line 62
    .line 63
    .line 64
    cmpl-float v0, v0, v1

    .line 65
    .line 66
    if-lez v0, :cond_5

    .line 67
    .line 68
    return p1

    .line 69
    :cond_5
    int-to-float p0, p0

    .line 70
    int-to-float p1, v2

    .line 71
    div-float/2addr p0, p1

    .line 72
    return p0
.end method

.method public static o(FII)F
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x2

    .line 5
    if-gt v1, v2, :cond_1

    .line 6
    .line 7
    int-to-float v2, p2

    .line 8
    int-to-float v3, v1

    .line 9
    sub-float/2addr v2, v3

    .line 10
    int-to-float v3, p1

    .line 11
    div-float/2addr v2, v3

    .line 12
    sub-float/2addr v2, p0

    .line 13
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    cmpg-float v3, v3, v0

    .line 18
    .line 19
    if-gez v3, :cond_0

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method


# virtual methods
.method public final A(Lm0/v;)V
    .locals 2

    .line 1
    new-instance p1, LA0/z;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {p1, p0, v0}, LA0/z;-><init>(LA0/B;I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LA0/B;->a0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LA0/B;->S:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LA0/B;->V:Lm0/u;

    .line 6
    .line 7
    iget-object v1, p0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LA0/B;->W:Lm0/u;

    .line 13
    .line 14
    invoke-super {p0}, LA0/a0;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, LA0/B;->M:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(Lm0/u;)V
    .locals 2

    .line 1
    iput-object p1, p0, LA0/B;->W:Lm0/u;

    .line 2
    .line 3
    iget-boolean v0, p0, LA0/B;->X:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance p1, LA0/z;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, p0, v0}, LA0/z;-><init>(LA0/B;I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iget-object v1, p0, LA0/a0;->G:LA0/h0;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, LA0/h0;->f(LA0/g0;Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/B;->M:Landroid/view/Surface;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LA0/B;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    const-string v0, "ExtTexMgr"

    .line 2
    .line 3
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    iget-object v3, p0, LA0/a0;->G:LA0/h0;

    .line 12
    .line 13
    new-instance v4, LA0/z;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-direct {v4, p0, v5}, LA0/z;-><init>(LA0/B;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v4, v2}, LA0/h0;->f(LA0/g0;Z)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    sget-wide v2, LA0/B;->e0:J

    .line 23
    .line 24
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v1, "Timeout reached while waiting for latch to be unblocked."

    .line 33
    .line 34
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 43
    .line 44
    .line 45
    const-string v1, "Interrupted when waiting for MediaCodec frames to arrive."

    .line 46
    .line 47
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 52
    .line 53
    iget-object v0, p0, LA0/B;->b0:Ljava/lang/RuntimeException;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, LA0/B;->b0:Ljava/lang/RuntimeException;

    .line 59
    .line 60
    throw v0
.end method

.method public final h(Lm0/u;Z)V
    .locals 1

    .line 1
    iput-boolean p2, p0, LA0/B;->X:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, LA0/B;->W:Lm0/u;

    .line 6
    .line 7
    iget-object p2, p0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    iget-object p1, p1, Lm0/u;->a:Lm0/t;

    .line 10
    .line 11
    iget v0, p1, Lm0/t;->v:I

    .line 12
    .line 13
    iget p1, p1, Lm0/t;->w:I

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final j(LA0/m;)V
    .locals 2

    .line 1
    new-instance v0, LA0/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p1}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iget-object v1, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    new-instance v0, LA0/z;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, LA0/z;-><init>(LA0/B;I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final m()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LA0/B;->S:I

    .line 4
    .line 5
    if-eqz v1, :cond_f

    .line 6
    .line 7
    iget v1, v0, LA0/B;->T:I

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    iget-object v1, v0, LA0/B;->V:Lm0/u;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 20
    .line 21
    .line 22
    iget v1, v0, LA0/B;->T:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    sub-int/2addr v1, v2

    .line 26
    iput v1, v0, LA0/B;->T:I

    .line 27
    .line 28
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lm0/u;

    .line 35
    .line 36
    iput-object v1, v0, LA0/B;->V:Lm0/u;

    .line 37
    .line 38
    iget v3, v0, LA0/B;->S:I

    .line 39
    .line 40
    sub-int/2addr v3, v2

    .line 41
    iput v3, v0, LA0/B;->S:I

    .line 42
    .line 43
    iget-object v3, v0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 44
    .line 45
    iget-object v4, v0, LA0/B;->O:[F

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-wide v5, v1, Lm0/u;->b:J

    .line 57
    .line 58
    const-wide/16 v7, 0x3e8

    .line 59
    .line 60
    div-long/2addr v3, v7

    .line 61
    add-long/2addr v3, v5

    .line 62
    iget-boolean v5, v0, LA0/B;->R:Z

    .line 63
    .line 64
    const/4 v6, -0x1

    .line 65
    if-eqz v5, :cond_e

    .line 66
    .line 67
    iget-object v5, v0, LA0/B;->O:[F

    .line 68
    .line 69
    iget-object v7, v1, Lm0/u;->a:Lm0/t;

    .line 70
    .line 71
    iget v8, v7, Lm0/t;->v:I

    .line 72
    .line 73
    iget v7, v7, Lm0/t;->w:I

    .line 74
    .line 75
    array-length v9, v5

    .line 76
    const/16 v10, 0x10

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    if-eq v9, v10, :cond_1

    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v9, 0x0

    .line 84
    :goto_0
    sget-object v10, LA0/B;->c0:[I

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    :goto_1
    const/16 v13, 0x8

    .line 88
    .line 89
    const v14, 0x3089705f    # 1.0E-9f

    .line 90
    .line 91
    .line 92
    if-ge v12, v13, :cond_3

    .line 93
    .line 94
    aget v13, v10, v12

    .line 95
    .line 96
    aget v13, v5, v13

    .line 97
    .line 98
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    cmpl-float v13, v13, v14

    .line 103
    .line 104
    if-lez v13, :cond_2

    .line 105
    .line 106
    const/4 v13, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const/4 v13, 0x0

    .line 109
    :goto_2
    or-int/2addr v9, v13

    .line 110
    add-int/lit8 v12, v12, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const/16 v10, 0xa

    .line 114
    .line 115
    aget v10, v5, v10

    .line 116
    .line 117
    const/high16 v12, 0x3f800000    # 1.0f

    .line 118
    .line 119
    sub-float/2addr v10, v12

    .line 120
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    cmpl-float v10, v10, v14

    .line 125
    .line 126
    if-lez v10, :cond_4

    .line 127
    .line 128
    const/4 v10, 0x1

    .line 129
    goto :goto_3

    .line 130
    :cond_4
    const/4 v10, 0x0

    .line 131
    :goto_3
    or-int/2addr v9, v10

    .line 132
    const/16 v10, 0xf

    .line 133
    .line 134
    aget v10, v5, v10

    .line 135
    .line 136
    sub-float/2addr v10, v12

    .line 137
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    cmpl-float v10, v10, v14

    .line 142
    .line 143
    if-lez v10, :cond_5

    .line 144
    .line 145
    const/4 v10, 0x1

    .line 146
    goto :goto_4

    .line 147
    :cond_5
    const/4 v10, 0x0

    .line 148
    :goto_4
    or-int/2addr v9, v10

    .line 149
    aget v10, v5, v11

    .line 150
    .line 151
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    const/16 v13, 0xd

    .line 156
    .line 157
    const/16 v15, 0xc

    .line 158
    .line 159
    const/16 v16, 0x4

    .line 160
    .line 161
    const/16 v17, 0x5

    .line 162
    .line 163
    cmpl-float v10, v10, v14

    .line 164
    .line 165
    if-lez v10, :cond_8

    .line 166
    .line 167
    aget v10, v5, v17

    .line 168
    .line 169
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    cmpl-float v10, v10, v14

    .line 174
    .line 175
    if-lez v10, :cond_8

    .line 176
    .line 177
    aget v10, v5, v2

    .line 178
    .line 179
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    cmpl-float v10, v10, v14

    .line 184
    .line 185
    if-lez v10, :cond_6

    .line 186
    .line 187
    const/4 v10, 0x1

    .line 188
    goto :goto_5

    .line 189
    :cond_6
    const/4 v10, 0x0

    .line 190
    :goto_5
    or-int/2addr v9, v10

    .line 191
    aget v10, v5, v16

    .line 192
    .line 193
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    cmpl-float v10, v10, v14

    .line 198
    .line 199
    if-lez v10, :cond_7

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_7
    const/4 v2, 0x0

    .line 203
    :goto_6
    or-int/2addr v2, v9

    .line 204
    const/16 v13, 0xc

    .line 205
    .line 206
    const/16 v15, 0xd

    .line 207
    .line 208
    const/16 v16, 0x5

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_8
    aget v10, v5, v2

    .line 212
    .line 213
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    cmpl-float v10, v10, v14

    .line 218
    .line 219
    if-lez v10, :cond_b

    .line 220
    .line 221
    aget v10, v5, v16

    .line 222
    .line 223
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    cmpl-float v10, v10, v14

    .line 228
    .line 229
    if-lez v10, :cond_b

    .line 230
    .line 231
    aget v10, v5, v11

    .line 232
    .line 233
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    cmpl-float v10, v10, v14

    .line 238
    .line 239
    if-lez v10, :cond_9

    .line 240
    .line 241
    const/4 v10, 0x1

    .line 242
    goto :goto_7

    .line 243
    :cond_9
    const/4 v10, 0x0

    .line 244
    :goto_7
    or-int/2addr v9, v10

    .line 245
    aget v10, v5, v17

    .line 246
    .line 247
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    cmpl-float v10, v10, v14

    .line 252
    .line 253
    if-lez v10, :cond_a

    .line 254
    .line 255
    const/4 v11, 0x1

    .line 256
    :cond_a
    or-int/2addr v9, v11

    .line 257
    move v2, v9

    .line 258
    const/4 v11, 0x1

    .line 259
    goto :goto_8

    .line 260
    :cond_b
    const/4 v11, -0x1

    .line 261
    const/4 v13, -0x1

    .line 262
    const/4 v15, -0x1

    .line 263
    const/16 v16, -0x1

    .line 264
    .line 265
    :goto_8
    if-eqz v2, :cond_c

    .line 266
    .line 267
    sget v2, LA0/g;->a:I

    .line 268
    .line 269
    const-class v2, LA0/g;

    .line 270
    .line 271
    monitor-enter v2

    .line 272
    monitor-exit v2

    .line 273
    goto :goto_9

    .line 274
    :cond_c
    aget v2, v5, v11

    .line 275
    .line 276
    aget v9, v5, v13

    .line 277
    .line 278
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    add-float/2addr v10, v14

    .line 283
    const/high16 v17, 0x3f000000    # 0.5f

    .line 284
    .line 285
    cmpg-float v10, v10, v12

    .line 286
    .line 287
    if-gez v10, :cond_d

    .line 288
    .line 289
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 290
    .line 291
    .line 292
    move-result v10

    .line 293
    invoke-static {v8, v10}, LA0/B;->l(IF)F

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-static {v8, v2}, Ljava/lang/Math;->copySign(FF)F

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    sub-float/2addr v2, v8

    .line 302
    mul-float v2, v2, v17

    .line 303
    .line 304
    add-float/2addr v2, v9

    .line 305
    invoke-static {}, LA0/g;->a()V

    .line 306
    .line 307
    .line 308
    aput v8, v5, v11

    .line 309
    .line 310
    aput v2, v5, v13

    .line 311
    .line 312
    :cond_d
    aget v2, v5, v16

    .line 313
    .line 314
    aget v8, v5, v15

    .line 315
    .line 316
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    add-float/2addr v9, v14

    .line 321
    cmpg-float v9, v9, v12

    .line 322
    .line 323
    if-gez v9, :cond_e

    .line 324
    .line 325
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-static {v7, v9}, LA0/B;->l(IF)F

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    invoke-static {v7, v2}, Ljava/lang/Math;->copySign(FF)F

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    sub-float/2addr v2, v7

    .line 338
    mul-float v2, v2, v17

    .line 339
    .line 340
    add-float/2addr v2, v8

    .line 341
    invoke-static {}, LA0/g;->a()V

    .line 342
    .line 343
    .line 344
    aput v7, v5, v16

    .line 345
    .line 346
    aput v2, v5, v15

    .line 347
    .line 348
    :cond_e
    :goto_9
    iget-object v2, v0, LA0/B;->K:LA0/y;

    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    iget-object v5, v0, LA0/B;->O:[F

    .line 354
    .line 355
    check-cast v2, LA0/m;

    .line 356
    .line 357
    iget-object v2, v2, LA0/m;->h:Lp0/o;

    .line 358
    .line 359
    const-string v7, "uTexTransformationMatrix"

    .line 360
    .line 361
    invoke-virtual {v2, v7, v5}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, LA0/B;->K:LA0/y;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iget-object v5, v0, LA0/B;->J:LF/i;

    .line 370
    .line 371
    new-instance v7, Lm0/v;

    .line 372
    .line 373
    iget v8, v0, LA0/B;->L:I

    .line 374
    .line 375
    iget-object v1, v1, Lm0/u;->a:Lm0/t;

    .line 376
    .line 377
    iget v9, v1, Lm0/t;->v:I

    .line 378
    .line 379
    iget v1, v1, Lm0/t;->w:I

    .line 380
    .line 381
    invoke-direct {v7, v8, v6, v9, v1}, Lm0/v;-><init>(IIII)V

    .line 382
    .line 383
    .line 384
    check-cast v2, LA0/a;

    .line 385
    .line 386
    invoke-virtual {v2, v5, v7, v3, v4}, LA0/a;->b(LF/i;Lm0/v;J)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 390
    .line 391
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    check-cast v1, Lm0/u;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v3, v4}, LA0/g;->b(J)V

    .line 401
    .line 402
    .line 403
    :cond_f
    :goto_a
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, LA0/B;->T:I

    .line 2
    .line 3
    iget-object v1, p0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, LA0/B;->T:I

    .line 10
    .line 11
    iget-object v0, p0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    new-instance v0, LA0/z;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, LA0/z;-><init>(LA0/B;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
