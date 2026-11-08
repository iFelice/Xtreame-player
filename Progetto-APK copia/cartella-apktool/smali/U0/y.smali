.class public final LU0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final Q:[F

.field public static final R:[F

.field public static final S:[F

.field public static final T:[Ljava/lang/String;

.field public static final U:Ljava/nio/FloatBuffer;


# instance fields
.field public final G:Landroid/opengl/GLSurfaceView;

.field public final H:[I

.field public final I:[I

.field public final J:[I

.field public final K:[I

.field public final L:Ljava/util/concurrent/atomic/AtomicReference;

.field public final M:[Ljava/nio/FloatBuffer;

.field public N:Lp0/o;

.field public O:I

.field public P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, LU0/y;->Q:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, LU0/y;->R:[F

    .line 16
    .line 17
    new-array v0, v0, [F

    .line 18
    .line 19
    fill-array-data v0, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v0, LU0/y;->S:[F

    .line 23
    .line 24
    const-string v0, "u_tex"

    .line 25
    .line 26
    const-string v1, "v_tex"

    .line 27
    .line 28
    const-string v2, "y_tex"

    .line 29
    .line 30
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, LU0/y;->T:[Ljava/lang/String;

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    new-array v0, v0, [F

    .line 39
    .line 40
    fill-array-data v0, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lp0/b;->l([F)Ljava/nio/FloatBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, LU0/y;->U:Ljava/nio/FloatBuffer;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    .line 74
    .line 75
    .line 76
    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/y;->G:Landroid/opengl/GLSurfaceView;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array v0, p1, [I

    .line 8
    .line 9
    iput-object v0, p0, LU0/y;->H:[I

    .line 10
    .line 11
    new-array v0, p1, [I

    .line 12
    .line 13
    iput-object v0, p0, LU0/y;->I:[I

    .line 14
    .line 15
    new-array v0, p1, [I

    .line 16
    .line 17
    iput-object v0, p0, LU0/y;->J:[I

    .line 18
    .line 19
    new-array v0, p1, [I

    .line 20
    .line 21
    iput-object v0, p0, LU0/y;->K:[I

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, LU0/y;->L:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    new-array v0, p1, [Ljava/nio/FloatBuffer;

    .line 31
    .line 32
    iput-object v0, p0, LU0/y;->M:[Ljava/nio/FloatBuffer;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-ge v0, p1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, LU0/y;->J:[I

    .line 38
    .line 39
    iget-object v2, p0, LU0/y;->K:[I

    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    aput v3, v2, v0

    .line 43
    .line 44
    aput v3, v1, v0

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LU0/y;->H:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    :try_start_0
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    :goto_0
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, LU0/y;->N:Lp0/o;

    .line 11
    .line 12
    sget-object v4, LU0/y;->T:[Ljava/lang/String;

    .line 13
    .line 14
    aget-object v4, v4, v1

    .line 15
    .line 16
    iget v3, v3, Lp0/o;->a:I

    .line 17
    .line 18
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 23
    .line 24
    .line 25
    const v3, 0x84c0

    .line 26
    .line 27
    .line 28
    add-int/2addr v3, v1

    .line 29
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 30
    .line 31
    .line 32
    aget v3, v0, v1

    .line 33
    .line 34
    const/16 v4, 0x2601

    .line 35
    .line 36
    const/16 v5, 0xde1

    .line 37
    .line 38
    invoke-static {v5, v3, v4}, Lp0/b;->c(III)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    const-string v1, "VideoDecoderGLSV"

    .line 51
    .line 52
    const-string v2, "Failed to set up the textures"

    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_2
    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x3

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    iget-object v9, v1, LU0/y;->L:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    check-cast v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 20
    .line 21
    if-nez v9, :cond_0

    .line 22
    .line 23
    iget-object v10, v1, LU0/y;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 24
    .line 25
    if-nez v10, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    if-eqz v9, :cond_2

    .line 29
    .line 30
    iget-object v10, v1, LU0/y;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 31
    .line 32
    if-eqz v10, :cond_1

    .line 33
    .line 34
    invoke-virtual {v10}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v9, v1, LU0/y;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 38
    .line 39
    :cond_2
    iget-object v9, v1, LU0/y;->P:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 40
    .line 41
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v10, LU0/y;->R:[F

    .line 45
    .line 46
    iget v11, v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    .line 47
    .line 48
    if-eq v11, v8, :cond_4

    .line 49
    .line 50
    if-eq v11, v6, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget-object v10, LU0/y;->S:[F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object v10, LU0/y;->Q:[F

    .line 57
    .line 58
    :goto_0
    iget v11, v1, LU0/y;->O:I

    .line 59
    .line 60
    invoke-static {v11, v8, v5, v10, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 61
    .line 62
    .line 63
    iget-object v10, v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v11, v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    :goto_1
    if-ge v12, v6, :cond_6

    .line 75
    .line 76
    iget v13, v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 77
    .line 78
    if-nez v12, :cond_5

    .line 79
    .line 80
    :goto_2
    move/from16 v18, v13

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    add-int/2addr v13, v8

    .line 84
    div-int/2addr v13, v4

    .line 85
    goto :goto_2

    .line 86
    :goto_3
    const v13, 0x84c0

    .line 87
    .line 88
    .line 89
    add-int/2addr v13, v12

    .line 90
    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 91
    .line 92
    .line 93
    iget-object v13, v1, LU0/y;->H:[I

    .line 94
    .line 95
    aget v13, v13, v12

    .line 96
    .line 97
    const/16 v14, 0xde1

    .line 98
    .line 99
    invoke-static {v14, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    .line 101
    .line 102
    const/16 v13, 0xcf5

    .line 103
    .line 104
    invoke-static {v13, v8}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 105
    .line 106
    .line 107
    aget v17, v10, v12

    .line 108
    .line 109
    const/16 v21, 0x1401

    .line 110
    .line 111
    aget-object v22, v11, v12

    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    const/16 v16, 0x1909

    .line 115
    .line 116
    const/16 v19, 0x0

    .line 117
    .line 118
    const/16 v20, 0x1909

    .line 119
    .line 120
    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 121
    .line 122
    .line 123
    add-int/2addr v12, v8

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    new-array v11, v6, [I

    .line 126
    .line 127
    iget v9, v9, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 128
    .line 129
    aput v9, v11, v5

    .line 130
    .line 131
    add-int/2addr v9, v8

    .line 132
    div-int/2addr v9, v4

    .line 133
    aput v9, v11, v4

    .line 134
    .line 135
    aput v9, v11, v8

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    :goto_4
    if-ge v9, v6, :cond_a

    .line 139
    .line 140
    iget-object v12, v1, LU0/y;->J:[I

    .line 141
    .line 142
    aget v13, v12, v9

    .line 143
    .line 144
    aget v14, v11, v9

    .line 145
    .line 146
    iget-object v15, v1, LU0/y;->K:[I

    .line 147
    .line 148
    if-ne v13, v14, :cond_7

    .line 149
    .line 150
    aget v13, v15, v9

    .line 151
    .line 152
    aget v14, v10, v9

    .line 153
    .line 154
    if-eq v13, v14, :cond_9

    .line 155
    .line 156
    :cond_7
    aget v13, v10, v9

    .line 157
    .line 158
    if-eqz v13, :cond_8

    .line 159
    .line 160
    const/4 v13, 0x1

    .line 161
    goto :goto_5

    .line 162
    :cond_8
    const/4 v13, 0x0

    .line 163
    :goto_5
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 164
    .line 165
    .line 166
    aget v13, v11, v9

    .line 167
    .line 168
    int-to-float v13, v13

    .line 169
    aget v14, v10, v9

    .line 170
    .line 171
    int-to-float v14, v14

    .line 172
    div-float/2addr v13, v14

    .line 173
    const/16 v14, 0x8

    .line 174
    .line 175
    new-array v14, v14, [F

    .line 176
    .line 177
    aput v7, v14, v5

    .line 178
    .line 179
    aput v7, v14, v8

    .line 180
    .line 181
    aput v7, v14, v4

    .line 182
    .line 183
    aput v3, v14, v6

    .line 184
    .line 185
    aput v13, v14, v2

    .line 186
    .line 187
    aput v7, v14, v0

    .line 188
    .line 189
    const/16 v16, 0x6

    .line 190
    .line 191
    aput v13, v14, v16

    .line 192
    .line 193
    const/4 v13, 0x7

    .line 194
    aput v3, v14, v13

    .line 195
    .line 196
    invoke-static {v14}, Lp0/b;->l([F)Ljava/nio/FloatBuffer;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    iget-object v14, v1, LU0/y;->M:[Ljava/nio/FloatBuffer;

    .line 201
    .line 202
    aput-object v13, v14, v9

    .line 203
    .line 204
    iget-object v13, v1, LU0/y;->I:[I

    .line 205
    .line 206
    aget v16, v13, v9

    .line 207
    .line 208
    const/16 v20, 0x0

    .line 209
    .line 210
    aget-object v21, v14, v9

    .line 211
    .line 212
    const/16 v17, 0x2

    .line 213
    .line 214
    const/16 v18, 0x1406

    .line 215
    .line 216
    const/16 v19, 0x0

    .line 217
    .line 218
    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 219
    .line 220
    .line 221
    aget v13, v11, v9

    .line 222
    .line 223
    aput v13, v12, v9

    .line 224
    .line 225
    aget v12, v10, v9

    .line 226
    .line 227
    aput v12, v15, v9

    .line 228
    .line 229
    :cond_9
    add-int/2addr v9, v8

    .line 230
    goto :goto_4

    .line 231
    :cond_a
    const/16 v3, 0x4000

    .line 232
    .line 233
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 234
    .line 235
    .line 236
    invoke-static {v0, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 237
    .line 238
    .line 239
    :try_start_0
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :catch_0
    move-exception v0

    .line 244
    move-object v2, v0

    .line 245
    const-string v0, "VideoDecoderGLSV"

    .line 246
    .line 247
    const-string v3, "Failed to draw a frame"

    .line 248
    .line 249
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    :goto_6
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    .line 1
    iget-object p1, p0, LU0/y;->I:[I

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Lp0/o;

    .line 4
    .line 5
    const-string v0, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    .line 6
    .line 7
    const-string v1, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    .line 8
    .line 9
    invoke-direct {p2, v0, v1}, Lp0/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, LU0/y;->N:Lp0/o;

    .line 13
    .line 14
    const-string v0, "in_pos"

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lp0/o;->c(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v6, LU0/y;->U:Ljava/nio/FloatBuffer;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const/16 v3, 0x1406

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, LU0/y;->N:Lp0/o;

    .line 31
    .line 32
    const-string v0, "in_tc_y"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lp0/o;->c(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x0

    .line 39
    aput p2, p1, v0

    .line 40
    .line 41
    iget-object p2, p0, LU0/y;->N:Lp0/o;

    .line 42
    .line 43
    const-string v0, "in_tc_u"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lp0/o;->c(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, 0x1

    .line 50
    aput p2, p1, v0

    .line 51
    .line 52
    iget-object p2, p0, LU0/y;->N:Lp0/o;

    .line 53
    .line 54
    const-string v0, "in_tc_v"

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lp0/o;->c(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v0, 0x2

    .line 61
    aput p2, p1, v0

    .line 62
    .line 63
    iget-object p1, p0, LU0/y;->N:Lp0/o;

    .line 64
    .line 65
    const-string p2, "mColorConversion"

    .line 66
    .line 67
    iget p1, p1, Lp0/o;->a:I

    .line 68
    .line 69
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, LU0/y;->O:I

    .line 74
    .line 75
    invoke-static {}, Lp0/b;->e()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, LU0/y;->a()V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lp0/b;->e()V
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    const-string p2, "VideoDecoderGLSV"

    .line 87
    .line 88
    const-string v0, "Failed to set up the textures and program"

    .line 89
    .line 90
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method
