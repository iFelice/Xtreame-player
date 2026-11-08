.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super LO5/g;
.source "SourceFile"


# instance fields
.field public j0:I

.field public k0:LO5/a;

.field public l0:LO5/o;

.field public m0:LO5/m;

.field public final n0:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, LO5/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->k0:LO5/a;

    .line 9
    .line 10
    new-instance p1, LH2/g;

    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    invoke-direct {p1, p0, p2}, LH2/g;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    new-instance p2, LB0/w0;

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p2, v0, v1}, LB0/w0;-><init>(II)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 25
    .line 26
    new-instance p2, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->n0:Landroid/os/Handler;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, La7/b;->j()V

    .line 5
    .line 6
    .line 7
    const-string v0, "g"

    .line 8
    .line 9
    const-string v1, "pause()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, LO5/g;->O:I

    .line 16
    .line 17
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, La7/b;->j()V

    .line 23
    .line 24
    .line 25
    iget-boolean v2, v0, LP5/f;->f:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, LP5/f;->l:LP5/e;

    .line 30
    .line 31
    iget-object v3, v0, LP5/f;->a:LP5/j;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v0, LP5/f;->g:Z

    .line 39
    .line 40
    :goto_0
    const/4 v2, 0x0

    .line 41
    iput-boolean v2, v0, LP5/f;->f:Z

    .line 42
    .line 43
    iput-object v1, p0, LO5/g;->G:LP5/f;

    .line 44
    .line 45
    iput-boolean v2, p0, LO5/g;->M:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, LO5/g;->I:Landroid/os/Handler;

    .line 49
    .line 50
    const v2, 0x7f0b05c0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object v0, p0, LO5/g;->V:LO5/t;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v2, p0, LO5/g;->f0:LO5/d;

    .line 69
    .line 70
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, LO5/g;->V:LO5/t;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iput-object v1, p0, LO5/g;->S:LO5/t;

    .line 85
    .line 86
    iput-object v1, p0, LO5/g;->T:LO5/t;

    .line 87
    .line 88
    iput-object v1, p0, LO5/g;->a0:Landroid/graphics/Rect;

    .line 89
    .line 90
    iget-object v0, p0, LO5/g;->N:LB0/w0;

    .line 91
    .line 92
    iget-object v2, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroid/view/OrientationEventListener;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iput-object v1, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v1, v0, LB0/w0;->I:Ljava/lang/Object;

    .line 104
    .line 105
    iput-object v1, v0, LB0/w0;->K:Ljava/lang/Object;

    .line 106
    .line 107
    iget-object v0, p0, LO5/g;->h0:LO5/e;

    .line 108
    .line 109
    invoke-virtual {v0}, LO5/e;->e()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final g()LO5/l;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, LB0/w0;

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, LB0/w0;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 14
    .line 15
    :cond_0
    new-instance v0, LO5/n;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lq5/c;->P:Lq5/c;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 31
    .line 32
    check-cast v2, LB0/w0;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/util/EnumMap;

    .line 38
    .line 39
    const-class v4, Lq5/c;

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v2, LB0/w0;->J:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v1, v2, LB0/w0;->I:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Ljava/util/Collection;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    sget-object v4, Lq5/c;->I:Lq5/c;

    .line 63
    .line 64
    invoke-virtual {v3, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, v2, LB0/w0;->K:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    sget-object v4, Lq5/c;->K:Lq5/c;

    .line 74
    .line 75
    invoke-virtual {v3, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_3
    new-instance v1, Lq5/h;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Lq5/h;->e(Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    iget v2, v2, LB0/w0;->H:I

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    if-eq v2, v3, :cond_5

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    if-eq v2, v4, :cond_4

    .line 95
    .line 96
    new-instance v2, LO5/l;

    .line 97
    .line 98
    invoke-direct {v2, v1}, LO5/l;-><init>(Lq5/h;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    new-instance v2, LO5/r;

    .line 103
    .line 104
    invoke-direct {v2, v1}, LO5/l;-><init>(Lq5/h;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v3, v2, LO5/r;->c:Z

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    new-instance v2, LO5/q;

    .line 111
    .line 112
    invoke-direct {v2, v1}, LO5/l;-><init>(Lq5/h;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    new-instance v2, LO5/l;

    .line 117
    .line 118
    invoke-direct {v2, v1}, LO5/l;-><init>(Lq5/h;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    iput-object v2, v0, LO5/n;->a:LO5/l;

    .line 122
    .line 123
    return-object v2
.end method

.method public getDecoderFactory()LO5/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, LO5/g;->M:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, LO5/o;

    .line 14
    .line 15
    invoke-virtual {p0}, LO5/g;->getCameraInstance()LP5/f;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()LO5/l;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->n0:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v0, v2, v3, v4}, LO5/o;-><init>(LP5/f;LO5/l;Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->l0:LO5/o;

    .line 29
    .line 30
    invoke-virtual {p0}, LO5/g;->getPreviewFramingRect()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v0, LO5/o;->f:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->l0:LO5/o;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, La7/b;->j()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/os/HandlerThread;

    .line 45
    .line 46
    const-string v3, "o"

    .line 47
    .line 48
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v0, LO5/o;->b:Landroid/os/HandlerThread;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/os/Handler;

    .line 57
    .line 58
    iget-object v3, v0, LO5/o;->b:Landroid/os/HandlerThread;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, v0, LO5/o;->i:LH2/g;

    .line 65
    .line 66
    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, LO5/o;->c:Landroid/os/Handler;

    .line 70
    .line 71
    iput-boolean v1, v0, LO5/o;->g:Z

    .line 72
    .line 73
    iget-object v1, v0, LO5/o;->a:LP5/f;

    .line 74
    .line 75
    iget-object v2, v1, LP5/f;->h:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v3, LP5/d;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    iget-object v0, v0, LO5/o;->j:LZ3/o;

    .line 81
    .line 82
    invoke-direct {v3, v1, v0, v4}, LP5/d;-><init>(LP5/f;LZ3/o;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->l0:LO5/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, La7/b;->j()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, LO5/o;->h:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iput-boolean v2, v0, LO5/o;->g:Z

    .line 16
    .line 17
    iget-object v2, v0, LO5/o;->c:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, LO5/o;->b:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 26
    .line 27
    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->l0:LO5/o;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public setDecoderFactory(LO5/m;)V
    .locals 1

    .line 1
    invoke-static {}, La7/b;->j()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->m0:LO5/m;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->l0:LO5/o;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()LO5/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p1, LO5/o;->d:LO5/l;

    .line 15
    .line 16
    :cond_0
    return-void
.end method
