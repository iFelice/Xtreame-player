.class public Lpe/hf/black20/CatchupPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static E0:Ls0/h;


# instance fields
.field public A0:Lm0/k0;

.field public B0:Ljava/lang/String;

.field public final C0:Z

.field public final D0:Ll/L0;

.field public final G:Lpe/hf/black20/CatchupPlayerActivity;

.field public H:Landroid/content/SharedPreferences;

.field public I:Landroid/content/SharedPreferences$Editor;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Landroid/widget/ProgressBar;

.field public P:Landroid/widget/FrameLayout;

.field public Q:Landroid/widget/FrameLayout;

.field public R:Landroid/widget/FrameLayout;

.field public S:Landroid/widget/FrameLayout;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Ljava/text/SimpleDateFormat;

.field public X:Landroid/widget/ImageButton;

.field public Y:Landroid/widget/ImageButton;

.field public Z:Landroid/widget/ImageButton;

.field public a0:Landroid/widget/SeekBar;

.field public b0:Landroid/widget/SeekBar;

.field public c0:Landroid/os/Handler;

.field public d0:Landroidx/leanback/widget/C;

.field public final e0:I

.field public f0:I

.field public final g0:I

.field public h0:I

.field public i0:I

.field public j0:Ljava/lang/String;

.field public k0:F

.field public l0:Landroid/view/GestureDetector;

.field public m0:Landroid/os/Handler;

.field public n0:Landroid/os/Handler;

.field public o0:Lb7/j;

.field public p0:Lb7/j;

.field public q0:Lh7/i;

.field public r0:Landroid/view/SurfaceView;

.field public s0:Lorg/videolan/libvlc/LibVLC;

.field public t0:Lorg/videolan/libvlc/MediaPlayer;

.field public u0:Lorg/videolan/libvlc/interfaces/IVLCVout;

.field public v0:Lorg/videolan/libvlc/Media;

.field public w0:I

.field public x0:Ljava/lang/String;

.field public y0:Landroidx/media3/ui/PlayerView;

.field public z0:LB0/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/CatchupPlayerActivity;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 5
    .line 6
    const-string v0, "60"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->e0:I

    .line 12
    .line 13
    const/16 v1, 0xe10

    .line 14
    .line 15
    iput v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 16
    .line 17
    iput v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->g0:I

    .line 18
    .line 19
    iput v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->i0:I

    .line 23
    .line 24
    const-string v2, "stopped"

    .line 25
    .line 26
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->j0:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->s0:Lorg/videolan/libvlc/LibVLC;

    .line 30
    .line 31
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 32
    .line 33
    iput v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    iput-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->x0:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 40
    .line 41
    iput-boolean v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->C0:Z

    .line 42
    .line 43
    new-instance v0, Ll/L0;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-direct {v0, p0, v1}, Ll/L0;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->D0:Ll/L0;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->p0:Lb7/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->n0:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->n0:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lb7/j;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, v2}, Lb7/j;-><init>(Lpe/hf/black20/CatchupPlayerActivity;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->p0:Lb7/j;

    .line 24
    .line 25
    const-wide/16 v2, 0x1770

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/CatchupPlayerActivity;->e()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "--input-fast-seek"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-string v0, "--http-reconnect"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "--repeat"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v0, "--avcodec-hw=any"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    const-string v0, "--aout=opensles"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "--aout=android_audiotrack"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    const-string v0, "--audio-time-stretch"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const-string v0, "--avcodec-skip-frame"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const-string v0, "--avcodec-skip-idct"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const-string v0, "--no-ts-trust-pcr"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v0, "--ts-seek-percent"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const-string v0, "--no-ts-cc-check"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    const-string v0, "--live-caching=300"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    const-string v0, "--network-caching=1000"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    .line 99
    .line 100
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 101
    .line 102
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->s0:Lorg/videolan/libvlc/LibVLC;

    .line 106
    .line 107
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->r0:Landroid/view/SurfaceView;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lorg/videolan/libvlc/MediaPlayer;

    .line 118
    .line 119
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->s0:Lorg/videolan/libvlc/LibVLC;

    .line 120
    .line 121
    invoke-direct {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 125
    .line 126
    new-instance p1, Lorg/videolan/libvlc/Media;

    .line 127
    .line 128
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->s0:Lorg/videolan/libvlc/LibVLC;

    .line 129
    .line 130
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {p1, v1, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->v0:Lorg/videolan/libvlc/Media;

    .line 140
    .line 141
    const-string v1, ":network-caching=300"

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->v0:Lorg/videolan/libvlc/Media;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->v0:Lorg/videolan/libvlc/Media;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v2, ":http-user-agent="

    .line 156
    .line 157
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->x0:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 173
    .line 174
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->v0:Lorg/videolan/libvlc/Media;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/interfaces/IMedia;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 180
    .line 181
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    sget v1, Lpe/hf/black20/CategoriesActivity;->M0:I

    .line 186
    .line 187
    sget v2, Lpe/hf/black20/CategoriesActivity;->L0:I

    .line 188
    .line 189
    invoke-interface {p1, v1, v2}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setWindowSize(II)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 193
    .line 194
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    const-string v2, "video_resize_vlc"

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 207
    .line 208
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 210
    .line 211
    .line 212
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 213
    .line 214
    if-nez p1, :cond_1

    .line 215
    .line 216
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 217
    .line 218
    invoke-virtual {p1, v3}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_1
    if-ne p1, v0, :cond_2

    .line 228
    .line 229
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 230
    .line 231
    const-string v0, "16:9"

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 237
    .line 238
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_2
    const/4 v0, 0x2

    .line 243
    if-ne p1, v0, :cond_3

    .line 244
    .line 245
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 246
    .line 247
    const-string v0, "4:3"

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_3
    const/4 v0, 0x3

    .line 259
    if-ne p1, v0, :cond_4

    .line 260
    .line 261
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 262
    .line 263
    invoke-virtual {p1, v3}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 267
    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setScale(F)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_4
    const/4 v0, 0x4

    .line 275
    if-ne p1, v0, :cond_5

    .line 276
    .line 277
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 278
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    sget v1, Lpe/hf/black20/CategoriesActivity;->M0:I

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, ":"

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    sget v1, Lpe/hf/black20/CategoriesActivity;->L0:I

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setAspectRatio(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_5
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 307
    .line 308
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->u0:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 313
    .line 314
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->r0:Landroid/view/SurfaceView;

    .line 315
    .line 316
    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IVLCVout;->setVideoView(Landroid/view/SurfaceView;)V

    .line 317
    .line 318
    .line 319
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->u0:Lorg/videolan/libvlc/interfaces/IVLCVout;

    .line 320
    .line 321
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCVout;->attachViews()V

    .line 322
    .line 323
    .line 324
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 325
    .line 326
    new-instance v0, Lb7/k;

    .line 327
    .line 328
    invoke-direct {v0, p0}, Lb7/k;-><init>(Lpe/hf/black20/CatchupPlayerActivity;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 335
    .line 336
    const-string v0, "last_volume_vlc"

    .line 337
    .line 338
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-eqz p1, :cond_6

    .line 343
    .line 344
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 345
    .line 346
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    goto :goto_2

    .line 355
    :cond_6
    const/high16 p1, 0x42b50000    # 90.5f

    .line 356
    .line 357
    :goto_2
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 358
    .line 359
    float-to-int p1, p1

    .line 360
    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 364
    .line 365
    const/16 v0, 0x5a

    .line 366
    .line 367
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 368
    .line 369
    .line 370
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 371
    .line 372
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 373
    .line 374
    .line 375
    return-void
.end method

.method public final c(Landroid/net/Uri;)LO0/a;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lp0/M;->I(Landroid/net/Uri;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1}, Lp0/M;->J(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0x9

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const-string v6, " --------------TYPE_HLS---------------"

    .line 28
    .line 29
    const/16 v7, 0x13

    .line 30
    .line 31
    const-string v8, " --------------TYPE_OTHER---------------"

    .line 32
    .line 33
    const-string v9, ""

    .line 34
    .line 35
    const-string v10, "XCIPTV_TAG"

    .line 36
    .line 37
    const-string v11, "other"

    .line 38
    .line 39
    const-string v12, "hls"

    .line 40
    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    .line 43
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iput-object v11, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 72
    .line 73
    sget-object v14, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 74
    .line 75
    new-instance v1, LW0/p;

    .line 76
    .line 77
    invoke-direct {v1}, LW0/p;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v15, LB0/x;

    .line 81
    .line 82
    invoke-direct {v15, v1, v7}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    new-instance v1, LG0/j;

    .line 86
    .line 87
    invoke-direct {v1}, LG0/j;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v17, LU4/b;

    .line 91
    .line 92
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static/range {p1 .. p1}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    iget-object v2, v13, Lm0/I;->b:Lm0/E;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v2, LO0/N;

    .line 105
    .line 106
    invoke-virtual {v1, v13}, LG0/j;->b(Lm0/I;)LG0/r;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const/high16 v18, 0x100000

    .line 111
    .line 112
    move-object v12, v2

    .line 113
    invoke-direct/range {v12 .. v18}, LO0/N;-><init>(Lm0/I;Ls0/h;LB0/x;LG0/r;LU4/b;I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_2
    :goto_1
    iput-object v12, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 124
    .line 125
    sget-object v2, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Ls0/h;)V

    .line 128
    .line 129
    .line 130
    iput-boolean v5, v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Z

    .line 131
    .line 132
    new-instance v2, LH0/d;

    .line 133
    .line 134
    invoke-direct {v2, v4, v3}, LH0/d;-><init>(IZ)V

    .line 135
    .line 136
    .line 137
    iput-object v2, v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 138
    .line 139
    invoke-static/range {p1 .. p1}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b(Lm0/I;)LH0/o;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :cond_3
    if-nez v1, :cond_4

    .line 150
    .line 151
    new-instance v1, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 152
    .line 153
    sget-object v2, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 154
    .line 155
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Ls0/h;)V

    .line 156
    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b(Lm0/I;)LE0/j;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    const/4 v2, 0x4

    .line 168
    if-ne v1, v2, :cond_8

    .line 169
    .line 170
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_7

    .line 177
    .line 178
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    iget-object v1, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    iput-object v12, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 201
    .line 202
    sget-object v2, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 203
    .line 204
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Ls0/h;)V

    .line 205
    .line 206
    .line 207
    iput-boolean v5, v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Z

    .line 208
    .line 209
    new-instance v2, LH0/d;

    .line 210
    .line 211
    invoke-direct {v2, v4, v3}, LH0/d;-><init>(IZ)V

    .line 212
    .line 213
    .line 214
    iput-object v2, v1, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:LH0/k;

    .line 215
    .line 216
    invoke-static/range {p1 .. p1}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b(Lm0/I;)LH0/o;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    goto :goto_3

    .line 225
    :cond_6
    const/4 v2, 0x0

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    :goto_2
    iput-object v11, v0, Lpe/hf/black20/CatchupPlayerActivity;->B0:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    sget-object v5, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 233
    .line 234
    new-instance v1, LW0/p;

    .line 235
    .line 236
    invoke-direct {v1}, LW0/p;-><init>()V

    .line 237
    .line 238
    .line 239
    new-instance v6, LB0/x;

    .line 240
    .line 241
    invoke-direct {v6, v1, v7}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    new-instance v1, LG0/j;

    .line 245
    .line 246
    invoke-direct {v1}, LG0/j;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v8, LU4/b;

    .line 250
    .line 251
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-static/range {p1 .. p1}, Lm0/I;->a(Landroid/net/Uri;)Lm0/I;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    iget-object v2, v4, Lm0/I;->b:Lm0/E;

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v2, LO0/N;

    .line 264
    .line 265
    invoke-virtual {v1, v4}, LG0/j;->b(Lm0/I;)LG0/r;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const/high16 v9, 0x100000

    .line 270
    .line 271
    move-object v3, v2

    .line 272
    invoke-direct/range {v3 .. v9}, LO0/N;-><init>(Lm0/I;Ls0/h;LB0/x;LG0/r;LU4/b;I)V

    .line 273
    .line 274
    .line 275
    :goto_3
    return-object v2

    .line 276
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 277
    .line 278
    const-string v3, "Unsupported type: "

    .line 279
    .line 280
    invoke-static {v3, v1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lpe/hf/black20/util/Methods;->a:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const-string v1, "yyyy-MM-dd:HH-mm"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-object p1, v4

    .line 24
    :goto_0
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 29
    .line 30
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->W:Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    iget-object v5, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    const-string v6, "timezone"

    .line 35
    .line 36
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->W:Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-object p1, v4

    .line 55
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 60
    .line 61
    .line 62
    const/16 p1, 0xd

    .line 63
    .line 64
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->W:Ljava/text/SimpleDateFormat;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 78
    .line 79
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 83
    .line 84
    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    goto :goto_2

    .line 92
    :catch_2
    move-object p1, v4

    .line 93
    :goto_2
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 98
    .line 99
    iget v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->h0:I

    .line 100
    .line 101
    sub-int/2addr v0, v1

    .line 102
    div-int/lit8 v0, v0, 0x3c

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->q0:Lh7/i;

    .line 111
    .line 112
    iget-object v0, v0, Lh7/i;->c:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->q0:Lh7/i;

    .line 119
    .line 120
    iget-object v1, v1, Lh7/i;->d:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v3, p0, Lpe/hf/black20/CatchupPlayerActivity;->q0:Lh7/i;

    .line 132
    .line 133
    iget-object v3, v3, Lh7/i;->e:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, "/timeshift/"

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, "/"

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v2, v1, v0, p1, v0}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->J:Ljava/lang/String;

    .line 167
    .line 168
    const-string v0, ".ts"

    .line 169
    .line 170
    invoke-static {v2, p1, v0}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 175
    .line 176
    const-string v0, " "

    .line 177
    .line 178
    const-string v1, ""

    .line 179
    .line 180
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 185
    .line 186
    const-string p1, "ORT_WHICH_PLAYER"

    .line 187
    .line 188
    const-string v2, "EXO"

    .line 189
    .line 190
    invoke-static {p1, v2, v2}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_1

    .line 195
    .line 196
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string v0, "PlayTVChannelsEXOPlayer "

    .line 207
    .line 208
    const-string v1, "XCIPTV_TAG"

    .line 209
    .line 210
    invoke-static {v0, p1, v1}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 214
    .line 215
    const v1, 0x7f080567

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->V:Landroid/widget/TextView;

    .line 222
    .line 223
    iget v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 224
    .line 225
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->a(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lpe/hf/black20/CatchupPlayerActivity;->e()V

    .line 233
    .line 234
    .line 235
    new-instance v0, LB0/z;

    .line 236
    .line 237
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 238
    .line 239
    invoke-direct {v0, v1}, LB0/z;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    sget-object v3, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 243
    .line 244
    iget-object v5, p0, Lpe/hf/black20/CatchupPlayerActivity;->x0:Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v1, v3, v5}, Le7/a;->a(Landroid/app/Activity;Ls0/h;Ljava/lang/String;)LO0/l;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iget-boolean v5, v0, LB0/z;->w:Z

    .line 251
    .line 252
    const/4 v6, 0x1

    .line 253
    xor-int/2addr v5, v6

    .line 254
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 255
    .line 256
    .line 257
    new-instance v5, LB0/x;

    .line 258
    .line 259
    invoke-direct {v5, v3, v6}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    iput-object v5, v0, LB0/z;->d:Ly4/t;

    .line 263
    .line 264
    const-string v3, "prefer_extension_decoders"

    .line 265
    .line 266
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 267
    .line 268
    .line 269
    new-instance v2, LB0/p;

    .line 270
    .line 271
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-direct {v2, v1}, LB0/p;-><init>(Landroid/content/Context;)V

    .line 276
    .line 277
    .line 278
    const/4 v1, 0x2

    .line 279
    iput v1, v2, LB0/p;->c:I

    .line 280
    .line 281
    iget-boolean v3, v0, LB0/z;->w:Z

    .line 282
    .line 283
    xor-int/2addr v3, v6

    .line 284
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 285
    .line 286
    .line 287
    new-instance v3, LB0/x;

    .line 288
    .line 289
    invoke-direct {v3, v2, v1}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 290
    .line 291
    .line 292
    iput-object v3, v0, LB0/z;->c:Ly4/t;

    .line 293
    .line 294
    invoke-virtual {v0}, LB0/z;->a()LB0/O;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 299
    .line 300
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->A0:Lm0/k0;

    .line 301
    .line 302
    invoke-virtual {v0, v1}, LB0/O;->U(Lm0/k0;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 306
    .line 307
    new-instance v1, Lb7/m;

    .line 308
    .line 309
    invoke-direct {v1, p0}, Lb7/m;-><init>(Lpe/hf/black20/CatchupPlayerActivity;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    iget-object v0, v0, LB0/O;->S:Lx/e;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lx/e;->a(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 321
    .line 322
    sget-object v1, Lm0/d;->b:Lm0/d;

    .line 323
    .line 324
    invoke-virtual {v0}, LB0/O;->P()V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 328
    .line 329
    const-string v1, "last_volume"

    .line 330
    .line 331
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 336
    .line 337
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    if-nez v1, :cond_0

    .line 342
    .line 343
    const/16 v0, 0x32

    .line 344
    .line 345
    const/high16 v1, 0x3f000000    # 0.5f

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    int-to-float v1, v0

    .line 353
    const/high16 v2, 0x42c80000    # 100.0f

    .line 354
    .line 355
    div-float/2addr v1, v2

    .line 356
    :goto_3
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 357
    .line 358
    iget-object v3, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 359
    .line 360
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 361
    .line 362
    .line 363
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 364
    .line 365
    iget v3, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 366
    .line 367
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 368
    .line 369
    .line 370
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 371
    .line 372
    invoke-virtual {v2, v1}, LB0/O;->W(F)V

    .line 373
    .line 374
    .line 375
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 376
    .line 377
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 378
    .line 379
    .line 380
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 381
    .line 382
    invoke-virtual {v0, v6}, LB0/O;->S(Z)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 386
    .line 387
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-virtual {p0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->c(Landroid/net/Uri;)LO0/a;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {v0, p1}, LB0/O;->Q(LO0/a;)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 399
    .line 400
    invoke-virtual {p1}, LB0/O;->K()V

    .line 401
    .line 402
    .line 403
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 404
    .line 405
    invoke-virtual {p1}, Lm0/f;->h()V

    .line 406
    .line 407
    .line 408
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 409
    .line 410
    if-lez p1, :cond_3

    .line 411
    .line 412
    new-instance p1, Landroid/os/Handler;

    .line 413
    .line 414
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 415
    .line 416
    .line 417
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->c0:Landroid/os/Handler;

    .line 418
    .line 419
    new-instance v0, Landroidx/leanback/widget/C;

    .line 420
    .line 421
    invoke-direct {v0, p0}, Landroidx/leanback/widget/C;-><init>(Lpe/hf/black20/CatchupPlayerActivity;)V

    .line 422
    .line 423
    .line 424
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->d0:Landroidx/leanback/widget/C;

    .line 425
    .line 426
    const-wide/16 v1, 0x0

    .line 427
    .line 428
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    .line 430
    .line 431
    goto :goto_4

    .line 432
    :cond_1
    const-string v0, "VLC"

    .line 433
    .line 434
    invoke-static {p1, v2, v0}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-eqz p1, :cond_2

    .line 439
    .line 440
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {p0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->b(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_2
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->K:Ljava/lang/String;

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->b(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    :cond_3
    :goto_4
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    const-string v0, "ORT_WHICH_PLAYER"

    .line 2
    .line 3
    const-string v1, "EXO"

    .line 4
    .line 5
    invoke-static {v0, v1, v1}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "XCIPTV_TAG"

    .line 16
    .line 17
    const-string v1, "Release Player"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 23
    .line 24
    invoke-virtual {v0}, LB0/O;->L()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 29
    .line 30
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Lm0/Y;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->t0:Lorg/videolan/libvlc/MediaPlayer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->o0:Lb7/j;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->m0:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->p0:Lb7/j;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->n0:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->d0:Landroidx/leanback/widget/C;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v1, p0, Lpe/hf/black20/CatchupPlayerActivity;->c0:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x80

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0e0023

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v0, 0x1c

    .line 22
    .line 23
    if-lt p1, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, LN/d0;->s(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->W:Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->G:Lpe/hf/black20/CatchupPlayerActivity;

    .line 53
    .line 54
    const-string v0, "pe.hf.black20"

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    new-instance v0, Lc7/a;

    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    const-string v2, "Default (XC)"

    .line 69
    .line 70
    const-string v3, "ORT_PROFILE"

    .line 71
    .line 72
    invoke-static {v3, v2, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->q0:Lh7/i;

    .line 77
    .line 78
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    .line 87
    .line 88
    new-instance v2, Lb7/l;

    .line 89
    .line 90
    invoke-direct {v2, p0, v1}, Lb7/l;-><init>(Landroid/app/Activity;I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->l0:Landroid/view/GestureDetector;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "position"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const-string v2, "stream_id"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->J:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "duration"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 130
    .line 131
    const-string v2, "start_time"

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iput-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->L:Ljava/lang/String;

    .line 138
    .line 139
    const-string v2, "title_desc"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->N:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    mul-int/lit8 v0, v0, 0x3c

    .line 154
    .line 155
    iput v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, "---------------Duration-------------"

    .line 160
    .line 161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->M:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v2, "XCIPTV_TAG"

    .line 174
    .line 175
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    const v0, 0x7f0b03d9

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/ProgressBar;

    .line 186
    .line 187
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->O:Landroid/widget/ProgressBar;

    .line 188
    .line 189
    const/4 v2, 0x4

    .line 190
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    const v0, 0x7f0b02dc

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/FrameLayout;

    .line 201
    .line 202
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->P:Landroid/widget/FrameLayout;

    .line 203
    .line 204
    const v0, 0x7f0b02f5

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/FrameLayout;

    .line 212
    .line 213
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->R:Landroid/widget/FrameLayout;

    .line 214
    .line 215
    const/16 v3, 0x8

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    const v0, 0x7f0b02e0

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/widget/FrameLayout;

    .line 228
    .line 229
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    const v0, 0x7f0b02eb

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Landroid/widget/FrameLayout;

    .line 242
    .line 243
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->S:Landroid/widget/FrameLayout;

    .line 244
    .line 245
    iget-object v4, p0, Lpe/hf/black20/CatchupPlayerActivity;->D0:Ll/L0;

    .line 246
    .line 247
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->S:Landroid/widget/FrameLayout;

    .line 251
    .line 252
    const/4 v4, 0x1

    .line 253
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 254
    .line 255
    .line 256
    const v0, 0x7f0b0528

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Landroid/widget/TextView;

    .line 264
    .line 265
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->T:Landroid/widget/TextView;

    .line 266
    .line 267
    const v0, 0x7f0b0573

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Landroid/widget/TextView;

    .line 275
    .line 276
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->U:Landroid/widget/TextView;

    .line 277
    .line 278
    const v0, 0x7f0b052d

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Landroid/widget/TextView;

    .line 286
    .line 287
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->V:Landroid/widget/TextView;

    .line 288
    .line 289
    const v0, 0x7f0b00fa

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/widget/ImageButton;

    .line 297
    .line 298
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 299
    .line 300
    const v0, 0x7f0b00f8

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Landroid/widget/ImageButton;

    .line 308
    .line 309
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->Y:Landroid/widget/ImageButton;

    .line 310
    .line 311
    const v0, 0x7f0b00fc

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/widget/ImageButton;

    .line 319
    .line 320
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->Z:Landroid/widget/ImageButton;

    .line 321
    .line 322
    const v0, 0x7f0b044e

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Landroid/widget/SeekBar;

    .line 330
    .line 331
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 332
    .line 333
    const/16 v5, 0x64

    .line 334
    .line 335
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 336
    .line 337
    .line 338
    const v0, 0x7f0b0450

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Landroid/widget/SeekBar;

    .line 346
    .line 347
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 348
    .line 349
    iget v5, p0, Lpe/hf/black20/CatchupPlayerActivity;->f0:I

    .line 350
    .line 351
    iget v6, p0, Lpe/hf/black20/CatchupPlayerActivity;->g0:I

    .line 352
    .line 353
    sub-int/2addr v5, v6

    .line 354
    iget v6, p0, Lpe/hf/black20/CatchupPlayerActivity;->e0:I

    .line 355
    .line 356
    div-int/2addr v5, v6

    .line 357
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    .line 364
    .line 365
    const v0, 0x7f0b03cc

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Landroidx/media3/ui/PlayerView;

    .line 373
    .line 374
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 375
    .line 376
    const v0, 0x7f0b0485

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, Landroid/view/SurfaceView;

    .line 384
    .line 385
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->r0:Landroid/view/SurfaceView;

    .line 386
    .line 387
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 388
    .line 389
    const-string v5, "agent"

    .line 390
    .line 391
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    const/4 v6, 0x0

    .line 396
    if-eqz v0, :cond_1

    .line 397
    .line 398
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 399
    .line 400
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->x0:Ljava/lang/String;

    .line 405
    .line 406
    :cond_1
    sget-object v0, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 407
    .line 408
    iget-object v5, p0, Lpe/hf/black20/CatchupPlayerActivity;->x0:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {p1, v0, v5}, Le7/a;->f(Landroid/app/Activity;Ls0/h;Ljava/lang/String;)Ls0/h;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    sput-object p1, Lpe/hf/black20/CatchupPlayerActivity;->E0:Ls0/h;

    .line 415
    .line 416
    new-instance p1, Lm0/j0;

    .line 417
    .line 418
    invoke-direct {p1}, Lm0/j0;-><init>()V

    .line 419
    .line 420
    .line 421
    new-instance v0, Lm0/k0;

    .line 422
    .line 423
    invoke-direct {v0, p1}, Lm0/k0;-><init>(Lm0/j0;)V

    .line 424
    .line 425
    .line 426
    iput-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->A0:Lm0/k0;

    .line 427
    .line 428
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 429
    .line 430
    const-string v0, "whichplayer_catchup"

    .line 431
    .line 432
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    const-string v5, "VLC"

    .line 437
    .line 438
    const-string v7, "ORT_WHICH_PLAYER"

    .line 439
    .line 440
    const-string v8, "EXO"

    .line 441
    .line 442
    if-eqz p1, :cond_3

    .line 443
    .line 444
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 445
    .line 446
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    if-eqz p1, :cond_2

    .line 455
    .line 456
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {p1, v7, v8}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 461
    .line 462
    .line 463
    goto :goto_0

    .line 464
    :cond_2
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-virtual {p1, v7, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 469
    .line 470
    .line 471
    goto :goto_0

    .line 472
    :cond_3
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p1, v7, v5}, LQ5/a;->g(Ljava/lang/String;Ljava/lang/String;)LQ5/a;

    .line 477
    .line 478
    .line 479
    :goto_0
    invoke-static {v7, v8, v8}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-eqz p1, :cond_5

    .line 484
    .line 485
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 486
    .line 487
    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 488
    .line 489
    .line 490
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 491
    .line 492
    const-string v0, "video_resize_exo"

    .line 493
    .line 494
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result p1

    .line 498
    if-eqz p1, :cond_4

    .line 499
    .line 500
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 501
    .line 502
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    move-result p1

    .line 510
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 511
    .line 512
    goto :goto_1

    .line 513
    :cond_4
    const/4 p1, 0x3

    .line 514
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 515
    .line 516
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 517
    .line 518
    iget v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 519
    .line 520
    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 524
    .line 525
    invoke-virtual {p1, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 526
    .line 527
    .line 528
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->r0:Landroid/view/SurfaceView;

    .line 529
    .line 530
    invoke-virtual {p1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 531
    .line 532
    .line 533
    goto :goto_3

    .line 534
    :cond_5
    invoke-static {v7, v8, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 535
    .line 536
    .line 537
    move-result p1

    .line 538
    if-eqz p1, :cond_7

    .line 539
    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    const-string v0, "audio"

    .line 545
    .line 546
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Landroid/media/AudioManager;

    .line 551
    .line 552
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 553
    .line 554
    const-string v0, "video_resize_vlc"

    .line 555
    .line 556
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-eqz p1, :cond_6

    .line 561
    .line 562
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->H:Landroid/content/SharedPreferences;

    .line 563
    .line 564
    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 573
    .line 574
    goto :goto_2

    .line 575
    :cond_6
    iput v2, p0, Lpe/hf/black20/CatchupPlayerActivity;->w0:I

    .line 576
    .line 577
    :goto_2
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->y0:Landroidx/media3/ui/PlayerView;

    .line 578
    .line 579
    invoke-virtual {p1, v3}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 580
    .line 581
    .line 582
    :cond_7
    :goto_3
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 583
    .line 584
    new-instance v0, Lb7/h;

    .line 585
    .line 586
    invoke-direct {v0, p0, v1}, Lb7/h;-><init>(Lpe/hf/black20/CatchupPlayerActivity;I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    .line 591
    .line 592
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Y:Landroid/widget/ImageButton;

    .line 593
    .line 594
    new-instance v0, Lb7/h;

    .line 595
    .line 596
    invoke-direct {v0, p0, v4}, Lb7/h;-><init>(Lpe/hf/black20/CatchupPlayerActivity;I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    .line 601
    .line 602
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Z:Landroid/widget/ImageButton;

    .line 603
    .line 604
    new-instance v0, Lb7/h;

    .line 605
    .line 606
    const/4 v2, 0x2

    .line 607
    invoke-direct {v0, p0, v2}, Lb7/h;-><init>(Lpe/hf/black20/CatchupPlayerActivity;I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    .line 612
    .line 613
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->a0:Landroid/widget/SeekBar;

    .line 614
    .line 615
    new-instance v0, Lb7/i;

    .line 616
    .line 617
    invoke-direct {v0, p0, v1}, Lb7/i;-><init>(Ljava/lang/Object;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 621
    .line 622
    .line 623
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 624
    .line 625
    new-instance v0, Lb7/i;

    .line 626
    .line 627
    invoke-direct {v0, p0, v4}, Lb7/i;-><init>(Ljava/lang/Object;I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 631
    .line 632
    .line 633
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->T:Landroid/widget/TextView;

    .line 634
    .line 635
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->N:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    .line 639
    .line 640
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->L:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {p0, p1}, Lpe/hf/black20/CatchupPlayerActivity;->d(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onDestroy()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/CatchupPlayerActivity;->e()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Keycode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "XCIPTV_TAG"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq p1, v2, :cond_4

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v4, "last_volume"

    .line 28
    .line 29
    const v5, 0x3dcccccd    # 0.1f

    .line 30
    .line 31
    .line 32
    const/high16 v6, 0x42c80000    # 100.0f

    .line 33
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :pswitch_0
    const-string p1, "KEYCODE_DPAD_CENTER Pressed ---  "

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lpe/hf/black20/CatchupPlayerActivity;->a()V

    .line 80
    .line 81
    .line 82
    :cond_1
    return v3

    .line 83
    :pswitch_1
    const-string p1, "RIGHT button pressed"

    .line 84
    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 97
    .line 98
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 99
    .line 100
    .line 101
    iget p1, p1, LB0/O;->E0:F

    .line 102
    .line 103
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 104
    .line 105
    iget-object p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 106
    .line 107
    mul-float p1, p1, v6

    .line 108
    .line 109
    float-to-int p1, p1

    .line 110
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->R:Landroid/widget/FrameLayout;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 119
    .line 120
    const/high16 p2, 0x3f800000    # 1.0f

    .line 121
    .line 122
    cmpg-float p2, p1, p2

    .line 123
    .line 124
    if-gez p2, :cond_2

    .line 125
    .line 126
    add-float/2addr p1, v5

    .line 127
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 128
    .line 129
    iget-object p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 130
    .line 131
    invoke-virtual {p2, p1}, LB0/O;->W(F)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 135
    .line 136
    iget p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 137
    .line 138
    mul-float p2, p2, v6

    .line 139
    .line 140
    float-to-int p2, p2

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 145
    .line 146
    iget p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 147
    .line 148
    mul-float p2, p2, v6

    .line 149
    .line 150
    float-to-int p2, p2

    .line 151
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    .line 162
    .line 163
    :cond_2
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    return v3

    .line 173
    :pswitch_2
    const-string p1, "LEFT button pressed"

    .line 174
    .line 175
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_3

    .line 185
    .line 186
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 187
    .line 188
    invoke-virtual {p1}, LB0/O;->c0()V

    .line 189
    .line 190
    .line 191
    iget p1, p1, LB0/O;->E0:F

    .line 192
    .line 193
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 194
    .line 195
    iget-object p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 196
    .line 197
    mul-float p1, p1, v6

    .line 198
    .line 199
    float-to-int p1, p1

    .line 200
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->R:Landroid/widget/FrameLayout;

    .line 204
    .line 205
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 209
    .line 210
    const/4 p2, 0x0

    .line 211
    cmpl-float p2, p1, p2

    .line 212
    .line 213
    if-lez p2, :cond_3

    .line 214
    .line 215
    sub-float/2addr p1, v5

    .line 216
    iput p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 217
    .line 218
    iget-object p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->z0:LB0/O;

    .line 219
    .line 220
    invoke-virtual {p2, p1}, LB0/O;->W(F)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->b0:Landroid/widget/SeekBar;

    .line 224
    .line 225
    iget p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 226
    .line 227
    mul-float p2, p2, v6

    .line 228
    .line 229
    float-to-int p2, p2

    .line 230
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 234
    .line 235
    iget p2, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 236
    .line 237
    mul-float p2, p2, v6

    .line 238
    .line 239
    float-to-int p2, p2

    .line 240
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->I:Landroid/content/SharedPreferences$Editor;

    .line 248
    .line 249
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    .line 251
    .line 252
    :cond_3
    iget p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->k0:F

    .line 253
    .line 254
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    return v3

    .line 262
    :pswitch_3
    const-string p1, "DOWN button pressed"

    .line 263
    .line 264
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    return v3

    .line 268
    :pswitch_4
    const-string p1, "UP button pressed"

    .line 269
    .line 270
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    return v3

    .line 274
    :cond_4
    const-string p1, "BACK button pressed"

    .line 275
    .line 276
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_5

    .line 286
    .line 287
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->Q:Landroid/widget/FrameLayout;

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lpe/hf/black20/CatchupPlayerActivity;->S:Landroid/widget/FrameLayout;

    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_5
    invoke-virtual {p0}, Lpe/hf/black20/CatchupPlayerActivity;->e()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 302
    .line 303
    .line 304
    :goto_1
    return v3

    .line 305
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onPause()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onResume()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 12
    .line 13
    const v1, 0x7f080567

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onStart()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const-string v0, "XCIPTV_TAG"

    .line 5
    .line 6
    const-string v1, "onStop()..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/CatchupPlayerActivity;->X:Landroid/widget/ImageButton;

    .line 12
    .line 13
    const v1, 0x7f080568

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
