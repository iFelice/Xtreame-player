.class public final Lcom/google/android/gms/internal/ads/hl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ij;
.implements Ln3/m;
.implements Lcom/google/android/gms/internal/ads/Aj;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/Ef;

.field public final I:Lcom/google/android/gms/internal/ads/Ov;

.field public final J:Lp3/a;

.field public final K:Lcom/google/android/gms/internal/ads/z6;

.field public final L:Lcom/google/android/gms/internal/ads/lq;

.field public M:Lcom/google/android/gms/internal/ads/mq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ov;Lp3/a;Lcom/google/android/gms/internal/ads/z6;Lcom/google/android/gms/internal/ads/lq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hl;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hl;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hl;->J:Lp3/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hl;->K:Lcom/google/android/gms/internal/ads/z6;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/hl;->L:Lcom/google/android/gms/internal/ads/lq;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final O2()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a()Z
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->L:Lcom/google/android/gms/internal/ads/lq;

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

.method public final k3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final n()V
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->R4:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->O:Lcom/google/android/gms/internal/ads/z6;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hl;->K:Lcom/google/android/gms/internal/ads/z6;

    .line 22
    .line 23
    if-eq v2, v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->K:Lcom/google/android/gms/internal/ads/z6;

    .line 26
    .line 27
    if-eq v2, v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/z6;->R:Lcom/google/android/gms/internal/ads/z6;

    .line 30
    .line 31
    if-ne v2, v0, :cond_7

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->I:Lcom/google/android/gms/internal/ads/Ov;

    .line 34
    .line 35
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ov;->T:Z

    .line 36
    .line 37
    if-eqz v2, :cond_7

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hl;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 40
    .line 41
    if-eqz v2, :cond_7

    .line 42
    .line 43
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 44
    .line 45
    iget-object v4, v3, Lk3/l;->v:Lc4/y;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hl;->G:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v4}, Lc4/y;->g(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hl;->a()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->L:Lcom/google/android/gms/internal/ads/lq;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->b()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hl;->J:Lp3/a;

    .line 71
    .line 72
    iget v5, v4, Lp3/a;->H:I

    .line 73
    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, "."

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v4, v4, Lp3/a;->I:I

    .line 88
    .line 89
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ov;->V:Lcom/google/android/gms/internal/ads/Xu;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Xu;->p()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    add-int/lit8 v5, v5, -0x1

    .line 103
    .line 104
    const/4 v6, 0x1

    .line 105
    if-eq v5, v6, :cond_2

    .line 106
    .line 107
    const-string v5, "javascript"

    .line 108
    .line 109
    :goto_0
    move-object v9, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/4 v5, 0x0

    .line 112
    goto :goto_0

    .line 113
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Xu;->p()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/4 v5, 0x2

    .line 118
    if-ne v4, v6, :cond_3

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    const/4 v10, 0x2

    .line 122
    const/4 v11, 0x3

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    iget v4, v0, Lcom/google/android/gms/internal/ads/Ov;->Y:I

    .line 125
    .line 126
    if-ne v4, v5, :cond_4

    .line 127
    .line 128
    const/4 v4, 0x4

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v4, 0x1

    .line 131
    :goto_2
    move v10, v4

    .line 132
    const/4 v11, 0x1

    .line 133
    :goto_3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    iget-object v3, v3, Lk3/l;->v:Lc4/y;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Ov;->l0:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static/range {v7 .. v12}, Lc4/y;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/mq;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 149
    .line 150
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 155
    .line 156
    if-eqz v4, :cond_7

    .line 157
    .line 158
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->I4:Lcom/google/android/gms/internal/ads/J7;

    .line 159
    .line 160
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 161
    .line 162
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    const/4 v5, 0x0

    .line 173
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/mq;->a:Lcom/google/android/gms/internal/ads/xx;

    .line 174
    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v0}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->t0()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Landroid/view/View;

    .line 206
    .line 207
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 208
    .line 209
    iget-object v3, v3, Lk3/l;->v:Lc4/y;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    new-instance v3, Lcom/google/android/gms/internal/ads/iq;

    .line 215
    .line 216
    invoke-direct {v3, v4, v1, v5}, Lcom/google/android/gms/internal/ads/iq;-><init>(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v3}, Lc4/y;->k(Ljava/lang/Runnable;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v4, v0}, Lc4/y;->e(Lcom/google/android/gms/internal/ads/xx;Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 230
    .line 231
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Ef;->e0(Lcom/google/android/gms/internal/ads/mq;)V

    .line 232
    .line 233
    .line 234
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 235
    .line 236
    iget-object v0, v0, Lk3/l;->v:Lc4/y;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v4}, Lc4/y;->f(Lcom/google/android/gms/internal/ads/xx;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lr/f;

    .line 245
    .line 246
    invoke-direct {v0, v5}, Lr/m;-><init>(I)V

    .line 247
    .line 248
    .line 249
    const-string v1, "onSdkLoaded"

    .line 250
    .line 251
    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    .line 253
    .line 254
    :cond_7
    return-void
.end method

.method public final r1(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    return-void
.end method

.method public final u3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final v0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->O4:Lcom/google/android/gms/internal/ads/J7;

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
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hl;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lr/f;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, v2}, Lr/m;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const-string v2, "onSdkImpression"

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->L:Lcom/google/android/gms/internal/ads/lq;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->a()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final zzr()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hl;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->L:Lcom/google/android/gms/internal/ads/lq;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lq;->a()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->M:Lcom/google/android/gms/internal/ads/mq;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl;->H:Lcom/google/android/gms/internal/ads/Ef;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->O4:Lcom/google/android/gms/internal/ads/J7;

    .line 22
    .line 23
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 24
    .line 25
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Lr/f;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, v2}, Lr/m;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string v2, "onSdkImpression"

    .line 46
    .line 47
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
