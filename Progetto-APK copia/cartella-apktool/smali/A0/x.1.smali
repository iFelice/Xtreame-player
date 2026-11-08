.class public final LA0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/s0;


# static fields
.field public static final synthetic x:I


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:LF/i;

.field public final d:Z

.field public final e:Landroid/opengl/EGLDisplay;

.field public final f:LA0/N;

.field public final g:LA0/h0;

.field public final h:Lm0/r0;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:LA0/D;

.field public final l:Ljava/util/ArrayList;

.field public final m:Lp0/i;

.field public n:LA0/w;

.field public o:LA0/w;

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/lang/Object;

.field public final s:Lm0/i;

.field public final t:Lm0/k;

.field public final u:LA0/U;

.field public volatile v:Lm0/u;

.field public volatile w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.effect"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LF/i;Landroid/opengl/EGLDisplay;LA0/N;LA0/h0;Lm0/r0;Ljava/util/concurrent/Executor;LA0/D;ZLm0/i;Lm0/k;LA0/U;)V
    .locals 9

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p8

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    move-object v0, p1

    .line 8
    iput-object v0, v6, LA0/x;->b:Landroid/content/Context;

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    iput-object v0, v6, LA0/x;->c:LF/i;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v6, LA0/x;->d:Z

    .line 15
    .line 16
    move-object v0, p3

    .line 17
    iput-object v0, v6, LA0/x;->e:Landroid/opengl/EGLDisplay;

    .line 18
    .line 19
    move-object v0, p4

    .line 20
    iput-object v0, v6, LA0/x;->f:LA0/N;

    .line 21
    .line 22
    move-object v4, p5

    .line 23
    iput-object v4, v6, LA0/x;->g:LA0/h0;

    .line 24
    .line 25
    move-object v3, p6

    .line 26
    iput-object v3, v6, LA0/x;->h:Lm0/r0;

    .line 27
    .line 28
    move-object/from16 v2, p7

    .line 29
    .line 30
    iput-object v2, v6, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    move/from16 v0, p9

    .line 33
    .line 34
    iput-boolean v0, v6, LA0/x;->j:Z

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, v6, LA0/x;->q:Ljava/util/ArrayList;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, v6, LA0/x;->r:Ljava/lang/Object;

    .line 49
    .line 50
    move-object/from16 v0, p10

    .line 51
    .line 52
    iput-object v0, v6, LA0/x;->s:Lm0/i;

    .line 53
    .line 54
    move-object/from16 v5, p12

    .line 55
    .line 56
    iput-object v5, v6, LA0/x;->u:LA0/U;

    .line 57
    .line 58
    move-object/from16 v0, p11

    .line 59
    .line 60
    iput-object v0, v6, LA0/x;->t:Lm0/k;

    .line 61
    .line 62
    iput-object v7, v6, LA0/x;->k:LA0/D;

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, v6, LA0/x;->l:Ljava/util/ArrayList;

    .line 70
    .line 71
    new-instance v0, Lp0/i;

    .line 72
    .line 73
    invoke-direct {v0}, Lp0/i;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, v6, LA0/x;->m:Lp0/i;

    .line 77
    .line 78
    invoke-virtual {v0}, Lp0/i;->f()Z

    .line 79
    .line 80
    .line 81
    new-instance v8, LA0/t;

    .line 82
    .line 83
    move-object v0, v8

    .line 84
    move-object v1, p0

    .line 85
    invoke-direct/range {v0 .. v5}, LA0/t;-><init>(LA0/x;Ljava/util/concurrent/Executor;Lm0/r0;LA0/h0;LA0/U;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v7, LA0/D;->h:LA0/h0;

    .line 89
    .line 90
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 91
    .line 92
    .line 93
    iput-object v8, v7, LA0/D;->u:LA0/t;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final a(LA0/w;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, LA0/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lm0/t;

    .line 8
    .line 9
    iget-object v2, v2, Lm0/t;->E:Lm0/i;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, LA0/x;->s:Lm0/i;

    .line 15
    .line 16
    invoke-static {v2}, Lm0/i;->g(Lm0/i;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x6

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget v4, v2, Lm0/i;->a:I

    .line 26
    .line 27
    if-ne v4, v7, :cond_0

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {v2}, Lm0/i;->g(Lm0/i;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-static {v3}, Lm0/i;->g(Lm0/i;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    :cond_2
    :try_start_0
    new-array v4, v6, [I

    .line 48
    .line 49
    invoke-static {v5}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/16 v10, 0x3098

    .line 58
    .line 59
    invoke-static {v8, v9, v10, v4, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lp0/b;->e()V

    .line 63
    .line 64
    .line 65
    aget v4, v4, v5
    :try_end_0
    .catch Lp0/p; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .line 67
    int-to-long v8, v4

    .line 68
    const-wide/16 v10, 0x3

    .line 69
    .line 70
    cmp-long v4, v8, v10

    .line 71
    .line 72
    if-nez v4, :cond_35

    .line 73
    .line 74
    :cond_3
    invoke-virtual {v2}, Lm0/i;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 79
    .line 80
    .line 81
    iget v4, v2, Lm0/i;->c:I

    .line 82
    .line 83
    if-eq v4, v6, :cond_4

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v4, 0x0

    .line 88
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lm0/i;->e()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 96
    .line 97
    .line 98
    iget v4, v3, Lm0/i;->c:I

    .line 99
    .line 100
    if-eq v4, v6, :cond_5

    .line 101
    .line 102
    const/4 v8, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/4 v8, 0x0

    .line 105
    :goto_2
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 106
    .line 107
    .line 108
    invoke-static {v2}, Lm0/i;->g(Lm0/i;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-static {v3}, Lm0/i;->g(Lm0/i;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    const/4 v10, 0x3

    .line 117
    if-eq v8, v9, :cond_9

    .line 118
    .line 119
    iget v8, v2, Lm0/i;->a:I

    .line 120
    .line 121
    iget v9, v3, Lm0/i;->a:I

    .line 122
    .line 123
    if-ne v8, v7, :cond_6

    .line 124
    .line 125
    if-eq v9, v7, :cond_6

    .line 126
    .line 127
    invoke-static {v2}, Lm0/i;->g(Lm0/i;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    const/16 v8, 0xa

    .line 134
    .line 135
    if-eq v4, v8, :cond_7

    .line 136
    .line 137
    if-ne v4, v10, :cond_6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    sget-object v4, Lm0/i;->i:Lm0/i;

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Lm0/i;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_8

    .line 147
    .line 148
    if-ne v9, v7, :cond_8

    .line 149
    .line 150
    invoke-static {v3}, Lm0/i;->g(Lm0/i;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    :cond_7
    :goto_3
    const/4 v2, 0x1

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    const/4 v2, 0x0

    .line 159
    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 160
    .line 161
    .line 162
    :cond_9
    const/4 v2, 0x4

    .line 163
    if-nez p2, :cond_a

    .line 164
    .line 165
    iget-object v3, v1, LA0/x;->q:Ljava/util/ArrayList;

    .line 166
    .line 167
    iget-object v4, v0, LA0/w;->d:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v4, Ljava/util/List;

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_15

    .line 176
    .line 177
    :cond_a
    iget-object v3, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_d

    .line 184
    .line 185
    iget-object v3, v1, LA0/x;->u:LA0/U;

    .line 186
    .line 187
    if-nez v3, :cond_b

    .line 188
    .line 189
    const/4 v3, 0x0

    .line 190
    goto :goto_5

    .line 191
    :cond_b
    const/4 v3, 0x1

    .line 192
    :goto_5
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-ge v3, v4, :cond_c

    .line 199
    .line 200
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, LA0/K;

    .line 207
    .line 208
    invoke-interface {v4}, LA0/K;->release()V

    .line 209
    .line 210
    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_c
    iget-object v3, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 217
    .line 218
    .line 219
    :cond_d
    iget-object v3, v1, LA0/x;->u:LA0/U;

    .line 220
    .line 221
    if-eqz v3, :cond_e

    .line 222
    .line 223
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_e
    new-instance v3, Lz4/E;

    .line 229
    .line 230
    invoke-direct {v3, v2}, Lz4/B;-><init>(I)V

    .line 231
    .line 232
    .line 233
    iget-object v4, v0, LA0/w;->d:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v4, Ljava/util/List;

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Lz4/B;->j0(Ljava/util/List;)Lz4/B;

    .line 238
    .line 239
    .line 240
    iget-object v4, v1, LA0/x;->t:Lm0/k;

    .line 241
    .line 242
    sget-object v8, Lm0/k;->C:LN/i;

    .line 243
    .line 244
    if-eq v4, v8, :cond_f

    .line 245
    .line 246
    new-instance v8, LA0/h;

    .line 247
    .line 248
    iget-object v9, v1, LA0/x;->s:Lm0/i;

    .line 249
    .line 250
    invoke-direct {v8, v4, v9}, LA0/h;-><init>(Lm0/k;Lm0/i;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v8}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    :cond_f
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 257
    .line 258
    iget-object v8, v1, LA0/x;->b:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {v3}, Lz4/E;->m0()Lz4/d0;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iget-object v9, v1, LA0/x;->s:Lm0/i;

    .line 265
    .line 266
    iget-object v11, v1, LA0/x;->k:LA0/D;

    .line 267
    .line 268
    new-instance v12, Lz4/E;

    .line 269
    .line 270
    invoke-direct {v12, v2}, Lz4/B;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-instance v13, Lz4/E;

    .line 274
    .line 275
    invoke-direct {v13, v2}, Lz4/B;-><init>(I)V

    .line 276
    .line 277
    .line 278
    new-instance v14, Lz4/E;

    .line 279
    .line 280
    invoke-direct {v14, v2}, Lz4/B;-><init>(I)V

    .line 281
    .line 282
    .line 283
    const/4 v15, 0x0

    .line 284
    :goto_6
    iget v7, v3, Lz4/d0;->J:I

    .line 285
    .line 286
    if-ge v15, v7, :cond_13

    .line 287
    .line 288
    invoke-virtual {v3, v15}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    check-cast v7, Lm0/o;

    .line 293
    .line 294
    instance-of v10, v7, LA0/G;

    .line 295
    .line 296
    const-string v5, "DefaultVideoFrameProcessor only supports GlEffects"

    .line 297
    .line 298
    invoke-static {v5, v10}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 299
    .line 300
    .line 301
    check-cast v7, LA0/G;

    .line 302
    .line 303
    instance-of v5, v7, LA0/P;

    .line 304
    .line 305
    if-eqz v5, :cond_10

    .line 306
    .line 307
    check-cast v7, LA0/P;

    .line 308
    .line 309
    invoke-virtual {v13, v7}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_10
    invoke-static {v9}, Lm0/i;->g(Lm0/i;)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    invoke-virtual {v13}, Lz4/E;->m0()Lz4/d0;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v14}, Lz4/E;->m0()Lz4/d0;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v16

    .line 329
    if-eqz v16, :cond_11

    .line 330
    .line 331
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    if-nez v16, :cond_12

    .line 336
    .line 337
    :cond_11
    invoke-static {v8, v10, v6, v5}, LA0/m;->j(Landroid/content/Context;Lz4/d0;Lz4/d0;Z)LA0/m;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-virtual {v12, v6}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    new-instance v13, Lz4/E;

    .line 345
    .line 346
    invoke-direct {v13, v2}, Lz4/B;-><init>(I)V

    .line 347
    .line 348
    .line 349
    new-instance v14, Lz4/E;

    .line 350
    .line 351
    invoke-direct {v14, v2}, Lz4/B;-><init>(I)V

    .line 352
    .line 353
    .line 354
    :cond_12
    invoke-interface {v7, v8, v5}, LA0/G;->e(Landroid/content/Context;Z)LA0/K;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {v12, v5}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 362
    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v6, 0x1

    .line 365
    const/4 v10, 0x3

    .line 366
    goto :goto_6

    .line 367
    :cond_13
    invoke-virtual {v13}, Lz4/E;->m0()Lz4/d0;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v14}, Lz4/E;->m0()Lz4/d0;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    iget-object v6, v11, LA0/D;->h:LA0/h0;

    .line 376
    .line 377
    invoke-virtual {v6}, LA0/h0;->h()V

    .line 378
    .line 379
    .line 380
    iget-object v6, v11, LA0/D;->b:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    .line 387
    .line 388
    iget-object v3, v11, LA0/D;->c:Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    iput-boolean v3, v11, LA0/D;->v:Z

    .line 398
    .line 399
    invoke-virtual {v12}, Lz4/E;->m0()Lz4/d0;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    .line 405
    .line 406
    iget-object v3, v1, LA0/x;->f:LA0/N;

    .line 407
    .line 408
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 409
    .line 410
    iget-object v5, v1, LA0/x;->k:LA0/D;

    .line 411
    .line 412
    invoke-static {v4, v5}, Ly4/k;->F(Ljava/util/AbstractCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    check-cast v4, LA0/K;

    .line 417
    .line 418
    iput-object v4, v3, LA0/N;->j:LA0/K;

    .line 419
    .line 420
    iget-object v3, v1, LA0/x;->c:LF/i;

    .line 421
    .line 422
    iget-object v4, v1, LA0/x;->l:Ljava/util/ArrayList;

    .line 423
    .line 424
    iget-object v5, v1, LA0/x;->k:LA0/D;

    .line 425
    .line 426
    iget-object v6, v1, LA0/x;->g:LA0/h0;

    .line 427
    .line 428
    iget-object v7, v1, LA0/x;->h:Lm0/r0;

    .line 429
    .line 430
    iget-object v8, v1, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 431
    .line 432
    new-instance v9, Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    const/4 v4, 0x0

    .line 441
    :goto_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    const/4 v10, 0x1

    .line 446
    sub-int/2addr v5, v10

    .line 447
    if-ge v4, v5, :cond_14

    .line 448
    .line 449
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    check-cast v5, LA0/K;

    .line 454
    .line 455
    add-int/lit8 v4, v4, 0x1

    .line 456
    .line 457
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v10

    .line 461
    check-cast v10, LA0/K;

    .line 462
    .line 463
    new-instance v11, LA0/f;

    .line 464
    .line 465
    invoke-direct {v11, v3, v5, v10, v6}, LA0/f;-><init>(LF/i;LA0/K;LA0/K;LA0/h0;)V

    .line 466
    .line 467
    .line 468
    invoke-interface {v5, v11}, LA0/K;->d(LA0/f;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    new-instance v12, LA0/n;

    .line 475
    .line 476
    const/4 v13, 0x1

    .line 477
    invoke-direct {v12, v7, v13}, LA0/n;-><init>(Lm0/r0;I)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v5, v8, v12}, LA0/K;->e(Ljava/util/concurrent/Executor;LA0/n;)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v10, v11}, LA0/K;->f(LA0/I;)V

    .line 484
    .line 485
    .line 486
    goto :goto_8

    .line 487
    :cond_14
    iget-object v3, v1, LA0/x;->q:Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 490
    .line 491
    .line 492
    iget-object v3, v1, LA0/x;->q:Ljava/util/ArrayList;

    .line 493
    .line 494
    iget-object v4, v0, LA0/w;->d:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v4, Ljava/util/List;

    .line 497
    .line 498
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 499
    .line 500
    .line 501
    :cond_15
    iget-object v3, v1, LA0/x;->f:LA0/N;

    .line 502
    .line 503
    iget v4, v0, LA0/w;->b:I

    .line 504
    .line 505
    new-instance v5, Lm0/u;

    .line 506
    .line 507
    iget-object v6, v0, LA0/w;->c:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v6, Lm0/t;

    .line 510
    .line 511
    iget-wide v7, v0, LA0/w;->a:J

    .line 512
    .line 513
    invoke-direct {v5, v6, v7, v8}, Lm0/u;-><init>(Lm0/t;J)V

    .line 514
    .line 515
    .line 516
    iget-object v6, v3, LA0/N;->j:LA0/K;

    .line 517
    .line 518
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    iget-object v6, v3, LA0/N;->g:Landroid/util/SparseArray;

    .line 522
    .line 523
    invoke-static {v6, v4}, Lp0/M;->k(Landroid/util/SparseArray;I)Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v9, "Input type not registered: "

    .line 530
    .line 531
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 542
    .line 543
    .line 544
    const/4 v7, 0x0

    .line 545
    :goto_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    if-ge v7, v8, :cond_17

    .line 550
    .line 551
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    check-cast v8, LA0/M;

    .line 560
    .line 561
    iget-object v8, v8, LA0/M;->c:LA0/L;

    .line 562
    .line 563
    if-nez v8, :cond_16

    .line 564
    .line 565
    goto :goto_a

    .line 566
    :cond_16
    const/4 v9, 0x0

    .line 567
    iput-boolean v9, v8, LA0/L;->H:Z

    .line 568
    .line 569
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 570
    .line 571
    goto :goto_9

    .line 572
    :cond_17
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v6

    .line 576
    check-cast v6, LA0/M;

    .line 577
    .line 578
    iget-object v7, v5, Lm0/u;->a:Lm0/t;

    .line 579
    .line 580
    iget-object v7, v7, Lm0/t;->E:Lm0/i;

    .line 581
    .line 582
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    iget v8, v7, Lm0/i;->c:I

    .line 586
    .line 587
    const-string v9, "uApplyHdrToSdrToneMapping"

    .line 588
    .line 589
    const-string v10, "uInputColorTransfer"

    .line 590
    .line 591
    const-string v11, "shaders/vertex_shader_transformation_es3.glsl"

    .line 592
    .line 593
    const-string v12, "shaders/vertex_shader_transformation_es2.glsl"

    .line 594
    .line 595
    iget v13, v3, LA0/N;->h:I

    .line 596
    .line 597
    iget-object v14, v3, LA0/N;->b:Lm0/i;

    .line 598
    .line 599
    iget-object v15, v3, LA0/N;->a:Landroid/content/Context;

    .line 600
    .line 601
    const/4 v2, 0x2

    .line 602
    move-object/from16 p2, v11

    .line 603
    .line 604
    const/4 v11, 0x1

    .line 605
    if-eq v4, v11, :cond_18

    .line 606
    .line 607
    if-eq v4, v2, :cond_1a

    .line 608
    .line 609
    const/4 v11, 0x3

    .line 610
    if-eq v4, v11, :cond_1a

    .line 611
    .line 612
    const/4 v11, 0x4

    .line 613
    if-ne v4, v11, :cond_19

    .line 614
    .line 615
    :cond_18
    move-object/from16 v17, v12

    .line 616
    .line 617
    goto/16 :goto_15

    .line 618
    .line 619
    :cond_19
    new-instance v0, Lm0/o0;

    .line 620
    .line 621
    const-string v2, "Unsupported input type "

    .line 622
    .line 623
    invoke-static {v2, v4}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :cond_1a
    sget-object v11, LA0/m;->s:Lz4/d0;

    .line 632
    .line 633
    if-ne v8, v2, :cond_1c

    .line 634
    .line 635
    if-ne v4, v2, :cond_1b

    .line 636
    .line 637
    goto :goto_b

    .line 638
    :cond_1b
    const/4 v11, 0x0

    .line 639
    goto :goto_c

    .line 640
    :cond_1c
    :goto_b
    const/4 v11, 0x1

    .line 641
    :goto_c
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 642
    .line 643
    .line 644
    invoke-static {v7}, Lm0/i;->g(Lm0/i;)Z

    .line 645
    .line 646
    .line 647
    move-result v11

    .line 648
    if-ne v4, v2, :cond_1d

    .line 649
    .line 650
    iget v2, v14, Lm0/i;->a:I

    .line 651
    .line 652
    move-object/from16 v17, v12

    .line 653
    .line 654
    const/4 v12, 0x6

    .line 655
    if-ne v2, v12, :cond_1e

    .line 656
    .line 657
    const/4 v2, 0x1

    .line 658
    goto :goto_d

    .line 659
    :cond_1d
    move-object/from16 v17, v12

    .line 660
    .line 661
    :cond_1e
    const/4 v2, 0x0

    .line 662
    :goto_d
    if-nez v11, :cond_20

    .line 663
    .line 664
    if-eqz v2, :cond_1f

    .line 665
    .line 666
    goto :goto_e

    .line 667
    :cond_1f
    move-object/from16 v12, v17

    .line 668
    .line 669
    goto :goto_f

    .line 670
    :cond_20
    :goto_e
    move-object/from16 v12, p2

    .line 671
    .line 672
    :goto_f
    if-eqz v2, :cond_21

    .line 673
    .line 674
    const-string v17, "shaders/fragment_shader_transformation_ultra_hdr_es3.glsl"

    .line 675
    .line 676
    :goto_10
    move-object/from16 v0, v17

    .line 677
    .line 678
    goto :goto_11

    .line 679
    :cond_21
    if-eqz v11, :cond_22

    .line 680
    .line 681
    const-string v17, "shaders/fragment_shader_transformation_hdr_internal_es3.glsl"

    .line 682
    .line 683
    goto :goto_10

    .line 684
    :cond_22
    const-string v17, "shaders/fragment_shader_transformation_sdr_internal_es2.glsl"

    .line 685
    .line 686
    goto :goto_10

    .line 687
    :goto_11
    invoke-static {v15, v12, v0}, LA0/m;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lp0/o;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    if-nez v2, :cond_25

    .line 692
    .line 693
    if-nez v11, :cond_24

    .line 694
    .line 695
    const/4 v2, 0x2

    .line 696
    if-eq v8, v2, :cond_24

    .line 697
    .line 698
    const/4 v2, 0x3

    .line 699
    if-ne v8, v2, :cond_23

    .line 700
    .line 701
    goto :goto_12

    .line 702
    :cond_23
    const/4 v2, 0x0

    .line 703
    goto :goto_13

    .line 704
    :cond_24
    :goto_12
    const/4 v2, 0x1

    .line 705
    :goto_13
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, v8, v10}, Lp0/o;->g(ILjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    :cond_25
    if-eqz v11, :cond_27

    .line 712
    .line 713
    iget v2, v14, Lm0/i;->a:I

    .line 714
    .line 715
    const/4 v8, 0x6

    .line 716
    if-eq v2, v8, :cond_26

    .line 717
    .line 718
    const/4 v2, 0x1

    .line 719
    goto :goto_14

    .line 720
    :cond_26
    const/4 v2, 0x0

    .line 721
    :goto_14
    invoke-virtual {v0, v2, v9}, Lp0/o;->g(ILjava/lang/String;)V

    .line 722
    .line 723
    .line 724
    :cond_27
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 725
    .line 726
    const/4 v8, 0x2

    .line 727
    if-ne v4, v8, :cond_28

    .line 728
    .line 729
    new-instance v2, LA0/l;

    .line 730
    .line 731
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 732
    .line 733
    .line 734
    invoke-static {v2}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    :cond_28
    invoke-static {v0, v7, v14, v13, v2}, LA0/m;->m(Lp0/o;Lm0/i;Lm0/i;ILz4/d0;)LA0/m;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    goto/16 :goto_1c

    .line 743
    .line 744
    :goto_15
    sget-object v0, LA0/m;->s:Lz4/d0;

    .line 745
    .line 746
    invoke-static {v7}, Lm0/i;->g(Lm0/i;)Z

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    if-eqz v0, :cond_29

    .line 751
    .line 752
    move-object/from16 v11, p2

    .line 753
    .line 754
    goto :goto_16

    .line 755
    :cond_29
    move-object/from16 v11, v17

    .line 756
    .line 757
    :goto_16
    if-eqz v0, :cond_2a

    .line 758
    .line 759
    const-string v2, "shaders/fragment_shader_transformation_external_yuv_es3.glsl"

    .line 760
    .line 761
    goto :goto_17

    .line 762
    :cond_2a
    const-string v2, "shaders/fragment_shader_transformation_sdr_external_es2.glsl"

    .line 763
    .line 764
    :goto_17
    invoke-static {v15, v11, v2}, LA0/m;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lp0/o;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    if-eqz v0, :cond_2f

    .line 769
    .line 770
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    sget-object v11, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 775
    .line 776
    invoke-static {v0, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-eqz v0, :cond_2b

    .line 781
    .line 782
    :try_start_1
    invoke-static {}, Lp0/b;->t()Landroid/opengl/EGLDisplay;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    sget-object v12, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 787
    .line 788
    sget-object v15, Lp0/b;->b:[I

    .line 789
    .line 790
    const/4 v11, 0x2

    .line 791
    invoke-static {v12, v0, v11, v15}, Lp0/b;->m(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    .line 792
    .line 793
    .line 794
    move-result-object v11

    .line 795
    invoke-static {v11, v0}, Lp0/b;->n(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 796
    .line 797
    .line 798
    const/16 v12, 0x1f03

    .line 799
    .line 800
    invoke-static {v12}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v12

    .line 804
    invoke-static {v11, v0}, Lp0/b;->p(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)V
    :try_end_1
    .catch Lp0/p; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    .line 806
    .line 807
    goto :goto_18

    .line 808
    :cond_2b
    const/16 v0, 0x1f03

    .line 809
    .line 810
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v12

    .line 814
    :goto_18
    if-eqz v12, :cond_2e

    .line 815
    .line 816
    const-string v0, "GL_EXT_YUV_target"

    .line 817
    .line 818
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    if-eqz v0, :cond_2e

    .line 823
    .line 824
    iget v0, v7, Lm0/i;->b:I

    .line 825
    .line 826
    const/4 v11, 0x1

    .line 827
    if-ne v0, v11, :cond_2c

    .line 828
    .line 829
    sget-object v0, LA0/m;->t:[F

    .line 830
    .line 831
    goto :goto_19

    .line 832
    :cond_2c
    sget-object v0, LA0/m;->u:[F

    .line 833
    .line 834
    :goto_19
    const-string v11, "uYuvToRgbColorTransform"

    .line 835
    .line 836
    invoke-virtual {v2, v11, v0}, Lp0/o;->e(Ljava/lang/String;[F)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v8, v10}, Lp0/o;->g(ILjava/lang/String;)V

    .line 840
    .line 841
    .line 842
    iget v0, v14, Lm0/i;->a:I

    .line 843
    .line 844
    const/4 v8, 0x6

    .line 845
    if-eq v0, v8, :cond_2d

    .line 846
    .line 847
    const/4 v0, 0x1

    .line 848
    goto :goto_1a

    .line 849
    :cond_2d
    const/4 v0, 0x0

    .line 850
    :goto_1a
    invoke-virtual {v2, v0, v9}, Lp0/o;->g(ILjava/lang/String;)V

    .line 851
    .line 852
    .line 853
    goto :goto_1b

    .line 854
    :catch_0
    :cond_2e
    new-instance v0, Lm0/o0;

    .line 855
    .line 856
    const-string v2, "The EXT_YUV_target extension is required for HDR editing input."

    .line 857
    .line 858
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v0

    .line 862
    :cond_2f
    :goto_1b
    iget-boolean v0, v3, LA0/N;->i:Z

    .line 863
    .line 864
    iput-boolean v0, v2, Lp0/o;->f:Z

    .line 865
    .line 866
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 867
    .line 868
    invoke-static {v2, v7, v14, v13, v0}, LA0/m;->m(Lp0/o;Lm0/i;Lm0/i;ILz4/d0;)LA0/m;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    :goto_1c
    iget-object v2, v3, LA0/N;->f:Ljava/util/concurrent/Executor;

    .line 873
    .line 874
    iput-object v2, v0, LA0/a;->e:Ljava/util/concurrent/Executor;

    .line 875
    .line 876
    iget-object v2, v3, LA0/N;->e:LA0/H;

    .line 877
    .line 878
    iput-object v2, v0, LA0/a;->d:LA0/H;

    .line 879
    .line 880
    iget-object v2, v6, LA0/M;->b:LA0/y;

    .line 881
    .line 882
    if-eqz v2, :cond_30

    .line 883
    .line 884
    check-cast v2, LA0/m;

    .line 885
    .line 886
    invoke-virtual {v2}, LA0/m;->release()V

    .line 887
    .line 888
    .line 889
    :cond_30
    iput-object v0, v6, LA0/M;->b:LA0/y;

    .line 890
    .line 891
    iget-object v2, v6, LA0/M;->a:LA0/a0;

    .line 892
    .line 893
    invoke-virtual {v2, v0}, LA0/a0;->j(LA0/m;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0, v2}, LA0/a;->f(LA0/I;)V

    .line 897
    .line 898
    .line 899
    new-instance v0, LA0/L;

    .line 900
    .line 901
    iget-object v7, v6, LA0/M;->b:LA0/y;

    .line 902
    .line 903
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    iget-object v8, v3, LA0/N;->j:LA0/K;

    .line 907
    .line 908
    iget-object v9, v3, LA0/N;->d:LA0/h0;

    .line 909
    .line 910
    iget-object v10, v3, LA0/N;->c:LF/i;

    .line 911
    .line 912
    invoke-direct {v0, v10, v7, v8, v9}, LA0/L;-><init>(LF/i;LA0/y;LA0/K;LA0/h0;)V

    .line 913
    .line 914
    .line 915
    iput-object v0, v6, LA0/M;->c:LA0/L;

    .line 916
    .line 917
    iget-object v7, v6, LA0/M;->b:LA0/y;

    .line 918
    .line 919
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    check-cast v7, LA0/a;

    .line 923
    .line 924
    iput-object v0, v7, LA0/a;->c:LA0/J;

    .line 925
    .line 926
    iget-object v0, v6, LA0/M;->c:LA0/L;

    .line 927
    .line 928
    if-nez v0, :cond_31

    .line 929
    .line 930
    goto :goto_1d

    .line 931
    :cond_31
    const/4 v6, 0x1

    .line 932
    iput-boolean v6, v0, LA0/L;->H:Z

    .line 933
    .line 934
    :goto_1d
    iget-object v6, v3, LA0/N;->j:LA0/K;

    .line 935
    .line 936
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    invoke-interface {v6, v0}, LA0/K;->f(LA0/I;)V

    .line 940
    .line 941
    .line 942
    iput-object v2, v3, LA0/N;->k:LA0/a0;

    .line 943
    .line 944
    const/4 v0, 0x4

    .line 945
    if-ne v4, v0, :cond_32

    .line 946
    .line 947
    const/4 v3, 0x1

    .line 948
    goto :goto_1e

    .line 949
    :cond_32
    const/4 v3, 0x0

    .line 950
    :goto_1e
    invoke-virtual {v2, v5, v3}, LA0/a0;->h(Lm0/u;Z)V

    .line 951
    .line 952
    .line 953
    iget-object v0, v1, LA0/x;->m:Lp0/i;

    .line 954
    .line 955
    invoke-virtual {v0}, Lp0/i;->f()Z

    .line 956
    .line 957
    .line 958
    iget-object v2, v1, LA0/x;->r:Ljava/lang/Object;

    .line 959
    .line 960
    monitor-enter v2

    .line 961
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    iget-object v0, v1, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 963
    .line 964
    new-instance v2, LA0/s;

    .line 965
    .line 966
    move-object/from16 v3, p1

    .line 967
    .line 968
    const/4 v4, 0x0

    .line 969
    invoke-direct {v2, v1, v3, v4}, LA0/s;-><init>(LA0/x;LA0/w;I)V

    .line 970
    .line 971
    .line 972
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 973
    .line 974
    .line 975
    iget-object v0, v1, LA0/x;->n:LA0/w;

    .line 976
    .line 977
    if-eqz v0, :cond_33

    .line 978
    .line 979
    iget-object v2, v3, LA0/w;->c:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v2, Lm0/t;

    .line 982
    .line 983
    iget v2, v2, Lm0/t;->z:F

    .line 984
    .line 985
    iget-object v0, v0, LA0/w;->c:Ljava/lang/Object;

    .line 986
    .line 987
    check-cast v0, Lm0/t;

    .line 988
    .line 989
    iget v0, v0, Lm0/t;->z:F

    .line 990
    .line 991
    cmpl-float v0, v2, v0

    .line 992
    .line 993
    if-eqz v0, :cond_34

    .line 994
    .line 995
    :cond_33
    iget-object v0, v1, LA0/x;->i:Ljava/util/concurrent/Executor;

    .line 996
    .line 997
    new-instance v2, LA0/s;

    .line 998
    .line 999
    const/4 v4, 0x1

    .line 1000
    invoke-direct {v2, v1, v3, v4}, LA0/s;-><init>(LA0/x;LA0/w;I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1004
    .line 1005
    .line 1006
    :cond_34
    iput-object v3, v1, LA0/x;->n:LA0/w;

    .line 1007
    .line 1008
    return-void

    .line 1009
    :catchall_0
    move-exception v0

    .line 1010
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1011
    throw v0

    .line 1012
    :cond_35
    new-instance v0, Lm0/o0;

    .line 1013
    .line 1014
    const-string v2, "OpenGL ES 3.0 context support is required for HDR input or output."

    .line 1015
    .line 1016
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    throw v0

    .line 1020
    :catch_1
    move-exception v0

    .line 1021
    invoke-static {v0}, Lm0/o0;->a(Ljava/lang/Exception;)Lm0/o0;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    throw v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/x;->g:LA0/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, LA0/h0;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/x;->r:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, LA0/x;->o:LA0/w;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iput-object v2, p0, LA0/x;->o:LA0/w;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move-object v1, v2

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, LA0/x;->a(LA0/w;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method public final c(Lm0/b0;)V
    .locals 4

    .line 1
    iget-object v0, p0, LA0/x;->k:LA0/D;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, LA0/D;->h:LA0/h0;

    .line 7
    .line 8
    new-instance v2, LA0/d;

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    invoke-direct {v2, v3, v0, p1}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, LA0/h0;->c(LA0/g0;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lf/t;

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    invoke-direct {v1, v2, v0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v0, LA0/D;->i:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
