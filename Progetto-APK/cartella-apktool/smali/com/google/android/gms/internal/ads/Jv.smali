.class public final Lcom/google/android/gms/internal/ads/Jv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/os;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Lcom/google/android/gms/internal/ads/fg;

.field public final J:Lcom/google/android/gms/internal/ads/Gv;

.field public final K:Lcom/google/android/gms/internal/ads/vv;

.field public final L:Lcom/google/android/gms/internal/ads/Uv;

.field public final M:Lcom/google/android/gms/internal/ads/Uw;

.field public final N:Lcom/google/android/gms/internal/ads/Xv;

.field public O:LD4/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/vv;Lcom/google/android/gms/internal/ads/Gv;Lcom/google/android/gms/internal/ads/Xv;Lcom/google/android/gms/internal/ads/Uv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jv;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jv;->H:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Jv;->K:Lcom/google/android/gms/internal/ads/vv;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Jv;->J:Lcom/google/android/gms/internal/ads/Gv;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Jv;->N:Lcom/google/android/gms/internal/ads/Xv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Jv;->L:Lcom/google/android/gms/internal/ads/Uv;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fg;->d()Lcom/google/android/gms/internal/ads/Uw;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jv;->M:Lcom/google/android/gms/internal/ads/Uw;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final b(Ll3/b1;Ljava/lang/String;LQ3/b;Lcom/google/android/gms/internal/ads/ns;)Z
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    move-object/from16 v2, p3

    .line 9
    .line 10
    check-cast v2, Lcom/google/android/gms/internal/ads/Hv;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0xd

    .line 14
    .line 15
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/Jv;->H:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v0, "Ad unit ID should not be null for rewarded video ad."

    .line 20
    .line 21
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/Zn;

    .line 25
    .line 26
    invoke-direct {v0, v7, v3}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v8, 0x0

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Jv;->O:LD4/b;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x5

    .line 59
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/Jv;->K:Lcom/google/android/gms/internal/ads/vv;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vv;->zzd()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vv;->zzd()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/google/android/gms/internal/ads/Qg;

    .line 75
    .line 76
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Qg;->g:Lcom/google/android/gms/internal/ads/MJ;

    .line 77
    .line 78
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/google/android/gms/internal/ads/Tw;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Tw;->i(I)V

    .line 85
    .line 86
    .line 87
    iget-object v11, v0, Ll3/b1;->V:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/Tw;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v11, v0, Ll3/b1;->S:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/Tw;->f(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move-object v4, v10

    .line 99
    :goto_1
    iget-boolean v11, v0, Ll3/b1;->L:Z

    .line 100
    .line 101
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/Jv;->G:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v12, v11}, Lf/b;->f0(Landroid/content/Context;Z)V

    .line 104
    .line 105
    .line 106
    sget-object v11, Lcom/google/android/gms/internal/ads/Q7;->h8:Lcom/google/android/gms/internal/ads/J7;

    .line 107
    .line 108
    sget-object v13, Ll3/q;->d:Ll3/q;

    .line 109
    .line 110
    iget-object v13, v13, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 111
    .line 112
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    check-cast v11, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_3

    .line 123
    .line 124
    iget-boolean v11, v0, Ll3/b1;->L:Z

    .line 125
    .line 126
    if-eqz v11, :cond_3

    .line 127
    .line 128
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/Jv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 129
    .line 130
    check-cast v11, Lcom/google/android/gms/internal/ads/Bg;

    .line 131
    .line 132
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/Bg;->w:Lcom/google/android/gms/internal/ads/MJ;

    .line 133
    .line 134
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    check-cast v11, Lcom/google/android/gms/internal/ads/qo;

    .line 139
    .line 140
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/qo;->e(Z)V

    .line 141
    .line 142
    .line 143
    :cond_3
    new-instance v11, Landroid/util/Pair;

    .line 144
    .line 145
    iget-wide v13, v0, Ll3/b1;->f0:J

    .line 146
    .line 147
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    const-string v14, "api-call"

    .line 152
    .line 153
    invoke-direct {v11, v14, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    new-instance v13, Landroid/util/Pair;

    .line 157
    .line 158
    sget-object v14, Lk3/l;->A:Lk3/l;

    .line 159
    .line 160
    iget-object v14, v14, Lk3/l;->j:LP3/b;

    .line 161
    .line 162
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v14

    .line 169
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    const-string v15, "dynamite-enter"

    .line 174
    .line 175
    invoke-direct {v13, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    const/4 v14, 0x2

    .line 179
    new-array v14, v14, [Landroid/util/Pair;

    .line 180
    .line 181
    aput-object v11, v14, v2

    .line 182
    .line 183
    aput-object v13, v14, v8

    .line 184
    .line 185
    invoke-static {v14}, LU2/m;->e([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/Jv;->N:Lcom/google/android/gms/internal/ads/Xv;

    .line 190
    .line 191
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 192
    .line 193
    new-instance v1, Ll3/d1;

    .line 194
    .line 195
    const/16 v25, 0x0

    .line 196
    .line 197
    const/16 v26, 0x0

    .line 198
    .line 199
    const-string v14, "reward_mb"

    .line 200
    .line 201
    const/4 v15, 0x0

    .line 202
    const/16 v16, 0x0

    .line 203
    .line 204
    const/16 v17, 0x1

    .line 205
    .line 206
    const/16 v18, 0x0

    .line 207
    .line 208
    const/16 v19, 0x0

    .line 209
    .line 210
    const/16 v20, 0x0

    .line 211
    .line 212
    const/16 v21, 0x0

    .line 213
    .line 214
    const/16 v22, 0x0

    .line 215
    .line 216
    const/16 v23, 0x0

    .line 217
    .line 218
    const/16 v24, 0x0

    .line 219
    .line 220
    const/16 v27, 0x0

    .line 221
    .line 222
    const/16 v28, 0x0

    .line 223
    .line 224
    move-object v13, v1

    .line 225
    invoke-direct/range {v13 .. v28}, Ll3/d1;-><init>(Ljava/lang/String;IIZII[Ll3/d1;ZZZZZZZZ)V

    .line 226
    .line 227
    .line 228
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 229
    .line 230
    iput-object v0, v11, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 231
    .line 232
    iput-object v2, v11, Lcom/google/android/gms/internal/ads/Xv;->t:Landroid/os/Bundle;

    .line 233
    .line 234
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/Xv;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->M(Lcom/google/android/gms/internal/ads/Yv;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-static {v12, v2, v5, v0}, LU4/a;->o(Landroid/content/Context;IILl3/b1;)Lcom/google/android/gms/internal/ads/Ow;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    new-instance v11, Lcom/google/android/gms/internal/ads/Iv;

    .line 247
    .line 248
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/Iv;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 252
    .line 253
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 254
    .line 255
    invoke-direct {v0, v11, v10, v3}, Lcom/google/android/gms/internal/ads/Om;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Lcom/google/android/gms/internal/ads/Xu;

    .line 259
    .line 260
    const/4 v2, 0x4

    .line 261
    invoke-direct {v1, v7, v2}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/internal/ads/vv;->a(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/Xu;)LD4/b;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    iput-object v10, v7, Lcom/google/android/gms/internal/ads/Jv;->O:LD4/b;

    .line 269
    .line 270
    new-instance v12, Lcom/google/android/gms/internal/ads/Yu;

    .line 271
    .line 272
    const/4 v6, 0x1

    .line 273
    move-object v0, v12

    .line 274
    move-object/from16 v1, p0

    .line 275
    .line 276
    move-object/from16 v2, p4

    .line 277
    .line 278
    move-object v3, v4

    .line 279
    move-object v4, v5

    .line 280
    move-object v5, v11

    .line 281
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 282
    .line 283
    .line 284
    invoke-static {v10, v12, v9}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 285
    .line 286
    .line 287
    :goto_2
    return v8
.end method

.method public final c(Lcom/google/android/gms/internal/ads/tv;)Lcom/google/android/gms/internal/ads/Dg;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Iv;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Jv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/Bg;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/Dg;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Dg;-><init>(Lcom/google/android/gms/internal/ads/Bg;I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/dj;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jv;->G:Landroid/content/Context;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Iv;->a:Lcom/google/android/gms/internal/ads/Yv;

    .line 25
    .line 26
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Jv;->L:Lcom/google/android/gms/internal/ads/Uv;

    .line 29
    .line 30
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dj;->d:Lcom/google/android/gms/internal/ads/Uv;

    .line 31
    .line 32
    new-instance p1, Lcom/google/android/gms/internal/ads/dj;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/Dg;->f:Lcom/google/android/gms/internal/ads/dj;

    .line 38
    .line 39
    new-instance p1, Lcom/google/android/gms/internal/ads/sk;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/tk;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Dg;->e:Lcom/google/android/gms/internal/ads/tk;

    .line 50
    .line 51
    return-object v1
.end method
