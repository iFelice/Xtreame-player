.class public final Lcom/google/android/gms/internal/ads/Vk;
.super Lcom/google/android/gms/internal/ads/xi;
.source "SourceFile"


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Ljava/lang/ref/WeakReference;

.field public final l:Lcom/google/android/gms/internal/ads/Ek;

.field public final m:Lcom/google/android/gms/internal/ads/gl;

.field public final n:Lcom/google/android/gms/internal/ads/Gi;

.field public final o:Lcom/google/android/gms/internal/ads/hy;

.field public final p:Lcom/google/android/gms/internal/ads/wj;

.field public final q:Lcom/google/android/gms/internal/ads/oe;

.field public r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wi;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ek;Lcom/google/android/gms/internal/ads/gl;Lcom/google/android/gms/internal/ads/Gi;Lcom/google/android/gms/internal/ads/hy;Lcom/google/android/gms/internal/ads/wj;Lcom/google/android/gms/internal/ads/oe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xi;-><init>(Lcom/google/android/gms/internal/ads/wi;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Vk;->r:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vk;->j:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vk;->k:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Vk;->l:Lcom/google/android/gms/internal/ads/Ek;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Vk;->m:Lcom/google/android/gms/internal/ads/gl;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Vk;->n:Lcom/google/android/gms/internal/ads/Gi;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Vk;->o:Lcom/google/android/gms/internal/ads/hy;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Vk;->p:Lcom/google/android/gms/internal/ads/wj;

    .line 25
    .line 26
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/Vk;->q:Lcom/google/android/gms/internal/ads/oe;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vk;->l:Lcom/google/android/gms/internal/ads/Ek;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lc4/w;

    .line 7
    .line 8
    const/16 v2, 0x12

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lc4/w;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->v0:Lcom/google/android/gms/internal/ads/J7;

    .line 17
    .line 18
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 19
    .line 20
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Vk;->j:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Vk;->p:Lcom/google/android/gms/internal/ads/wj;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 39
    .line 40
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 41
    .line 42
    invoke-static {v3}, Lo3/O;->e(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 49
    .line 50
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wj;->zzb()V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->w0:Lcom/google/android/gms/internal/ads/J7;

    .line 57
    .line 58
    iget-object p2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/Tv;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lcom/google/android/gms/internal/ads/Qv;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Vk;->o:Lcom/google/android/gms/internal/ads/hy;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/hy;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vk;->k:Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 96
    .line 97
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->fb:Lcom/google/android/gms/internal/ads/J7;

    .line 98
    .line 99
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v5, 0x0

    .line 112
    if-eqz v2, :cond_1

    .line 113
    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/Ov;->r0:Z

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vk;->q:Lcom/google/android/gms/internal/ads/oe;

    .line 127
    .line 128
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/oe;->a:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v6

    .line 131
    :try_start_0
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/oe;->d:Lcom/google/android/gms/internal/ads/me;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/me;->a()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget v1, v1, Lcom/google/android/gms/internal/ads/Ov;->s0:I

    .line 139
    .line 140
    if-eq v1, v2, :cond_1

    .line 141
    .line 142
    const-string p1, "The interstitial consent form has been shown."

    .line 143
    .line 144
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/16 p1, 0xc

    .line 148
    .line 149
    const-string p2, "The consent form has already been shown."

    .line 150
    .line 151
    invoke-static {p1, p2, v5}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/wj;->g(Ll3/z0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    throw p1

    .line 162
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Vk;->r:Z

    .line 163
    .line 164
    if-eqz v1, :cond_2

    .line 165
    .line 166
    const-string v1, "The interstitial ad has been shown."

    .line 167
    .line 168
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/16 v1, 0xa

    .line 172
    .line 173
    invoke-static {v1, v5, v5}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/wj;->g(Ll3/z0;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Vk;->r:Z

    .line 181
    .line 182
    if-nez v1, :cond_4

    .line 183
    .line 184
    if-nez p1, :cond_3

    .line 185
    .line 186
    move-object p1, v3

    .line 187
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vk;->m:Lcom/google/android/gms/internal/ads/gl;

    .line 188
    .line 189
    invoke-interface {v1, p2, p1, v4}, Lcom/google/android/gms/internal/ads/gl;->c(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/wj;)V

    .line 190
    .line 191
    .line 192
    new-instance p1, Lc4/w;

    .line 193
    .line 194
    const/16 p2, 0x13

    .line 195
    .line 196
    invoke-direct {p1, p2}, Lc4/w;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mI;->Z0(Lcom/google/android/gms/internal/ads/rk;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/fl; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .line 201
    .line 202
    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Vk;->r:Z

    .line 204
    .line 205
    return-void

    .line 206
    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/wj;->H(Lcom/google/android/gms/internal/ads/fl;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    :goto_0
    return-void
.end method

.method public final finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vk;->k:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->i6:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Vk;->r:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/gms/internal/ads/Nf;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 57
    .line 58
    .line 59
    throw v0
.end method
