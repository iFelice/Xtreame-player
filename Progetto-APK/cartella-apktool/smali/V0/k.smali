.class public final LV0/k;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field public static final synthetic R:I


# instance fields
.field public final G:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final H:Landroid/hardware/SensorManager;

.field public final I:Landroid/hardware/Sensor;

.field public final J:LV0/d;

.field public final K:Landroid/os/Handler;

.field public final L:LV0/i;

.field public M:Landroid/graphics/SurfaceTexture;

.field public N:Landroid/view/Surface;

.field public O:Z

.field public P:Z

.field public Q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, p1, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, LV0/k;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, LV0/k;->K:Landroid/os/Handler;

    .line 24
    .line 25
    const-string v2, "sensor"

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast v2, Landroid/hardware/SensorManager;

    .line 35
    .line 36
    iput-object v2, p0, LV0/k;->H:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    const/16 v3, 0xf

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    const/16 v3, 0xb

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_0
    iput-object v3, p0, LV0/k;->I:Landroid/hardware/Sensor;

    .line 53
    .line 54
    new-instance v2, LV0/i;

    .line 55
    .line 56
    invoke-direct {v2}, LV0/i;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, LV0/k;->L:LV0/i;

    .line 60
    .line 61
    new-instance v3, LV0/j;

    .line 62
    .line 63
    invoke-direct {v3, p0, v2}, LV0/j;-><init>(LV0/k;LV0/i;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, LV0/l;

    .line 67
    .line 68
    invoke-direct {v2, p1, v3}, LV0/l;-><init>(Landroid/content/Context;LV0/j;)V

    .line 69
    .line 70
    .line 71
    const-string v4, "window"

    .line 72
    .line 73
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/view/WindowManager;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v4, LV0/d;

    .line 87
    .line 88
    new-array v5, v1, [LV0/c;

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    aput-object v2, v5, v6

    .line 92
    .line 93
    aput-object v3, v5, v0

    .line 94
    .line 95
    invoke-direct {v4, p1, v5}, LV0/d;-><init>(Landroid/view/Display;[LV0/c;)V

    .line 96
    .line 97
    .line 98
    iput-object v4, p0, LV0/k;->J:LV0/d;

    .line 99
    .line 100
    iput-boolean v0, p0, LV0/k;->O:Z

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LV0/k;->O:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, LV0/k;->P:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, LV0/k;->I:Landroid/hardware/Sensor;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p0, LV0/k;->Q:Z

    .line 18
    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v3, p0, LV0/k;->J:LV0/d;

    .line 23
    .line 24
    iget-object v4, p0, LV0/k;->H:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iput-boolean v0, p0, LV0/k;->Q:Z

    .line 36
    .line 37
    :cond_3
    :goto_2
    return-void
.end method

.method public getCameraMotionListener()LV0/a;
    .locals 1

    .line 1
    iget-object v0, p0, LV0/k;->L:LV0/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoFrameMetadataListener()LU0/B;
    .locals 1

    .line 1
    iget-object v0, p0, LV0/k;->L:LV0/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, LV0/k;->N:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LV0/k;->K:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, La/b;

    .line 7
    .line 8
    const/16 v2, 0x15

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LV0/k;->P:Z

    .line 3
    .line 4
    invoke-virtual {p0}, LV0/k;->a()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LV0/k;->P:Z

    .line 6
    .line 7
    invoke-virtual {p0}, LV0/k;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LV0/k;->L:LV0/i;

    .line 2
    .line 3
    iput p1, v0, LV0/i;->Q:I

    .line 4
    .line 5
    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LV0/k;->O:Z

    .line 2
    .line 3
    invoke-virtual {p0}, LV0/k;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
