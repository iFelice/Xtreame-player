.class public final Lcom/google/android/gms/internal/ads/ni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Lcom/google/android/gms/internal/ads/Aj;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/Ef;

.field public final I:Lcom/google/android/gms/internal/ads/Ov;

.field public final J:Lp3/a;

.field public K:Lcom/google/android/gms/internal/ads/mq;

.field public L:Z

.field public final M:Lcom/google/android/gms/internal/ads/lq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ov;Lp3/a;Lcom/google/android/gms/internal/ads/lq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ni;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ni;->J:Lp3/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ni;->M:Lcom/google/android/gms/internal/ads/lq;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->T:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->G:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 17
    .line 18
    iget-object v2, v1, Lk3/l;->v:Lc4/y;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lc4/y;->g(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->J:Lp3/a;

    .line 30
    .line 31
    iget v2, v0, Lp3/a;->H:I

    .line 32
    .line 33
    iget v0, v0, Lp3/a;->I:I

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "."

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->V:Lcom/google/android/gms/internal/ads/Xu;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xu;->p()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    if-eq v2, v3, :cond_1

    .line 67
    .line 68
    const-string v2, "javascript"

    .line 69
    .line 70
    :goto_0
    move-object v6, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v2, 0x0

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xu;->p()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x3

    .line 79
    if-ne v0, v3, :cond_2

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    const/4 v7, 0x2

    .line 83
    const/4 v8, 0x3

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 86
    .line 87
    iget v0, v0, Lcom/google/android/gms/internal/ads/Ov;->e:I

    .line 88
    .line 89
    if-ne v0, v3, :cond_3

    .line 90
    .line 91
    const/4 v7, 0x3

    .line 92
    :goto_2
    const/4 v8, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 v7, 0x1

    .line 95
    goto :goto_2

    .line 96
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 99
    .line 100
    iget-object v5, v1, Lk3/l;->v:Lc4/y;

    .line 101
    .line 102
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Ov;->l0:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-object v5, v0

    .line 112
    invoke-static/range {v4 .. v9}, Lc4/y;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/mq;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->K:Lcom/google/android/gms/internal/ads/mq;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 119
    .line 120
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ni;->K:Lcom/google/android/gms/internal/ads/mq;

    .line 125
    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 129
    .line 130
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->I4:Lcom/google/android/gms/internal/ads/J7;

    .line 131
    .line 132
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 133
    .line 134
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const/4 v5, 0x0

    .line 147
    if-eqz v4, :cond_4

    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 150
    .line 151
    iget-object v1, v1, Lk3/l;->v:Lc4/y;

    .line 152
    .line 153
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v0}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 164
    .line 165
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->t0()Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_5

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Landroid/view/View;

    .line 184
    .line 185
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 186
    .line 187
    iget-object v4, v4, Lk3/l;->v:Lc4/y;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    new-instance v4, Lcom/google/android/gms/internal/ads/iq;

    .line 193
    .line 194
    invoke-direct {v4, v2, v1, v5}, Lcom/google/android/gms/internal/ads/iq;-><init>(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Lc4/y;->k(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_6

    .line 203
    :cond_4
    iget-object v1, v1, Lk3/l;->v:Lc4/y;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v0}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 212
    .line 213
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ni;->K:Lcom/google/android/gms/internal/ads/mq;

    .line 214
    .line 215
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Ef;->e0(Lcom/google/android/gms/internal/ads/mq;)V

    .line 216
    .line 217
    .line 218
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 219
    .line 220
    iget-object v0, v0, Lk3/l;->v:Lc4/y;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {v2}, Lc4/y;->f(Lcom/google/android/gms/internal/ads/xx;)V

    .line 226
    .line 227
    .line 228
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/ni;->L:Z

    .line 229
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 231
    .line 232
    new-instance v1, Lr/f;

    .line 233
    .line 234
    invoke-direct {v1, v5}, Lr/m;-><init>(I)V

    .line 235
    .line 236
    .line 237
    const-string v2, "onSdkLoaded"

    .line 238
    .line 239
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .line 241
    .line 242
    monitor-exit p0

    .line 243
    return-void

    .line 244
    :cond_6
    :goto_5
    monitor-exit p0

    .line 245
    return-void

    .line 246
    :goto_6
    monitor-exit p0

    .line 247
    throw v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->J4:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->M:Lcom/google/android/gms/internal/ads/lq;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public final declared-synchronized n()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ni;->b()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->M:Lcom/google/android/gms/internal/ads/lq;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni;->L:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ni;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_0
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized zzr()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ni;->b()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->M:Lcom/google/android/gms/internal/ads/lq;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ni;->L:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ni;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->T:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->K:Lcom/google/android/gms/internal/ads/mq;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v1, Lr/f;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, v2}, Lr/m;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const-string v2, "onSdkImpression"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_2
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    throw v0
.end method
