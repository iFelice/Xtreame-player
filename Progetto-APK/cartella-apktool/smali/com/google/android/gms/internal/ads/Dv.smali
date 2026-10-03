.class public final Lcom/google/android/gms/internal/ads/Dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/os;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Lcom/google/android/gms/internal/ads/fg;

.field public final J:Lcom/google/android/gms/internal/ads/hs;

.field public final K:Lcom/google/android/gms/internal/ads/Gv;

.field public L:Lcom/google/android/gms/internal/ads/Z7;

.field public final M:Lcom/google/android/gms/internal/ads/Uw;

.field public final N:Lcom/google/android/gms/internal/ads/Xv;

.field public O:Lcom/google/android/gms/internal/ads/Fw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/Gv;Lcom/google/android/gms/internal/ads/Xv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dv;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dv;->H:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Dv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Dv;->N:Lcom/google/android/gms/internal/ads/Xv;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Dv;->K:Lcom/google/android/gms/internal/ads/Gv;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/fg;->d()Lcom/google/android/gms/internal/ads/Uw;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dv;->M:Lcom/google/android/gms/internal/ads/Uw;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dv;->O:Lcom/google/android/gms/internal/ads/Fw;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fw;->I:LD4/b;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 8
    .line 9
    .line 10
    move-result v0

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

.method public final b(Ll3/b1;Ljava/lang/String;LQ3/b;Lcom/google/android/gms/internal/ads/ns;)Z
    .locals 22

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
    const/4 v2, 0x0

    .line 9
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/Dv;->H:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Ad unit ID should not be null for interstitial ad."

    .line 14
    .line 15
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/Zn;

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    invoke-direct {v0, v7, v1}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dv;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->h8:Lcom/google/android/gms/internal/ads/J7;

    .line 37
    .line 38
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 39
    .line 40
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 41
    .line 42
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/Dv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-boolean v3, v0, Ll3/b1;->L:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    move-object v3, v5

    .line 61
    check-cast v3, Lcom/google/android/gms/internal/ads/Bg;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Bg;->w:Lcom/google/android/gms/internal/ads/MJ;

    .line 64
    .line 65
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/google/android/gms/internal/ads/qo;

    .line 70
    .line 71
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/qo;->e(Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    move-object/from16 v3, p3

    .line 75
    .line 76
    check-cast v3, Lcom/google/android/gms/internal/ads/Av;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Av;->c:Ll3/d1;

    .line 79
    .line 80
    new-instance v6, Landroid/util/Pair;

    .line 81
    .line 82
    iget-wide v10, v0, Ll3/b1;->f0:J

    .line 83
    .line 84
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const-string v11, "api-call"

    .line 89
    .line 90
    invoke-direct {v6, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance v10, Landroid/util/Pair;

    .line 94
    .line 95
    sget-object v11, Lk3/l;->A:Lk3/l;

    .line 96
    .line 97
    iget-object v11, v11, Lk3/l;->j:LP3/b;

    .line 98
    .line 99
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v11

    .line 106
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    const-string v12, "dynamite-enter"

    .line 111
    .line 112
    invoke-direct {v10, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const/4 v11, 0x2

    .line 116
    new-array v11, v11, [Landroid/util/Pair;

    .line 117
    .line 118
    aput-object v6, v11, v2

    .line 119
    .line 120
    aput-object v10, v11, v8

    .line 121
    .line 122
    invoke-static {v11}, LU2/m;->e([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/Dv;->N:Lcom/google/android/gms/internal/ads/Xv;

    .line 127
    .line 128
    iput-object v1, v6, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v3, v6, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 131
    .line 132
    iput-object v0, v6, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 133
    .line 134
    iput-object v2, v6, Lcom/google/android/gms/internal/ads/Xv;->t:Landroid/os/Bundle;

    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Xv;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->M(Lcom/google/android/gms/internal/ads/Yv;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/Dv;->G:Landroid/content/Context;

    .line 145
    .line 146
    const/4 v6, 0x4

    .line 147
    invoke-static {v3, v2, v6, v0}, LU4/a;->o(Landroid/content/Context;IILl3/b1;)Lcom/google/android/gms/internal/ads/Ow;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->y7:Lcom/google/android/gms/internal/ads/J7;

    .line 152
    .line 153
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 154
    .line 155
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Dv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 166
    .line 167
    if-eqz v2, :cond_3

    .line 168
    .line 169
    check-cast v5, Lcom/google/android/gms/internal/ads/Bg;

    .line 170
    .line 171
    iget-object v12, v5, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 172
    .line 173
    new-instance v2, Lcom/google/android/gms/internal/ads/dj;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 179
    .line 180
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 181
    .line 182
    new-instance v15, Lcom/google/android/gms/internal/ads/dj;

    .line 183
    .line 184
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 185
    .line 186
    .line 187
    new-instance v1, Lcom/google/android/gms/internal/ads/sk;

    .line 188
    .line 189
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->b(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->c(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 196
    .line 197
    .line 198
    new-instance v14, Lcom/google/android/gms/internal/ads/tk;

    .line 199
    .line 200
    invoke-direct {v14, v1}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lcom/google/android/gms/internal/ads/Qr;

    .line 204
    .line 205
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/Dv;->L:Lcom/google/android/gms/internal/ads/Z7;

    .line 206
    .line 207
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Qr;-><init>(Lcom/google/android/gms/internal/ads/Z7;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Lcom/google/android/gms/internal/ads/Ng;

    .line 211
    .line 212
    new-instance v13, Lc4/y;

    .line 213
    .line 214
    invoke-direct {v13, v6}, Lc4/y;-><init>(I)V

    .line 215
    .line 216
    .line 217
    new-instance v16, Lcom/google/android/gms/internal/ads/tr;

    .line 218
    .line 219
    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    const/16 v18, 0x0

    .line 225
    .line 226
    move-object v11, v2

    .line 227
    move-object/from16 v17, v1

    .line 228
    .line 229
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/Ng;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lc4/y;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/Qr;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/kv;)V

    .line 230
    .line 231
    .line 232
    move-object v5, v2

    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/sk;

    .line 236
    .line 237
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/sk;->h:Ljava/util/HashSet;

    .line 241
    .line 242
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/sk;->e:Ljava/util/HashSet;

    .line 243
    .line 244
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/Dv;->K:Lcom/google/android/gms/internal/ads/Gv;

    .line 245
    .line 246
    if-eqz v13, :cond_4

    .line 247
    .line 248
    new-instance v14, Lcom/google/android/gms/internal/ads/Lk;

    .line 249
    .line 250
    invoke-direct {v14, v13, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v14, Lcom/google/android/gms/internal/ads/Lk;

    .line 257
    .line 258
    invoke-direct {v14, v13, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v13, v9}, Lcom/google/android/gms/internal/ads/sk;->a(Lcom/google/android/gms/internal/ads/sj;Ljava/util/concurrent/Executor;)V

    .line 265
    .line 266
    .line 267
    :cond_4
    check-cast v5, Lcom/google/android/gms/internal/ads/Bg;

    .line 268
    .line 269
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 270
    .line 271
    new-instance v5, Lcom/google/android/gms/internal/ads/dj;

    .line 272
    .line 273
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 274
    .line 275
    .line 276
    iput-object v3, v5, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 277
    .line 278
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 279
    .line 280
    new-instance v1, Lcom/google/android/gms/internal/ads/dj;

    .line 281
    .line 282
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->b(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 286
    .line 287
    .line 288
    new-instance v3, Lcom/google/android/gms/internal/ads/Lk;

    .line 289
    .line 290
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    new-instance v3, Lcom/google/android/gms/internal/ads/Lk;

    .line 297
    .line 298
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->a(Lcom/google/android/gms/internal/ads/sj;Ljava/util/concurrent/Executor;)V

    .line 305
    .line 306
    .line 307
    new-instance v3, Lcom/google/android/gms/internal/ads/Lk;

    .line 308
    .line 309
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 310
    .line 311
    .line 312
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/HashSet;

    .line 313
    .line 314
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->d(Lcom/google/android/gms/internal/ads/Ok;Ljava/util/concurrent/Executor;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v4, v9}, Lcom/google/android/gms/internal/ads/sk;->c(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 321
    .line 322
    .line 323
    new-instance v3, Lcom/google/android/gms/internal/ads/Lk;

    .line 324
    .line 325
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 326
    .line 327
    .line 328
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/sk;->m:Ljava/util/HashSet;

    .line 329
    .line 330
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    new-instance v3, Lcom/google/android/gms/internal/ads/Lk;

    .line 334
    .line 335
    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 336
    .line 337
    .line 338
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    .line 339
    .line 340
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    new-instance v3, Lcom/google/android/gms/internal/ads/tk;

    .line 344
    .line 345
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 346
    .line 347
    .line 348
    new-instance v2, Lcom/google/android/gms/internal/ads/Qr;

    .line 349
    .line 350
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Dv;->L:Lcom/google/android/gms/internal/ads/Z7;

    .line 351
    .line 352
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/Qr;-><init>(Lcom/google/android/gms/internal/ads/Z7;)V

    .line 353
    .line 354
    .line 355
    new-instance v4, Lcom/google/android/gms/internal/ads/Ng;

    .line 356
    .line 357
    new-instance v15, Lc4/y;

    .line 358
    .line 359
    invoke-direct {v15, v6}, Lc4/y;-><init>(I)V

    .line 360
    .line 361
    .line 362
    new-instance v18, Lcom/google/android/gms/internal/ads/tr;

    .line 363
    .line 364
    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 365
    .line 366
    .line 367
    const/16 v21, 0x0

    .line 368
    .line 369
    const/16 v20, 0x0

    .line 370
    .line 371
    move-object v13, v4

    .line 372
    move-object/from16 v16, v3

    .line 373
    .line 374
    move-object/from16 v17, v1

    .line 375
    .line 376
    move-object/from16 v19, v2

    .line 377
    .line 378
    invoke-direct/range {v13 .. v21}, Lcom/google/android/gms/internal/ads/Ng;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lc4/y;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/Qr;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/kv;)V

    .line 379
    .line 380
    .line 381
    move-object v5, v4

    .line 382
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_5

    .line 395
    .line 396
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/Ng;->l0:Lcom/google/android/gms/internal/ads/MJ;

    .line 397
    .line 398
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, Lcom/google/android/gms/internal/ads/Tw;

    .line 403
    .line 404
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/Tw;->i(I)V

    .line 405
    .line 406
    .line 407
    iget-object v2, v0, Ll3/b1;->V:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Tw;->b(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v0, v0, Ll3/b1;->S:Landroid/os/Bundle;

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Tw;->f(Landroid/os/Bundle;)V

    .line 415
    .line 416
    .line 417
    move-object v3, v1

    .line 418
    goto :goto_1

    .line 419
    :cond_5
    const/4 v0, 0x0

    .line 420
    move-object v3, v0

    .line 421
    :goto_1
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/Ng;->A0:Lcom/google/android/gms/internal/ads/MJ;

    .line 422
    .line 423
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Lcom/google/android/gms/internal/ads/Li;

    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Li;->b()Lcom/google/android/gms/internal/ads/Fw;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Li;->a(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    iput-object v11, v7, Lcom/google/android/gms/internal/ads/Dv;->O:Lcom/google/android/gms/internal/ads/Fw;

    .line 438
    .line 439
    new-instance v12, Lcom/google/android/gms/internal/ads/Yu;

    .line 440
    .line 441
    const/4 v6, 0x6

    .line 442
    move-object v0, v12

    .line 443
    move-object/from16 v1, p0

    .line 444
    .line 445
    move-object/from16 v2, p4

    .line 446
    .line 447
    move-object v4, v10

    .line 448
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 449
    .line 450
    .line 451
    invoke-static {v11, v12, v9}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 452
    .line 453
    .line 454
    return v8
.end method
