.class public final LB0/O;
.super Lm0/f;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# static fields
.field public static final synthetic Q0:I


# instance fields
.field public A0:Landroid/view/TextureView;

.field public final B0:I

.field public C0:Lp0/F;

.field public D0:Lm0/d;

.field public E0:F

.field public F0:Z

.field public G0:Lo0/c;

.field public final H:LR0/y;

.field public final H0:Z

.field public final I:Lm0/U;

.field public I0:Z

.field public final J:Lp0/i;

.field public final J0:I

.field public final K:Landroid/content/Context;

.field public K0:Z

.field public final L:Lm0/Y;

.field public L0:Lm0/w0;

.field public final M:[LB0/h;

.field public M0:Lm0/L;

.field public final N:[LB0/h;

.field public N0:LB0/v0;

.field public final O:LR0/w;

.field public O0:I

.field public final P:Lp0/I;

.field public P0:J

.field public final Q:LB0/H;

.field public final R:LB0/X;

.field public final S:Lx/e;

.field public final T:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final U:Lm0/d0;

.field public final V:Ljava/util/ArrayList;

.field public final W:Z

.field public final X:LC0/a;

.field public final Y:Landroid/os/Looper;

.field public final Z:LS0/c;

.field public final a0:J

.field public final b0:J

.field public final c0:J

.field public final d0:LB0/L;

.field public final e0:LB0/M;

.field public final f0:LB0/c;

.field public final g0:Ll/e1;

.field public final h0:Ll/e1;

.field public final i0:J

.field public final j0:Lp0/e;

.field public k0:I

.field public l0:Z

.field public m0:I

.field public n0:I

.field public o0:Z

.field public p0:Z

.field public q0:Lz4/L;

.field public final r0:LB0/H0;

.field public s0:LO0/X;

.field public t0:Lm0/U;

.field public u0:Lm0/L;

.field public v0:Ljava/lang/Object;

.field public w0:Landroid/view/Surface;

.field public x0:Landroid/view/SurfaceHolder;

.field public y0:LV0/k;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(LB0/z;)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v6, 0x14

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    const-string v9, " [AndroidXMedia3/1.8.0] ["

    .line 10
    .line 11
    const-string v10, "Init "

    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lm0/f;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v11, Lp0/i;

    .line 17
    .line 18
    invoke-direct {v11}, Lp0/i;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v11, v1, LB0/O;->J:Lp0/i;

    .line 22
    .line 23
    :try_start_0
    const-string v11, "ExoPlayerImpl"

    .line 24
    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v9, "]"

    .line 50
    .line 51
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {v11, v9}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v9, v0, LB0/z;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iput-object v10, v1, LB0/O;->K:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v10, v0, LB0/z;->h:Ly4/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    iget-object v15, v0, LB0/z;->b:Lp0/G;

    .line 72
    .line 73
    :try_start_1
    invoke-interface {v10, v15}, Ly4/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    check-cast v10, LC0/a;

    .line 78
    .line 79
    iput-object v10, v1, LB0/O;->X:LC0/a;

    .line 80
    .line 81
    iget v10, v0, LB0/z;->j:I

    .line 82
    .line 83
    iput v10, v1, LB0/O;->J0:I

    .line 84
    .line 85
    iget-object v10, v0, LB0/z;->k:Lm0/d;

    .line 86
    .line 87
    iput-object v10, v1, LB0/O;->D0:Lm0/d;

    .line 88
    .line 89
    iget v10, v0, LB0/z;->l:I

    .line 90
    .line 91
    iput v10, v1, LB0/O;->B0:I

    .line 92
    .line 93
    iput-boolean v8, v1, LB0/O;->F0:Z

    .line 94
    .line 95
    iget-wide v10, v0, LB0/z;->u:J

    .line 96
    .line 97
    iput-wide v10, v1, LB0/O;->i0:J

    .line 98
    .line 99
    new-instance v10, LB0/L;

    .line 100
    .line 101
    invoke-direct {v10, v1}, LB0/L;-><init>(LB0/O;)V

    .line 102
    .line 103
    .line 104
    iput-object v10, v1, LB0/O;->d0:LB0/L;

    .line 105
    .line 106
    new-instance v11, LB0/M;

    .line 107
    .line 108
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v11, v1, LB0/O;->e0:LB0/M;

    .line 112
    .line 113
    new-instance v11, Landroid/os/Handler;

    .line 114
    .line 115
    iget-object v12, v0, LB0/z;->i:Landroid/os/Looper;

    .line 116
    .line 117
    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    .line 119
    .line 120
    iget-object v12, v0, LB0/z;->c:Ly4/t;

    .line 121
    .line 122
    invoke-interface {v12}, Ly4/t;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    move-object/from16 v16, v12

    .line 127
    .line 128
    check-cast v16, LB0/p;

    .line 129
    .line 130
    move-object/from16 v17, v11

    .line 131
    .line 132
    move-object/from16 v18, v10

    .line 133
    .line 134
    move-object/from16 v19, v10

    .line 135
    .line 136
    move-object/from16 v20, v10

    .line 137
    .line 138
    move-object/from16 v21, v10

    .line 139
    .line 140
    invoke-virtual/range {v16 .. v21}, LB0/p;->a(Landroid/os/Handler;LB0/L;LB0/L;LB0/L;LB0/L;)[LB0/h;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    iput-object v10, v1, LB0/O;->M:[LB0/h;

    .line 145
    .line 146
    array-length v11, v10

    .line 147
    if-lez v11, :cond_0

    .line 148
    .line 149
    const/4 v11, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    const/4 v11, 0x0

    .line 152
    :goto_0
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 153
    .line 154
    .line 155
    array-length v10, v10

    .line 156
    new-array v10, v10, [LB0/h;

    .line 157
    .line 158
    iput-object v10, v1, LB0/O;->N:[LB0/h;

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    :goto_1
    iget-object v11, v1, LB0/O;->N:[LB0/h;

    .line 162
    .line 163
    array-length v12, v11

    .line 164
    const/4 v14, 0x0

    .line 165
    if-ge v10, v12, :cond_1

    .line 166
    .line 167
    iget-object v12, v1, LB0/O;->M:[LB0/h;

    .line 168
    .line 169
    aget-object v12, v12, v10

    .line 170
    .line 171
    invoke-virtual {v12}, LB0/h;->getTrackType()I

    .line 172
    .line 173
    .line 174
    aput-object v14, v11, v10

    .line 175
    .line 176
    add-int/2addr v10, v7

    .line 177
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_1
    iget-object v10, v0, LB0/z;->e:Ly4/t;

    .line 182
    .line 183
    invoke-interface {v10}, Ly4/t;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    check-cast v10, LR0/w;

    .line 188
    .line 189
    iput-object v10, v1, LB0/O;->O:LR0/w;

    .line 190
    .line 191
    iget-object v11, v0, LB0/z;->d:Ly4/t;

    .line 192
    .line 193
    invoke-interface {v11}, Ly4/t;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    check-cast v11, LO0/x;

    .line 198
    .line 199
    iget-object v11, v0, LB0/z;->g:Ly4/t;

    .line 200
    .line 201
    invoke-interface {v11}, Ly4/t;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    move-object v13, v11

    .line 206
    check-cast v13, LS0/c;

    .line 207
    .line 208
    iput-object v13, v1, LB0/O;->Z:LS0/c;

    .line 209
    .line 210
    iget-boolean v11, v0, LB0/z;->m:Z

    .line 211
    .line 212
    iput-boolean v11, v1, LB0/O;->W:Z

    .line 213
    .line 214
    iget-object v12, v0, LB0/z;->n:LB0/I0;

    .line 215
    .line 216
    iget-wide v3, v0, LB0/z;->p:J

    .line 217
    .line 218
    iput-wide v3, v1, LB0/O;->a0:J

    .line 219
    .line 220
    iget-wide v3, v0, LB0/z;->q:J

    .line 221
    .line 222
    iput-wide v3, v1, LB0/O;->b0:J

    .line 223
    .line 224
    iget-wide v3, v0, LB0/z;->r:J

    .line 225
    .line 226
    iput-wide v3, v1, LB0/O;->c0:J

    .line 227
    .line 228
    iget-object v3, v0, LB0/z;->o:LB0/H0;

    .line 229
    .line 230
    iput-object v3, v1, LB0/O;->r0:LB0/H0;

    .line 231
    .line 232
    iget-object v3, v0, LB0/z;->i:Landroid/os/Looper;

    .line 233
    .line 234
    iput-object v3, v1, LB0/O;->Y:Landroid/os/Looper;

    .line 235
    .line 236
    iput-object v1, v1, LB0/O;->L:Lm0/Y;

    .line 237
    .line 238
    new-instance v4, Lx/e;

    .line 239
    .line 240
    new-instance v11, LB0/H;

    .line 241
    .line 242
    invoke-direct {v11, v1}, LB0/H;-><init>(LB0/O;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v4, v3, v15, v11}, Lx/e;-><init>(Landroid/os/Looper;Lp0/f;Lp0/v;)V

    .line 246
    .line 247
    .line 248
    iput-object v4, v1, LB0/O;->S:Lx/e;

    .line 249
    .line 250
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 251
    .line 252
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 253
    .line 254
    .line 255
    iput-object v4, v1, LB0/O;->T:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 256
    .line 257
    new-instance v11, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    iput-object v11, v1, LB0/O;->V:Ljava/util/ArrayList;

    .line 263
    .line 264
    new-instance v11, LO0/X;

    .line 265
    .line 266
    invoke-direct {v11}, LO0/X;-><init>()V

    .line 267
    .line 268
    .line 269
    iput-object v11, v1, LB0/O;->s0:LO0/X;

    .line 270
    .line 271
    new-instance v11, LR0/y;

    .line 272
    .line 273
    iget-object v5, v1, LB0/O;->M:[LB0/h;

    .line 274
    .line 275
    array-length v2, v5

    .line 276
    new-array v2, v2, [LB0/E0;

    .line 277
    .line 278
    array-length v5, v5

    .line 279
    new-array v5, v5, [LR0/t;

    .line 280
    .line 281
    sget-object v7, Lm0/m0;->b:Lm0/m0;

    .line 282
    .line 283
    invoke-direct {v11, v2, v5, v7, v14}, LR0/y;-><init>([LB0/E0;[LR0/t;Lm0/m0;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    iput-object v11, v1, LB0/O;->H:LR0/y;

    .line 287
    .line 288
    new-instance v2, Lm0/d0;

    .line 289
    .line 290
    invoke-direct {v2}, Lm0/d0;-><init>()V

    .line 291
    .line 292
    .line 293
    iput-object v2, v1, LB0/O;->U:Lm0/d0;

    .line 294
    .line 295
    new-instance v2, Lm0/q;

    .line 296
    .line 297
    invoke-direct {v2, v8}, Lm0/q;-><init>(I)V

    .line 298
    .line 299
    .line 300
    new-array v5, v6, [I

    .line 301
    .line 302
    fill-array-data v5, :array_0

    .line 303
    .line 304
    .line 305
    const/4 v7, 0x0

    .line 306
    :goto_2
    if-ge v7, v6, :cond_2

    .line 307
    .line 308
    aget v6, v5, v7

    .line 309
    .line 310
    invoke-virtual {v2, v6}, Lm0/q;->a(I)V

    .line 311
    .line 312
    .line 313
    const/4 v6, 0x1

    .line 314
    add-int/2addr v7, v6

    .line 315
    const/16 v6, 0x14

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    const/16 v5, 0x1d

    .line 322
    .line 323
    invoke-virtual {v2, v5}, Lm0/q;->a(I)V

    .line 324
    .line 325
    .line 326
    new-instance v5, Lm0/U;

    .line 327
    .line 328
    invoke-virtual {v2}, Lm0/q;->b()Lm0/r;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-direct {v5, v2}, Lm0/U;-><init>(Lm0/r;)V

    .line 333
    .line 334
    .line 335
    iput-object v5, v1, LB0/O;->I:Lm0/U;

    .line 336
    .line 337
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 338
    .line 339
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 340
    .line 341
    .line 342
    const/4 v6, 0x0

    .line 343
    :goto_3
    iget-object v7, v2, Lm0/r;->a:Landroid/util/SparseBooleanArray;

    .line 344
    .line 345
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    if-ge v6, v7, :cond_3

    .line 350
    .line 351
    invoke-virtual {v2, v6}, Lm0/r;->a(I)I

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    const/4 v14, 0x1

    .line 356
    xor-int/lit8 v17, v8, 0x1

    .line 357
    .line 358
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v7, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 362
    .line 363
    .line 364
    add-int/2addr v6, v14

    .line 365
    const/4 v14, 0x0

    .line 366
    goto :goto_3

    .line 367
    :cond_3
    const/4 v14, 0x1

    .line 368
    xor-int/lit8 v2, v8, 0x1

    .line 369
    .line 370
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 371
    .line 372
    .line 373
    const/4 v2, 0x4

    .line 374
    invoke-virtual {v5, v2, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 375
    .line 376
    .line 377
    xor-int/lit8 v6, v8, 0x1

    .line 378
    .line 379
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 380
    .line 381
    .line 382
    const/16 v6, 0xa

    .line 383
    .line 384
    invoke-virtual {v5, v6, v14}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 385
    .line 386
    .line 387
    new-instance v6, Lm0/U;

    .line 388
    .line 389
    xor-int/lit8 v7, v8, 0x1

    .line 390
    .line 391
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 392
    .line 393
    .line 394
    new-instance v7, Lm0/r;

    .line 395
    .line 396
    invoke-direct {v7, v5}, Lm0/r;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 397
    .line 398
    .line 399
    invoke-direct {v6, v7}, Lm0/U;-><init>(Lm0/r;)V

    .line 400
    .line 401
    .line 402
    iput-object v6, v1, LB0/O;->t0:Lm0/U;

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    invoke-virtual {v15, v3, v5}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    iput-object v6, v1, LB0/O;->P:Lp0/I;

    .line 410
    .line 411
    new-instance v6, LB0/H;

    .line 412
    .line 413
    invoke-direct {v6, v1}, LB0/H;-><init>(LB0/O;)V

    .line 414
    .line 415
    .line 416
    iput-object v6, v1, LB0/O;->Q:LB0/H;

    .line 417
    .line 418
    invoke-static {v11}, LB0/v0;->k(LR0/y;)LB0/v0;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    iput-object v7, v1, LB0/O;->N0:LB0/v0;

    .line 423
    .line 424
    iget-object v7, v1, LB0/O;->X:LC0/a;

    .line 425
    .line 426
    check-cast v7, LC0/A;

    .line 427
    .line 428
    invoke-virtual {v7, v1, v3}, LC0/A;->V(Lm0/Y;Landroid/os/Looper;)V

    .line 429
    .line 430
    .line 431
    new-instance v7, LC0/I;

    .line 432
    .line 433
    iget-object v14, v0, LB0/z;->x:Ljava/lang/String;

    .line 434
    .line 435
    invoke-direct {v7, v14}, LC0/I;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    new-instance v14, LB0/X;

    .line 439
    .line 440
    iget-object v5, v1, LB0/O;->K:Landroid/content/Context;

    .line 441
    .line 442
    iget-object v2, v1, LB0/O;->M:[LB0/h;

    .line 443
    .line 444
    iget-object v8, v1, LB0/O;->N:[LB0/h;

    .line 445
    .line 446
    move-object/from16 v17, v11

    .line 447
    .line 448
    iget-object v11, v0, LB0/z;->f:Ly4/t;

    .line 449
    .line 450
    invoke-interface {v11}, Ly4/t;->get()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    move-object/from16 v18, v11

    .line 455
    .line 456
    check-cast v18, LB0/b0;

    .line 457
    .line 458
    iget v11, v1, LB0/O;->k0:I

    .line 459
    .line 460
    move-object/from16 v31, v9

    .line 461
    .line 462
    iget-boolean v9, v1, LB0/O;->l0:Z

    .line 463
    .line 464
    move-object/from16 v32, v4

    .line 465
    .line 466
    iget-object v4, v1, LB0/O;->X:LC0/a;

    .line 467
    .line 468
    move-object/from16 v33, v7

    .line 469
    .line 470
    iget-object v7, v0, LB0/z;->s:LB0/k;

    .line 471
    .line 472
    move-object/from16 v28, v6

    .line 473
    .line 474
    move-object/from16 v23, v7

    .line 475
    .line 476
    iget-wide v6, v0, LB0/z;->t:J

    .line 477
    .line 478
    iget-object v0, v1, LB0/O;->e0:LB0/M;

    .line 479
    .line 480
    move/from16 v19, v11

    .line 481
    .line 482
    move-object v11, v14

    .line 483
    move-object/from16 v22, v12

    .line 484
    .line 485
    move-object v12, v5

    .line 486
    move-object v5, v13

    .line 487
    move-object v13, v2

    .line 488
    move-object v2, v14

    .line 489
    move-object v14, v8

    .line 490
    move-object v8, v15

    .line 491
    move-object v15, v10

    .line 492
    move-object/from16 v16, v17

    .line 493
    .line 494
    move-object/from16 v17, v18

    .line 495
    .line 496
    move-object/from16 v18, v5

    .line 497
    .line 498
    move/from16 v20, v9

    .line 499
    .line 500
    move-object/from16 v21, v4

    .line 501
    .line 502
    move-wide/from16 v24, v6

    .line 503
    .line 504
    move-object/from16 v26, v3

    .line 505
    .line 506
    move-object/from16 v27, v8

    .line 507
    .line 508
    move-object/from16 v29, v33

    .line 509
    .line 510
    move-object/from16 v30, v0

    .line 511
    .line 512
    invoke-direct/range {v11 .. v30}, LB0/X;-><init>(Landroid/content/Context;[LB0/h;[LB0/h;LR0/w;LR0/y;LB0/b0;LS0/c;IZLC0/a;LB0/I0;LB0/k;JLandroid/os/Looper;Lp0/G;LB0/H;LC0/I;LB0/M;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, v2, LB0/X;->N:Lp0/I;

    .line 516
    .line 517
    iput-object v2, v1, LB0/O;->R:LB0/X;

    .line 518
    .line 519
    iget-object v4, v2, LB0/X;->P:Landroid/os/Looper;

    .line 520
    .line 521
    const/high16 v6, 0x3f800000    # 1.0f

    .line 522
    .line 523
    iput v6, v1, LB0/O;->E0:F

    .line 524
    .line 525
    const/4 v6, 0x0

    .line 526
    iput v6, v1, LB0/O;->k0:I

    .line 527
    .line 528
    sget-object v6, Lm0/L;->I:Lm0/L;

    .line 529
    .line 530
    iput-object v6, v1, LB0/O;->u0:Lm0/L;

    .line 531
    .line 532
    iput-object v6, v1, LB0/O;->M0:Lm0/L;

    .line 533
    .line 534
    const/4 v6, -0x1

    .line 535
    iput v6, v1, LB0/O;->O0:I

    .line 536
    .line 537
    sget-object v7, Lo0/c;->c:Lo0/c;

    .line 538
    .line 539
    iput-object v7, v1, LB0/O;->G0:Lo0/c;

    .line 540
    .line 541
    const/4 v7, 0x1

    .line 542
    iput-boolean v7, v1, LB0/O;->H0:Z

    .line 543
    .line 544
    iget-object v7, v1, LB0/O;->X:LC0/a;

    .line 545
    .line 546
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    iget-object v9, v1, LB0/O;->S:Lx/e;

    .line 550
    .line 551
    invoke-virtual {v9, v7}, Lx/e;->a(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    new-instance v7, Landroid/os/Handler;

    .line 555
    .line 556
    invoke-direct {v7, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    .line 558
    .line 559
    iget-object v9, v1, LB0/O;->X:LC0/a;

    .line 560
    .line 561
    move-object v13, v5

    .line 562
    check-cast v13, LS0/f;

    .line 563
    .line 564
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    iget-object v5, v13, LS0/f;->c:LD0/U;

    .line 571
    .line 572
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5, v9}, LD0/U;->K(LC0/a;)V

    .line 576
    .line 577
    .line 578
    iget-object v5, v5, LD0/U;->H:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 581
    .line 582
    new-instance v10, LS0/b;

    .line 583
    .line 584
    invoke-direct {v10, v7, v9}, LS0/b;-><init>(Landroid/os/Handler;LC0/a;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    iget-object v5, v1, LB0/O;->d0:LB0/L;

    .line 591
    .line 592
    move-object/from16 v7, v32

    .line 593
    .line 594
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 598
    .line 599
    const/16 v7, 0x1f

    .line 600
    .line 601
    if-lt v5, v7, :cond_4

    .line 602
    .line 603
    iget-object v5, v1, LB0/O;->K:Landroid/content/Context;

    .line 604
    .line 605
    move-object/from16 v7, p1

    .line 606
    .line 607
    iget-boolean v9, v7, LB0/z;->v:Z

    .line 608
    .line 609
    iget-object v2, v2, LB0/X;->P:Landroid/os/Looper;

    .line 610
    .line 611
    const/4 v10, 0x0

    .line 612
    invoke-virtual {v8, v2, v10}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    new-instance v10, LB0/J;

    .line 617
    .line 618
    move-object/from16 v11, v33

    .line 619
    .line 620
    invoke-direct {v10, v5, v1, v11, v9}, LB0/J;-><init>(Landroid/content/Context;LB0/O;LC0/I;Z)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v10}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 624
    .line 625
    .line 626
    goto :goto_4

    .line 627
    :cond_4
    move-object/from16 v7, p1

    .line 628
    .line 629
    :goto_4
    new-instance v2, Lp0/e;

    .line 630
    .line 631
    const/4 v5, 0x0

    .line 632
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 633
    .line 634
    .line 635
    move-result-object v12

    .line 636
    new-instance v5, LB0/H;

    .line 637
    .line 638
    invoke-direct {v5, v1}, LB0/H;-><init>(LB0/O;)V

    .line 639
    .line 640
    .line 641
    move-object v11, v2

    .line 642
    move-object v13, v4

    .line 643
    move-object v14, v3

    .line 644
    move-object v15, v8

    .line 645
    move-object/from16 v16, v5

    .line 646
    .line 647
    invoke-direct/range {v11 .. v16}, Lp0/e;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lp0/G;Lp0/d;)V

    .line 648
    .line 649
    .line 650
    iput-object v2, v1, LB0/O;->j0:Lp0/e;

    .line 651
    .line 652
    new-instance v3, La/b;

    .line 653
    .line 654
    const/16 v5, 0xc

    .line 655
    .line 656
    invoke-direct {v3, v1, v5}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v3}, Lp0/e;->a(Ljava/lang/Runnable;)V

    .line 660
    .line 661
    .line 662
    new-instance v2, LB0/c;

    .line 663
    .line 664
    iget-object v12, v7, LB0/z;->a:Landroid/content/Context;

    .line 665
    .line 666
    iget-object v14, v7, LB0/z;->i:Landroid/os/Looper;

    .line 667
    .line 668
    iget-object v15, v1, LB0/O;->d0:LB0/L;

    .line 669
    .line 670
    move-object v11, v2

    .line 671
    move-object v13, v4

    .line 672
    move-object/from16 v16, v8

    .line 673
    .line 674
    invoke-direct/range {v11 .. v16}, LB0/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;LB0/L;Lp0/G;)V

    .line 675
    .line 676
    .line 677
    iput-object v2, v1, LB0/O;->f0:LB0/c;

    .line 678
    .line 679
    const/4 v3, 0x0

    .line 680
    invoke-virtual {v2, v3}, LB0/c;->m(Z)V

    .line 681
    .line 682
    .line 683
    new-instance v2, Ll/e1;

    .line 684
    .line 685
    move-object/from16 v3, v31

    .line 686
    .line 687
    const/4 v5, 0x1

    .line 688
    invoke-direct {v2, v3, v4, v8, v5}, Ll/e1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lp0/G;I)V

    .line 689
    .line 690
    .line 691
    iput-object v2, v1, LB0/O;->g0:Ll/e1;

    .line 692
    .line 693
    invoke-virtual {v2}, Ll/e1;->f()V

    .line 694
    .line 695
    .line 696
    new-instance v2, Ll/e1;

    .line 697
    .line 698
    const/4 v5, 0x2

    .line 699
    invoke-direct {v2, v3, v4, v8, v5}, Ll/e1;-><init>(Landroid/content/Context;Landroid/os/Looper;Lp0/G;I)V

    .line 700
    .line 701
    .line 702
    iput-object v2, v1, LB0/O;->h0:Ll/e1;

    .line 703
    .line 704
    invoke-virtual {v2}, Ll/e1;->f()V

    .line 705
    .line 706
    .line 707
    sget v2, Lm0/l;->e:I

    .line 708
    .line 709
    sget-object v2, Lm0/w0;->d:Lm0/w0;

    .line 710
    .line 711
    iput-object v2, v1, LB0/O;->L0:Lm0/w0;

    .line 712
    .line 713
    sget-object v2, Lp0/F;->c:Lp0/F;

    .line 714
    .line 715
    iput-object v2, v1, LB0/O;->C0:Lp0/F;

    .line 716
    .line 717
    iget-object v2, v1, LB0/O;->r0:LB0/H0;

    .line 718
    .line 719
    const/16 v3, 0x26

    .line 720
    .line 721
    invoke-virtual {v0, v3, v2}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v2}, Lp0/H;->b()V

    .line 726
    .line 727
    .line 728
    iget-object v2, v1, LB0/O;->D0:Lm0/d;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 738
    .line 739
    const/4 v4, 0x0

    .line 740
    const/16 v5, 0x1f

    .line 741
    .line 742
    invoke-virtual {v0, v5, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    iput-object v0, v3, Lp0/H;->a:Landroid/os/Message;

    .line 747
    .line 748
    invoke-virtual {v3}, Lp0/H;->b()V

    .line 749
    .line 750
    .line 751
    iget-object v0, v1, LB0/O;->D0:Lm0/d;

    .line 752
    .line 753
    const/4 v2, 0x1

    .line 754
    const/4 v3, 0x3

    .line 755
    invoke-virtual {v1, v2, v0, v3}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 756
    .line 757
    .line 758
    iget v0, v1, LB0/O;->B0:I

    .line 759
    .line 760
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const/4 v2, 0x4

    .line 765
    const/4 v3, 0x2

    .line 766
    invoke-virtual {v1, v3, v0, v2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 767
    .line 768
    .line 769
    const/4 v0, 0x0

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    const/4 v2, 0x5

    .line 775
    invoke-virtual {v1, v3, v0, v2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 776
    .line 777
    .line 778
    iget-boolean v0, v1, LB0/O;->F0:Z

    .line 779
    .line 780
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    const/16 v2, 0x9

    .line 785
    .line 786
    const/4 v3, 0x1

    .line 787
    invoke-virtual {v1, v3, v0, v2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 788
    .line 789
    .line 790
    iget-object v0, v1, LB0/O;->e0:LB0/M;

    .line 791
    .line 792
    const/4 v2, 0x6

    .line 793
    const/16 v3, 0x8

    .line 794
    .line 795
    invoke-virtual {v1, v2, v0, v3}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 796
    .line 797
    .line 798
    iget v0, v1, LB0/O;->J0:I

    .line 799
    .line 800
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    const/16 v2, 0x10

    .line 805
    .line 806
    invoke-virtual {v1, v6, v0, v2}, LB0/O;->O(ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    .line 808
    .line 809
    iget-object v0, v1, LB0/O;->J:Lp0/i;

    .line 810
    .line 811
    invoke-virtual {v0}, Lp0/i;->f()Z

    .line 812
    .line 813
    .line 814
    return-void

    .line 815
    :goto_5
    iget-object v2, v1, LB0/O;->J:Lp0/i;

    .line 816
    .line 817
    invoke-virtual {v2}, Lp0/i;->f()Z

    .line 818
    .line 819
    .line 820
    throw v0

    .line 821
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static D(LB0/v0;)J
    .locals 7

    .line 1
    new-instance v0, Lm0/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lm0/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lm0/d0;

    .line 7
    .line 8
    invoke-direct {v1}, Lm0/d0;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, LB0/v0;->a:Lm0/f0;

    .line 12
    .line 13
    iget-object v3, p0, LB0/v0;->b:LO0/y;

    .line 14
    .line 15
    iget-object v3, v3, LO0/y;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 18
    .line 19
    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v4, p0, LB0/v0;->c:J

    .line 26
    .line 27
    cmp-long v6, v4, v2

    .line 28
    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    iget v1, v1, Lm0/d0;->c:I

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    iget-object p0, p0, LB0/v0;->a:Lm0/f0;

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget-wide v0, p0, Lm0/e0;->l:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v0, v1, Lm0/d0;->e:J

    .line 45
    .line 46
    add-long/2addr v0, v4

    .line 47
    :goto_0
    return-wide v0
.end method

.method public static G(LB0/v0;I)LB0/v0;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LB0/v0;->h(I)LB0/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, LB0/v0;->b(Z)LB0/v0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final A()J
    .locals 4

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LB0/O;->F()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 11
    .line 12
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 13
    .line 14
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 15
    .line 16
    iget-object v2, v1, LO0/y;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v3, p0, LB0/O;->U:Lm0/d0;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 21
    .line 22
    .line 23
    iget v0, v1, LO0/y;->b:I

    .line 24
    .line 25
    iget v1, v1, LO0/y;->c:I

    .line 26
    .line 27
    invoke-virtual {v3, v0, v1}, Lm0/d0;->a(II)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lm0/f;->a()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget-boolean v0, v0, LB0/v0;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public final C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget v0, v0, LB0/v0;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public final E()Lm0/k0;
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->O:LR0/w;

    .line 5
    .line 6
    check-cast v0, LR0/q;

    .line 7
    .line 8
    invoke-virtual {v0}, LR0/q;->h()LR0/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v1, p0, LB0/O;->p0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, LR0/j;

    .line 20
    .line 21
    invoke-direct {v1, v0}, LR0/j;-><init>(LR0/k;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LB0/O;->q0:Lz4/L;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, LR0/j;->k(Lz4/L;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, LR0/k;

    .line 30
    .line 31
    invoke-direct {v0, v1}, LR0/k;-><init>(LR0/j;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 7
    .line 8
    invoke-virtual {v0}, LO0/y;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final H(LB0/v0;Lm0/f0;Landroid/util/Pair;)LB0/v0;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lm0/f0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 21
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    iget-object v6, v3, LB0/v0;->a:Lm0/f0;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p1}, LB0/O;->q(LB0/v0;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    invoke-virtual/range {p1 .. p2}, LB0/v0;->j(Lm0/f0;)LB0/v0;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual/range {p2 .. p2}, Lm0/f0;->q()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    sget-object v1, LB0/v0;->u:LO0/y;

    .line 43
    .line 44
    iget-wide v2, v0, LB0/O;->P0:J

    .line 45
    .line 46
    invoke-static {v2, v3}, Lp0/M;->R(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v15

    .line 50
    sget-object v19, LO0/Z;->d:LO0/Z;

    .line 51
    .line 52
    iget-object v2, v0, LB0/O;->H:LR0/y;

    .line 53
    .line 54
    sget-object v21, Lz4/d0;->K:Lz4/d0;

    .line 55
    .line 56
    const-wide/16 v17, 0x0

    .line 57
    .line 58
    move-object v10, v1

    .line 59
    move-wide v11, v15

    .line 60
    move-wide v13, v15

    .line 61
    move-object/from16 v20, v2

    .line 62
    .line 63
    invoke-virtual/range {v9 .. v21}, LB0/v0;->d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-wide v2, v1, LB0/v0;->s:J

    .line 72
    .line 73
    iput-wide v2, v1, LB0/v0;->q:J

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_2
    iget-object v3, v9, LB0/v0;->b:LO0/y;

    .line 77
    .line 78
    iget-object v3, v3, LO0/y;->a:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    xor-int/2addr v10, v5

    .line 87
    if-eqz v10, :cond_3

    .line 88
    .line 89
    new-instance v11, LO0/y;

    .line 90
    .line 91
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-direct {v11, v12}, LO0/y;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    move-object v15, v11

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    iget-object v11, v9, LB0/v0;->b:LO0/y;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    invoke-static {v7, v8}, Lp0/M;->R(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v7

    .line 113
    invoke-virtual {v6}, Lm0/f0;->q()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    iget-object v2, v0, LB0/O;->U:Lm0/d0;

    .line 120
    .line 121
    invoke-virtual {v6, v3, v2}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-wide v2, v2, Lm0/d0;->e:J

    .line 126
    .line 127
    sub-long/2addr v7, v2

    .line 128
    :cond_4
    if-nez v10, :cond_5

    .line 129
    .line 130
    cmp-long v2, v13, v7

    .line 131
    .line 132
    if-gez v2, :cond_6

    .line 133
    .line 134
    :cond_5
    move-wide v7, v13

    .line 135
    move-object v1, v15

    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_6
    if-nez v2, :cond_9

    .line 139
    .line 140
    iget-object v2, v9, LB0/v0;->k:LO0/y;

    .line 141
    .line 142
    iget-object v2, v2, LO0/y;->a:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v3, -0x1

    .line 149
    if-eq v2, v3, :cond_7

    .line 150
    .line 151
    iget-object v3, v0, LB0/O;->U:Lm0/d0;

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3, v4}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget v2, v2, Lm0/d0;->c:I

    .line 158
    .line 159
    iget-object v3, v15, LO0/y;->a:Ljava/lang/Object;

    .line 160
    .line 161
    iget-object v4, v0, LB0/O;->U:Lm0/d0;

    .line 162
    .line 163
    invoke-virtual {v1, v3, v4}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget v3, v3, Lm0/d0;->c:I

    .line 168
    .line 169
    if-eq v2, v3, :cond_e

    .line 170
    .line 171
    :cond_7
    iget-object v2, v15, LO0/y;->a:Ljava/lang/Object;

    .line 172
    .line 173
    iget-object v3, v0, LB0/O;->U:Lm0/d0;

    .line 174
    .line 175
    invoke-virtual {v1, v2, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v15}, LO0/y;->b()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_8

    .line 183
    .line 184
    iget-object v1, v0, LB0/O;->U:Lm0/d0;

    .line 185
    .line 186
    iget v2, v15, LO0/y;->b:I

    .line 187
    .line 188
    iget v3, v15, LO0/y;->c:I

    .line 189
    .line 190
    invoke-virtual {v1, v2, v3}, Lm0/d0;->a(II)J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    goto :goto_4

    .line 195
    :cond_8
    iget-object v1, v0, LB0/O;->U:Lm0/d0;

    .line 196
    .line 197
    iget-wide v1, v1, Lm0/d0;->d:J

    .line 198
    .line 199
    :goto_4
    iget-wide v11, v9, LB0/v0;->s:J

    .line 200
    .line 201
    iget-wide v13, v9, LB0/v0;->s:J

    .line 202
    .line 203
    iget-wide v3, v9, LB0/v0;->d:J

    .line 204
    .line 205
    iget-wide v5, v9, LB0/v0;->s:J

    .line 206
    .line 207
    sub-long v17, v1, v5

    .line 208
    .line 209
    iget-object v5, v9, LB0/v0;->h:LO0/Z;

    .line 210
    .line 211
    iget-object v6, v9, LB0/v0;->i:LR0/y;

    .line 212
    .line 213
    iget-object v7, v9, LB0/v0;->j:Ljava/util/List;

    .line 214
    .line 215
    move-object v10, v15

    .line 216
    move-object v8, v15

    .line 217
    move-wide v15, v3

    .line 218
    move-object/from16 v19, v5

    .line 219
    .line 220
    move-object/from16 v20, v6

    .line 221
    .line 222
    move-object/from16 v21, v7

    .line 223
    .line 224
    invoke-virtual/range {v9 .. v21}, LB0/v0;->d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3, v8}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iput-wide v1, v9, LB0/v0;->q:J

    .line 233
    .line 234
    goto/16 :goto_c

    .line 235
    .line 236
    :cond_9
    move-object v1, v15

    .line 237
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    xor-int/2addr v2, v5

    .line 242
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 243
    .line 244
    .line 245
    iget-wide v2, v9, LB0/v0;->r:J

    .line 246
    .line 247
    sub-long v4, v13, v7

    .line 248
    .line 249
    sub-long/2addr v2, v4

    .line 250
    const-wide/16 v4, 0x0

    .line 251
    .line 252
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 253
    .line 254
    .line 255
    move-result-wide v17

    .line 256
    iget-wide v2, v9, LB0/v0;->q:J

    .line 257
    .line 258
    iget-object v4, v9, LB0/v0;->k:LO0/y;

    .line 259
    .line 260
    iget-object v5, v9, LB0/v0;->b:LO0/y;

    .line 261
    .line 262
    invoke-virtual {v4, v5}, LO0/y;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_a

    .line 267
    .line 268
    add-long v2, v13, v17

    .line 269
    .line 270
    :cond_a
    iget-object v4, v9, LB0/v0;->h:LO0/Z;

    .line 271
    .line 272
    iget-object v5, v9, LB0/v0;->i:LR0/y;

    .line 273
    .line 274
    iget-object v6, v9, LB0/v0;->j:Ljava/util/List;

    .line 275
    .line 276
    move-object v10, v1

    .line 277
    move-wide v11, v13

    .line 278
    move-wide v7, v13

    .line 279
    move-wide v15, v7

    .line 280
    move-object/from16 v19, v4

    .line 281
    .line 282
    move-object/from16 v20, v5

    .line 283
    .line 284
    move-object/from16 v21, v6

    .line 285
    .line 286
    invoke-virtual/range {v9 .. v21}, LB0/v0;->d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    iput-wide v2, v9, LB0/v0;->q:J

    .line 291
    .line 292
    goto :goto_c

    .line 293
    :goto_5
    invoke-virtual {v1}, LO0/y;->b()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    xor-int/2addr v2, v5

    .line 298
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 299
    .line 300
    .line 301
    if-eqz v10, :cond_b

    .line 302
    .line 303
    sget-object v2, LO0/Z;->d:LO0/Z;

    .line 304
    .line 305
    :goto_6
    move-object/from16 v19, v2

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_b
    iget-object v2, v9, LB0/v0;->h:LO0/Z;

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :goto_7
    if-eqz v10, :cond_c

    .line 312
    .line 313
    iget-object v2, v0, LB0/O;->H:LR0/y;

    .line 314
    .line 315
    :goto_8
    move-object/from16 v20, v2

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_c
    iget-object v2, v9, LB0/v0;->i:LR0/y;

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :goto_9
    if-eqz v10, :cond_d

    .line 322
    .line 323
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 324
    .line 325
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 326
    .line 327
    :goto_a
    move-object/from16 v21, v2

    .line 328
    .line 329
    goto :goto_b

    .line 330
    :cond_d
    iget-object v2, v9, LB0/v0;->j:Ljava/util/List;

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :goto_b
    const-wide/16 v17, 0x0

    .line 334
    .line 335
    move-object v10, v1

    .line 336
    move-wide v11, v7

    .line 337
    move-wide v13, v7

    .line 338
    move-wide v15, v7

    .line 339
    invoke-virtual/range {v9 .. v21}, LB0/v0;->d(LO0/y;JJJJLO0/Z;LR0/y;Ljava/util/List;)LB0/v0;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2, v1}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    iput-wide v7, v9, LB0/v0;->q:J

    .line 348
    .line 349
    :cond_e
    :goto_c
    return-object v9
.end method

.method public final I(Lm0/f0;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lm0/f0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput p2, p0, LB0/O;->O0:I

    .line 10
    .line 11
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v0, p3, p1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move-wide p3, v1

    .line 21
    :cond_0
    iput-wide p3, p0, LB0/O;->P0:J

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_1
    const/4 v0, -0x1

    .line 26
    if-eq p2, v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lm0/f0;->p()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lt p2, v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    move v3, p2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    :goto_1
    iget-boolean p2, p0, LB0/O;->l0:Z

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lm0/f0;->a(Z)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object p3, p0, Lm0/f;->G:Lm0/e0;

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3, v1, v2}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    iget-wide p3, p3, Lm0/e0;->l:J

    .line 50
    .line 51
    invoke-static {p3, p4}, Lp0/M;->e0(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    invoke-static {p3, p4}, Lp0/M;->R(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iget-object v1, p0, Lm0/f;->G:Lm0/e0;

    .line 61
    .line 62
    iget-object v2, p0, LB0/O;->U:Lm0/d0;

    .line 63
    .line 64
    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public final J(II)V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/O;->C0:Lp0/F;

    .line 2
    .line 3
    iget v1, v0, Lp0/F;->a:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lp0/F;->b:I

    .line 8
    .line 9
    if-eq p2, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lp0/F;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lp0/F;-><init>(II)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LB0/O;->C0:Lp0/F;

    .line 17
    .line 18
    new-instance v0, LB0/F;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, LB0/F;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, LB0/O;->S:Lx/e;

    .line 24
    .line 25
    const/16 v2, 0x18

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Lx/e;->l(ILp0/u;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lp0/F;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2}, Lp0/F;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    const/16 p2, 0xe

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, p2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final K()V
    .locals 12

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget v1, v0, LB0/v0;->e:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, LB0/v0;->f(LB0/w;)LB0/v0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 18
    .line 19
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {v0, v1}, LB0/O;->G(LB0/v0;I)LB0/v0;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v0, p0, LB0/O;->m0:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    iput v0, p0, LB0/O;->m0:I

    .line 36
    .line 37
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 38
    .line 39
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 49
    .line 50
    const/16 v2, 0x1d

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, v1, Lp0/H;->a:Landroid/os/Message;

    .line 57
    .line 58
    invoke-virtual {v1}, Lp0/H;->b()V

    .line 59
    .line 60
    .line 61
    const/4 v7, 0x5

    .line 62
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v10, -0x1

    .line 70
    const/4 v11, 0x0

    .line 71
    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v11}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final L()V
    .locals 7

    .line 1
    const-string v0, "ExoPlayerImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Release "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " [AndroidXMedia3/1.8.0] ["

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "] ["

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lm0/J;->a:Ljava/util/HashSet;

    .line 37
    .line 38
    const-class v2, Lm0/J;

    .line 39
    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    sget-object v3, Lm0/J;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit v2

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "]"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, LB0/O;->f0:LB0/c;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, LB0/c;->m(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, LB0/O;->g0:Ll/e1;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ll/e1;->g(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, LB0/O;->h0:Ll/e1;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ll/e1;->g(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 79
    .line 80
    iget-boolean v1, v0, LB0/X;->o0:Z

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    iget-object v1, v0, LB0/X;->P:Landroid/os/Looper;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iput-boolean v2, v0, LB0/X;->o0:Z

    .line 99
    .line 100
    new-instance v1, Lp0/i;

    .line 101
    .line 102
    iget-object v3, v0, LB0/X;->W:Lp0/f;

    .line 103
    .line 104
    invoke-direct {v1, v3}, Lp0/i;-><init>(Lp0/f;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v0, LB0/X;->N:Lp0/I;

    .line 108
    .line 109
    const/4 v4, 0x7

    .line 110
    invoke-virtual {v3, v4, v1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lp0/H;->b()V

    .line 115
    .line 116
    .line 117
    iget-wide v5, v0, LB0/X;->b0:J

    .line 118
    .line 119
    invoke-virtual {v1, v5, v6}, Lp0/i;->d(J)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    iget-object v0, p0, LB0/O;->S:Lx/e;

    .line 126
    .line 127
    new-instance v1, LN/i;

    .line 128
    .line 129
    invoke-direct {v1, v4}, LN/i;-><init>(I)V

    .line 130
    .line 131
    .line 132
    const/16 v3, 0xa

    .line 133
    .line 134
    invoke-virtual {v0, v3, v1}, Lx/e;->l(ILp0/u;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, LB0/O;->S:Lx/e;

    .line 138
    .line 139
    invoke-virtual {v0}, Lx/e;->k()V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, LB0/O;->P:Lp0/I;

    .line 143
    .line 144
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, LB0/O;->Z:LS0/c;

    .line 151
    .line 152
    iget-object v3, p0, LB0/O;->X:LC0/a;

    .line 153
    .line 154
    check-cast v0, LS0/f;

    .line 155
    .line 156
    iget-object v0, v0, LS0/f;->c:LD0/U;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, LD0/U;->K(LC0/a;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 162
    .line 163
    iget-boolean v3, v0, LB0/v0;->p:Z

    .line 164
    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    invoke-virtual {v0}, LB0/v0;->a()LB0/v0;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 172
    .line 173
    :cond_2
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 174
    .line 175
    invoke-static {v0, v2}, LB0/O;->G(LB0/v0;I)LB0/v0;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 180
    .line 181
    iget-object v3, v0, LB0/v0;->b:LO0/y;

    .line 182
    .line 183
    invoke-virtual {v0, v3}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 188
    .line 189
    iget-wide v3, v0, LB0/v0;->s:J

    .line 190
    .line 191
    iput-wide v3, v0, LB0/v0;->q:J

    .line 192
    .line 193
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 194
    .line 195
    const-wide/16 v3, 0x0

    .line 196
    .line 197
    iput-wide v3, v0, LB0/v0;->r:J

    .line 198
    .line 199
    iget-object v0, p0, LB0/O;->X:LC0/a;

    .line 200
    .line 201
    check-cast v0, LC0/A;

    .line 202
    .line 203
    iget-object v3, v0, LC0/A;->N:Lp0/I;

    .line 204
    .line 205
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    new-instance v4, La/b;

    .line 209
    .line 210
    const/16 v5, 0xe

    .line 211
    .line 212
    invoke-direct {v4, v0, v5}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, LB0/O;->N()V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, LB0/O;->w0:Landroid/view/Surface;

    .line 222
    .line 223
    if-eqz v0, :cond_3

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 226
    .line 227
    .line 228
    iput-object v1, p0, LB0/O;->w0:Landroid/view/Surface;

    .line 229
    .line 230
    :cond_3
    sget-object v0, Lo0/c;->c:Lo0/c;

    .line 231
    .line 232
    iput-object v0, p0, LB0/O;->G0:Lo0/c;

    .line 233
    .line 234
    iput-boolean v2, p0, LB0/O;->K0:Z

    .line 235
    .line 236
    return-void

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    monitor-exit v2

    .line 239
    throw v0
.end method

.method public final M(Lm0/W;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LB0/O;->S:Lx/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Lx/e;->m()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 13
    .line 14
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lp0/w;

    .line 31
    .line 32
    iget-object v4, v3, Lp0/w;->a:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v4, v0, Lx/e;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Lp0/v;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    iput-boolean v5, v3, Lp0/w;->d:Z

    .line 46
    .line 47
    iget-boolean v5, v3, Lp0/w;->c:Z

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    iput-boolean v5, v3, Lp0/w;->c:Z

    .line 53
    .line 54
    iget-object v5, v3, Lp0/w;->b:Lm0/q;

    .line 55
    .line 56
    invoke-virtual {v5}, Lm0/q;->b()Lm0/r;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    iget-object v6, v3, Lp0/w;->a:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {v4, v6, v5}, Lp0/v;->c(Ljava/lang/Object;Lm0/r;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public final N()V
    .locals 4

    .line 1
    iget-object v0, p0, LB0/O;->y0:LV0/k;

    .line 2
    .line 3
    iget-object v1, p0, LB0/O;->d0:LB0/L;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, LB0/O;->e0:LB0/M;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, LB0/O;->p(LB0/y0;)LB0/z0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v3, v0, LB0/z0;->f:Z

    .line 15
    .line 16
    xor-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x2710

    .line 22
    .line 23
    iput v3, v0, LB0/z0;->c:I

    .line 24
    .line 25
    iget-boolean v3, v0, LB0/z0;->f:Z

    .line 26
    .line 27
    xor-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, LB0/z0;->d:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0}, LB0/z0;->b()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LB0/O;->y0:LV0/k;

    .line 38
    .line 39
    iget-object v0, v0, LV0/k;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, LB0/O;->y0:LV0/k;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, LB0/O;->A0:Landroid/view/TextureView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    const-string v0, "ExoPlayerImpl"

    .line 57
    .line 58
    const-string v3, "SurfaceTextureListener already unset or replaced."

    .line 59
    .line 60
    invoke-static {v0, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, LB0/O;->A0:Landroid/view/TextureView;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iput-object v2, p0, LB0/O;->A0:Landroid/view/TextureView;

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    :cond_3
    return-void
.end method

.method public final O(ILjava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/O;->M:[LB0/h;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const/4 v4, -0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    if-eq p1, v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5}, LB0/h;->getTrackType()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v4, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, v5}, LB0/O;->p(LB0/y0;)LB0/z0;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-boolean v5, v4, LB0/z0;->f:Z

    .line 24
    .line 25
    xor-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 28
    .line 29
    .line 30
    iput p3, v4, LB0/z0;->c:I

    .line 31
    .line 32
    iget-boolean v5, v4, LB0/z0;->f:Z

    .line 33
    .line 34
    xor-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 37
    .line 38
    .line 39
    iput-object p2, v4, LB0/z0;->d:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v4}, LB0/z0;->b()V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, LB0/O;->N:[LB0/h;

    .line 48
    .line 49
    array-length v1, v0

    .line 50
    :goto_1
    if-ge v2, v1, :cond_5

    .line 51
    .line 52
    aget-object v3, v0, v2

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    if-eq p1, v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, LB0/h;->getTrackType()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ne v5, p1, :cond_4

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v3}, LB0/O;->p(LB0/y0;)LB0/z0;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-boolean v5, v3, LB0/z0;->f:Z

    .line 69
    .line 70
    xor-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 73
    .line 74
    .line 75
    iput p3, v3, LB0/z0;->c:I

    .line 76
    .line 77
    iget-boolean v5, v3, LB0/z0;->f:Z

    .line 78
    .line 79
    xor-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 82
    .line 83
    .line 84
    iput-object p2, v3, LB0/z0;->d:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {v3}, LB0/z0;->b()V

    .line 87
    .line 88
    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    return-void
.end method

.method public final P()V
    .locals 7

    .line 1
    sget-object v0, Lm0/d;->b:Lm0/d;

    .line 2
    .line 3
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, LB0/O;->K0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, LB0/O;->D0:Lm0/d;

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    iget-object v3, p0, LB0/O;->S:Lx/e;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iput-object v0, p0, LB0/O;->D0:Lm0/d;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p0, v2, v0, v1}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, LB0/x;

    .line 29
    .line 30
    const/4 v4, 0x7

    .line 31
    invoke-direct {v1, v0, v4}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x14

    .line 35
    .line 36
    invoke-virtual {v3, v0, v1}, Lx/e;->j(ILp0/u;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, LB0/O;->D0:Lm0/d;

    .line 40
    .line 41
    iget-object v1, p0, LB0/O;->R:LB0/X;

    .line 42
    .line 43
    iget-object v1, v1, LB0/X;->N:Lp0/I;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/4 v5, 0x0

    .line 53
    iget-object v1, v1, Lp0/I;->a:Landroid/os/Handler;

    .line 54
    .line 55
    const/16 v6, 0x1f

    .line 56
    .line 57
    invoke-virtual {v1, v6, v2, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, v4, Lp0/H;->a:Landroid/os/Message;

    .line 62
    .line 63
    invoke-virtual {v4}, Lp0/H;->b()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lx/e;->g()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final Q(LO0/a;)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, LB0/O;->c0()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual/range {p0 .. p0}, LB0/O;->c0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, LB0/O;->c0()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v9, LB0/O;->N0:LB0/v0;

    .line 17
    .line 18
    invoke-virtual {v9, v1}, LB0/O;->z(LB0/v0;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, LB0/O;->v()J

    .line 22
    .line 23
    .line 24
    iget v1, v9, LB0/O;->m0:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    add-int/2addr v1, v2

    .line 28
    iput v1, v9, LB0/O;->m0:I

    .line 29
    .line 30
    iget-object v1, v9, LB0/O;->V:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-nez v3, :cond_4

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/lit8 v5, v3, -0x1

    .line 44
    .line 45
    :goto_0
    if-ltz v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v5, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v5, v9, LB0/O;->s0:LO0/X;

    .line 54
    .line 55
    iget-object v6, v5, LO0/X;->b:[I

    .line 56
    .line 57
    array-length v7, v6

    .line 58
    sub-int/2addr v7, v3

    .line 59
    new-array v7, v7, [I

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_1
    array-length v11, v6

    .line 64
    if-ge v8, v11, :cond_3

    .line 65
    .line 66
    aget v11, v6, v8

    .line 67
    .line 68
    if-ltz v11, :cond_1

    .line 69
    .line 70
    if-ge v11, v3, :cond_1

    .line 71
    .line 72
    add-int/lit8 v10, v10, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    sub-int v12, v8, v10

    .line 76
    .line 77
    if-ltz v11, :cond_2

    .line 78
    .line 79
    sub-int/2addr v11, v3

    .line 80
    :cond_2
    aput v11, v7, v12

    .line 81
    .line 82
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance v3, LO0/X;

    .line 86
    .line 87
    new-instance v6, Ljava/util/Random;

    .line 88
    .line 89
    iget-object v5, v5, LO0/X;->a:Ljava/util/Random;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    invoke-direct {v6, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v7, v6}, LO0/X;-><init>([ILjava/util/Random;)V

    .line 99
    .line 100
    .line 101
    iput-object v3, v9, LB0/O;->s0:LO0/X;

    .line 102
    .line 103
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-ge v3, v5, :cond_5

    .line 114
    .line 115
    new-instance v5, LB0/s0;

    .line 116
    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, LO0/a;

    .line 122
    .line 123
    iget-boolean v7, v9, LB0/O;->W:Z

    .line 124
    .line 125
    invoke-direct {v5, v6, v7}, LB0/s0;-><init>(LO0/a;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v6, LB0/N;

    .line 132
    .line 133
    iget-object v7, v5, LB0/s0;->b:Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v5, v5, LB0/s0;->a:LO0/t;

    .line 136
    .line 137
    invoke-direct {v6, v7, v5}, LB0/N;-><init>(Ljava/lang/Object;LO0/t;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    iget-object v0, v9, LB0/O;->s0:LO0/X;

    .line 147
    .line 148
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v0, v3}, LO0/X;->a(I)LO0/X;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v9, LB0/O;->s0:LO0/X;

    .line 157
    .line 158
    new-instance v0, LB0/B0;

    .line 159
    .line 160
    iget-object v3, v9, LB0/O;->s0:LO0/X;

    .line 161
    .line 162
    invoke-direct {v0, v1, v3}, LB0/B0;-><init>(Ljava/util/List;LO0/X;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/4 v3, -0x1

    .line 170
    iget v5, v0, LB0/B0;->d:I

    .line 171
    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    if-ge v3, v5, :cond_6

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/s1;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_7
    :goto_4
    iget-boolean v1, v9, LB0/O;->l0:Z

    .line 184
    .line 185
    invoke-virtual {v0, v1}, LB0/B0;->a(Z)I

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    iget-object v1, v9, LB0/O;->N0:LB0/v0;

    .line 190
    .line 191
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v0, v15, v6, v7}, LB0/O;->I(Lm0/f0;IJ)Landroid/util/Pair;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v9, v1, v0, v8}, LB0/O;->H(LB0/v0;Lm0/f0;Landroid/util/Pair;)LB0/v0;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget v8, v1, LB0/v0;->e:I

    .line 205
    .line 206
    if-eq v15, v3, :cond_a

    .line 207
    .line 208
    if-eq v8, v2, :cond_a

    .line 209
    .line 210
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_9

    .line 215
    .line 216
    if-lt v15, v5, :cond_8

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_8
    const/4 v8, 0x2

    .line 220
    goto :goto_6

    .line 221
    :cond_9
    :goto_5
    const/4 v8, 0x4

    .line 222
    :cond_a
    :goto_6
    invoke-static {v1, v8}, LB0/O;->G(LB0/v0;I)LB0/v0;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-static {v6, v7}, Lp0/M;->R(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide v16

    .line 230
    iget-object v14, v9, LB0/O;->s0:LO0/X;

    .line 231
    .line 232
    iget-object v0, v9, LB0/O;->R:LB0/X;

    .line 233
    .line 234
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 235
    .line 236
    new-instance v3, LB0/T;

    .line 237
    .line 238
    move-object v12, v3

    .line 239
    invoke-direct/range {v12 .. v17}, LB0/T;-><init>(Ljava/util/ArrayList;LO0/X;IJ)V

    .line 240
    .line 241
    .line 242
    const/16 v5, 0x11

    .line 243
    .line 244
    invoke-virtual {v0, v5, v3}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lp0/H;->b()V

    .line 249
    .line 250
    .line 251
    iget-object v0, v9, LB0/O;->N0:LB0/v0;

    .line 252
    .line 253
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 254
    .line 255
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 256
    .line 257
    iget-object v3, v1, LB0/v0;->b:LO0/y;

    .line 258
    .line 259
    iget-object v3, v3, LO0/y;->a:Ljava/lang/Object;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_b

    .line 266
    .line 267
    iget-object v0, v9, LB0/O;->N0:LB0/v0;

    .line 268
    .line 269
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 270
    .line 271
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_b

    .line 276
    .line 277
    const/4 v3, 0x1

    .line 278
    goto :goto_7

    .line 279
    :cond_b
    const/4 v3, 0x0

    .line 280
    :goto_7
    invoke-virtual {v9, v1}, LB0/O;->w(LB0/v0;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v5

    .line 284
    const/4 v7, -0x1

    .line 285
    const/4 v8, 0x0

    .line 286
    const/4 v2, 0x0

    .line 287
    const/4 v4, 0x4

    .line 288
    move-object/from16 v0, p0

    .line 289
    .line 290
    invoke-virtual/range {v0 .. v8}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final R(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LB0/O;->z0:Z

    .line 3
    .line 4
    iput-object p1, p0, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    iget-object v1, p0, LB0/O;->d0:LB0/L;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, LB0/O;->x0:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v0, p1}, LB0/O;->J(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v0, v0}, LB0/O;->J(II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final S(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, LB0/O;->Z(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final T(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LB0/O;->k0:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, LB0/O;->k0:I

    .line 9
    .line 10
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 11
    .line 12
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 22
    .line 23
    const/16 v2, 0xb

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, v1, Lp0/H;->a:Landroid/os/Message;

    .line 31
    .line 32
    invoke-virtual {v1}, Lp0/H;->b()V

    .line 33
    .line 34
    .line 35
    new-instance v0, LB0/G;

    .line 36
    .line 37
    invoke-direct {v0, p1, v3}, LB0/G;-><init>(II)V

    .line 38
    .line 39
    .line 40
    const/16 p1, 0x8

    .line 41
    .line 42
    iget-object v1, p0, LB0/O;->S:Lx/e;

    .line 43
    .line 44
    invoke-virtual {v1, p1, v0}, Lx/e;->j(ILp0/u;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, LB0/O;->Y()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lx/e;->g()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final U(Lm0/k0;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->O:LR0/w;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, LB0/O;->E()Lm0/k0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v2, p0, LB0/O;->p0:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p1, Lm0/k0;->E:Lz4/L;

    .line 18
    .line 19
    iput-object v2, p0, LB0/O;->q0:Lz4/L;

    .line 20
    .line 21
    iget-object v2, p0, LB0/O;->r0:LB0/H0;

    .line 22
    .line 23
    iget-object v2, v2, LB0/H0;->a:Lz4/L;

    .line 24
    .line 25
    invoke-virtual {p1}, Lm0/k0;->a()Lm0/j0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-virtual {v3, v4, v5}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Lm0/j0;->b()Lm0/k0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v2, p1

    .line 60
    :goto_1
    move-object v3, v0

    .line 61
    check-cast v3, LR0/q;

    .line 62
    .line 63
    invoke-virtual {v3}, LR0/q;->h()LR0/k;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lm0/k0;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v2}, LR0/w;->b(Lm0/k0;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v1, p1}, Lm0/k0;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, LB0/x;

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-direct {v0, p1, v1}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, LB0/O;->S:Lx/e;

    .line 90
    .line 91
    const/16 v1, 0x13

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Lx/e;->l(ILp0/u;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public final V(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/O;->v0:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v4, p0, LB0/O;->i0:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide v4, v2

    .line 22
    :goto_1
    iget-object v6, p0, LB0/O;->R:LB0/X;

    .line 23
    .line 24
    iget-boolean v7, v6, LB0/X;->o0:Z

    .line 25
    .line 26
    if-nez v7, :cond_3

    .line 27
    .line 28
    iget-object v7, v6, LB0/X;->P:Landroid/os/Looper;

    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    new-instance v7, Lp0/i;

    .line 42
    .line 43
    iget-object v8, v6, LB0/X;->W:Lp0/f;

    .line 44
    .line 45
    invoke-direct {v7, v8}, Lp0/i;-><init>(Lp0/f;)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroid/util/Pair;

    .line 49
    .line 50
    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/16 v9, 0x1e

    .line 54
    .line 55
    iget-object v6, v6, LB0/X;->N:Lp0/I;

    .line 56
    .line 57
    invoke-virtual {v6, v9, v8}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lp0/H;->b()V

    .line 62
    .line 63
    .line 64
    cmp-long v6, v4, v2

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {v7, v4, v5}, Lp0/i;->d(J)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, LB0/O;->v0:Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v2, p0, LB0/O;->w0:Landroid/view/Surface;

    .line 77
    .line 78
    if-ne v0, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, LB0/O;->w0:Landroid/view/Surface;

    .line 85
    .line 86
    :cond_4
    iput-object p1, p0, LB0/O;->v0:Ljava/lang/Object;

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    new-instance p1, LB0/Y;

    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    invoke-direct {p1, v0}, LB0/Y;-><init>(I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, LB0/w;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    const/16 v2, 0x3eb

    .line 100
    .line 101
    invoke-direct {v0, v1, p1, v2}, LB0/w;-><init>(ILjava/lang/Throwable;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, LB0/O;->X(LB0/w;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void
.end method

.method public final W(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lp0/M;->h(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, LB0/O;->E0:F

    .line 12
    .line 13
    cmpl-float v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput p1, p0, LB0/O;->E0:F

    .line 19
    .line 20
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 21
    .line 22
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x20

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lp0/H;->b()V

    .line 35
    .line 36
    .line 37
    new-instance v0, LB0/E;

    .line 38
    .line 39
    invoke-direct {v0, p1}, LB0/E;-><init>(F)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, LB0/O;->S:Lx/e;

    .line 43
    .line 44
    const/16 v1, 0x16

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lx/e;->l(ILp0/u;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final X(LB0/w;)V
    .locals 11

    .line 1
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 2
    .line 3
    iget-object v1, v0, LB0/v0;->b:LO0/y;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LB0/v0;->c(LO0/y;)LB0/v0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, v0, LB0/v0;->s:J

    .line 10
    .line 11
    iput-wide v1, v0, LB0/v0;->q:J

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, LB0/v0;->r:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, LB0/O;->G(LB0/v0;I)LB0/v0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, LB0/v0;->f(LB0/w;)LB0/v0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    iget p1, p0, LB0/O;->m0:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    iput p1, p0, LB0/O;->m0:I

    .line 33
    .line 34
    iget-object p1, p0, LB0/O;->R:LB0/X;

    .line 35
    .line 36
    iget-object p1, p1, LB0/X;->N:Lp0/I;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p1, p1, Lp0/I;->a:Landroid/os/Handler;

    .line 46
    .line 47
    const/4 v1, 0x6

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v0, Lp0/H;->a:Landroid/os/Message;

    .line 53
    .line 54
    invoke-virtual {v0}, Lp0/H;->b()V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x5

    .line 58
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v9, -0x1

    .line 66
    const/4 v10, 0x0

    .line 67
    move-object v2, p0

    .line 68
    invoke-virtual/range {v2 .. v10}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final Y()V
    .locals 15

    .line 1
    iget-object v0, p0, LB0/O;->t0:Lm0/U;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, LB0/O;->L:Lm0/Y;

    .line 6
    .line 7
    check-cast v1, LB0/O;

    .line 8
    .line 9
    invoke-virtual {v1}, LB0/O;->F()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lm0/f;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lm0/f0;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, -0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, LB0/O;->t()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 36
    .line 37
    .line 38
    iget v9, v1, LB0/O;->k0:I

    .line 39
    .line 40
    if-ne v9, v8, :cond_1

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    :cond_1
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 44
    .line 45
    .line 46
    iget-boolean v10, v1, LB0/O;->l0:Z

    .line 47
    .line 48
    invoke-virtual {v4, v10, v5, v9}, Lm0/f0;->l(ZII)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eq v4, v6, :cond_2

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 57
    :goto_1
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lm0/f0;->q()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v1}, LB0/O;->t()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 73
    .line 74
    .line 75
    iget v10, v1, LB0/O;->k0:I

    .line 76
    .line 77
    if-ne v10, v8, :cond_4

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    :cond_4
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 81
    .line 82
    .line 83
    iget-boolean v11, v1, LB0/O;->l0:Z

    .line 84
    .line 85
    invoke-virtual {v5, v11, v9, v10}, Lm0/f0;->e(ZII)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eq v5, v6, :cond_5

    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 94
    :goto_3
    invoke-virtual {v1}, Lm0/f;->e()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    invoke-virtual {v1}, Lm0/f;->d()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-virtual {v1}, LB0/O;->x()Lm0/f0;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lm0/f0;->q()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    new-instance v10, Lm0/T;

    .line 111
    .line 112
    invoke-direct {v10}, Lm0/T;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v11, p0, LB0/O;->I:Lm0/U;

    .line 116
    .line 117
    iget-object v11, v11, Lm0/U;->a:Lm0/r;

    .line 118
    .line 119
    iget-object v12, v10, Lm0/T;->a:Lm0/q;

    .line 120
    .line 121
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    :goto_4
    iget-object v14, v11, Lm0/r;->a:Landroid/util/SparseBooleanArray;

    .line 126
    .line 127
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-ge v13, v14, :cond_6

    .line 132
    .line 133
    invoke-virtual {v11, v13}, Lm0/r;->a(I)I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    invoke-virtual {v12, v14}, Lm0/q;->a(I)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v13, v13, 0x1

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    xor-int/lit8 v11, v2, 0x1

    .line 144
    .line 145
    const/4 v13, 0x4

    .line 146
    invoke-virtual {v10, v13, v11}, Lm0/T;->a(IZ)V

    .line 147
    .line 148
    .line 149
    if-eqz v3, :cond_7

    .line 150
    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    const/4 v13, 0x1

    .line 154
    goto :goto_5

    .line 155
    :cond_7
    const/4 v13, 0x0

    .line 156
    :goto_5
    const/4 v14, 0x5

    .line 157
    invoke-virtual {v10, v14, v13}, Lm0/T;->a(IZ)V

    .line 158
    .line 159
    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    if-nez v2, :cond_8

    .line 163
    .line 164
    const/4 v13, 0x1

    .line 165
    goto :goto_6

    .line 166
    :cond_8
    const/4 v13, 0x0

    .line 167
    :goto_6
    const/4 v14, 0x6

    .line 168
    invoke-virtual {v10, v14, v13}, Lm0/T;->a(IZ)V

    .line 169
    .line 170
    .line 171
    if-nez v1, :cond_a

    .line 172
    .line 173
    if-nez v4, :cond_9

    .line 174
    .line 175
    if-eqz v6, :cond_9

    .line 176
    .line 177
    if-eqz v3, :cond_a

    .line 178
    .line 179
    :cond_9
    if-nez v2, :cond_a

    .line 180
    .line 181
    const/4 v4, 0x1

    .line 182
    goto :goto_7

    .line 183
    :cond_a
    const/4 v4, 0x0

    .line 184
    :goto_7
    const/4 v13, 0x7

    .line 185
    invoke-virtual {v10, v13, v4}, Lm0/T;->a(IZ)V

    .line 186
    .line 187
    .line 188
    if-eqz v5, :cond_b

    .line 189
    .line 190
    if-nez v2, :cond_b

    .line 191
    .line 192
    const/4 v4, 0x1

    .line 193
    goto :goto_8

    .line 194
    :cond_b
    const/4 v4, 0x0

    .line 195
    :goto_8
    const/16 v13, 0x8

    .line 196
    .line 197
    invoke-virtual {v10, v13, v4}, Lm0/T;->a(IZ)V

    .line 198
    .line 199
    .line 200
    if-nez v1, :cond_d

    .line 201
    .line 202
    if-nez v5, :cond_c

    .line 203
    .line 204
    if-eqz v6, :cond_d

    .line 205
    .line 206
    if-eqz v9, :cond_d

    .line 207
    .line 208
    :cond_c
    if-nez v2, :cond_d

    .line 209
    .line 210
    const/4 v1, 0x1

    .line 211
    goto :goto_9

    .line 212
    :cond_d
    const/4 v1, 0x0

    .line 213
    :goto_9
    const/16 v4, 0x9

    .line 214
    .line 215
    invoke-virtual {v10, v4, v1}, Lm0/T;->a(IZ)V

    .line 216
    .line 217
    .line 218
    const/16 v1, 0xa

    .line 219
    .line 220
    invoke-virtual {v10, v1, v11}, Lm0/T;->a(IZ)V

    .line 221
    .line 222
    .line 223
    if-eqz v3, :cond_e

    .line 224
    .line 225
    if-nez v2, :cond_e

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    goto :goto_a

    .line 229
    :cond_e
    const/4 v1, 0x0

    .line 230
    :goto_a
    const/16 v4, 0xb

    .line 231
    .line 232
    invoke-virtual {v10, v4, v1}, Lm0/T;->a(IZ)V

    .line 233
    .line 234
    .line 235
    if-eqz v3, :cond_f

    .line 236
    .line 237
    if-nez v2, :cond_f

    .line 238
    .line 239
    const/4 v7, 0x1

    .line 240
    :cond_f
    const/16 v1, 0xc

    .line 241
    .line 242
    invoke-virtual {v10, v1, v7}, Lm0/T;->a(IZ)V

    .line 243
    .line 244
    .line 245
    new-instance v1, Lm0/U;

    .line 246
    .line 247
    invoke-virtual {v12}, Lm0/q;->b()Lm0/r;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-direct {v1, v2}, Lm0/U;-><init>(Lm0/r;)V

    .line 252
    .line 253
    .line 254
    iput-object v1, p0, LB0/O;->t0:Lm0/U;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Lm0/U;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_10

    .line 261
    .line 262
    new-instance v0, LB0/H;

    .line 263
    .line 264
    invoke-direct {v0, p0}, LB0/H;-><init>(LB0/O;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, LB0/O;->S:Lx/e;

    .line 268
    .line 269
    const/16 v2, 0xd

    .line 270
    .line 271
    invoke-virtual {v1, v2, v0}, Lx/e;->j(ILp0/u;)V

    .line 272
    .line 273
    .line 274
    :cond_10
    return-void
.end method

.method public final Z(IZ)V
    .locals 13

    .line 1
    iget-boolean v0, p0, LB0/O;->p0:Z

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 10
    .line 11
    iget v0, v0, LB0/v0;->n:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, LB0/O;->N0:LB0/v0;

    .line 21
    .line 22
    iget-boolean v4, v3, LB0/v0;->l:Z

    .line 23
    .line 24
    if-ne v4, p2, :cond_2

    .line 25
    .line 26
    iget v4, v3, LB0/v0;->n:I

    .line 27
    .line 28
    if-ne v4, v0, :cond_2

    .line 29
    .line 30
    iget v4, v3, LB0/v0;->m:I

    .line 31
    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget v4, p0, LB0/O;->m0:I

    .line 36
    .line 37
    add-int/2addr v4, v2

    .line 38
    iput v4, p0, LB0/O;->m0:I

    .line 39
    .line 40
    iget-boolean v4, v3, LB0/v0;->p:Z

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, LB0/v0;->a()LB0/v0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_3
    invoke-virtual {v3, p2, p1, v0}, LB0/v0;->e(ZII)LB0/v0;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    shl-int/2addr v0, v1

    .line 53
    or-int/2addr p1, v0

    .line 54
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 55
    .line 56
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, v1, Lp0/H;->a:Landroid/os/Message;

    .line 72
    .line 73
    invoke-virtual {v1}, Lp0/H;->b()V

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x5

    .line 77
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v11, -0x1

    .line 85
    const/4 v12, 0x0

    .line 86
    move-object v4, p0

    .line 87
    invoke-virtual/range {v4 .. v12}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final a0(LB0/v0;IZIJIZ)V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, LB0/O;->N0:LB0/v0;

    .line 8
    .line 9
    iput-object v1, v0, LB0/O;->N0:LB0/v0;

    .line 10
    .line 11
    iget-object v4, v3, LB0/v0;->a:Lm0/f0;

    .line 12
    .line 13
    iget-object v5, v1, LB0/v0;->a:Lm0/f0;

    .line 14
    .line 15
    invoke-virtual {v4, v5}, Lm0/f0;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    xor-int/2addr v4, v5

    .line 21
    iget-object v6, v3, LB0/v0;->a:Lm0/f0;

    .line 22
    .line 23
    iget-object v7, v1, LB0/v0;->a:Lm0/f0;

    .line 24
    .line 25
    invoke-virtual {v7}, Lm0/f0;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, -0x1

    .line 30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const/4 v12, 0x3

    .line 35
    const-wide/16 v13, 0x0

    .line 36
    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    invoke-virtual {v6}, Lm0/f0;->q()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eqz v8, :cond_0

    .line 44
    .line 45
    new-instance v6, Landroid/util/Pair;

    .line 46
    .line 47
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_0
    invoke-virtual {v7}, Lm0/f0;->q()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-virtual {v6}, Lm0/f0;->q()Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eq v8, v9, :cond_1

    .line 63
    .line 64
    new-instance v6, Landroid/util/Pair;

    .line 65
    .line 66
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_1
    iget-object v8, v3, LB0/v0;->b:LO0/y;

    .line 78
    .line 79
    iget-object v9, v8, LO0/y;->a:Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v12, v0, LB0/O;->U:Lm0/d0;

    .line 82
    .line 83
    invoke-virtual {v6, v9, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget v9, v9, Lm0/d0;->c:I

    .line 88
    .line 89
    iget-object v11, v0, Lm0/f;->G:Lm0/e0;

    .line 90
    .line 91
    invoke-virtual {v6, v9, v11, v13, v14}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v6, v6, Lm0/e0;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v9, v1, LB0/v0;->b:LO0/y;

    .line 98
    .line 99
    iget-object v15, v9, LO0/y;->a:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v7, v15, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    iget v12, v12, Lm0/d0;->c:I

    .line 106
    .line 107
    invoke-virtual {v7, v12, v11, v13, v14}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iget-object v7, v7, Lm0/e0;->a:Ljava/lang/Object;

    .line 112
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_5

    .line 118
    .line 119
    if-eqz p3, :cond_2

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    if-eqz p3, :cond_3

    .line 126
    .line 127
    if-ne v2, v5, :cond_3

    .line 128
    .line 129
    const/4 v6, 0x2

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    if-eqz v4, :cond_4

    .line 132
    .line 133
    const/4 v6, 0x3

    .line 134
    :goto_0
    new-instance v7, Landroid/util/Pair;

    .line 135
    .line 136
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object v6, v7

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_5
    if-eqz p3, :cond_6

    .line 154
    .line 155
    if-nez v2, :cond_6

    .line 156
    .line 157
    iget-wide v6, v8, LO0/y;->d:J

    .line 158
    .line 159
    iget-wide v8, v9, LO0/y;->d:J

    .line 160
    .line 161
    cmp-long v11, v6, v8

    .line 162
    .line 163
    if-gez v11, :cond_6

    .line 164
    .line 165
    new-instance v6, Landroid/util/Pair;

    .line 166
    .line 167
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-direct {v6, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    if-eqz p3, :cond_7

    .line 179
    .line 180
    if-ne v2, v5, :cond_7

    .line 181
    .line 182
    if-eqz p8, :cond_7

    .line 183
    .line 184
    new-instance v6, Landroid/util/Pair;

    .line 185
    .line 186
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    .line 188
    const/4 v8, 0x2

    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-direct {v6, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    new-instance v6, Landroid/util/Pair;

    .line 198
    .line 199
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :goto_1
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v7, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v6, Ljava/lang/Integer;

    .line 215
    .line 216
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v7, :cond_9

    .line 221
    .line 222
    iget-object v9, v1, LB0/v0;->a:Lm0/f0;

    .line 223
    .line 224
    invoke-virtual {v9}, Lm0/f0;->q()Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-nez v9, :cond_8

    .line 229
    .line 230
    iget-object v9, v1, LB0/v0;->a:Lm0/f0;

    .line 231
    .line 232
    iget-object v10, v1, LB0/v0;->b:LO0/y;

    .line 233
    .line 234
    iget-object v10, v10, LO0/y;->a:Ljava/lang/Object;

    .line 235
    .line 236
    iget-object v11, v0, LB0/O;->U:Lm0/d0;

    .line 237
    .line 238
    invoke-virtual {v9, v10, v11}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    iget v9, v9, Lm0/d0;->c:I

    .line 243
    .line 244
    iget-object v10, v1, LB0/v0;->a:Lm0/f0;

    .line 245
    .line 246
    iget-object v11, v0, Lm0/f;->G:Lm0/e0;

    .line 247
    .line 248
    invoke-virtual {v10, v9, v11, v13, v14}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    iget-object v9, v9, Lm0/e0;->c:Lm0/I;

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_8
    const/4 v9, 0x0

    .line 256
    :goto_2
    sget-object v10, Lm0/L;->I:Lm0/L;

    .line 257
    .line 258
    iput-object v10, v0, LB0/O;->M0:Lm0/L;

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_9
    const/4 v9, 0x0

    .line 262
    :goto_3
    if-nez v7, :cond_a

    .line 263
    .line 264
    iget-object v10, v3, LB0/v0;->j:Ljava/util/List;

    .line 265
    .line 266
    iget-object v11, v1, LB0/v0;->j:Ljava/util/List;

    .line 267
    .line 268
    invoke-interface {v10, v11}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-nez v10, :cond_d

    .line 273
    .line 274
    :cond_a
    iget-object v10, v0, LB0/O;->M0:Lm0/L;

    .line 275
    .line 276
    invoke-virtual {v10}, Lm0/L;->a()Lm0/K;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    iget-object v11, v1, LB0/v0;->j:Ljava/util/List;

    .line 281
    .line 282
    const/4 v12, 0x0

    .line 283
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v15

    .line 287
    if-ge v12, v15, :cond_c

    .line 288
    .line 289
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    check-cast v15, Lm0/N;

    .line 294
    .line 295
    const/4 v8, 0x0

    .line 296
    :goto_5
    iget-object v13, v15, Lm0/N;->a:[Lm0/M;

    .line 297
    .line 298
    array-length v14, v13

    .line 299
    if-ge v8, v14, :cond_b

    .line 300
    .line 301
    aget-object v13, v13, v8

    .line 302
    .line 303
    invoke-interface {v13, v10}, Lm0/M;->populateMediaMetadata(Lm0/K;)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v8, v8, 0x1

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 310
    .line 311
    const-wide/16 v13, 0x0

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_c
    new-instance v8, Lm0/L;

    .line 315
    .line 316
    invoke-direct {v8, v10}, Lm0/L;-><init>(Lm0/K;)V

    .line 317
    .line 318
    .line 319
    iput-object v8, v0, LB0/O;->M0:Lm0/L;

    .line 320
    .line 321
    :cond_d
    invoke-virtual/range {p0 .. p0}, LB0/O;->n()Lm0/L;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    iget-object v10, v0, LB0/O;->u0:Lm0/L;

    .line 326
    .line 327
    invoke-virtual {v8, v10}, Lm0/L;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    xor-int/2addr v10, v5

    .line 332
    iput-object v8, v0, LB0/O;->u0:Lm0/L;

    .line 333
    .line 334
    iget-boolean v8, v3, LB0/v0;->l:Z

    .line 335
    .line 336
    iget-boolean v11, v1, LB0/v0;->l:Z

    .line 337
    .line 338
    if-eq v8, v11, :cond_e

    .line 339
    .line 340
    const/4 v8, 0x1

    .line 341
    goto :goto_6

    .line 342
    :cond_e
    const/4 v8, 0x0

    .line 343
    :goto_6
    iget v11, v3, LB0/v0;->e:I

    .line 344
    .line 345
    iget v12, v1, LB0/v0;->e:I

    .line 346
    .line 347
    if-eq v11, v12, :cond_f

    .line 348
    .line 349
    const/4 v11, 0x1

    .line 350
    goto :goto_7

    .line 351
    :cond_f
    const/4 v11, 0x0

    .line 352
    :goto_7
    if-nez v11, :cond_10

    .line 353
    .line 354
    if-eqz v8, :cond_11

    .line 355
    .line 356
    :cond_10
    invoke-virtual/range {p0 .. p0}, LB0/O;->b0()V

    .line 357
    .line 358
    .line 359
    :cond_11
    iget-boolean v12, v3, LB0/v0;->g:Z

    .line 360
    .line 361
    iget-boolean v13, v1, LB0/v0;->g:Z

    .line 362
    .line 363
    if-eq v12, v13, :cond_12

    .line 364
    .line 365
    const/4 v12, 0x1

    .line 366
    goto :goto_8

    .line 367
    :cond_12
    const/4 v12, 0x0

    .line 368
    :goto_8
    if-eqz v4, :cond_13

    .line 369
    .line 370
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 371
    .line 372
    new-instance v13, LB0/B;

    .line 373
    .line 374
    move/from16 v14, p2

    .line 375
    .line 376
    const/4 v15, 0x0

    .line 377
    invoke-direct {v13, v1, v14, v15}, LB0/B;-><init>(Ljava/lang/Object;II)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, v15, v13}, Lx/e;->j(ILp0/u;)V

    .line 381
    .line 382
    .line 383
    :cond_13
    if-eqz p3, :cond_1b

    .line 384
    .line 385
    new-instance v4, Lm0/d0;

    .line 386
    .line 387
    invoke-direct {v4}, Lm0/d0;-><init>()V

    .line 388
    .line 389
    .line 390
    iget-object v13, v3, LB0/v0;->a:Lm0/f0;

    .line 391
    .line 392
    invoke-virtual {v13}, Lm0/f0;->q()Z

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    if-nez v13, :cond_14

    .line 397
    .line 398
    iget-object v13, v3, LB0/v0;->b:LO0/y;

    .line 399
    .line 400
    iget-object v13, v13, LO0/y;->a:Ljava/lang/Object;

    .line 401
    .line 402
    iget-object v14, v3, LB0/v0;->a:Lm0/f0;

    .line 403
    .line 404
    invoke-virtual {v14, v13, v4}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 405
    .line 406
    .line 407
    iget v14, v4, Lm0/d0;->c:I

    .line 408
    .line 409
    iget-object v15, v3, LB0/v0;->a:Lm0/f0;

    .line 410
    .line 411
    invoke-virtual {v15, v13}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    iget-object v5, v3, LB0/v0;->a:Lm0/f0;

    .line 416
    .line 417
    move-object/from16 p2, v13

    .line 418
    .line 419
    iget-object v13, v0, Lm0/f;->G:Lm0/e0;

    .line 420
    .line 421
    move/from16 v16, v11

    .line 422
    .line 423
    move/from16 v17, v12

    .line 424
    .line 425
    const-wide/16 v11, 0x0

    .line 426
    .line 427
    invoke-virtual {v5, v14, v13, v11, v12}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    iget-object v5, v5, Lm0/e0;->a:Ljava/lang/Object;

    .line 432
    .line 433
    iget-object v11, v0, Lm0/f;->G:Lm0/e0;

    .line 434
    .line 435
    iget-object v11, v11, Lm0/e0;->c:Lm0/I;

    .line 436
    .line 437
    move-object/from16 v22, p2

    .line 438
    .line 439
    move-object/from16 v19, v5

    .line 440
    .line 441
    move-object/from16 v21, v11

    .line 442
    .line 443
    move/from16 v20, v14

    .line 444
    .line 445
    move/from16 v23, v15

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_14
    move/from16 v16, v11

    .line 449
    .line 450
    move/from16 v17, v12

    .line 451
    .line 452
    move/from16 v20, p7

    .line 453
    .line 454
    const/16 v19, 0x0

    .line 455
    .line 456
    const/16 v21, 0x0

    .line 457
    .line 458
    const/16 v22, 0x0

    .line 459
    .line 460
    const/16 v23, -0x1

    .line 461
    .line 462
    :goto_9
    if-nez v2, :cond_17

    .line 463
    .line 464
    iget-object v5, v3, LB0/v0;->b:LO0/y;

    .line 465
    .line 466
    invoke-virtual {v5}, LO0/y;->b()Z

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    if-eqz v5, :cond_15

    .line 471
    .line 472
    iget-object v5, v3, LB0/v0;->b:LO0/y;

    .line 473
    .line 474
    iget v11, v5, LO0/y;->b:I

    .line 475
    .line 476
    iget v5, v5, LO0/y;->c:I

    .line 477
    .line 478
    invoke-virtual {v4, v11, v5}, Lm0/d0;->a(II)J

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    invoke-static {v3}, LB0/O;->D(LB0/v0;)J

    .line 483
    .line 484
    .line 485
    move-result-wide v11

    .line 486
    goto :goto_b

    .line 487
    :cond_15
    iget-object v5, v3, LB0/v0;->b:LO0/y;

    .line 488
    .line 489
    iget v5, v5, LO0/y;->e:I

    .line 490
    .line 491
    const/4 v11, -0x1

    .line 492
    if-eq v5, v11, :cond_16

    .line 493
    .line 494
    iget-object v4, v0, LB0/O;->N0:LB0/v0;

    .line 495
    .line 496
    invoke-static {v4}, LB0/O;->D(LB0/v0;)J

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    :goto_a
    move-wide v11, v4

    .line 501
    goto :goto_b

    .line 502
    :cond_16
    iget-wide v11, v4, Lm0/d0;->e:J

    .line 503
    .line 504
    iget-wide v4, v4, Lm0/d0;->d:J

    .line 505
    .line 506
    add-long/2addr v4, v11

    .line 507
    goto :goto_a

    .line 508
    :cond_17
    iget-object v5, v3, LB0/v0;->b:LO0/y;

    .line 509
    .line 510
    invoke-virtual {v5}, LO0/y;->b()Z

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_18

    .line 515
    .line 516
    iget-wide v4, v3, LB0/v0;->s:J

    .line 517
    .line 518
    invoke-static {v3}, LB0/O;->D(LB0/v0;)J

    .line 519
    .line 520
    .line 521
    move-result-wide v11

    .line 522
    goto :goto_b

    .line 523
    :cond_18
    iget-wide v4, v4, Lm0/d0;->e:J

    .line 524
    .line 525
    iget-wide v11, v3, LB0/v0;->s:J

    .line 526
    .line 527
    add-long/2addr v4, v11

    .line 528
    goto :goto_a

    .line 529
    :goto_b
    new-instance v13, Lm0/X;

    .line 530
    .line 531
    invoke-static {v4, v5}, Lp0/M;->e0(J)J

    .line 532
    .line 533
    .line 534
    move-result-wide v24

    .line 535
    invoke-static {v11, v12}, Lp0/M;->e0(J)J

    .line 536
    .line 537
    .line 538
    move-result-wide v26

    .line 539
    iget-object v4, v3, LB0/v0;->b:LO0/y;

    .line 540
    .line 541
    iget v5, v4, LO0/y;->b:I

    .line 542
    .line 543
    iget v4, v4, LO0/y;->c:I

    .line 544
    .line 545
    move-object/from16 v18, v13

    .line 546
    .line 547
    move/from16 v28, v5

    .line 548
    .line 549
    move/from16 v29, v4

    .line 550
    .line 551
    invoke-direct/range {v18 .. v29}, Lm0/X;-><init>(Ljava/lang/Object;ILm0/I;Ljava/lang/Object;IJJII)V

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, LB0/O;->t()I

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    iget-object v5, v0, LB0/O;->N0:LB0/v0;

    .line 559
    .line 560
    iget-object v5, v5, LB0/v0;->a:Lm0/f0;

    .line 561
    .line 562
    invoke-virtual {v5}, Lm0/f0;->q()Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-nez v5, :cond_19

    .line 567
    .line 568
    iget-object v5, v0, LB0/O;->N0:LB0/v0;

    .line 569
    .line 570
    iget-object v11, v5, LB0/v0;->b:LO0/y;

    .line 571
    .line 572
    iget-object v11, v11, LO0/y;->a:Ljava/lang/Object;

    .line 573
    .line 574
    iget-object v5, v5, LB0/v0;->a:Lm0/f0;

    .line 575
    .line 576
    iget-object v12, v0, LB0/O;->U:Lm0/d0;

    .line 577
    .line 578
    invoke-virtual {v5, v11, v12}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 579
    .line 580
    .line 581
    iget-object v5, v0, LB0/O;->N0:LB0/v0;

    .line 582
    .line 583
    iget-object v5, v5, LB0/v0;->a:Lm0/f0;

    .line 584
    .line 585
    invoke-virtual {v5, v11}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    iget-object v12, v0, LB0/O;->N0:LB0/v0;

    .line 590
    .line 591
    iget-object v12, v12, LB0/v0;->a:Lm0/f0;

    .line 592
    .line 593
    iget-object v14, v0, Lm0/f;->G:Lm0/e0;

    .line 594
    .line 595
    move v15, v10

    .line 596
    move-object/from16 v18, v11

    .line 597
    .line 598
    const-wide/16 v10, 0x0

    .line 599
    .line 600
    invoke-virtual {v12, v4, v14, v10, v11}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 601
    .line 602
    .line 603
    move-result-object v10

    .line 604
    iget-object v10, v10, Lm0/e0;->a:Ljava/lang/Object;

    .line 605
    .line 606
    iget-object v11, v14, Lm0/e0;->c:Lm0/I;

    .line 607
    .line 608
    move/from16 v33, v5

    .line 609
    .line 610
    move-object/from16 v29, v10

    .line 611
    .line 612
    move-object/from16 v31, v11

    .line 613
    .line 614
    move-object/from16 v32, v18

    .line 615
    .line 616
    goto :goto_c

    .line 617
    :cond_19
    move v15, v10

    .line 618
    const/16 v29, 0x0

    .line 619
    .line 620
    const/16 v31, 0x0

    .line 621
    .line 622
    const/16 v32, 0x0

    .line 623
    .line 624
    const/16 v33, -0x1

    .line 625
    .line 626
    :goto_c
    invoke-static/range {p5 .. p6}, Lp0/M;->e0(J)J

    .line 627
    .line 628
    .line 629
    move-result-wide v34

    .line 630
    new-instance v5, Lm0/X;

    .line 631
    .line 632
    iget-object v10, v0, LB0/O;->N0:LB0/v0;

    .line 633
    .line 634
    iget-object v10, v10, LB0/v0;->b:LO0/y;

    .line 635
    .line 636
    invoke-virtual {v10}, LO0/y;->b()Z

    .line 637
    .line 638
    .line 639
    move-result v10

    .line 640
    if-eqz v10, :cond_1a

    .line 641
    .line 642
    iget-object v10, v0, LB0/O;->N0:LB0/v0;

    .line 643
    .line 644
    invoke-static {v10}, LB0/O;->D(LB0/v0;)J

    .line 645
    .line 646
    .line 647
    move-result-wide v10

    .line 648
    invoke-static {v10, v11}, Lp0/M;->e0(J)J

    .line 649
    .line 650
    .line 651
    move-result-wide v10

    .line 652
    move-wide/from16 v36, v10

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_1a
    move-wide/from16 v36, v34

    .line 656
    .line 657
    :goto_d
    iget-object v10, v0, LB0/O;->N0:LB0/v0;

    .line 658
    .line 659
    iget-object v10, v10, LB0/v0;->b:LO0/y;

    .line 660
    .line 661
    iget v11, v10, LO0/y;->b:I

    .line 662
    .line 663
    iget v10, v10, LO0/y;->c:I

    .line 664
    .line 665
    move-object/from16 v28, v5

    .line 666
    .line 667
    move/from16 v30, v4

    .line 668
    .line 669
    move/from16 v38, v11

    .line 670
    .line 671
    move/from16 v39, v10

    .line 672
    .line 673
    invoke-direct/range {v28 .. v39}, Lm0/X;-><init>(Ljava/lang/Object;ILm0/I;Ljava/lang/Object;IJJII)V

    .line 674
    .line 675
    .line 676
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 677
    .line 678
    new-instance v10, LB0/D;

    .line 679
    .line 680
    invoke-direct {v10, v2, v13, v5}, LB0/D;-><init>(ILm0/X;Lm0/X;)V

    .line 681
    .line 682
    .line 683
    const/16 v2, 0xb

    .line 684
    .line 685
    invoke-virtual {v4, v2, v10}, Lx/e;->j(ILp0/u;)V

    .line 686
    .line 687
    .line 688
    goto :goto_e

    .line 689
    :cond_1b
    move v15, v10

    .line 690
    move/from16 v16, v11

    .line 691
    .line 692
    move/from16 v17, v12

    .line 693
    .line 694
    :goto_e
    if-eqz v7, :cond_1c

    .line 695
    .line 696
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 697
    .line 698
    new-instance v4, LB0/B;

    .line 699
    .line 700
    const/4 v5, 0x1

    .line 701
    invoke-direct {v4, v9, v6, v5}, LB0/B;-><init>(Ljava/lang/Object;II)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v5, v4}, Lx/e;->j(ILp0/u;)V

    .line 705
    .line 706
    .line 707
    :cond_1c
    iget-object v2, v3, LB0/v0;->f:LB0/w;

    .line 708
    .line 709
    iget-object v4, v1, LB0/v0;->f:LB0/w;

    .line 710
    .line 711
    const/4 v5, 0x5

    .line 712
    const/4 v6, 0x4

    .line 713
    if-eq v2, v4, :cond_1d

    .line 714
    .line 715
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 716
    .line 717
    new-instance v4, LB0/C;

    .line 718
    .line 719
    invoke-direct {v4, v1, v6}, LB0/C;-><init>(LB0/v0;I)V

    .line 720
    .line 721
    .line 722
    const/16 v7, 0xa

    .line 723
    .line 724
    invoke-virtual {v2, v7, v4}, Lx/e;->j(ILp0/u;)V

    .line 725
    .line 726
    .line 727
    iget-object v2, v1, LB0/v0;->f:LB0/w;

    .line 728
    .line 729
    if-eqz v2, :cond_1d

    .line 730
    .line 731
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 732
    .line 733
    new-instance v4, LB0/C;

    .line 734
    .line 735
    invoke-direct {v4, v1, v5}, LB0/C;-><init>(LB0/v0;I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2, v7, v4}, Lx/e;->j(ILp0/u;)V

    .line 739
    .line 740
    .line 741
    :cond_1d
    iget-object v2, v3, LB0/v0;->i:LR0/y;

    .line 742
    .line 743
    iget-object v4, v1, LB0/v0;->i:LR0/y;

    .line 744
    .line 745
    const/4 v7, 0x6

    .line 746
    if-eq v2, v4, :cond_1e

    .line 747
    .line 748
    iget-object v2, v0, LB0/O;->O:LR0/w;

    .line 749
    .line 750
    iget-object v4, v4, LR0/y;->e:Ljava/lang/Object;

    .line 751
    .line 752
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    check-cast v4, LR0/v;

    .line 756
    .line 757
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 758
    .line 759
    new-instance v4, LB0/C;

    .line 760
    .line 761
    invoke-direct {v4, v1, v7}, LB0/C;-><init>(LB0/v0;I)V

    .line 762
    .line 763
    .line 764
    const/4 v9, 0x2

    .line 765
    invoke-virtual {v2, v9, v4}, Lx/e;->j(ILp0/u;)V

    .line 766
    .line 767
    .line 768
    :cond_1e
    if-eqz v15, :cond_1f

    .line 769
    .line 770
    iget-object v2, v0, LB0/O;->u0:Lm0/L;

    .line 771
    .line 772
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 773
    .line 774
    new-instance v9, LB0/x;

    .line 775
    .line 776
    invoke-direct {v9, v2, v7}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 777
    .line 778
    .line 779
    const/16 v2, 0xe

    .line 780
    .line 781
    invoke-virtual {v4, v2, v9}, Lx/e;->j(ILp0/u;)V

    .line 782
    .line 783
    .line 784
    :cond_1f
    const/4 v2, 0x7

    .line 785
    if-eqz v17, :cond_20

    .line 786
    .line 787
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 788
    .line 789
    new-instance v9, LB0/C;

    .line 790
    .line 791
    invoke-direct {v9, v1, v2}, LB0/C;-><init>(LB0/v0;I)V

    .line 792
    .line 793
    .line 794
    const/4 v10, 0x3

    .line 795
    invoke-virtual {v4, v10, v9}, Lx/e;->j(ILp0/u;)V

    .line 796
    .line 797
    .line 798
    :cond_20
    if-nez v16, :cond_21

    .line 799
    .line 800
    if-eqz v8, :cond_22

    .line 801
    .line 802
    :cond_21
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 803
    .line 804
    new-instance v9, LB0/C;

    .line 805
    .line 806
    const/16 v10, 0x8

    .line 807
    .line 808
    invoke-direct {v9, v1, v10}, LB0/C;-><init>(LB0/v0;I)V

    .line 809
    .line 810
    .line 811
    const/4 v10, -0x1

    .line 812
    invoke-virtual {v4, v10, v9}, Lx/e;->j(ILp0/u;)V

    .line 813
    .line 814
    .line 815
    :cond_22
    if-eqz v16, :cond_23

    .line 816
    .line 817
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 818
    .line 819
    new-instance v9, LB0/C;

    .line 820
    .line 821
    const/16 v10, 0x9

    .line 822
    .line 823
    invoke-direct {v9, v1, v10}, LB0/C;-><init>(LB0/v0;I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v6, v9}, Lx/e;->j(ILp0/u;)V

    .line 827
    .line 828
    .line 829
    :cond_23
    if-nez v8, :cond_24

    .line 830
    .line 831
    iget v4, v3, LB0/v0;->m:I

    .line 832
    .line 833
    iget v6, v1, LB0/v0;->m:I

    .line 834
    .line 835
    if-eq v4, v6, :cond_25

    .line 836
    .line 837
    :cond_24
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 838
    .line 839
    new-instance v6, LB0/C;

    .line 840
    .line 841
    const/4 v8, 0x0

    .line 842
    invoke-direct {v6, v1, v8}, LB0/C;-><init>(LB0/v0;I)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v4, v5, v6}, Lx/e;->j(ILp0/u;)V

    .line 846
    .line 847
    .line 848
    :cond_25
    iget v4, v3, LB0/v0;->n:I

    .line 849
    .line 850
    iget v5, v1, LB0/v0;->n:I

    .line 851
    .line 852
    if-eq v4, v5, :cond_26

    .line 853
    .line 854
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 855
    .line 856
    new-instance v5, LB0/C;

    .line 857
    .line 858
    const/4 v6, 0x1

    .line 859
    invoke-direct {v5, v1, v6}, LB0/C;-><init>(LB0/v0;I)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v4, v7, v5}, Lx/e;->j(ILp0/u;)V

    .line 863
    .line 864
    .line 865
    :cond_26
    invoke-virtual {v3}, LB0/v0;->m()Z

    .line 866
    .line 867
    .line 868
    move-result v4

    .line 869
    invoke-virtual/range {p1 .. p1}, LB0/v0;->m()Z

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    if-eq v4, v5, :cond_27

    .line 874
    .line 875
    iget-object v4, v0, LB0/O;->S:Lx/e;

    .line 876
    .line 877
    new-instance v5, LB0/C;

    .line 878
    .line 879
    const/4 v6, 0x2

    .line 880
    invoke-direct {v5, v1, v6}, LB0/C;-><init>(LB0/v0;I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v4, v2, v5}, Lx/e;->j(ILp0/u;)V

    .line 884
    .line 885
    .line 886
    :cond_27
    iget-object v2, v3, LB0/v0;->o:Lm0/S;

    .line 887
    .line 888
    iget-object v4, v1, LB0/v0;->o:Lm0/S;

    .line 889
    .line 890
    invoke-virtual {v2, v4}, Lm0/S;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    if-nez v2, :cond_28

    .line 895
    .line 896
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 897
    .line 898
    new-instance v4, LB0/C;

    .line 899
    .line 900
    const/4 v5, 0x3

    .line 901
    invoke-direct {v4, v1, v5}, LB0/C;-><init>(LB0/v0;I)V

    .line 902
    .line 903
    .line 904
    const/16 v5, 0xc

    .line 905
    .line 906
    invoke-virtual {v2, v5, v4}, Lx/e;->j(ILp0/u;)V

    .line 907
    .line 908
    .line 909
    :cond_28
    invoke-virtual/range {p0 .. p0}, LB0/O;->Y()V

    .line 910
    .line 911
    .line 912
    iget-object v2, v0, LB0/O;->S:Lx/e;

    .line 913
    .line 914
    invoke-virtual {v2}, Lx/e;->g()V

    .line 915
    .line 916
    .line 917
    iget-boolean v2, v3, LB0/v0;->p:Z

    .line 918
    .line 919
    iget-boolean v1, v1, LB0/v0;->p:Z

    .line 920
    .line 921
    if-eq v2, v1, :cond_29

    .line 922
    .line 923
    iget-object v1, v0, LB0/O;->T:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 924
    .line 925
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-eqz v2, :cond_29

    .line 934
    .line 935
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    check-cast v2, LB0/L;

    .line 940
    .line 941
    iget-object v2, v2, LB0/L;->G:LB0/O;

    .line 942
    .line 943
    invoke-virtual {v2}, LB0/O;->b0()V

    .line 944
    .line 945
    .line 946
    goto :goto_f

    .line 947
    :cond_29
    return-void
.end method

.method public final b0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, LB0/O;->C()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, LB0/O;->h0:Ll/e1;

    .line 6
    .line 7
    iget-object v2, p0, LB0/O;->g0:Ll/e1;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v3, :cond_3

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    if-eq v0, v5, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 33
    .line 34
    iget-boolean v0, v0, LB0/v0;->p:Z

    .line 35
    .line 36
    invoke-virtual {p0}, LB0/O;->B()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 46
    :goto_0
    invoke-virtual {v2, v3}, Ll/e1;->g(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, LB0/O;->B()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Ll/e1;->g(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Ll/e1;->g(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ll/e1;->g(Z)V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public final c0()V
    .locals 5

    .line 1
    iget-object v0, p0, LB0/O;->J:Lp0/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp0/i;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, LB0/O;->Y:Landroid/os/Looper;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    const-string v2, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    .line 39
    .line 40
    const-string v3, "\'\nExpected thread: \'"

    .line 41
    .line 42
    const-string v4, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 43
    .line 44
    invoke-static {v2, v0, v3, v1, v4}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-boolean v1, p0, LB0/O;->H0:Z

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-boolean v1, p0, LB0/O;->I0:Z

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 64
    .line 65
    invoke-static {v2, v0, v1}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, LB0/O;->I0:Z

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method public final i(IJZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, LB0/O;->N0:LB0/v0;

    .line 19
    .line 20
    iget-object v4, v4, LB0/v0;->a:Lm0/f0;

    .line 21
    .line 22
    invoke-virtual {v4}, Lm0/f0;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4}, Lm0/f0;->p()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lt p1, v5, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v5, p0, LB0/O;->X:LC0/a;

    .line 36
    .line 37
    check-cast v5, LC0/A;

    .line 38
    .line 39
    iget-boolean v6, v5, LC0/A;->O:Z

    .line 40
    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v5}, LC0/A;->P()LC0/b;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iput-boolean v3, v5, LC0/A;->O:Z

    .line 48
    .line 49
    new-instance v7, LC0/i;

    .line 50
    .line 51
    invoke-direct {v7, v6, v2}, LC0/i;-><init>(LC0/b;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6, v1, v7}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget v1, p0, LB0/O;->m0:I

    .line 58
    .line 59
    add-int/2addr v1, v3

    .line 60
    iput v1, p0, LB0/O;->m0:I

    .line 61
    .line 62
    invoke-virtual {p0}, LB0/O;->F()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const-string v0, "ExoPlayerImpl"

    .line 69
    .line 70
    const-string v1, "seekTo ignored because an ad is playing"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, LB0/U;

    .line 76
    .line 77
    iget-object v1, p0, LB0/O;->N0:LB0/v0;

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, LB0/U;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, LB0/U;->d(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, LB0/O;->Q:LB0/H;

    .line 86
    .line 87
    iget-object v1, v1, LB0/H;->G:LB0/O;

    .line 88
    .line 89
    iget-object v2, v1, LB0/O;->P:Lp0/I;

    .line 90
    .line 91
    new-instance v3, Lf/t;

    .line 92
    .line 93
    const/16 v4, 0x10

    .line 94
    .line 95
    invoke-direct {v3, v4, v1, v0}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Lp0/I;->c(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object v1, p0, LB0/O;->N0:LB0/v0;

    .line 103
    .line 104
    iget v2, v1, LB0/v0;->e:I

    .line 105
    .line 106
    const/4 v3, 0x3

    .line 107
    if-eq v2, v3, :cond_5

    .line 108
    .line 109
    const/4 v5, 0x4

    .line 110
    if-ne v2, v5, :cond_6

    .line 111
    .line 112
    invoke-virtual {v4}, Lm0/f0;->q()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    :cond_5
    iget-object v1, p0, LB0/O;->N0:LB0/v0;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    invoke-static {v1, v2}, LB0/O;->G(LB0/v0;I)LB0/v0;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :cond_6
    invoke-virtual {p0}, LB0/O;->t()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual {p0, v4, p1, p2, p3}, LB0/O;->I(Lm0/f0;IJ)Landroid/util/Pair;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p0, v1, v4, v2}, LB0/O;->H(LB0/v0;Lm0/f0;Landroid/util/Pair;)LB0/v0;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {p2, p3}, Lp0/M;->R(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    iget-object v2, p0, LB0/O;->R:LB0/X;

    .line 142
    .line 143
    iget-object v2, v2, LB0/X;->N:Lp0/I;

    .line 144
    .line 145
    new-instance v8, LB0/W;

    .line 146
    .line 147
    invoke-direct {v8, v4, p1, v5, v6}, LB0/W;-><init>(Lm0/f0;IJ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v3, v8}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lp0/H;->b()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, LB0/O;->w(LB0/v0;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x1

    .line 163
    const/4 v4, 0x1

    .line 164
    move-object v0, p0

    .line 165
    move v8, p4

    .line 166
    invoke-virtual/range {v0 .. v8}, LB0/O;->a0(LB0/v0;IZIJIZ)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final isScrubbingModeEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LB0/O;->p0:Z

    .line 5
    .line 6
    return v0
.end method

.method public final n()Lm0/L;
    .locals 8

    .line 1
    invoke-virtual {p0}, LB0/O;->x()Lm0/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, LB0/O;->M0:Lm0/L;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, LB0/O;->t()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lm0/f;->G:Lm0/e0;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lm0/e0;->c:Lm0/I;

    .line 27
    .line 28
    iget-object v1, p0, LB0/O;->M0:Lm0/L;

    .line 29
    .line 30
    invoke-virtual {v1}, Lm0/L;->a()Lm0/K;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v0, v0, Lm0/I;->d:Lm0/L;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    iget-object v2, v0, Lm0/L;->a:Ljava/lang/CharSequence;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iput-object v2, v1, Lm0/K;->a:Ljava/lang/CharSequence;

    .line 45
    .line 46
    :cond_2
    iget-object v2, v0, Lm0/L;->b:Ljava/lang/CharSequence;

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    iput-object v2, v1, Lm0/K;->b:Ljava/lang/CharSequence;

    .line 51
    .line 52
    :cond_3
    iget-object v2, v0, Lm0/L;->c:Ljava/lang/CharSequence;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iput-object v2, v1, Lm0/K;->c:Ljava/lang/CharSequence;

    .line 57
    .line 58
    :cond_4
    iget-object v2, v0, Lm0/L;->d:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    iput-object v2, v1, Lm0/K;->d:Ljava/lang/CharSequence;

    .line 63
    .line 64
    :cond_5
    iget-object v2, v0, Lm0/L;->e:Ljava/lang/CharSequence;

    .line 65
    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    iput-object v2, v1, Lm0/K;->e:Ljava/lang/CharSequence;

    .line 69
    .line 70
    :cond_6
    iget-object v2, v0, Lm0/L;->f:Ljava/lang/CharSequence;

    .line 71
    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    iput-object v2, v1, Lm0/K;->f:Ljava/lang/CharSequence;

    .line 75
    .line 76
    :cond_7
    iget-object v2, v0, Lm0/L;->g:Ljava/lang/CharSequence;

    .line 77
    .line 78
    if-eqz v2, :cond_8

    .line 79
    .line 80
    iput-object v2, v1, Lm0/K;->g:Ljava/lang/CharSequence;

    .line 81
    .line 82
    :cond_8
    iget-object v2, v0, Lm0/L;->h:Ljava/lang/Long;

    .line 83
    .line 84
    if-eqz v2, :cond_a

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    cmp-long v7, v5, v3

    .line 91
    .line 92
    if-ltz v7, :cond_9

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_9
    const/4 v3, 0x0

    .line 97
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v1, Lm0/K;->h:Ljava/lang/Long;

    .line 101
    .line 102
    :cond_a
    iget-object v2, v0, Lm0/L;->i:[B

    .line 103
    .line 104
    iget-object v3, v0, Lm0/L;->k:Landroid/net/Uri;

    .line 105
    .line 106
    if-nez v3, :cond_b

    .line 107
    .line 108
    if-eqz v2, :cond_d

    .line 109
    .line 110
    :cond_b
    iput-object v3, v1, Lm0/K;->k:Landroid/net/Uri;

    .line 111
    .line 112
    if-nez v2, :cond_c

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    goto :goto_1

    .line 116
    :cond_c
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, [B

    .line 121
    .line 122
    :goto_1
    iput-object v2, v1, Lm0/K;->i:[B

    .line 123
    .line 124
    iget-object v2, v0, Lm0/L;->j:Ljava/lang/Integer;

    .line 125
    .line 126
    iput-object v2, v1, Lm0/K;->j:Ljava/lang/Integer;

    .line 127
    .line 128
    :cond_d
    iget-object v2, v0, Lm0/L;->l:Ljava/lang/Integer;

    .line 129
    .line 130
    if-eqz v2, :cond_e

    .line 131
    .line 132
    iput-object v2, v1, Lm0/K;->l:Ljava/lang/Integer;

    .line 133
    .line 134
    :cond_e
    iget-object v2, v0, Lm0/L;->m:Ljava/lang/Integer;

    .line 135
    .line 136
    if-eqz v2, :cond_f

    .line 137
    .line 138
    iput-object v2, v1, Lm0/K;->m:Ljava/lang/Integer;

    .line 139
    .line 140
    :cond_f
    iget-object v2, v0, Lm0/L;->n:Ljava/lang/Integer;

    .line 141
    .line 142
    if-eqz v2, :cond_10

    .line 143
    .line 144
    iput-object v2, v1, Lm0/K;->n:Ljava/lang/Integer;

    .line 145
    .line 146
    :cond_10
    iget-object v2, v0, Lm0/L;->o:Ljava/lang/Boolean;

    .line 147
    .line 148
    if-eqz v2, :cond_11

    .line 149
    .line 150
    iput-object v2, v1, Lm0/K;->o:Ljava/lang/Boolean;

    .line 151
    .line 152
    :cond_11
    iget-object v2, v0, Lm0/L;->p:Ljava/lang/Boolean;

    .line 153
    .line 154
    if-eqz v2, :cond_12

    .line 155
    .line 156
    iput-object v2, v1, Lm0/K;->p:Ljava/lang/Boolean;

    .line 157
    .line 158
    :cond_12
    iget-object v2, v0, Lm0/L;->q:Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v2, :cond_13

    .line 161
    .line 162
    iput-object v2, v1, Lm0/K;->q:Ljava/lang/Integer;

    .line 163
    .line 164
    :cond_13
    iget-object v2, v0, Lm0/L;->r:Ljava/lang/Integer;

    .line 165
    .line 166
    if-eqz v2, :cond_14

    .line 167
    .line 168
    iput-object v2, v1, Lm0/K;->q:Ljava/lang/Integer;

    .line 169
    .line 170
    :cond_14
    iget-object v2, v0, Lm0/L;->s:Ljava/lang/Integer;

    .line 171
    .line 172
    if-eqz v2, :cond_15

    .line 173
    .line 174
    iput-object v2, v1, Lm0/K;->r:Ljava/lang/Integer;

    .line 175
    .line 176
    :cond_15
    iget-object v2, v0, Lm0/L;->t:Ljava/lang/Integer;

    .line 177
    .line 178
    if-eqz v2, :cond_16

    .line 179
    .line 180
    iput-object v2, v1, Lm0/K;->s:Ljava/lang/Integer;

    .line 181
    .line 182
    :cond_16
    iget-object v2, v0, Lm0/L;->u:Ljava/lang/Integer;

    .line 183
    .line 184
    if-eqz v2, :cond_17

    .line 185
    .line 186
    iput-object v2, v1, Lm0/K;->t:Ljava/lang/Integer;

    .line 187
    .line 188
    :cond_17
    iget-object v2, v0, Lm0/L;->v:Ljava/lang/Integer;

    .line 189
    .line 190
    if-eqz v2, :cond_18

    .line 191
    .line 192
    iput-object v2, v1, Lm0/K;->u:Ljava/lang/Integer;

    .line 193
    .line 194
    :cond_18
    iget-object v2, v0, Lm0/L;->w:Ljava/lang/Integer;

    .line 195
    .line 196
    if-eqz v2, :cond_19

    .line 197
    .line 198
    iput-object v2, v1, Lm0/K;->v:Ljava/lang/Integer;

    .line 199
    .line 200
    :cond_19
    iget-object v2, v0, Lm0/L;->x:Ljava/lang/CharSequence;

    .line 201
    .line 202
    if-eqz v2, :cond_1a

    .line 203
    .line 204
    iput-object v2, v1, Lm0/K;->w:Ljava/lang/CharSequence;

    .line 205
    .line 206
    :cond_1a
    iget-object v2, v0, Lm0/L;->y:Ljava/lang/CharSequence;

    .line 207
    .line 208
    if-eqz v2, :cond_1b

    .line 209
    .line 210
    iput-object v2, v1, Lm0/K;->x:Ljava/lang/CharSequence;

    .line 211
    .line 212
    :cond_1b
    iget-object v2, v0, Lm0/L;->z:Ljava/lang/CharSequence;

    .line 213
    .line 214
    if-eqz v2, :cond_1c

    .line 215
    .line 216
    iput-object v2, v1, Lm0/K;->y:Ljava/lang/CharSequence;

    .line 217
    .line 218
    :cond_1c
    iget-object v2, v0, Lm0/L;->A:Ljava/lang/Integer;

    .line 219
    .line 220
    if-eqz v2, :cond_1d

    .line 221
    .line 222
    iput-object v2, v1, Lm0/K;->z:Ljava/lang/Integer;

    .line 223
    .line 224
    :cond_1d
    iget-object v2, v0, Lm0/L;->B:Ljava/lang/Integer;

    .line 225
    .line 226
    if-eqz v2, :cond_1e

    .line 227
    .line 228
    iput-object v2, v1, Lm0/K;->A:Ljava/lang/Integer;

    .line 229
    .line 230
    :cond_1e
    iget-object v2, v0, Lm0/L;->C:Ljava/lang/CharSequence;

    .line 231
    .line 232
    if-eqz v2, :cond_1f

    .line 233
    .line 234
    iput-object v2, v1, Lm0/K;->B:Ljava/lang/CharSequence;

    .line 235
    .line 236
    :cond_1f
    iget-object v2, v0, Lm0/L;->D:Ljava/lang/CharSequence;

    .line 237
    .line 238
    if-eqz v2, :cond_20

    .line 239
    .line 240
    iput-object v2, v1, Lm0/K;->C:Ljava/lang/CharSequence;

    .line 241
    .line 242
    :cond_20
    iget-object v2, v0, Lm0/L;->E:Ljava/lang/CharSequence;

    .line 243
    .line 244
    if-eqz v2, :cond_21

    .line 245
    .line 246
    iput-object v2, v1, Lm0/K;->D:Ljava/lang/CharSequence;

    .line 247
    .line 248
    :cond_21
    iget-object v2, v0, Lm0/L;->F:Ljava/lang/Integer;

    .line 249
    .line 250
    if-eqz v2, :cond_22

    .line 251
    .line 252
    iput-object v2, v1, Lm0/K;->E:Ljava/lang/Integer;

    .line 253
    .line 254
    :cond_22
    iget-object v2, v0, Lm0/L;->G:Landroid/os/Bundle;

    .line 255
    .line 256
    if-eqz v2, :cond_23

    .line 257
    .line 258
    iput-object v2, v1, Lm0/K;->F:Landroid/os/Bundle;

    .line 259
    .line 260
    :cond_23
    iget-object v0, v0, Lm0/L;->H:Lz4/H;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_24

    .line 267
    .line 268
    invoke-static {v0}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iput-object v0, v1, Lm0/K;->G:Lz4/H;

    .line 273
    .line 274
    :cond_24
    :goto_2
    new-instance v0, Lm0/L;

    .line 275
    .line 276
    invoke-direct {v0, v1}, Lm0/L;-><init>(Lm0/K;)V

    .line 277
    .line 278
    .line 279
    return-object v0
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LB0/O;->N()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, LB0/O;->V(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, LB0/O;->J(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final p(LB0/y0;)LB0/z0;
    .locals 8

    .line 1
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LB0/O;->z(LB0/v0;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v7, LB0/z0;

    .line 8
    .line 9
    iget-object v1, p0, LB0/O;->N0:LB0/v0;

    .line 10
    .line 11
    iget-object v4, v1, LB0/v0;->a:Lm0/f0;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v5, v0

    .line 20
    :goto_0
    iget-object v2, p0, LB0/O;->R:LB0/X;

    .line 21
    .line 22
    iget-object v6, v2, LB0/X;->P:Landroid/os/Looper;

    .line 23
    .line 24
    move-object v1, v7

    .line 25
    move-object v3, p1

    .line 26
    invoke-direct/range {v1 .. v6}, LB0/z0;-><init>(LB0/X;LB0/y0;Lm0/f0;ILandroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    return-object v7
.end method

.method public final q(LB0/v0;)J
    .locals 7

    .line 1
    iget-object v0, p1, LB0/v0;->b:LO0/y;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/y;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, LB0/v0;->b:LO0/y;

    .line 10
    .line 11
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p1, LB0/v0;->a:Lm0/f0;

    .line 14
    .line 15
    iget-object v2, p0, LB0/O;->U:Lm0/d0;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 18
    .line 19
    .line 20
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v5, p1, LB0/v0;->c:J

    .line 26
    .line 27
    cmp-long v0, v5, v3

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, LB0/O;->z(LB0/v0;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    iget-object v0, p0, Lm0/f;->G:Lm0/e0;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-wide v0, p1, Lm0/e0;->l:J

    .line 44
    .line 45
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-wide v0, v2, Lm0/d0;->e:J

    .line 51
    .line 52
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v5, v6}, Lp0/M;->e0(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    add-long/2addr v0, v2

    .line 61
    :goto_0
    return-wide v0

    .line 62
    :cond_1
    invoke-virtual {p0, p1}, LB0/O;->w(LB0/v0;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method public final r()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LB0/O;->F()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 11
    .line 12
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 13
    .line 14
    iget v0, v0, LO0/y;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LB0/O;->F()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 11
    .line 12
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 13
    .line 14
    iget v0, v0, LO0/y;->c:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, v1}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LB0/O;->p0:Z

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, LB0/O;->p0:Z

    .line 10
    .line 11
    iget-object v0, p0, LB0/O;->r0:LB0/H0;

    .line 12
    .line 13
    iget-object v1, v0, LB0/H0;->a:Lz4/L;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, LB0/O;->O:LR0/w;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, LR0/q;

    .line 28
    .line 29
    invoke-virtual {v2}, LR0/q;->h()LR0/k;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object v3, v2, Lm0/k0;->E:Lz4/L;

    .line 36
    .line 37
    iput-object v3, p0, LB0/O;->q0:Lz4/L;

    .line 38
    .line 39
    invoke-virtual {v2}, LR0/k;->a()Lm0/j0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v0, v0, LB0/H0;->a:Lz4/L;

    .line 44
    .line 45
    invoke-virtual {v0}, Lz4/L;->t()Lcom/google/android/gms/internal/ads/gB;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-virtual {v3, v4, v5}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v3}, Lm0/j0;->b()Lm0/k0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, LR0/j;

    .line 79
    .line 80
    invoke-direct {v0, v2}, LR0/j;-><init>(LR0/k;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, LB0/O;->q0:Lz4/L;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, LR0/j;->k(Lz4/L;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, LR0/k;

    .line 89
    .line 90
    invoke-direct {v3, v0}, LR0/k;-><init>(LR0/j;)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, LB0/O;->q0:Lz4/L;

    .line 95
    .line 96
    move-object v0, v3

    .line 97
    :goto_1
    invoke-virtual {v0, v2}, Lm0/k0;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v0}, LR0/w;->b(Lm0/k0;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, LB0/O;->R:LB0/X;

    .line 107
    .line 108
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/16 v1, 0x24

    .line 115
    .line 116
    invoke-virtual {v0, v1, p1}, Lp0/I;->a(ILjava/lang/Object;)Lp0/H;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lp0/H;->b()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, LB0/O;->N0:LB0/v0;

    .line 124
    .line 125
    iget-boolean v0, p1, LB0/v0;->l:Z

    .line 126
    .line 127
    iget p1, p1, LB0/v0;->m:I

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0}, LB0/O;->Z(IZ)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final t()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, LB0/O;->z(LB0/v0;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return v0
.end method

.method public final u()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 17
    .line 18
    iget-object v1, v0, LB0/v0;->a:Lm0/f0;

    .line 19
    .line 20
    iget-object v0, v0, LB0/v0;->b:LO0/y;

    .line 21
    .line 22
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public final v()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, LB0/O;->w(LB0/v0;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lp0/M;->e0(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final w(LB0/v0;)J
    .locals 4

    .line 1
    iget-object v0, p1, LB0/v0;->a:Lm0/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, LB0/O;->P0:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-boolean v0, p1, LB0/v0;->p:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, LB0/v0;->l()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v0, p1, LB0/v0;->s:J

    .line 26
    .line 27
    :goto_0
    iget-object v2, p1, LB0/v0;->b:LO0/y;

    .line 28
    .line 29
    invoke-virtual {v2}, LO0/y;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    iget-object v2, p1, LB0/v0;->a:Lm0/f0;

    .line 37
    .line 38
    iget-object p1, p1, LB0/v0;->b:LO0/y;

    .line 39
    .line 40
    iget-object p1, p1, LO0/y;->a:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v3, p0, LB0/O;->U:Lm0/d0;

    .line 43
    .line 44
    invoke-virtual {v2, p1, v3}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 45
    .line 46
    .line 47
    iget-wide v2, v3, Lm0/d0;->e:J

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    return-wide v0
.end method

.method public final x()Lm0/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget-object v0, v0, LB0/v0;->a:Lm0/f0;

    .line 7
    .line 8
    return-object v0
.end method

.method public final y()Lm0/m0;
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/O;->c0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LB0/O;->N0:LB0/v0;

    .line 5
    .line 6
    iget-object v0, v0, LB0/v0;->i:LR0/y;

    .line 7
    .line 8
    iget-object v0, v0, LR0/y;->d:Lm0/m0;

    .line 9
    .line 10
    return-object v0
.end method

.method public final z(LB0/v0;)I
    .locals 2

    .line 1
    iget-object v0, p1, LB0/v0;->a:Lm0/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm0/f0;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, LB0/O;->O0:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p1, LB0/v0;->b:LO0/y;

    .line 13
    .line 14
    iget-object v0, v0, LO0/y;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, LB0/O;->U:Lm0/d0;

    .line 17
    .line 18
    iget-object p1, p1, LB0/v0;->a:Lm0/f0;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lm0/f0;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p1, p1, Lm0/d0;->c:I

    .line 25
    .line 26
    return p1
.end method
