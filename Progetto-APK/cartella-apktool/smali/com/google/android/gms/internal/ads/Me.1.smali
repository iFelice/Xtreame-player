.class public final Lcom/google/android/gms/internal/ads/Me;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/ads/Ke;


# static fields
.field public static final h0:[F


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Le;

.field public final H:[F

.field public final I:[F

.field public final J:[F

.field public final K:[F

.field public final L:[F

.field public final M:[F

.field public final N:[F

.field public O:F

.field public P:F

.field public Q:F

.field public R:I

.field public S:I

.field public T:Landroid/graphics/SurfaceTexture;

.field public U:Landroid/graphics/SurfaceTexture;

.field public V:I

.field public W:I

.field public X:I

.field public final Y:Ljava/nio/FloatBuffer;

.field public final Z:Ljava/util/concurrent/CountDownLatch;

.field public final a0:Ljava/lang/Object;

.field public b0:Ljavax/microedition/khronos/egl/EGL10;

.field public c0:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public d0:Ljavax/microedition/khronos/egl/EGLContext;

.field public e0:Ljavax/microedition/khronos/egl/EGLSurface;

.field public volatile f0:Z

.field public volatile g0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/Me;->h0:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "SphericalVideoProcessor"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x30

    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->Y:Ljava/nio/FloatBuffer;

    .line 25
    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/Me;->h0:[F

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x9

    .line 37
    .line 38
    new-array v1, v0, [F

    .line 39
    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->H:[F

    .line 41
    .line 42
    new-array v1, v0, [F

    .line 43
    .line 44
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->I:[F

    .line 45
    .line 46
    new-array v1, v0, [F

    .line 47
    .line 48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->J:[F

    .line 49
    .line 50
    new-array v1, v0, [F

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->K:[F

    .line 53
    .line 54
    new-array v1, v0, [F

    .line 55
    .line 56
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->L:[F

    .line 57
    .line 58
    new-array v1, v0, [F

    .line 59
    .line 60
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->M:[F

    .line 61
    .line 62
    new-array v0, v0, [F

    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->N:[F

    .line 65
    .line 66
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 67
    .line 68
    iput v0, p0, Lcom/google/android/gms/internal/ads/Me;->O:F

    .line 69
    .line 70
    new-instance v0, Lcom/google/android/gms/internal/ads/Le;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/Le;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->G:Lcom/google/android/gms/internal/ads/Le;

    .line 76
    .line 77
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/Le;->h:Lcom/google/android/gms/internal/ads/Ke;

    .line 78
    .line 79
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 86
    .line 87
    new-instance p1, Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 93
    .line 94
    return-void
.end method

.method public static final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ": glError "

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "SphericalVideoRenderer"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static final g([F[F[F)V
    .locals 19

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    aget v2, p2, v0

    .line 5
    .line 6
    mul-float v1, v1, v2

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget v3, p1, v2

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    aget v5, p2, v4

    .line 13
    .line 14
    mul-float v6, v3, v5

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    aget v8, p1, v7

    .line 18
    .line 19
    const/4 v9, 0x6

    .line 20
    aget v10, p2, v9

    .line 21
    .line 22
    mul-float v11, v8, v10

    .line 23
    .line 24
    add-float/2addr v1, v6

    .line 25
    add-float/2addr v1, v11

    .line 26
    aput v1, p0, v0

    .line 27
    .line 28
    aget v1, p1, v0

    .line 29
    .line 30
    aget v6, p2, v2

    .line 31
    .line 32
    mul-float v6, v6, v1

    .line 33
    .line 34
    const/4 v11, 0x4

    .line 35
    aget v12, p2, v11

    .line 36
    .line 37
    mul-float v3, v3, v12

    .line 38
    .line 39
    const/4 v13, 0x7

    .line 40
    aget v14, p2, v13

    .line 41
    .line 42
    mul-float v15, v8, v14

    .line 43
    .line 44
    add-float/2addr v6, v3

    .line 45
    add-float/2addr v6, v15

    .line 46
    aput v6, p0, v2

    .line 47
    .line 48
    aget v3, p2, v7

    .line 49
    .line 50
    mul-float v1, v1, v3

    .line 51
    .line 52
    aget v3, p1, v2

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    aget v15, p2, v6

    .line 56
    .line 57
    mul-float v3, v3, v15

    .line 58
    .line 59
    const/16 v16, 0x8

    .line 60
    .line 61
    aget v17, p2, v16

    .line 62
    .line 63
    mul-float v8, v8, v17

    .line 64
    .line 65
    add-float/2addr v1, v3

    .line 66
    add-float/2addr v1, v8

    .line 67
    aput v1, p0, v7

    .line 68
    .line 69
    aget v1, p1, v4

    .line 70
    .line 71
    aget v0, p2, v0

    .line 72
    .line 73
    mul-float v1, v1, v0

    .line 74
    .line 75
    aget v3, p1, v11

    .line 76
    .line 77
    mul-float v5, v5, v3

    .line 78
    .line 79
    aget v8, p1, v6

    .line 80
    .line 81
    mul-float v18, v8, v10

    .line 82
    .line 83
    add-float/2addr v1, v5

    .line 84
    add-float v1, v1, v18

    .line 85
    .line 86
    aput v1, p0, v4

    .line 87
    .line 88
    aget v1, p1, v4

    .line 89
    .line 90
    aget v2, p2, v2

    .line 91
    .line 92
    mul-float v5, v1, v2

    .line 93
    .line 94
    mul-float v3, v3, v12

    .line 95
    .line 96
    mul-float v12, v8, v14

    .line 97
    .line 98
    add-float/2addr v5, v3

    .line 99
    add-float/2addr v5, v12

    .line 100
    aput v5, p0, v11

    .line 101
    .line 102
    aget v3, p2, v7

    .line 103
    .line 104
    mul-float v1, v1, v3

    .line 105
    .line 106
    aget v5, p1, v11

    .line 107
    .line 108
    mul-float v5, v5, v15

    .line 109
    .line 110
    mul-float v8, v8, v17

    .line 111
    .line 112
    add-float/2addr v1, v5

    .line 113
    add-float/2addr v1, v8

    .line 114
    aput v1, p0, v6

    .line 115
    .line 116
    aget v1, p1, v9

    .line 117
    .line 118
    mul-float v1, v1, v0

    .line 119
    .line 120
    aget v0, p1, v13

    .line 121
    .line 122
    aget v4, p2, v4

    .line 123
    .line 124
    mul-float v4, v4, v0

    .line 125
    .line 126
    aget v5, p1, v16

    .line 127
    .line 128
    mul-float v10, v10, v5

    .line 129
    .line 130
    add-float/2addr v1, v4

    .line 131
    add-float/2addr v1, v10

    .line 132
    aput v1, p0, v9

    .line 133
    .line 134
    aget v1, p1, v9

    .line 135
    .line 136
    mul-float v2, v2, v1

    .line 137
    .line 138
    aget v4, p2, v11

    .line 139
    .line 140
    mul-float v0, v0, v4

    .line 141
    .line 142
    add-float/2addr v0, v2

    .line 143
    mul-float v14, v14, v5

    .line 144
    .line 145
    add-float/2addr v14, v0

    .line 146
    aput v14, p0, v13

    .line 147
    .line 148
    mul-float v1, v1, v3

    .line 149
    .line 150
    aget v0, p1, v13

    .line 151
    .line 152
    aget v2, p2, v6

    .line 153
    .line 154
    mul-float v0, v0, v2

    .line 155
    .line 156
    mul-float v5, v5, v17

    .line 157
    .line 158
    add-float/2addr v1, v0

    .line 159
    add-float/2addr v1, v5

    .line 160
    aput v1, p0, v16

    .line 161
    .line 162
    return-void
.end method

.method public static final h([FF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    aput v1, p0, v0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    aput v1, p0, v0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    aput v1, p0, v0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    aput v1, p0, v0

    .line 15
    .line 16
    float-to-double v2, p1

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    double-to-float p1, v4

    .line 22
    const/4 v0, 0x4

    .line 23
    aput p1, p0, v0

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    neg-double v4, v4

    .line 30
    double-to-float p1, v4

    .line 31
    const/4 v0, 0x5

    .line 32
    aput p1, p0, v0

    .line 33
    .line 34
    const/4 p1, 0x6

    .line 35
    aput v1, p0, p1

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    double-to-float p1, v0

    .line 42
    const/4 v0, 0x7

    .line 43
    aput p1, p0, v0

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    double-to-float p1, v0

    .line 50
    const/16 v0, 0x8

    .line 51
    .line 52
    aput p1, p0, v0

    .line 53
    .line 54
    return-void
.end method

.method public static final i([FF)V
    .locals 5

    .line 1
    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v2

    .line 6
    double-to-float p1, v2

    .line 7
    const/4 v2, 0x0

    .line 8
    aput p1, p0, v2

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    neg-double v2, v2

    .line 15
    double-to-float p1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    aput p1, p0, v2

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    const/4 v2, 0x0

    .line 21
    aput v2, p0, p1

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    double-to-float p1, v3

    .line 28
    const/4 v3, 0x3

    .line 29
    aput p1, p0, v3

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float p1, v0

    .line 36
    const/4 v0, 0x4

    .line 37
    aput p1, p0, v0

    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    aput v2, p0, p1

    .line 41
    .line 42
    const/4 p1, 0x6

    .line 43
    aput v2, p0, p1

    .line 44
    .line 45
    const/4 p1, 0x7

    .line 46
    aput v2, p0, p1

    .line 47
    .line 48
    const/16 p1, 0x8

    .line 49
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    .line 52
    aput v0, p0, p1

    .line 53
    .line 54
    return-void
.end method

.method public static final j(ILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "createShader"

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "shaderSource"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 21
    .line 22
    .line 23
    const-string p1, "compileShader"

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    new-array p1, p1, [I

    .line 30
    .line 31
    const v1, 0x8b81

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 36
    .line 37
    .line 38
    const-string v1, "getShaderiv"

    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aget p1, p1, v2

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "Could not compile shader "

    .line 50
    .line 51
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ":"

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "SphericalVideoRenderer"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 79
    .line 80
    .line 81
    const-string p0, "deleteShader"

    .line 82
    .line 83
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public final b(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Me;->f0:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Me;->g0:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final d(FF)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Me;->S:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Me;->R:I

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/Me;->P:F

    const v2, 0x3fdf66f3

    mul-float p1, p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Me;->P:F

    iget p1, p0, Lcom/google/android/gms/internal/ads/Me;->Q:F

    mul-float p2, p2, v2

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Me;->Q:F

    const p2, -0x4036f025

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/Me;->Q:F

    const p1, -0x4036f025

    :cond_1
    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iput p2, p0, Lcom/google/android/gms/internal/ads/Me;->Q:F

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->e0:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 13
    .line 14
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 15
    .line 16
    invoke-interface {v0, v3, v2, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Me;->e0:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 24
    .line 25
    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->e0:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->d0:Ljavax/microedition/khronos/egl/EGLContext;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 37
    .line 38
    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->d0:Ljavax/microedition/khronos/egl/EGLContext;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 48
    .line 49
    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const/16 v3, 0x3038

    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    if-eqz v7, :cond_1b

    .line 15
    .line 16
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    check-cast v7, Ljavax/microedition/khronos/egl/EGL10;

    .line 21
    .line 22
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 23
    .line 24
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 31
    .line 32
    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 33
    .line 34
    const/4 v9, 0x2

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x1

    .line 37
    const/4 v12, 0x0

    .line 38
    if-ne v7, v8, :cond_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    new-array v8, v9, [I

    .line 44
    .line 45
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 46
    .line 47
    invoke-interface {v13, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-array v7, v11, [I

    .line 55
    .line 56
    new-array v8, v11, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 57
    .line 58
    new-array v15, v0, [I

    .line 59
    .line 60
    fill-array-data v15, :array_0

    .line 61
    .line 62
    .line 63
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 64
    .line 65
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 66
    .line 67
    const/16 v17, 0x1

    .line 68
    .line 69
    move-object/from16 v16, v8

    .line 70
    .line 71
    move-object/from16 v18, v7

    .line 72
    .line 73
    invoke-interface/range {v13 .. v18}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-nez v13, :cond_4

    .line 78
    .line 79
    :cond_3
    move-object v7, v10

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    aget v7, v7, v12

    .line 82
    .line 83
    if-lez v7, :cond_3

    .line 84
    .line 85
    aget-object v7, v8, v12

    .line 86
    .line 87
    :goto_1
    if-nez v7, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/16 v8, 0x3098

    .line 91
    .line 92
    filled-new-array {v8, v9, v3}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 97
    .line 98
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 99
    .line 100
    sget-object v14, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 101
    .line 102
    invoke-interface {v8, v13, v7, v14, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->d0:Ljavax/microedition/khronos/egl/EGLContext;

    .line 107
    .line 108
    if-eqz v3, :cond_0

    .line 109
    .line 110
    if-ne v3, v14, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 114
    .line 115
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 116
    .line 117
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 118
    .line 119
    invoke-interface {v3, v8, v7, v13, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->e0:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 124
    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 128
    .line 129
    if-ne v3, v7, :cond_7

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 133
    .line 134
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 135
    .line 136
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/Me;->d0:Ljavax/microedition/khronos/egl/EGLContext;

    .line 137
    .line 138
    invoke-interface {v7, v8, v3, v3, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_8

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_8
    const/4 v3, 0x1

    .line 146
    :goto_2
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->c1:Lcom/google/android/gms/internal/ads/J7;

    .line 147
    .line 148
    sget-object v8, Ll3/q;->d:Ll3/q;

    .line 149
    .line 150
    iget-object v13, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 151
    .line 152
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    check-cast v13, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-nez v13, :cond_9

    .line 167
    .line 168
    iget-object v13, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 169
    .line 170
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    check-cast v7, Ljava/lang/String;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    const-string v7, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    .line 178
    .line 179
    :goto_3
    const v13, 0x8b31

    .line 180
    .line 181
    .line 182
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/Me;->j(ILjava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-nez v7, :cond_a

    .line 187
    .line 188
    :goto_4
    const/4 v14, 0x0

    .line 189
    goto/16 :goto_6

    .line 190
    .line 191
    :cond_a
    sget-object v13, Lcom/google/android/gms/internal/ads/Q7;->d1:Lcom/google/android/gms/internal/ads/J7;

    .line 192
    .line 193
    iget-object v14, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 194
    .line 195
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    check-cast v14, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/K7;->e()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-nez v14, :cond_b

    .line 210
    .line 211
    iget-object v8, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 212
    .line 213
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    check-cast v8, Ljava/lang/String;

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_b
    const-string v8, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    .line 221
    .line 222
    :goto_5
    const v13, 0x8b30

    .line 223
    .line 224
    .line 225
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/Me;->j(ILjava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-nez v8, :cond_c

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_c
    const-string v13, "createProgram"

    .line 233
    .line 234
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    if-eqz v14, :cond_e

    .line 242
    .line 243
    invoke-static {v14, v7}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 244
    .line 245
    .line 246
    const-string v7, "attachShader"

    .line 247
    .line 248
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v14, v8}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 252
    .line 253
    .line 254
    const-string v7, "attachShader"

    .line 255
    .line 256
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v14}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 260
    .line 261
    .line 262
    const-string v7, "linkProgram"

    .line 263
    .line 264
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-array v7, v11, [I

    .line 268
    .line 269
    const v8, 0x8b82

    .line 270
    .line 271
    .line 272
    invoke-static {v14, v8, v7, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 273
    .line 274
    .line 275
    const-string v8, "getProgramiv"

    .line 276
    .line 277
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    aget v7, v7, v12

    .line 281
    .line 282
    if-eq v7, v11, :cond_d

    .line 283
    .line 284
    const-string v7, "SphericalVideoRenderer"

    .line 285
    .line 286
    const-string v8, "Could not link program: "

    .line 287
    .line 288
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    invoke-static {v14}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    const-string v8, "SphericalVideoRenderer"

    .line 296
    .line 297
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    invoke-static {v14}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 301
    .line 302
    .line 303
    const-string v7, "deleteProgram"

    .line 304
    .line 305
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_d
    invoke-static {v14}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 310
    .line 311
    .line 312
    const-string v7, "validateProgram"

    .line 313
    .line 314
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_e
    :goto_6
    iput v14, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 318
    .line 319
    invoke-static {v14}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 320
    .line 321
    .line 322
    const-string v7, "useProgram"

    .line 323
    .line 324
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget v7, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 328
    .line 329
    const-string v8, "aPosition"

    .line 330
    .line 331
    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Me;->Y:Ljava/nio/FloatBuffer;

    .line 336
    .line 337
    const/16 v15, 0x1406

    .line 338
    .line 339
    const/16 v16, 0x0

    .line 340
    .line 341
    const/4 v14, 0x3

    .line 342
    const/16 v17, 0xc

    .line 343
    .line 344
    move v13, v7

    .line 345
    move-object/from16 v18, v8

    .line 346
    .line 347
    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 348
    .line 349
    .line 350
    const-string v8, "vertexAttribPointer"

    .line 351
    .line 352
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 356
    .line 357
    .line 358
    const-string v7, "enableVertexAttribArray"

    .line 359
    .line 360
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-array v7, v11, [I

    .line 364
    .line 365
    invoke-static {v11, v7, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 366
    .line 367
    .line 368
    const-string v8, "genTextures"

    .line 369
    .line 370
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    aget v7, v7, v12

    .line 374
    .line 375
    const v8, 0x8d65

    .line 376
    .line 377
    .line 378
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 379
    .line 380
    .line 381
    const-string v13, "bindTextures"

    .line 382
    .line 383
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const/16 v13, 0x2800

    .line 387
    .line 388
    const/16 v14, 0x2601

    .line 389
    .line 390
    invoke-static {v8, v13, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 391
    .line 392
    .line 393
    const-string v13, "texParameteri"

    .line 394
    .line 395
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    const/16 v13, 0x2801

    .line 399
    .line 400
    invoke-static {v8, v13, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 401
    .line 402
    .line 403
    const-string v13, "texParameteri"

    .line 404
    .line 405
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const/16 v13, 0x2802

    .line 409
    .line 410
    const v14, 0x812f

    .line 411
    .line 412
    .line 413
    invoke-static {v8, v13, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 414
    .line 415
    .line 416
    const-string v13, "texParameteri"

    .line 417
    .line 418
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const/16 v13, 0x2803

    .line 422
    .line 423
    invoke-static {v8, v13, v14}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 424
    .line 425
    .line 426
    const-string v8, "texParameteri"

    .line 427
    .line 428
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget v8, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 432
    .line 433
    const-string v13, "uVMat"

    .line 434
    .line 435
    invoke-static {v8, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    iput v8, v1, Lcom/google/android/gms/internal/ads/Me;->W:I

    .line 440
    .line 441
    const/16 v13, 0x9

    .line 442
    .line 443
    new-array v13, v13, [F

    .line 444
    .line 445
    fill-array-data v13, :array_1

    .line 446
    .line 447
    .line 448
    invoke-static {v8, v11, v12, v13, v12}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 449
    .line 450
    .line 451
    iget v8, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 452
    .line 453
    if-eqz v3, :cond_1a

    .line 454
    .line 455
    if-nez v8, :cond_f

    .line 456
    .line 457
    goto/16 :goto_11

    .line 458
    .line 459
    :cond_f
    new-instance v3, Landroid/graphics/SurfaceTexture;

    .line 460
    .line 461
    invoke-direct {v3, v7}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 462
    .line 463
    .line 464
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 465
    .line 466
    invoke-virtual {v3, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 467
    .line 468
    .line 469
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 470
    .line 471
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 472
    .line 473
    .line 474
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->G:Lcom/google/android/gms/internal/ads/Le;

    .line 475
    .line 476
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Le;->g:LE1/W;

    .line 477
    .line 478
    if-eqz v7, :cond_10

    .line 479
    .line 480
    goto :goto_7

    .line 481
    :cond_10
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Le;->a:Landroid/hardware/SensorManager;

    .line 482
    .line 483
    invoke-virtual {v7, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    if-nez v0, :cond_11

    .line 488
    .line 489
    const-string v0, "No Sensor of TYPE_ROTATION_VECTOR"

    .line 490
    .line 491
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_7

    .line 495
    :cond_11
    new-instance v8, Landroid/os/HandlerThread;

    .line 496
    .line 497
    const-string v13, "OrientationMonitor"

    .line 498
    .line 499
    invoke-direct {v8, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 503
    .line 504
    .line 505
    new-instance v13, LE1/W;

    .line 506
    .line 507
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    invoke-direct {v13, v8, v11}, LE1/W;-><init>(Landroid/os/Looper;I)V

    .line 512
    .line 513
    .line 514
    iput-object v13, v3, Lcom/google/android/gms/internal/ads/Le;->g:LE1/W;

    .line 515
    .line 516
    invoke-virtual {v7, v3, v0, v12, v13}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-nez v0, :cond_12

    .line 521
    .line 522
    const-string v0, "SensorManager.registerListener failed."

    .line 523
    .line 524
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Le;->b()V

    .line 528
    .line 529
    .line 530
    :cond_12
    :goto_7
    :try_start_0
    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/Me;->f0:Z

    .line 531
    .line 532
    :goto_8
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Me;->g0:Z

    .line 533
    .line 534
    if-eqz v0, :cond_13

    .line 535
    .line 536
    goto/16 :goto_f

    .line 537
    .line 538
    :cond_13
    :goto_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 539
    .line 540
    if-lez v0, :cond_14

    .line 541
    .line 542
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 543
    .line 544
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 545
    .line 546
    .line 547
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 548
    .line 549
    add-int/lit8 v0, v0, -0x1

    .line 550
    .line 551
    iput v0, v1, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :catchall_0
    move-exception v0

    .line 555
    goto/16 :goto_e

    .line 556
    .line 557
    :cond_14
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->G:Lcom/google/android/gms/internal/ads/Le;

    .line 558
    .line 559
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->H:[F

    .line 560
    .line 561
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Le;->c([F)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    const v3, -0x4036f025

    .line 566
    .line 567
    .line 568
    const/4 v7, 0x5

    .line 569
    if-eqz v0, :cond_16

    .line 570
    .line 571
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->O:F

    .line 572
    .line 573
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_15

    .line 578
    .line 579
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->H:[F

    .line 580
    .line 581
    new-array v8, v2, [F

    .line 582
    .line 583
    fill-array-data v8, :array_2

    .line 584
    .line 585
    .line 586
    aget v13, v0, v12

    .line 587
    .line 588
    aget v14, v8, v12

    .line 589
    .line 590
    mul-float v13, v13, v14

    .line 591
    .line 592
    aget v15, v0, v11

    .line 593
    .line 594
    aget v8, v8, v11

    .line 595
    .line 596
    mul-float v15, v15, v8

    .line 597
    .line 598
    add-float/2addr v15, v13

    .line 599
    aget v13, v0, v9

    .line 600
    .line 601
    mul-float v13, v13, v6

    .line 602
    .line 603
    add-float/2addr v13, v15

    .line 604
    aget v15, v0, v2

    .line 605
    .line 606
    mul-float v15, v15, v14

    .line 607
    .line 608
    aget v14, v0, v4

    .line 609
    .line 610
    mul-float v14, v14, v8

    .line 611
    .line 612
    add-float/2addr v15, v14

    .line 613
    aget v8, v0, v7

    .line 614
    .line 615
    mul-float v8, v8, v6

    .line 616
    .line 617
    add-float/2addr v8, v15

    .line 618
    const/4 v14, 0x6

    .line 619
    aget v14, v0, v14

    .line 620
    .line 621
    const/4 v14, 0x7

    .line 622
    aget v14, v0, v14

    .line 623
    .line 624
    aget v0, v0, v5

    .line 625
    .line 626
    float-to-double v14, v8

    .line 627
    float-to-double v5, v13

    .line 628
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 629
    .line 630
    .line 631
    move-result-wide v5

    .line 632
    double-to-float v0, v5

    .line 633
    add-float/2addr v0, v3

    .line 634
    neg-float v0, v0

    .line 635
    iput v0, v1, Lcom/google/android/gms/internal/ads/Me;->O:F

    .line 636
    .line 637
    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->M:[F

    .line 638
    .line 639
    iget v3, v1, Lcom/google/android/gms/internal/ads/Me;->O:F

    .line 640
    .line 641
    iget v5, v1, Lcom/google/android/gms/internal/ads/Me;->P:F

    .line 642
    .line 643
    add-float/2addr v3, v5

    .line 644
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Me;->i([FF)V

    .line 645
    .line 646
    .line 647
    goto :goto_a

    .line 648
    :cond_16
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->H:[F

    .line 649
    .line 650
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Me;->h([FF)V

    .line 651
    .line 652
    .line 653
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->M:[F

    .line 654
    .line 655
    iget v3, v1, Lcom/google/android/gms/internal/ads/Me;->P:F

    .line 656
    .line 657
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Me;->i([FF)V

    .line 658
    .line 659
    .line 660
    :goto_a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->I:[F

    .line 661
    .line 662
    const v3, 0x3fc90fdb

    .line 663
    .line 664
    .line 665
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Me;->h([FF)V

    .line 666
    .line 667
    .line 668
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->J:[F

    .line 669
    .line 670
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->M:[F

    .line 671
    .line 672
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Me;->I:[F

    .line 673
    .line 674
    invoke-static {v0, v3, v5}, Lcom/google/android/gms/internal/ads/Me;->g([F[F[F)V

    .line 675
    .line 676
    .line 677
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->K:[F

    .line 678
    .line 679
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->H:[F

    .line 680
    .line 681
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Me;->J:[F

    .line 682
    .line 683
    invoke-static {v0, v3, v5}, Lcom/google/android/gms/internal/ads/Me;->g([F[F[F)V

    .line 684
    .line 685
    .line 686
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->L:[F

    .line 687
    .line 688
    iget v3, v1, Lcom/google/android/gms/internal/ads/Me;->Q:F

    .line 689
    .line 690
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Me;->h([FF)V

    .line 691
    .line 692
    .line 693
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->N:[F

    .line 694
    .line 695
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->L:[F

    .line 696
    .line 697
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Me;->K:[F

    .line 698
    .line 699
    invoke-static {v0, v3, v5}, Lcom/google/android/gms/internal/ads/Me;->g([F[F[F)V

    .line 700
    .line 701
    .line 702
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->W:I

    .line 703
    .line 704
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->N:[F

    .line 705
    .line 706
    invoke-static {v0, v11, v12, v3, v12}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 707
    .line 708
    .line 709
    invoke-static {v7, v12, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 710
    .line 711
    .line 712
    const-string v0, "drawArrays"

    .line 713
    .line 714
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 718
    .line 719
    .line 720
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 721
    .line 722
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->c0:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 723
    .line 724
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Me;->e0:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 725
    .line 726
    invoke-interface {v0, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 727
    .line 728
    .line 729
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Me;->f0:Z

    .line 730
    .line 731
    if-eqz v0, :cond_18

    .line 732
    .line 733
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 734
    .line 735
    iget v3, v1, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 736
    .line 737
    invoke-static {v12, v12, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 738
    .line 739
    .line 740
    const-string v0, "viewport"

    .line 741
    .line 742
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Me;->f(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 746
    .line 747
    const-string v3, "uFOVx"

    .line 748
    .line 749
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    iget v3, v1, Lcom/google/android/gms/internal/ads/Me;->V:I

    .line 754
    .line 755
    const-string v5, "uFOVy"

    .line 756
    .line 757
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    iget v5, v1, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 762
    .line 763
    iget v6, v1, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 764
    .line 765
    const v7, 0x3f5f66f3

    .line 766
    .line 767
    .line 768
    if-le v5, v6, :cond_17

    .line 769
    .line 770
    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 771
    .line 772
    .line 773
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 774
    .line 775
    int-to-float v0, v0

    .line 776
    mul-float v0, v0, v7

    .line 777
    .line 778
    iget v5, v1, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 779
    .line 780
    int-to-float v5, v5

    .line 781
    div-float/2addr v0, v5

    .line 782
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 783
    .line 784
    .line 785
    goto :goto_b

    .line 786
    :cond_17
    int-to-float v5, v5

    .line 787
    mul-float v5, v5, v7

    .line 788
    .line 789
    int-to-float v6, v6

    .line 790
    div-float/2addr v5, v6

    .line 791
    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 792
    .line 793
    .line 794
    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 795
    .line 796
    .line 797
    :goto_b
    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/Me;->f0:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    .line 799
    :cond_18
    :try_start_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 800
    .line 801
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Me;->g0:Z

    .line 803
    .line 804
    if-nez v0, :cond_19

    .line 805
    .line 806
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/Me;->f0:Z

    .line 807
    .line 808
    if-nez v0, :cond_19

    .line 809
    .line 810
    iget v0, v1, Lcom/google/android/gms/internal/ads/Me;->X:I

    .line 811
    .line 812
    if-nez v0, :cond_19

    .line 813
    .line 814
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->a0:Ljava/lang/Object;

    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 817
    .line 818
    .line 819
    goto :goto_c

    .line 820
    :catchall_1
    move-exception v0

    .line 821
    goto :goto_d

    .line 822
    :cond_19
    :goto_c
    monitor-exit v3

    .line 823
    :catch_0
    const/16 v5, 0x8

    .line 824
    .line 825
    const/4 v6, 0x0

    .line 826
    goto/16 :goto_8

    .line 827
    .line 828
    :goto_d
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    :goto_e
    :try_start_4
    const-string v2, "SphericalVideoProcessor died."

    .line 831
    .line 832
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    .line 834
    .line 835
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 836
    .line 837
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 838
    .line 839
    const-string v3, "SphericalVideoProcessor.run.2"

    .line 840
    .line 841
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 842
    .line 843
    .line 844
    goto :goto_f

    .line 845
    :catchall_2
    move-exception v0

    .line 846
    goto :goto_10

    .line 847
    :catch_1
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    .line 848
    .line 849
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 850
    .line 851
    .line 852
    :goto_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->G:Lcom/google/android/gms/internal/ads/Le;

    .line 853
    .line 854
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Le;->b()V

    .line 855
    .line 856
    .line 857
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 858
    .line 859
    invoke-virtual {v0, v10}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 860
    .line 861
    .line 862
    iput-object v10, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 863
    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Me;->e()V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :goto_10
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Me;->G:Lcom/google/android/gms/internal/ads/Le;

    .line 869
    .line 870
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Le;->b()V

    .line 871
    .line 872
    .line 873
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 874
    .line 875
    invoke-virtual {v2, v10}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 876
    .line 877
    .line 878
    iput-object v10, v1, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 879
    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Me;->e()V

    .line 881
    .line 882
    .line 883
    throw v0

    .line 884
    :cond_1a
    :goto_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->b0:Ljavax/microedition/khronos/egl/EGL10;

    .line 885
    .line 886
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    const-string v2, "EGL initialization failed: "

    .line 899
    .line 900
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 908
    .line 909
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 910
    .line 911
    new-instance v3, Ljava/lang/Throwable;

    .line 912
    .line 913
    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    const-string v0, "SphericalVideoProcessor.run.1"

    .line 917
    .line 918
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Me;->e()V

    .line 922
    .line 923
    .line 924
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 925
    .line 926
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 927
    .line 928
    .line 929
    return-void

    .line 930
    :cond_1b
    const-string v0, "SphericalVideoProcessor started with no output texture."

    .line 931
    .line 932
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 936
    .line 937
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 938
    .line 939
    .line 940
    return-void

    .line 941
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
