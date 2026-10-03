.class public final Lcom/google/android/gms/internal/ads/We;
.super Lcom/google/android/gms/internal/ads/De;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/He;


# instance fields
.field public final I:Lcom/google/android/gms/internal/ads/Oe;

.field public final J:Lcom/google/android/gms/internal/ads/Pe;

.field public final K:Lcom/google/android/gms/internal/ads/Ne;

.field public L:Lcom/google/android/gms/internal/ads/Ce;

.field public M:Landroid/view/Surface;

.field public N:Lcom/google/android/gms/internal/ads/vf;

.field public O:Ljava/lang/String;

.field public P:[Ljava/lang/String;

.field public Q:Z

.field public R:I

.field public S:Lcom/google/android/gms/internal/ads/Me;

.field public final T:Z

.field public U:Z

.field public V:Z

.field public W:I

.field public a0:I

.field public b0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Pe;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/De;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/We;->T:Z

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 14
    .line 15
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/Pe;->a(Lcom/google/android/gms/internal/ads/De;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static D(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/"

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ":"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final A(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    int-to-long v1, p1

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    mul-long v1, v1, v3

    .line 12
    .line 13
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    int-to-long v1, p1

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    mul-long v1, v1, v3

    .line 12
    .line 13
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    int-to-long v1, p1

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    mul-long v1, v1, v3

    .line 12
    .line 13
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->U:Z

    .line 8
    .line 9
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/Se;

    .line 12
    .line 13
    const/4 v3, 0x7

    .line 14
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->zzn()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 24
    .line 25
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/Pe;->i:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v2, "vfr2"

    .line 35
    .line 36
    filled-new-array {v2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Pe;->e:Lcom/google/android/gms/internal/ads/W7;

    .line 41
    .line 42
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Pe;->d:Lcom/google/android/gms/internal/ads/U7;

    .line 43
    .line 44
    invoke-static {v3, v4, v2}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/Pe;->j:Z

    .line 48
    .line 49
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->V:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->t()V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public final F(Ljava/lang/Integer;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/vf;->W:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v3, :cond_b

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/We;->M:Landroid/view/Surface;

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_2
    if-eqz p2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->J()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/aL;->k()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->G()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    .line 41
    .line 42
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 47
    .line 48
    const-string v2, "cache:"

    .line 49
    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_9

    .line 55
    .line 56
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/Oe;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/jf;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    instance-of v2, p2, Lcom/google/android/gms/internal/ads/nf;

    .line 65
    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    move-object v2, p2

    .line 69
    check-cast v2, Lcom/google/android/gms/internal/ads/nf;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_0
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/nf;->M:Z

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 75
    .line 76
    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p2, v2, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 82
    .line 83
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/nf;->J:Lcom/google/android/gms/internal/ads/vf;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 86
    .line 87
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/vf;->W:Ljava/lang/Integer;

    .line 88
    .line 89
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_5
    const-string p1, "Precached video player has been released."

    .line 96
    .line 97
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p1

    .line 104
    :cond_6
    instance-of v2, p2, Lcom/google/android/gms/internal/ads/mf;

    .line 105
    .line 106
    if-eqz v2, :cond_8

    .line 107
    .line 108
    check-cast p2, Lcom/google/android/gms/internal/ads/mf;

    .line 109
    .line 110
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 111
    .line 112
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 115
    .line 116
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oe;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oe;->zzn()Lp3/a;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v3, v3, Lp3/a;->G:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v4, v3}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mf;->u()Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/mf;->T:Z

    .line 134
    .line 135
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/mf;->J:Ljava/lang/String;

    .line 136
    .line 137
    if-nez p2, :cond_7

    .line 138
    .line 139
    const-string p1, "Stream cache URL is null."

    .line 140
    .line 141
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/ads/vf;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 148
    .line 149
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oe;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 154
    .line 155
    invoke-direct {v4, v6, v7, v5, p1}, Lcom/google/android/gms/internal/ads/vf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Ljava/lang/Integer;)V

    .line 156
    .line 157
    .line 158
    const-string p1, "ExoPlayerAdapter initialized."

    .line 159
    .line 160
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 164
    .line 165
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-array p2, v1, [Landroid/net/Uri;

    .line 170
    .line 171
    aput-object p1, p2, v0

    .line 172
    .line 173
    invoke-virtual {v4, p2, v2, v3}, Lcom/google/android/gms/internal/ads/vf;->o([Landroid/net/Uri;Ljava/nio/ByteBuffer;Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string p2, "Stream cache miss: "

    .line 184
    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/ads/vf;

    .line 194
    .line 195
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 196
    .line 197
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oe;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 202
    .line 203
    invoke-direct {p2, v3, v4, v2, p1}, Lcom/google/android/gms/internal/ads/vf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Ljava/lang/Integer;)V

    .line 204
    .line 205
    .line 206
    const-string p1, "ExoPlayerAdapter initialized."

    .line 207
    .line 208
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 212
    .line 213
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 214
    .line 215
    iget-object p1, p1, Lk3/l;->c:Lo3/O;

    .line 216
    .line 217
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 218
    .line 219
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Oe;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Oe;->zzn()Lp3/a;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-object p2, p2, Lp3/a;->G:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p1, v2, p2}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->P:[Ljava/lang/String;

    .line 233
    .line 234
    array-length p1, p1

    .line 235
    new-array p1, p1, [Landroid/net/Uri;

    .line 236
    .line 237
    const/4 p2, 0x0

    .line 238
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/We;->P:[Ljava/lang/String;

    .line 239
    .line 240
    array-length v3, v2

    .line 241
    if-ge p2, v3, :cond_a

    .line 242
    .line 243
    aget-object v2, v2, p2

    .line 244
    .line 245
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    aput-object v2, p1, p2

    .line 250
    .line 251
    add-int/2addr p2, v1

    .line 252
    goto :goto_2

    .line 253
    :cond_a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 254
    .line 255
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/vf;->o([Landroid/net/Uri;Ljava/nio/ByteBuffer;Z)V

    .line 263
    .line 264
    .line 265
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 266
    .line 267
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 268
    .line 269
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->M:Landroid/view/Surface;

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/We;->H(Landroid/view/Surface;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 277
    .line 278
    if-eqz p1, :cond_b

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aL;->zzf()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iput p1, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 285
    .line 286
    const/4 p2, 0x3

    .line 287
    if-ne p1, p2, :cond_b

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->E()V

    .line 290
    .line 291
    .line 292
    :cond_b
    :goto_4
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/We;->H(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/aL;->b(Lcom/google/android/gms/internal/ads/eL;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aL;->n()V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 28
    .line 29
    sget-object v1, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->Q:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->U:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->V:Z

    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final H(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aL;->i(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    invoke-static {v0, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string p1, "Trying to set surface before player is initialized."

    .line 21
    .line 22
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final I()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->Q:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 29
    .line 30
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 33
    .line 34
    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/Se;

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->E()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(JZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->I:Lcom/google/android/gms/internal/ads/Oe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 6
    .line 7
    new-instance v7, Lcom/google/android/gms/internal/ads/Te;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p0

    .line 12
    move v3, p3

    .line 13
    move-wide v4, p1

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Te;-><init>(Ljava/lang/Object;ZJI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, "onLoadException"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/We;->D(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ExoPlayerAdapter exception: "

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 17
    .line 18
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 19
    .line 20
    const-string v2, "AdExoPlayerView.onException"

    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/Ue;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/Ue;-><init>(Lcom/google/android/gms/internal/ads/We;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->H:Lcom/google/android/gms/internal/ads/qf;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    int-to-long v1, p1

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    mul-long v1, v1, v3

    .line 12
    .line 13
    :try_start_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/qf;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/We;->D(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ExoPlayerAdapter error: "

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->Q:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 32
    .line 33
    new-instance v2, Lcom/google/android/gms/internal/ads/Ue;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/Ue;-><init>(Lcom/google/android/gms/internal/ads/We;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    sget-object p1, Lk3/l;->A:Lk3/l;

    .line 42
    .line 43
    iget-object p1, p1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 44
    .line 45
    const-string v0, "AdExoPlayerView.onError"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final f(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->Z:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/ads/pf;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput p1, v1, Lcom/google/android/gms/internal/ads/pf;->r:I

    .line 32
    .line 33
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/pf;->s:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/net/Socket;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    :try_start_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/pf;->r:I

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    .line 64
    const-string v4, "Failed to update receive buffer size."

    .line 65
    .line 66
    invoke-static {v4, v3}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/We;->P:[Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    array-length v0, p2

    .line 14
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, [Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/We;->P:[Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ne;->k:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iget p2, p0, Lcom/google/android/gms/internal/ads/We;->R:I

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    if-ne p2, v0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/We;->O:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, p3, v1}, Lcom/google/android/gms/internal/ads/We;->F(Ljava/lang/Integer;Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/Se;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final i(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/We;->W:I

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/We;->a0:I

    .line 4
    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    int-to-float p2, p2

    .line 9
    div-float/2addr p1, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 14
    .line 15
    cmpl-float p2, p2, p1

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final j()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aL;->zzk()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v1, v0

    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/vf;->R:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    return v0
.end method

.method public final l()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aL;->e()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v1, v0

    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/We;->a0:I

    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/We;->W:I

    return v0
.end method

.method public final o()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vf;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    return-wide v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v1, v0, v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    int-to-float v1, p1

    .line 24
    int-to-float v2, p2

    .line 25
    div-float v2, v1, v2

    .line 26
    .line 27
    cmpl-float v3, v0, v2

    .line 28
    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    div-float/2addr v1, v0

    .line 32
    float-to-int p2, v1

    .line 33
    :cond_0
    cmpg-float v1, v0, v2

    .line 34
    .line 35
    if-gez v1, :cond_1

    .line 36
    .line 37
    int-to-float p1, p2

    .line 38
    mul-float p1, p1, v0

    .line 39
    .line 40
    float-to-int p1, p1

    .line 41
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Me;->b(II)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/We;->T:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/Me;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Me;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 16
    .line 17
    iput p2, v0, Lcom/google/android/gms/internal/ads/Me;->S:I

    .line 18
    .line 19
    iput p3, v0, Lcom/google/android/gms/internal/ads/Me;->R:I

    .line 20
    .line 21
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Me;->U:Landroid/graphics/SurfaceTexture;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Me;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Me;->T:Landroid/graphics/SurfaceTexture;

    .line 40
    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move-object p1, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Me;->c()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 51
    .line 52
    :cond_2
    :goto_1
    new-instance v0, Landroid/view/Surface;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/We;->M:Landroid/view/Surface;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/We;->F(Ljava/lang/Integer;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/We;->H(Landroid/view/Surface;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 72
    .line 73
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 74
    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/We;->W:I

    .line 86
    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/gms/internal/ads/We;->a0:I

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    if-lez v1, :cond_6

    .line 97
    .line 98
    int-to-float p1, p1

    .line 99
    int-to-float p2, v1

    .line 100
    div-float v0, p1, p2

    .line 101
    .line 102
    :cond_6
    iget p1, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 103
    .line 104
    cmpl-float p1, p1, v0

    .line 105
    .line 106
    if-eqz p1, :cond_9

    .line 107
    .line 108
    iput v0, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    :goto_3
    if-lez p3, :cond_8

    .line 115
    .line 116
    int-to-float p1, p2

    .line 117
    int-to-float p2, p3

    .line 118
    div-float v0, p1, p2

    .line 119
    .line 120
    :cond_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 121
    .line 122
    cmpl-float p1, p1, v0

    .line 123
    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    iput v0, p0, Lcom/google/android/gms/internal/ads/We;->b0:F

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_4
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 132
    .line 133
    new-instance p2, Lcom/google/android/gms/internal/ads/Se;

    .line 134
    .line 135
    const/4 p3, 0x5

    .line 136
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->s()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Me;->c()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->M:Landroid/view/Surface;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/We;->M:Landroid/view/Surface;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/We;->H(Landroid/view/Surface;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/Se;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Me;->b(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/Ae;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/Ae;-><init>(Lcom/google/android/gms/internal/ads/De;III)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/Pe;->d(Lcom/google/android/gms/internal/ads/De;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

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

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AdExoPlayerView3 window visibility changed to "

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
    const/4 v2, 0x6

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vf;->Y:Lcom/google/android/gms/internal/ads/rf;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/vf;->Q:I

    .line 19
    .line 20
    int-to-long v0, v0

    .line 21
    :goto_0
    return-wide v0

    .line 22
    :cond_1
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    return-wide v0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vf;->n()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/We;->T:Z

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aL;->h(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 40
    .line 41
    new-instance v1, Lcom/google/android/gms/internal/ads/Se;

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ne;->a:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vf;->p(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aL;->h(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Pe;->b()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/De;->G:Lcom/google/android/gms/internal/ads/Je;

    .line 41
    .line 42
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Je;->c:Z

    .line 43
    .line 44
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 45
    .line 46
    new-instance v2, Lcom/google/android/gms/internal/ads/Se;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/We;->V:Z

    .line 56
    .line 57
    return-void
.end method

.method public final u(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 8
    .line 9
    int-to-long v1, p1

    .line 10
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/pK;->a(IJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/Ce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/We;->L:Lcom/google/android/gms/internal/ads/Ce;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/We;->g(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->M:Lcom/google/android/gms/internal/ads/aL;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aL;->k()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/We;->G()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->J:Lcom/google/android/gms/internal/ads/Pe;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Pe;->m:Z

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/De;->H:Lcom/google/android/gms/internal/ads/Re;

    .line 23
    .line 24
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/Re;->d:Z

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Re;->a()V

    .line 27
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->S:Lcom/google/android/gms/internal/ads/Me;

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

.method public final z()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/We;->N:Lcom/google/android/gms/internal/ads/vf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vf;->W:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final zzn()V
    .locals 3

    .line 1
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/Se;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Se;-><init>(Lcom/google/android/gms/internal/ads/We;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
