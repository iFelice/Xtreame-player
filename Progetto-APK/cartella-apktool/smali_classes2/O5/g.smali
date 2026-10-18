.class public abstract LO5/g;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final synthetic i0:I


# instance fields
.field public G:LP5/f;

.field public final H:Landroid/view/WindowManager;

.field public final I:Landroid/os/Handler;

.field public J:Z

.field public K:Landroid/view/SurfaceView;

.field public L:Landroid/view/TextureView;

.field public M:Z

.field public final N:LB0/w0;

.field public O:I

.field public final P:Ljava/util/ArrayList;

.field public Q:LP5/l;

.field public R:LP5/i;

.field public S:LO5/t;

.field public T:LO5/t;

.field public U:Landroid/graphics/Rect;

.field public V:LO5/t;

.field public W:Landroid/graphics/Rect;

.field public a0:Landroid/graphics/Rect;

.field public b0:LO5/t;

.field public c0:D

.field public d0:LP5/o;

.field public e0:Z

.field public final f0:LO5/d;

.field public final g0:LZ3/o;

.field public final h0:LO5/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LO5/g;->J:Z

    .line 6
    .line 7
    iput-boolean v0, p0, LO5/g;->M:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, LO5/g;->O:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, LO5/g;->P:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v1, LP5/i;

    .line 20
    .line 21
    invoke-direct {v1}, LP5/i;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LO5/g;->R:LP5/i;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, LO5/g;->W:Landroid/graphics/Rect;

    .line 28
    .line 29
    iput-object v1, p0, LO5/g;->a0:Landroid/graphics/Rect;

    .line 30
    .line 31
    iput-object v1, p0, LO5/g;->b0:LO5/t;

    .line 32
    .line 33
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    iput-wide v2, p0, LO5/g;->c0:D

    .line 39
    .line 40
    iput-object v1, p0, LO5/g;->d0:LP5/o;

    .line 41
    .line 42
    iput-boolean v0, p0, LO5/g;->e0:Z

    .line 43
    .line 44
    new-instance v1, LO5/d;

    .line 45
    .line 46
    invoke-direct {v1, p0, v0}, LO5/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, LO5/g;->f0:LO5/d;

    .line 50
    .line 51
    new-instance v1, LH2/g;

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v1, p0, v2}, LH2/g;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance v2, LZ3/o;

    .line 58
    .line 59
    const/16 v3, 0x15

    .line 60
    .line 61
    invoke-direct {v2, p0, v3}, LZ3/o;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, LO5/g;->g0:LZ3/o;

    .line 65
    .line 66
    new-instance v2, LO5/e;

    .line 67
    .line 68
    invoke-direct {v2, p0, v0}, LO5/e;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, LO5/g;->h0:LO5/e;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-nez v2, :cond_0

    .line 78
    .line 79
    const/high16 v2, -0x1000000

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {p0, p2}, LO5/g;->b(Landroid/util/AttributeSet;)V

    .line 85
    .line 86
    .line 87
    const-string p2, "window"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Landroid/view/WindowManager;

    .line 94
    .line 95
    iput-object p1, p0, LO5/g;->H:Landroid/view/WindowManager;

    .line 96
    .line 97
    new-instance p1, Landroid/os/Handler;

    .line 98
    .line 99
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, LO5/g;->I:Landroid/os/Handler;

    .line 103
    .line 104
    new-instance p1, LB0/w0;

    .line 105
    .line 106
    const/16 p2, 0xc

    .line 107
    .line 108
    invoke-direct {p1, p2, v0}, LB0/w0;-><init>(II)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, LO5/g;->N:LB0/w0;

    .line 112
    .line 113
    return-void
.end method

.method public static a(LO5/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, LO5/g;->getDisplayRotation()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, LO5/g;->O:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, LO5/g;->c()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LO5/g;->d()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private getDisplayRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->H:Landroid/view/WindowManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public final b(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lu5/h;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    const/high16 v1, -0x40800000    # -1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    float-to-int v2, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    float-to-int v1, v1

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    new-instance v3, LO5/t;

    .line 30
    .line 31
    invoke-direct {v3, v2, v1}, LO5/t;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, LO5/g;->b0:LO5/t;

    .line 35
    .line 36
    :cond_0
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput-boolean v2, p0, LO5/g;->J:Z

    .line 42
    .line 43
    const/4 v2, -0x1

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v0, :cond_1

    .line 50
    .line 51
    new-instance v0, LP5/k;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, LO5/g;->d0:LP5/o;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-ne v2, v3, :cond_2

    .line 60
    .line 61
    new-instance v0, LP5/m;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, LO5/g;->d0:LP5/o;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-ne v2, v1, :cond_3

    .line 70
    .line 71
    new-instance v0, LP5/n;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, LO5/g;->d0:LP5/o;

    .line 77
    .line 78
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public abstract c()V
.end method

.method public final d()V
    .locals 8

    .line 1
    invoke-static {}, La7/b;->j()V

    .line 2
    .line 3
    .line 4
    const-string v0, "g"

    .line 5
    .line 6
    const-string v1, "resume()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "g"

    .line 16
    .line 17
    const-string v1, "initCamera called twice"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v0, LP5/f;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-boolean v2, v0, LP5/f;->f:Z

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    iput-boolean v3, v0, LP5/f;->g:Z

    .line 38
    .line 39
    new-instance v4, LP5/i;

    .line 40
    .line 41
    invoke-direct {v4}, LP5/i;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, LP5/f;->i:LP5/i;

    .line 45
    .line 46
    new-instance v4, LP5/e;

    .line 47
    .line 48
    invoke-direct {v4, v0, v2}, LP5/e;-><init>(LP5/f;I)V

    .line 49
    .line 50
    .line 51
    new-instance v5, LP5/e;

    .line 52
    .line 53
    invoke-direct {v5, v0, v3}, LP5/e;-><init>(LP5/f;I)V

    .line 54
    .line 55
    .line 56
    iput-object v5, v0, LP5/f;->j:LP5/e;

    .line 57
    .line 58
    new-instance v5, LP5/e;

    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    invoke-direct {v5, v0, v6}, LP5/e;-><init>(LP5/f;I)V

    .line 62
    .line 63
    .line 64
    iput-object v5, v0, LP5/f;->k:LP5/e;

    .line 65
    .line 66
    new-instance v5, LP5/e;

    .line 67
    .line 68
    const/4 v6, 0x3

    .line 69
    invoke-direct {v5, v0, v6}, LP5/e;-><init>(LP5/f;I)V

    .line 70
    .line 71
    .line 72
    iput-object v5, v0, LP5/f;->l:LP5/e;

    .line 73
    .line 74
    invoke-static {}, La7/b;->j()V

    .line 75
    .line 76
    .line 77
    sget-object v5, LP5/j;->e:LP5/j;

    .line 78
    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    new-instance v5, LP5/j;

    .line 82
    .line 83
    invoke-direct {v5}, LP5/j;-><init>()V

    .line 84
    .line 85
    .line 86
    sput-object v5, LP5/j;->e:LP5/j;

    .line 87
    .line 88
    :cond_1
    sget-object v5, LP5/j;->e:LP5/j;

    .line 89
    .line 90
    iput-object v5, v0, LP5/f;->a:LP5/j;

    .line 91
    .line 92
    new-instance v6, LP5/h;

    .line 93
    .line 94
    invoke-direct {v6, v1}, LP5/h;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, v0, LP5/f;->c:LP5/h;

    .line 98
    .line 99
    iget-object v1, v0, LP5/f;->i:LP5/i;

    .line 100
    .line 101
    iput-object v1, v6, LP5/h;->g:LP5/i;

    .line 102
    .line 103
    new-instance v1, Landroid/os/Handler;

    .line 104
    .line 105
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, LP5/f;->h:Landroid/os/Handler;

    .line 109
    .line 110
    iget-object v1, p0, LO5/g;->R:LP5/i;

    .line 111
    .line 112
    iget-boolean v7, v0, LP5/f;->f:Z

    .line 113
    .line 114
    if-nez v7, :cond_2

    .line 115
    .line 116
    iput-object v1, v0, LP5/f;->i:LP5/i;

    .line 117
    .line 118
    iput-object v1, v6, LP5/h;->g:LP5/i;

    .line 119
    .line 120
    :cond_2
    iput-object v0, p0, LO5/g;->G:LP5/f;

    .line 121
    .line 122
    iget-object v1, p0, LO5/g;->I:Landroid/os/Handler;

    .line 123
    .line 124
    iput-object v1, v0, LP5/f;->d:Landroid/os/Handler;

    .line 125
    .line 126
    invoke-static {}, La7/b;->j()V

    .line 127
    .line 128
    .line 129
    iput-boolean v3, v0, LP5/f;->f:Z

    .line 130
    .line 131
    iput-boolean v2, v0, LP5/f;->g:Z

    .line 132
    .line 133
    iget-object v0, v5, LP5/j;->d:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v0

    .line 136
    :try_start_0
    iget v1, v5, LP5/j;->c:I

    .line 137
    .line 138
    add-int/2addr v1, v3

    .line 139
    iput v1, v5, LP5/j;->c:I

    .line 140
    .line 141
    invoke-virtual {v5, v4}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-direct {p0}, LO5/g;->getDisplayRotation()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p0, LO5/g;->O:I

    .line 150
    .line 151
    :goto_0
    iget-object v0, p0, LO5/g;->V:LO5/t;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-virtual {p0}, LO5/g;->f()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, LO5/g;->f0:LO5/d;

    .line 168
    .line 169
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iget-object v1, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    new-instance v2, LO5/t;

    .line 201
    .line 202
    invoke-direct {v2, v0, v1}, LO5/t;-><init>(II)V

    .line 203
    .line 204
    .line 205
    iput-object v2, p0, LO5/g;->V:LO5/t;

    .line 206
    .line 207
    invoke-virtual {p0}, LO5/g;->f()V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_5
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 212
    .line 213
    new-instance v1, LO5/c;

    .line 214
    .line 215
    invoke-direct {v1, p0}, LO5/c;-><init>(LO5/g;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, LO5/g;->N:LB0/w0;

    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v2, p0, LO5/g;->g0:LZ3/o;

    .line 231
    .line 232
    iget-object v3, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v3, Landroid/view/OrientationEventListener;

    .line 235
    .line 236
    if-eqz v3, :cond_7

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/view/OrientationEventListener;->disable()V

    .line 239
    .line 240
    .line 241
    :cond_7
    const/4 v3, 0x0

    .line 242
    iput-object v3, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v3, v0, LB0/w0;->I:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v3, v0, LB0/w0;->K:Ljava/lang/Object;

    .line 247
    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v2, v0, LB0/w0;->K:Ljava/lang/Object;

    .line 253
    .line 254
    const-string v2, "window"

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Landroid/view/WindowManager;

    .line 261
    .line 262
    iput-object v2, v0, LB0/w0;->I:Ljava/lang/Object;

    .line 263
    .line 264
    new-instance v2, LO5/s;

    .line 265
    .line 266
    invoke-direct {v2, v0, v1}, LO5/s;-><init>(LB0/w0;Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    iput-object v2, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 272
    .line 273
    .line 274
    iget-object v1, v0, LB0/w0;->I:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v1, Landroid/view/WindowManager;

    .line 277
    .line 278
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    iput v1, v0, LB0/w0;->H:I

    .line 287
    .line 288
    return-void

    .line 289
    :catchall_0
    move-exception v1

    .line 290
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    throw v1
.end method

.method public final e(Lcom/google/android/gms/internal/atv_ads_framework/x0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LO5/g;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "g"

    .line 10
    .line 11
    const-string v1, "Starting preview"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 17
    .line 18
    iput-object p1, v0, LP5/f;->b:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 19
    .line 20
    invoke-static {}, La7/b;->j()V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, v0, LP5/f;->f:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, v0, LP5/f;->k:LP5/e;

    .line 28
    .line 29
    iget-object v0, v0, LP5/f;->a:LP5/j;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, LO5/g;->M:Z

    .line 36
    .line 37
    move-object p1, p0

    .line 38
    check-cast p1, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->h()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, LO5/g;->h0:LO5/e;

    .line 44
    .line 45
    invoke-virtual {p1}, LO5/e;->d()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "CameraInstance is not open"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, LO5/g;->V:LO5/t;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, LO5/g;->T:LO5/t;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, LO5/g;->U:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, LO5/t;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, LO5/g;->U:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {v2, v1, v3}, LO5/t;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, LO5/t;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 39
    .line 40
    iget-object v1, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(Landroid/view/SurfaceHolder;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, LO5/g;->e(Lcom/google/android/gms/internal/atv_ads_framework/x0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, LO5/g;->T:LO5/t;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, p0, LO5/g;->T:LO5/t;

    .line 80
    .line 81
    int-to-float v3, v0

    .line 82
    int-to-float v1, v1

    .line 83
    div-float/2addr v3, v1

    .line 84
    iget v4, v2, LO5/t;->G:I

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    iget v2, v2, LO5/t;->H:I

    .line 88
    .line 89
    int-to-float v2, v2

    .line 90
    div-float/2addr v4, v2

    .line 91
    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    .line 93
    cmpg-float v5, v3, v4

    .line 94
    .line 95
    if-gez v5, :cond_1

    .line 96
    .line 97
    div-float/2addr v4, v3

    .line 98
    move v2, v4

    .line 99
    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    div-float/2addr v3, v4

    .line 103
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    .line 104
    .line 105
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 109
    .line 110
    .line 111
    int-to-float v0, v0

    .line 112
    mul-float v2, v2, v0

    .line 113
    .line 114
    mul-float v3, v3, v1

    .line 115
    .line 116
    sub-float/2addr v0, v2

    .line 117
    const/high16 v2, 0x40000000    # 2.0f

    .line 118
    .line 119
    div-float/2addr v0, v2

    .line 120
    sub-float/2addr v1, v3

    .line 121
    div-float/2addr v1, v2

    .line 122
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 131
    .line 132
    iget-object v1, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, LO5/g;->e(Lcom/google/android/gms/internal/atv_ads_framework/x0;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_1
    return-void
.end method

.method public getCameraInstance()LP5/f;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraSettings()LP5/i;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->R:LP5/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->W:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFramingRectSize()LO5/t;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->b0:LO5/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarginFraction()D
    .locals 2

    .line 1
    iget-wide v0, p0, LO5/g;->c0:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPreviewFramingRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->a0:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreviewScalingStrategy()LP5/o;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->d0:LP5/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, LP5/k;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    new-instance v0, LP5/m;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getPreviewSize()LO5/t;
    .locals 1

    .line 1
    iget-object v0, p0, LO5/g;->T:LO5/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LO5/g;->J:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/view/TextureView;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 18
    .line 19
    new-instance v1, LO5/c;

    .line 20
    .line 21
    invoke-direct {v1, p0}, LO5/c;-><init>(LO5/g;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, LO5/g;->f0:LO5/d;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    new-instance p1, LO5/t;

    .line 2
    .line 3
    sub-int/2addr p4, p2

    .line 4
    sub-int/2addr p5, p3

    .line 5
    invoke-direct {p1, p4, p5}, LO5/t;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, LO5/g;->S:LO5/t;

    .line 9
    .line 10
    iget-object p2, p0, LO5/g;->G:LP5/f;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p2, LP5/f;->e:LP5/l;

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    new-instance p2, LP5/l;

    .line 19
    .line 20
    invoke-direct {p0}, LO5/g;->getDisplayRotation()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance p4, LP5/m;

    .line 28
    .line 29
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p4, p2, LP5/l;->c:LP5/o;

    .line 33
    .line 34
    iput p3, p2, LP5/l;->b:I

    .line 35
    .line 36
    iput-object p1, p2, LP5/l;->a:LO5/t;

    .line 37
    .line 38
    iput-object p2, p0, LO5/g;->Q:LP5/l;

    .line 39
    .line 40
    invoke-virtual {p0}, LO5/g;->getPreviewScalingStrategy()LP5/o;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p2, LP5/l;->c:LP5/o;

    .line 45
    .line 46
    iget-object p1, p0, LO5/g;->G:LP5/f;

    .line 47
    .line 48
    iget-object p2, p0, LO5/g;->Q:LP5/l;

    .line 49
    .line 50
    iput-object p2, p1, LP5/f;->e:LP5/l;

    .line 51
    .line 52
    iget-object p3, p1, LP5/f;->c:LP5/h;

    .line 53
    .line 54
    iput-object p2, p3, LP5/h;->h:LP5/l;

    .line 55
    .line 56
    invoke-static {}, La7/b;->j()V

    .line 57
    .line 58
    .line 59
    iget-boolean p2, p1, LP5/f;->f:Z

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    iget-object p2, p1, LP5/f;->j:LP5/e;

    .line 64
    .line 65
    iget-object p1, p1, LP5/f;->a:LP5/j;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    iget-boolean p1, p0, LO5/g;->e0:Z

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p2, p0, LO5/g;->G:LP5/f;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, La7/b;->j()V

    .line 80
    .line 81
    .line 82
    iget-boolean p3, p2, LP5/f;->f:Z

    .line 83
    .line 84
    if-eqz p3, :cond_1

    .line 85
    .line 86
    new-instance p3, LB0/M0;

    .line 87
    .line 88
    const/4 p4, 0x5

    .line 89
    invoke-direct {p3, p4, p2, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p2, LP5/f;->a:LP5/j;

    .line 93
    .line 94
    invoke-virtual {p1, p3}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string p2, "CameraInstance is not open"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_1
    :goto_0
    iget-object p1, p0, LO5/g;->K:Landroid/view/SurfaceView;

    .line 107
    .line 108
    const/4 p2, 0x0

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object p3, p0, LO5/g;->U:Landroid/graphics/Rect;

    .line 112
    .line 113
    if-nez p3, :cond_2

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    iget p2, p3, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget p4, p3, Landroid/graphics/Rect;->top:I

    .line 130
    .line 131
    iget p5, p3, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 134
    .line 135
    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-object p1, p0, LO5/g;->L:Landroid/view/TextureView;

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result p4

    .line 151
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v0, "super"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "torch"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, LO5/g;->setTorch(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "super"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "torch"

    .line 16
    .line 17
    iget-boolean v2, p0, LO5/g;->e0:Z

    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public setCameraSettings(LP5/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO5/g;->R:LP5/i;

    .line 2
    .line 3
    return-void
.end method

.method public setFramingRectSize(LO5/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO5/g;->b0:LO5/t;

    .line 2
    .line 3
    return-void
.end method

.method public setMarginFraction(D)V
    .locals 3

    .line 1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 2
    .line 3
    cmpl-double v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, LO5/g;->c0:D

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "The margin fraction must be less than 0.5"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setPreviewScalingStrategy(LP5/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO5/g;->d0:LP5/o;

    .line 2
    .line 3
    return-void
.end method

.method public setTorch(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, LO5/g;->e0:Z

    .line 2
    .line 3
    iget-object v0, p0, LO5/g;->G:LP5/f;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, La7/b;->j()V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, v0, LP5/f;->f:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, LB0/M0;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-direct {v1, v2, v0, p1}, LB0/M0;-><init>(ILjava/lang/Object;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, LP5/f;->a:LP5/j;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, LP5/j;->b(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setUseTextureView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LO5/g;->J:Z

    .line 2
    .line 3
    return-void
.end method
