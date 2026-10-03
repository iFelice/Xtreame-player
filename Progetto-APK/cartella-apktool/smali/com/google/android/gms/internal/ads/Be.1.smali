.class public final Lcom/google/android/gms/internal/ads/Be;
.super Lcom/google/android/gms/internal/ads/De;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# static fields
.field public static final b0:Ljava/util/HashMap;


# instance fields
.field public final I:Lcom/google/android/gms/internal/ads/Oe;

.field public final J:Lcom/google/android/gms/internal/ads/Pe;

.field public final K:Z

.field public L:I

.field public M:I

.field public N:Landroid/media/MediaPlayer;

.field public O:Landroid/net/Uri;

.field public P:I

.field public Q:I

.field public R:I

.field public S:Lcom/google/android/gms/internal/ads/Me;

.field public final T:Z

.field public U:I

.field public V:Lcom/google/android/gms/internal/ads/Ce;

.field public W:Z

.field public a0:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/Be;->b0:Ljava/util/HashMap;

    .line 7
    .line 8
    const/16 v1, -0x3ec

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "MEDIA_ERROR_IO"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/16 v1, -0x3ef

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "MEDIA_ERROR_MALFORMED"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const/16 v1, -0x3f2

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const/16 v1, -0x6e

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x64

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "MEDIA_ERROR_UNKNOWN"

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v2, "MEDIA_INFO_UNKNOWN"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x2bc

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x2bd

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "MEDIA_INFO_BUFFERING_START"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const/16 v1, 0x2be

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "MEDIA_INFO_BUFFERING_END"

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x320

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/16 v1, 0x321

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const/16 v1, 0x322

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    const/16 v1, 0x385

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const/16 v1, 0x386

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Pe;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/De;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->L:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Be;->W:Z

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->a0:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Be;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Be;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 20
    .line 21
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Be;->T:Z

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/Be;->K:Z

    .line 24
    .line 25
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/Pe;->a(Lcom/google/android/gms/internal/ads/De;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 6

    .line 1
    const-string v0, "AdMediaPlayerView init MediaPlayer"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->O:Landroid/net/Uri;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Be;->E(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :try_start_0
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 24
    .line 25
    iget-object v3, v3, Lk3/l;->s:LF2/G;

    .line 26
    .line 27
    new-instance v3, Landroid/media/MediaPlayer;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 33
    .line 34
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 38
    .line 39
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 43
    .line 44
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 53
    .line 54
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 58
    .line 59
    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 60
    .line 61
    .line 62
    iput v1, p0, Lcom/google/android/gms/internal/ads/Be;->R:I

    .line 63
    .line 64
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Be;->T:Z

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    new-instance v3, Lcom/google/android/gms/internal/ads/Me;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/Me;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    iput v4, v3, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 88
    .line 89
    iput v5, v3, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 90
    .line 91
    iput-object v0, v3, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 99
    .line 100
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    move-object v3, v5

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    :catch_0
    :try_start_2
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 113
    .line 114
    :goto_0
    if-eqz v3, :cond_2

    .line 115
    .line 116
    move-object v0, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Me;->c()V

    .line 121
    .line 122
    .line 123
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    goto :goto_2

    .line 128
    :catch_2
    move-exception v0

    .line 129
    goto :goto_2

    .line 130
    :catch_3
    move-exception v0

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Be;->O:Landroid/net/Uri;

    .line 139
    .line 140
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Landroid/view/Surface;

    .line 144
    .line 145
    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 154
    .line 155
    const/4 v3, 0x3

    .line 156
    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Be;->F(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->O:Landroid/net/Uri;

    .line 174
    .line 175
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    const-string v4, "Failed to initialize MediaPlayer at "

    .line 180
    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v3, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 189
    .line 190
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/Be;->onError(Landroid/media/MediaPlayer;II)Z

    .line 191
    .line 192
    .line 193
    :cond_4
    :goto_3
    return-void
.end method

.method public final E(Z)V
    .locals 2

    .line 1
    const-string v0, "AdMediaPlayerView release"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Me;->c()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final F(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Be;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Pe;->b()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/Be;->L:I

    .line 19
    .line 20
    if-ne v3, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 24
    .line 25
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->L:I

    .line 31
    .line 32
    return-void
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public final k()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-static {v0}, LE1/b0;->j(Landroid/media/MediaPlayer;)Landroid/os/PersistableBundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "android.media.mediaplayer.dropped"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, -0x1

    .line 27
    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final o()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/Be;->R:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    const-string p1, "AdMediaPlayerView completion"

    .line 2
    .line 3
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 11
    .line 12
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/ze;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/Be;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/Be;->b0:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "AdMediaPlayerView MediaPlayer error: "

    .line 26
    .line 27
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ":"

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p3}, Lp3/h;->g(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p3, -0x1

    .line 49
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 50
    .line 51
    .line 52
    iput p3, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 53
    .line 54
    sget-object p3, Lo3/O;->l:Lo3/J;

    .line 55
    .line 56
    new-instance v0, LK/a;

    .line 57
    .line 58
    const/16 v1, 0x13

    .line 59
    .line 60
    invoke-direct {v0, p0, p2, p1, v1}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/Be;->b0:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "AdMediaPlayerView MediaPlayer info: "

    .line 26
    .line 27
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, ":"

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 8
    .line 9
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 14
    .line 15
    if-lez v2, :cond_9

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 18
    .line 19
    if-lez v2, :cond_9

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 22
    .line 23
    if-nez v2, :cond_9

    .line 24
    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    const/high16 v2, 0x40000000    # 2.0f

    .line 42
    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 48
    .line 49
    mul-int v1, v0, p2

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 52
    .line 53
    mul-int v3, p1, v2

    .line 54
    .line 55
    if-ge v1, v3, :cond_0

    .line 56
    .line 57
    div-int v0, v1, v2

    .line 58
    .line 59
    :goto_0
    move v1, p2

    .line 60
    goto :goto_4

    .line 61
    :cond_0
    if-le v1, v3, :cond_5

    .line 62
    .line 63
    div-int v1, v3, v0

    .line 64
    .line 65
    :goto_1
    move v0, p1

    .line 66
    goto :goto_4

    .line 67
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 68
    .line 69
    :cond_2
    const/high16 v3, -0x80000000

    .line 70
    .line 71
    if-ne v0, v2, :cond_4

    .line 72
    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 74
    .line 75
    mul-int v0, v0, p1

    .line 76
    .line 77
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 78
    .line 79
    div-int/2addr v0, v2

    .line 80
    if-ne v1, v3, :cond_3

    .line 81
    .line 82
    if-le v0, p2, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v1, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    if-ne v1, v2, :cond_7

    .line 88
    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 90
    .line 91
    mul-int v1, v1, p2

    .line 92
    .line 93
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 94
    .line 95
    div-int/2addr v1, v2

    .line 96
    if-ne v0, v3, :cond_6

    .line 97
    .line 98
    if-le v1, p1, :cond_6

    .line 99
    .line 100
    :cond_5
    :goto_2
    move v0, p1

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 105
    .line 106
    iget v4, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 107
    .line 108
    if-ne v1, v3, :cond_8

    .line 109
    .line 110
    if-le v4, p2, :cond_8

    .line 111
    .line 112
    mul-int v1, p2, v2

    .line 113
    .line 114
    div-int/2addr v1, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_8
    move v1, v2

    .line 117
    move p2, v4

    .line 118
    :goto_3
    if-ne v0, v3, :cond_6

    .line 119
    .line 120
    if-le v1, p1, :cond_6

    .line 121
    .line 122
    mul-int v4, v4, p1

    .line 123
    .line 124
    div-int v1, v4, v2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_9
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 131
    .line 132
    if-eqz p1, :cond_a

    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Me;->b(II)V

    .line 135
    .line 136
    .line 137
    :cond_a
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    .line 1
    const-string v0, "AdMediaPlayerView prepared"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->i:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "vfr2"

    .line 22
    .line 23
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 30
    .line 31
    invoke-static {v2, v3, v1}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 36
    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/internal/ads/Ha;

    .line 40
    .line 41
    const/16 v2, 0xf

    .line 42
    .line 43
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/Ha;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 60
    .line 61
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Be;->u(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Be;->K:Z

    .line 69
    .line 70
    const/4 v0, 0x3

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_7

    .line 79
    .line 80
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-lez p1, :cond_7

    .line 87
    .line 88
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 89
    .line 90
    if-eq p1, v0, :cond_7

    .line 91
    .line 92
    const-string p1, "AdMediaPlayerView nudging MediaPlayer"

    .line 93
    .line 94
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    .line 107
    .line 108
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :catch_0
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 123
    .line 124
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-ne v3, p1, :cond_6

    .line 146
    .line 147
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 148
    .line 149
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    sub-long/2addr v3, v1

    .line 159
    const-wide/16 v5, 0xfa

    .line 160
    .line 161
    cmp-long v7, v3, v5

    .line 162
    .line 163
    if-lez v7, :cond_5

    .line 164
    .line 165
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->zzn()V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 174
    .line 175
    iget v1, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 176
    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v3, "AdMediaPlayerView stream dimensions: "

    .line 180
    .line 181
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p1, " x "

    .line 188
    .line 189
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 203
    .line 204
    if-ne p1, v0, :cond_8

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->t()V

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->zzn()V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    const-string p1, "AdMediaPlayerView surface created"

    .line 2
    .line 3
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->D()V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 10
    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/ze;

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/Be;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    const-string p1, "AdMediaPlayerView surface destroyed"

    .line 2
    .line 3
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Me;->c()V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/ze;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/Be;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Be;->E(Z)V

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    const-string p1, "AdMediaPlayerView surface changed"

    .line 2
    .line 3
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 14
    .line 15
    if-ne v0, p3, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne p1, v2, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Be;->u(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->t()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Me;->b(II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/Ae;

    .line 49
    .line 50
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/Ae;-><init>(Lcom/google/android/gms/internal/ads/De;III)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Pe;->d(Lcom/google/android/gms/internal/ads/De;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->V:Lcom/google/android/gms/internal/ads/Ce;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/De;->G:Lcom/google/android/gms/internal/ads/Je;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/Je;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/Ce;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdMediaPlayerView size changed: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p2, " x "

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->Q:I

    .line 37
    .line 38
    iget p2, p0, Lcom/google/android/gms/internal/ads/Be;->P:I

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdMediaPlayerView window visibility changed to "

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
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 19
    .line 20
    new-instance v1, Landroidx/leanback/widget/C;

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-direct {v1, p0, p1, v2}, Landroidx/leanback/widget/C;-><init>(Ljava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final p()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->a0:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->q()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/ads/Be;->R:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    mul-long v0, v0, v2

    .line 13
    .line 14
    const-wide/16 v2, 0x64

    .line 15
    .line 16
    div-long/2addr v0, v2

    .line 17
    return-wide v0

    .line 18
    :cond_0
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0
.end method

.method public final q()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->a0:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->l()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Be;->a0:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-long v2, v2

    .line 17
    mul-long v0, v0, v2

    .line 18
    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Be;->T:Z

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "MediaPlayer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 3

    .line 1
    const-string v0, "AdMediaPlayerView pause"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x4

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/ze;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/Be;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 40
    .line 41
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    const-string v0, "AdMediaPlayerView play"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/De;->G:Lcom/google/android/gms/internal/ads/Je;

    .line 23
    .line 24
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/Je;->c:Z

    .line 25
    .line 26
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 27
    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/ze;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/Be;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 37
    .line 38
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Be;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "@"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final u(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdMediaPlayerView seek "

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
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->G()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 34
    .line 35
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/Ce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->V:Lcom/google/android/gms/internal/ads/Ce;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/o6;->i(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/o6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/o6;->G:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/o6;->G:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Be;->O:Landroid/net/Uri;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/google/android/gms/internal/ads/Be;->U:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Be;->D()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    const-string v0, "AdMediaPlayerView stop"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Be;->F(I)V

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/Be;->M:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Pe;->c()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final y(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Me;->d(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Re;->e:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/Re;->f:F

    .line 11
    .line 12
    :goto_0
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Re;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move v2, v1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Be;->N:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const-string v0, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    .line 26
    .line 27
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :catch_0
    :goto_1
    return-void
.end method
