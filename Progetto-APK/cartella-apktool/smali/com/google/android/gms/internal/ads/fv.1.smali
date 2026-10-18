.class public final Lcom/google/android/gms/internal/ads/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/os;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Lcom/google/android/gms/internal/ads/fg;

.field public final J:Lcom/google/android/gms/internal/ads/hs;

.field public final K:Lcom/google/android/gms/internal/ads/js;

.field public final L:Landroid/widget/FrameLayout;

.field public M:Lcom/google/android/gms/internal/ads/Z7;

.field public final N:Lcom/google/android/gms/internal/ads/Vj;

.field public final O:Lcom/google/android/gms/internal/ads/Uw;

.field public final P:Lcom/google/android/gms/internal/ads/kk;

.field public final Q:Lcom/google/android/gms/internal/ads/Xv;

.field public R:Lcom/google/android/gms/internal/ads/Fw;

.field public S:Z

.field public T:Ll3/z0;

.field public U:Lcom/google/android/gms/internal/ads/ns;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ll3/d1;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/hs;Lcom/google/android/gms/internal/ads/js;Lcom/google/android/gms/internal/ads/Xv;Lcom/google/android/gms/internal/ads/kk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fv;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fv;->H:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/fv;->K:Lcom/google/android/gms/internal/ads/js;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/fv;->Q:Lcom/google/android/gms/internal/ads/Xv;

    .line 15
    .line 16
    move-object p2, p4

    .line 17
    check-cast p2, Lcom/google/android/gms/internal/ads/Bg;

    .line 18
    .line 19
    iget-object p5, p2, Lcom/google/android/gms/internal/ads/Bg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 20
    .line 21
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    check-cast p5, Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Bg;->g:Lcom/google/android/gms/internal/ads/MJ;

    .line 28
    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, LP3/a;

    .line 34
    .line 35
    new-instance p6, Lcom/google/android/gms/internal/ads/Vj;

    .line 36
    .line 37
    invoke-direct {p6, p5, p2}, Lcom/google/android/gms/internal/ads/Vj;-><init>(Ljava/util/concurrent/ScheduledExecutorService;LP3/a;)V

    .line 38
    .line 39
    .line 40
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/fg;->d()Lcom/google/android/gms/internal/ads/Uw;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fv;->O:Lcom/google/android/gms/internal/ads/Uw;

    .line 47
    .line 48
    new-instance p2, Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fv;->L:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/fv;->P:Lcom/google/android/gms/internal/ads/kk;

    .line 56
    .line 57
    iput-object p3, p7, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fv;->T:Ll3/z0;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fv;->U:Lcom/google/android/gms/internal/ads/ns;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

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
    .locals 28

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
    const/4 v2, 0x0

    .line 8
    const/4 v8, 0x1

    .line 9
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/fv;->H:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Ad unit ID should not be null for banner ad."

    .line 14
    .line 15
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/ev;

    .line 19
    .line 20
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/ev;-><init>(Lcom/google/android/gms/internal/ads/fv;I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fv;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/fv;->Q:Lcom/google/android/gms/internal/ads/Xv;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-boolean v0, v4, Lcom/google/android/gms/internal/ads/Xv;->p:Z

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iput-boolean v8, v7, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->h8:Lcom/google/android/gms/internal/ads/J7;

    .line 44
    .line 45
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 46
    .line 47
    iget-object v6, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 48
    .line 49
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/fv;->I:Lcom/google/android/gms/internal/ads/fg;

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    iget-boolean v3, v0, Ll3/b1;->L:Z

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    move-object v3, v6

    .line 68
    check-cast v3, Lcom/google/android/gms/internal/ads/Bg;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Bg;->w:Lcom/google/android/gms/internal/ads/MJ;

    .line 71
    .line 72
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/google/android/gms/internal/ads/qo;

    .line 77
    .line 78
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/qo;->e(Z)V

    .line 79
    .line 80
    .line 81
    :cond_2
    new-instance v3, Landroid/util/Pair;

    .line 82
    .line 83
    iget-wide v10, v0, Ll3/b1;->f0:J

    .line 84
    .line 85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    const-string v11, "api-call"

    .line 90
    .line 91
    invoke-direct {v3, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v10, Landroid/util/Pair;

    .line 95
    .line 96
    sget-object v11, Lk3/l;->A:Lk3/l;

    .line 97
    .line 98
    iget-object v11, v11, Lk3/l;->j:LP3/b;

    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v11

    .line 107
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const-string v12, "dynamite-enter"

    .line 112
    .line 113
    invoke-direct {v10, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 v11, 0x2

    .line 117
    new-array v11, v11, [Landroid/util/Pair;

    .line 118
    .line 119
    aput-object v3, v11, v2

    .line 120
    .line 121
    aput-object v10, v11, v8

    .line 122
    .line 123
    invoke-static {v11}, LU2/m;->e([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v0, v4, Lcom/google/android/gms/internal/ads/Xv;->a:Ll3/b1;

    .line 130
    .line 131
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/Xv;->t:Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Xv;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->M(Lcom/google/android/gms/internal/ads/Yv;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/fv;->G:Landroid/content/Context;

    .line 142
    .line 143
    const/4 v11, 0x3

    .line 144
    invoke-static {v10, v3, v11, v0}, LU4/a;->o(Landroid/content/Context;IILl3/b1;)Lcom/google/android/gms/internal/ads/Ow;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    sget-object v12, Lcom/google/android/gms/internal/ads/x8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 149
    .line 150
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    const/4 v13, 0x0

    .line 161
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 162
    .line 163
    if-eqz v12, :cond_4

    .line 164
    .line 165
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Xv;->b:Ll3/d1;

    .line 166
    .line 167
    iget-boolean v4, v4, Ll3/d1;->Q:Z

    .line 168
    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    if-eqz v14, :cond_3

    .line 172
    .line 173
    const/4 v0, 0x7

    .line 174
    invoke-static {v0, v13, v13}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/hs;->y(Ll3/z0;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_0
    return v2

    .line 182
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->w7:Lcom/google/android/gms/internal/ads/J7;

    .line 183
    .line 184
    iget-object v4, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 185
    .line 186
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/Boolean;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/fv;->L:Landroid/widget/FrameLayout;

    .line 197
    .line 198
    const/4 v5, 0x4

    .line 199
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/fv;->P:Lcom/google/android/gms/internal/ads/kk;

    .line 200
    .line 201
    iget-object v15, v7, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 202
    .line 203
    if-eqz v2, :cond_5

    .line 204
    .line 205
    check-cast v6, Lcom/google/android/gms/internal/ads/Bg;

    .line 206
    .line 207
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 208
    .line 209
    new-instance v6, Lcom/google/android/gms/internal/ads/dj;

    .line 210
    .line 211
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-object v10, v6, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 215
    .line 216
    iput-object v1, v6, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 217
    .line 218
    new-instance v1, Lcom/google/android/gms/internal/ads/dj;

    .line 219
    .line 220
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 221
    .line 222
    .line 223
    new-instance v6, Lcom/google/android/gms/internal/ads/sk;

    .line 224
    .line 225
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->b(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->c(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 232
    .line 233
    .line 234
    new-instance v10, Lcom/google/android/gms/internal/ads/tk;

    .line 235
    .line 236
    invoke-direct {v10, v6}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 237
    .line 238
    .line 239
    new-instance v6, Lcom/google/android/gms/internal/ads/Qr;

    .line 240
    .line 241
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/fv;->M:Lcom/google/android/gms/internal/ads/Z7;

    .line 242
    .line 243
    invoke-direct {v6, v14}, Lcom/google/android/gms/internal/ads/Qr;-><init>(Lcom/google/android/gms/internal/ads/Z7;)V

    .line 244
    .line 245
    .line 246
    new-instance v14, Lcom/google/android/gms/internal/ads/ll;

    .line 247
    .line 248
    sget-object v8, Lcom/google/android/gms/internal/ads/Nl;->h:Lcom/google/android/gms/internal/ads/Nl;

    .line 249
    .line 250
    invoke-direct {v14, v8, v13}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/internal/ads/Nl;Ll3/w;)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Lcom/google/android/gms/internal/ads/qi;

    .line 254
    .line 255
    invoke-direct {v8, v15, v12}, Lcom/google/android/gms/internal/ads/qi;-><init>(Lcom/google/android/gms/internal/ads/Vj;Lcom/google/android/gms/internal/ads/kk;)V

    .line 256
    .line 257
    .line 258
    new-instance v12, Lcom/google/android/gms/internal/ads/Kh;

    .line 259
    .line 260
    invoke-direct {v12, v4}, Lcom/google/android/gms/internal/ads/Kh;-><init>(Landroid/view/ViewGroup;)V

    .line 261
    .line 262
    .line 263
    new-instance v23, Lcom/google/android/gms/internal/ads/tr;

    .line 264
    .line 265
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 266
    .line 267
    .line 268
    new-instance v4, Lcom/google/android/gms/internal/ads/Ig;

    .line 269
    .line 270
    new-instance v15, Lc4/y;

    .line 271
    .line 272
    invoke-direct {v15, v5}, Lc4/y;-><init>(I)V

    .line 273
    .line 274
    .line 275
    const/16 v27, 0x0

    .line 276
    .line 277
    const/16 v26, 0x0

    .line 278
    .line 279
    move-object/from16 v16, v4

    .line 280
    .line 281
    move-object/from16 v17, v2

    .line 282
    .line 283
    move-object/from16 v18, v12

    .line 284
    .line 285
    move-object/from16 v19, v14

    .line 286
    .line 287
    move-object/from16 v20, v15

    .line 288
    .line 289
    move-object/from16 v21, v10

    .line 290
    .line 291
    move-object/from16 v22, v1

    .line 292
    .line 293
    move-object/from16 v24, v6

    .line 294
    .line 295
    move-object/from16 v25, v8

    .line 296
    .line 297
    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/ads/Ig;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Kh;Lcom/google/android/gms/internal/ads/ll;Lc4/y;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/Qr;Lcom/google/android/gms/internal/ads/qi;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/kv;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_5
    check-cast v6, Lcom/google/android/gms/internal/ads/Bg;

    .line 303
    .line 304
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 305
    .line 306
    new-instance v6, Lcom/google/android/gms/internal/ads/dj;

    .line 307
    .line 308
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 309
    .line 310
    .line 311
    iput-object v10, v6, Lcom/google/android/gms/internal/ads/dj;->a:Landroid/content/Context;

    .line 312
    .line 313
    iput-object v1, v6, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 314
    .line 315
    new-instance v1, Lcom/google/android/gms/internal/ads/dj;

    .line 316
    .line 317
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 318
    .line 319
    .line 320
    new-instance v6, Lcom/google/android/gms/internal/ads/sk;

    .line 321
    .line 322
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/sk;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->b(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 326
    .line 327
    .line 328
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 329
    .line 330
    invoke-direct {v8, v14, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 331
    .line 332
    .line 333
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/HashSet;

    .line 334
    .line 335
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 339
    .line 340
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/fv;->K:Lcom/google/android/gms/internal/ads/js;

    .line 341
    .line 342
    invoke-direct {v8, v11, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->d(Lcom/google/android/gms/internal/ads/Ok;Ljava/util/concurrent/Executor;)V

    .line 349
    .line 350
    .line 351
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 352
    .line 353
    invoke-direct {v8, v14, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 354
    .line 355
    .line 356
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/sk;->f:Ljava/util/HashSet;

    .line 357
    .line 358
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 362
    .line 363
    invoke-direct {v8, v14, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 364
    .line 365
    .line 366
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/sk;->e:Ljava/util/HashSet;

    .line 367
    .line 368
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 372
    .line 373
    invoke-direct {v8, v14, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 374
    .line 375
    .line 376
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/sk;->h:Ljava/util/HashSet;

    .line 377
    .line 378
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->a(Lcom/google/android/gms/internal/ads/sj;Ljava/util/concurrent/Executor;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v6, v14, v9}, Lcom/google/android/gms/internal/ads/sk;->c(Lcom/google/android/gms/internal/ads/hs;Ljava/util/concurrent/Executor;)V

    .line 385
    .line 386
    .line 387
    new-instance v8, Lcom/google/android/gms/internal/ads/Lk;

    .line 388
    .line 389
    invoke-direct {v8, v14, v9}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 390
    .line 391
    .line 392
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/sk;->m:Ljava/util/HashSet;

    .line 393
    .line 394
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    new-instance v8, Lcom/google/android/gms/internal/ads/tk;

    .line 398
    .line 399
    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/tk;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 400
    .line 401
    .line 402
    new-instance v6, Lcom/google/android/gms/internal/ads/Qr;

    .line 403
    .line 404
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/fv;->M:Lcom/google/android/gms/internal/ads/Z7;

    .line 405
    .line 406
    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/Qr;-><init>(Lcom/google/android/gms/internal/ads/Z7;)V

    .line 407
    .line 408
    .line 409
    new-instance v10, Lcom/google/android/gms/internal/ads/ll;

    .line 410
    .line 411
    sget-object v11, Lcom/google/android/gms/internal/ads/Nl;->h:Lcom/google/android/gms/internal/ads/Nl;

    .line 412
    .line 413
    invoke-direct {v10, v11, v13}, Lcom/google/android/gms/internal/ads/ll;-><init>(Lcom/google/android/gms/internal/ads/Nl;Ll3/w;)V

    .line 414
    .line 415
    .line 416
    new-instance v11, Lcom/google/android/gms/internal/ads/qi;

    .line 417
    .line 418
    invoke-direct {v11, v15, v12}, Lcom/google/android/gms/internal/ads/qi;-><init>(Lcom/google/android/gms/internal/ads/Vj;Lcom/google/android/gms/internal/ads/kk;)V

    .line 419
    .line 420
    .line 421
    new-instance v12, Lcom/google/android/gms/internal/ads/Kh;

    .line 422
    .line 423
    invoke-direct {v12, v4}, Lcom/google/android/gms/internal/ads/Kh;-><init>(Landroid/view/ViewGroup;)V

    .line 424
    .line 425
    .line 426
    new-instance v23, Lcom/google/android/gms/internal/ads/tr;

    .line 427
    .line 428
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 429
    .line 430
    .line 431
    new-instance v4, Lcom/google/android/gms/internal/ads/Ig;

    .line 432
    .line 433
    new-instance v14, Lc4/y;

    .line 434
    .line 435
    invoke-direct {v14, v5}, Lc4/y;-><init>(I)V

    .line 436
    .line 437
    .line 438
    const/16 v27, 0x0

    .line 439
    .line 440
    const/16 v26, 0x0

    .line 441
    .line 442
    move-object/from16 v16, v4

    .line 443
    .line 444
    move-object/from16 v17, v2

    .line 445
    .line 446
    move-object/from16 v18, v12

    .line 447
    .line 448
    move-object/from16 v19, v10

    .line 449
    .line 450
    move-object/from16 v20, v14

    .line 451
    .line 452
    move-object/from16 v21, v8

    .line 453
    .line 454
    move-object/from16 v22, v1

    .line 455
    .line 456
    move-object/from16 v24, v6

    .line 457
    .line 458
    move-object/from16 v25, v11

    .line 459
    .line 460
    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/ads/Ig;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Kh;Lcom/google/android/gms/internal/ads/ll;Lc4/y;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/Qr;Lcom/google/android/gms/internal/ads/qi;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/kv;)V

    .line 461
    .line 462
    .line 463
    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/m8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    check-cast v1, Ljava/lang/Boolean;

    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_6

    .line 476
    .line 477
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/Ig;->W:Lcom/google/android/gms/internal/ads/MJ;

    .line 478
    .line 479
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    check-cast v1, Lcom/google/android/gms/internal/ads/Tw;

    .line 484
    .line 485
    const/4 v2, 0x3

    .line 486
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Tw;->i(I)V

    .line 487
    .line 488
    .line 489
    iget-object v2, v0, Ll3/b1;->V:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Tw;->b(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v0, v0, Ll3/b1;->S:Landroid/os/Bundle;

    .line 495
    .line 496
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Tw;->f(Landroid/os/Bundle;)V

    .line 497
    .line 498
    .line 499
    move-object/from16 v0, p4

    .line 500
    .line 501
    move-object v2, v1

    .line 502
    goto :goto_2

    .line 503
    :cond_6
    move-object/from16 v0, p4

    .line 504
    .line 505
    move-object v2, v13

    .line 506
    :goto_2
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/fv;->U:Lcom/google/android/gms/internal/ads/ns;

    .line 507
    .line 508
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Ig;->i0:Lcom/google/android/gms/internal/ads/MJ;

    .line 509
    .line 510
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Lcom/google/android/gms/internal/ads/Li;

    .line 515
    .line 516
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Li;->b()Lcom/google/android/gms/internal/ads/Fw;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Li;->a(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    iput-object v8, v7, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 525
    .line 526
    new-instance v10, Lcom/google/android/gms/internal/ads/xc;

    .line 527
    .line 528
    const/16 v5, 0x12

    .line 529
    .line 530
    const/4 v6, 0x0

    .line 531
    move-object v0, v10

    .line 532
    move-object/from16 v1, p0

    .line 533
    .line 534
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 535
    .line 536
    .line 537
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 538
    .line 539
    .line 540
    const/4 v0, 0x1

    .line 541
    return v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->P:Lcom/google/android/gms/internal/ads/kk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/kk;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Vj;->b1(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public final d()V
    .locals 7

    .line 1
    const-string v0, "Banner view provided from "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Fw;->I:LD4/b;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Fw;->I:LD4/b;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/gms/internal/ads/Nh;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fv;->L:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->d()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->d()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const-string v4, ""

    .line 54
    .line 55
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/xi;->f:Lcom/google/android/gms/internal/ads/lj;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/lj;->G:Ljava/lang/String;

    .line 60
    .line 61
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, " already has a parent view. Removing its old parent."

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v3, Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->d()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :catch_0
    move-exception v0

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w7:Lcom/google/android/gms/internal/ads/J7;

    .line 101
    .line 102
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 103
    .line 104
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 105
    .line 106
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/xi;->g:Lcom/google/android/gms/internal/ads/ek;

    .line 119
    .line 120
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ek;->G:Lcom/google/android/gms/internal/ads/Of;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v6, v4

    .line 127
    check-cast v6, Lcom/google/android/gms/internal/ads/ek;

    .line 128
    .line 129
    iput-object v5, v6, Lcom/google/android/gms/internal/ads/ek;->H:Lcom/google/android/gms/internal/ads/hs;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/fv;->K:Lcom/google/android/gms/internal/ads/js;

    .line 132
    .line 133
    check-cast v4, Lcom/google/android/gms/internal/ads/ek;

    .line 134
    .line 135
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/ek;->I:Lcom/google/android/gms/internal/ads/js;

    .line 136
    .line 137
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fv;->L:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->d()Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fv;->U:Lcom/google/android/gms/internal/ads/ns;

    .line 147
    .line 148
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/ns;->zzb(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 152
    .line 153
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->H:Ljava/util/concurrent/Executor;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fv;->J:Lcom/google/android/gms/internal/ads/hs;

    .line 168
    .line 169
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    new-instance v4, Lcom/google/android/gms/internal/ads/Zn;

    .line 173
    .line 174
    const/16 v5, 0xb

    .line 175
    .line 176
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->b()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-ltz v0, :cond_4

    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->b()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Vj;->a1(I)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->c()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Vj;->b1(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 211
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Nh;->c()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Vj;->a1(I)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fv;->f()V

    .line 223
    .line 224
    .line 225
    const-string v1, "Error occurred while refreshing the ad. Making a new ad request."

    .line 226
    .line 227
    invoke-static {v1, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 231
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vj;->zza()V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 239
    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    const-string v0, "Show timer went off but there is an ongoing ad request."

    .line 243
    .line 244
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_6
    const-string v0, "No ad request was in progress or an ad was cached when show timer went off. Hence requesting a new ad."

    .line 251
    .line 252
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fv;->S:Z

    .line 256
    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->N:Lcom/google/android/gms/internal/ads/Vj;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Vj;->zza()V

    .line 260
    .line 261
    .line 262
    :goto_2
    monitor-exit p0

    .line 263
    return-void

    .line 264
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    throw v0
.end method

.method public final e()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->L:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/View;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 16
    .line 17
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const-string v4, "power"

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/os/PowerManager;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v3

    .line 40
    :goto_0
    const-string v4, "keyguard"

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    instance-of v4, v1, Landroid/app/KeyguardManager;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    check-cast v3, Landroid/app/KeyguardManager;

    .line 54
    .line 55
    :cond_2
    invoke-static {v0, v2, v3}, Lo3/O;->o(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->R:Lcom/google/android/gms/internal/ads/Fw;

    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w7:Lcom/google/android/gms/internal/ads/J7;

    .line 5
    .line 6
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 7
    .line 8
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/ev;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ev;-><init>(Lcom/google/android/gms/internal/ads/fv;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fv;->H:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv;->U:Lcom/google/android/gms/internal/ads/ns;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ns;->zza()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
