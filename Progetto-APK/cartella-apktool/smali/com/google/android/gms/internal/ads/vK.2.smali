.class public final Lcom/google/android/gms/internal/ads/vK;
.super Lcom/google/android/gms/internal/ads/pK;
.source "SourceFile"


# static fields
.field public static final synthetic U:I


# instance fields
.field public final A:Lcom/google/android/gms/internal/ads/ZK;

.field public final B:Lcom/google/android/gms/internal/ads/nK;

.field public C:Lcom/google/android/gms/internal/ads/ac;

.field public D:Lcom/google/android/gms/internal/ads/i9;

.field public E:Ljava/lang/Object;

.field public F:Landroid/view/Surface;

.field public final G:I

.field public H:Lcom/google/android/gms/internal/ads/Br;

.field public final I:Lcom/google/android/gms/internal/ads/bH;

.field public J:F

.field public K:Z

.field public final L:Z

.field public M:Z

.field public final N:I

.field public O:Lcom/google/android/gms/internal/ads/i9;

.field public P:Lcom/google/android/gms/internal/ads/RK;

.field public Q:I

.field public R:J

.field public final S:Lcom/google/android/gms/internal/ads/qK;

.field public T:Lcom/google/android/gms/internal/ads/WN;

.field public final b:Lcom/google/android/gms/internal/ads/yO;

.field public final c:Lcom/google/android/gms/internal/ads/ac;

.field public final d:LG/c;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/Vc;

.field public final g:[Lcom/google/android/gms/internal/ads/aK;

.field public final h:Lcom/google/android/gms/internal/ads/wO;

.field public final i:Lcom/google/android/gms/internal/ads/ts;

.field public final j:Lcom/google/android/gms/internal/ads/BK;

.field public final k:Lx/e;

.field public final l:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final m:Lcom/google/android/gms/internal/ads/je;

.field public final n:Ljava/util/ArrayList;

.field public final o:Z

.field public final p:Lcom/google/android/gms/internal/ads/cL;

.field public final q:Landroid/os/Looper;

.field public final r:Lcom/google/android/gms/internal/ads/EO;

.field public final s:Lcom/google/android/gms/internal/ads/Nr;

.field public final t:Lcom/google/android/gms/internal/ads/sK;

.field public final u:Lcom/google/android/gms/internal/ads/tK;

.field public final v:Lcom/google/android/gms/internal/ads/ZJ;

.field public final w:J

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/R7;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/mK;Lcom/google/android/gms/internal/ads/Vc;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    const/4 v5, 0x2

    .line 8
    const/16 v6, 0x16

    .line 9
    .line 10
    const/16 v7, 0x14

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    const-string v9, "Init "

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pK;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v10, LG/c;

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    invoke-direct {v10, v11}, LG/c;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v10, v1, Lcom/google/android/gms/internal/ads/vK;->d:LG/c;

    .line 25
    .line 26
    :try_start_0
    const-string v10, "ExoPlayerImpl"

    .line 27
    .line 28
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    sget-object v13, Lcom/google/android/gms/internal/ads/Et;->e:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v14, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v9, " [AndroidXMedia3/1.4.0] ["

    .line 47
    .line 48
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v9, "]"

    .line 55
    .line 56
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->e:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mK;->h:Lcom/google/android/gms/internal/ads/u1;

    .line 75
    .line 76
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/mK;->b:Lcom/google/android/gms/internal/ads/Nr;

    .line 77
    .line 78
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/u1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Lcom/google/android/gms/internal/ads/cL;

    .line 83
    .line 84
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 85
    .line 86
    iget v9, v0, Lcom/google/android/gms/internal/ads/mK;->j:I

    .line 87
    .line 88
    iput v9, v1, Lcom/google/android/gms/internal/ads/vK;->N:I

    .line 89
    .line 90
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mK;->k:Lcom/google/android/gms/internal/ads/bH;

    .line 91
    .line 92
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->I:Lcom/google/android/gms/internal/ads/bH;

    .line 93
    .line 94
    iget v9, v0, Lcom/google/android/gms/internal/ads/mK;->l:I

    .line 95
    .line 96
    iput v9, v1, Lcom/google/android/gms/internal/ads/vK;->G:I

    .line 97
    .line 98
    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/vK;->K:Z

    .line 99
    .line 100
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/mK;->p:J

    .line 101
    .line 102
    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/vK;->w:J

    .line 103
    .line 104
    new-instance v9, Lcom/google/android/gms/internal/ads/sK;

    .line 105
    .line 106
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/sK;-><init>(Lcom/google/android/gms/internal/ads/vK;)V

    .line 107
    .line 108
    .line 109
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->t:Lcom/google/android/gms/internal/ads/sK;

    .line 110
    .line 111
    new-instance v10, Lcom/google/android/gms/internal/ads/tK;

    .line 112
    .line 113
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v10, v1, Lcom/google/android/gms/internal/ads/vK;->u:Lcom/google/android/gms/internal/ads/tK;

    .line 117
    .line 118
    new-instance v10, Landroid/os/Handler;

    .line 119
    .line 120
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->i:Landroid/os/Looper;

    .line 121
    .line 122
    invoke-direct {v10, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    .line 124
    .line 125
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->c:Lcom/google/android/gms/internal/ads/kK;

    .line 126
    .line 127
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/kK;->G:Lcom/google/android/gms/internal/ads/uf;

    .line 128
    .line 129
    invoke-virtual {v12, v10, v9, v9}, Lcom/google/android/gms/internal/ads/uf;->a(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;Lcom/google/android/gms/internal/ads/sK;)[Lcom/google/android/gms/internal/ads/aK;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->g:[Lcom/google/android/gms/internal/ads/aK;

    .line 134
    .line 135
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mK;->e:Lcom/google/android/gms/internal/ads/Gz;

    .line 136
    .line 137
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Gz;->zza()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    check-cast v9, Lcom/google/android/gms/internal/ads/wO;

    .line 142
    .line 143
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 144
    .line 145
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/mK;->d:Lcom/google/android/gms/internal/ads/Mx;

    .line 146
    .line 147
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/Mx;->G:Landroid/content/Context;

    .line 148
    .line 149
    new-instance v12, Lcom/google/android/gms/internal/ads/H;

    .line 150
    .line 151
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/H;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v12, Lcom/google/android/gms/internal/ads/Om;

    .line 155
    .line 156
    invoke-direct {v12, v9}, Lcom/google/android/gms/internal/ads/Om;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    const/16 v9, 0xa

    .line 160
    .line 161
    new-instance v12, Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v13, Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 172
    .line 173
    .line 174
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 175
    .line 176
    .line 177
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->g:Lcom/google/android/gms/internal/ads/lK;

    .line 178
    .line 179
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/lK;->G:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/EO;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/EO;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->r:Lcom/google/android/gms/internal/ads/EO;

    .line 186
    .line 187
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/mK;->m:Z

    .line 188
    .line 189
    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/vK;->o:Z

    .line 190
    .line 191
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->n:Lcom/google/android/gms/internal/ads/ZK;

    .line 192
    .line 193
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->A:Lcom/google/android/gms/internal/ads/ZK;

    .line 194
    .line 195
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->i:Landroid/os/Looper;

    .line 196
    .line 197
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

    .line 198
    .line 199
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/mK;->b:Lcom/google/android/gms/internal/ads/Nr;

    .line 200
    .line 201
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/vK;->s:Lcom/google/android/gms/internal/ads/Nr;

    .line 202
    .line 203
    move-object/from16 v14, p2

    .line 204
    .line 205
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/vK;->f:Lcom/google/android/gms/internal/ads/Vc;

    .line 206
    .line 207
    new-instance v14, Lx/e;

    .line 208
    .line 209
    new-instance v15, Lcom/google/android/gms/internal/ads/fF;

    .line 210
    .line 211
    invoke-direct {v15, v6, v11}, Lcom/google/android/gms/internal/ads/fF;-><init>(II)V

    .line 212
    .line 213
    .line 214
    invoke-direct {v14, v12, v13, v15}, Lx/e;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/oo;)V

    .line 215
    .line 216
    .line 217
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 218
    .line 219
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 220
    .line 221
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 225
    .line 226
    new-instance v6, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    .line 231
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->n:Ljava/util/ArrayList;

    .line 232
    .line 233
    new-instance v6, Lcom/google/android/gms/internal/ads/WN;

    .line 234
    .line 235
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/WN;-><init>()V

    .line 236
    .line 237
    .line 238
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 239
    .line 240
    sget-object v6, Lcom/google/android/gms/internal/ads/nK;->a:Lcom/google/android/gms/internal/ads/nK;

    .line 241
    .line 242
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->B:Lcom/google/android/gms/internal/ads/nK;

    .line 243
    .line 244
    new-instance v6, Lcom/google/android/gms/internal/ads/yO;

    .line 245
    .line 246
    new-array v12, v5, [Lcom/google/android/gms/internal/ads/YK;

    .line 247
    .line 248
    new-array v13, v5, [Lcom/google/android/gms/internal/ads/uO;

    .line 249
    .line 250
    sget-object v14, Lcom/google/android/gms/internal/ads/Hg;->b:Lcom/google/android/gms/internal/ads/Hg;

    .line 251
    .line 252
    const/4 v15, 0x0

    .line 253
    invoke-direct {v6, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/yO;-><init>([Lcom/google/android/gms/internal/ads/YK;[Lcom/google/android/gms/internal/ads/uO;Lcom/google/android/gms/internal/ads/Hg;Lcom/google/android/gms/internal/ads/vO;)V

    .line 254
    .line 255
    .line 256
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->b:Lcom/google/android/gms/internal/ads/yO;

    .line 257
    .line 258
    new-instance v6, Lcom/google/android/gms/internal/ads/je;

    .line 259
    .line 260
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 264
    .line 265
    new-instance v6, Landroid/util/SparseBooleanArray;

    .line 266
    .line 267
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 268
    .line 269
    .line 270
    new-array v12, v7, [I

    .line 271
    .line 272
    fill-array-data v12, :array_0

    .line 273
    .line 274
    .line 275
    const/4 v13, 0x0

    .line 276
    :goto_0
    if-ge v13, v7, :cond_0

    .line 277
    .line 278
    aget v14, v12, v13

    .line 279
    .line 280
    xor-int/lit8 v16, v11, 0x1

    .line 281
    .line 282
    invoke-static/range {v16 .. v16}, Lo3/r;->M(Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v6, v14, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 286
    .line 287
    .line 288
    add-int/2addr v13, v8

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 291
    .line 292
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    xor-int/lit8 v7, v11, 0x1

    .line 296
    .line 297
    invoke-static {v7}, Lo3/r;->M(Z)V

    .line 298
    .line 299
    .line 300
    const/16 v7, 0x1d

    .line 301
    .line 302
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 303
    .line 304
    .line 305
    new-instance v7, Lcom/google/android/gms/internal/ads/ac;

    .line 306
    .line 307
    xor-int/lit8 v12, v11, 0x1

    .line 308
    .line 309
    invoke-static {v12}, Lo3/r;->M(Z)V

    .line 310
    .line 311
    .line 312
    new-instance v12, Lcom/google/android/gms/internal/ads/o;

    .line 313
    .line 314
    invoke-direct {v12, v6}, Lcom/google/android/gms/internal/ads/o;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 315
    .line 316
    .line 317
    invoke-direct {v7, v12}, Lcom/google/android/gms/internal/ads/ac;-><init>(Lcom/google/android/gms/internal/ads/o;)V

    .line 318
    .line 319
    .line 320
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/vK;->c:Lcom/google/android/gms/internal/ads/ac;

    .line 321
    .line 322
    new-instance v6, Landroid/util/SparseBooleanArray;

    .line 323
    .line 324
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 325
    .line 326
    .line 327
    const/4 v7, 0x0

    .line 328
    :goto_1
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/o;->a:Landroid/util/SparseBooleanArray;

    .line 329
    .line 330
    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    .line 331
    .line 332
    .line 333
    move-result v13

    .line 334
    if-ge v7, v13, :cond_1

    .line 335
    .line 336
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/o;->a(I)I

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    xor-int/lit8 v14, v11, 0x1

    .line 341
    .line 342
    invoke-static {v14}, Lo3/r;->M(Z)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6, v13, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 346
    .line 347
    .line 348
    add-int/2addr v7, v8

    .line 349
    goto :goto_1

    .line 350
    :cond_1
    xor-int/lit8 v7, v11, 0x1

    .line 351
    .line 352
    invoke-static {v7}, Lo3/r;->M(Z)V

    .line 353
    .line 354
    .line 355
    const/4 v7, 0x4

    .line 356
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 357
    .line 358
    .line 359
    xor-int/lit8 v12, v11, 0x1

    .line 360
    .line 361
    invoke-static {v12}, Lo3/r;->M(Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6, v9, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 365
    .line 366
    .line 367
    new-instance v12, Lcom/google/android/gms/internal/ads/ac;

    .line 368
    .line 369
    xor-int/lit8 v13, v11, 0x1

    .line 370
    .line 371
    invoke-static {v13}, Lo3/r;->M(Z)V

    .line 372
    .line 373
    .line 374
    new-instance v13, Lcom/google/android/gms/internal/ads/o;

    .line 375
    .line 376
    invoke-direct {v13, v6}, Lcom/google/android/gms/internal/ads/o;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 377
    .line 378
    .line 379
    invoke-direct {v12, v13}, Lcom/google/android/gms/internal/ads/ac;-><init>(Lcom/google/android/gms/internal/ads/o;)V

    .line 380
    .line 381
    .line 382
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->C:Lcom/google/android/gms/internal/ads/ac;

    .line 383
    .line 384
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->s:Lcom/google/android/gms/internal/ads/Nr;

    .line 385
    .line 386
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

    .line 387
    .line 388
    invoke-virtual {v6, v12, v15}, Lcom/google/android/gms/internal/ads/Nr;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/ts;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 393
    .line 394
    new-instance v6, Lcom/google/android/gms/internal/ads/qK;

    .line 395
    .line 396
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/qK;-><init>(Lcom/google/android/gms/internal/ads/vK;)V

    .line 397
    .line 398
    .line 399
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->S:Lcom/google/android/gms/internal/ads/qK;

    .line 400
    .line 401
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->b:Lcom/google/android/gms/internal/ads/yO;

    .line 402
    .line 403
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/RK;->g(Lcom/google/android/gms/internal/ads/yO;)Lcom/google/android/gms/internal/ads/RK;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 408
    .line 409
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 410
    .line 411
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/vK;->f:Lcom/google/android/gms/internal/ads/Vc;

    .line 412
    .line 413
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

    .line 414
    .line 415
    check-cast v12, Lcom/google/android/gms/internal/ads/tL;

    .line 416
    .line 417
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/ads/tL;->b(Lcom/google/android/gms/internal/ads/Vc;Landroid/os/Looper;)V

    .line 418
    .line 419
    .line 420
    sget v12, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 421
    .line 422
    if-ge v12, v2, :cond_2

    .line 423
    .line 424
    new-instance v2, Lcom/google/android/gms/internal/ads/zL;

    .line 425
    .line 426
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->s:Ljava/lang/String;

    .line 427
    .line 428
    invoke-direct {v2, v12}, Lcom/google/android/gms/internal/ads/zL;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :goto_2
    move-object/from16 v26, v2

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :catchall_0
    move-exception v0

    .line 435
    goto/16 :goto_5

    .line 436
    .line 437
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vK;->e:Landroid/content/Context;

    .line 438
    .line 439
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/mK;->q:Z

    .line 440
    .line 441
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/mK;->s:Ljava/lang/String;

    .line 442
    .line 443
    invoke-static {v2, v1, v12, v13}, Lcom/google/android/gms/internal/ads/rK;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vK;ZLjava/lang/String;)Lcom/google/android/gms/internal/ads/zL;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    goto :goto_2

    .line 448
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/BK;

    .line 449
    .line 450
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/vK;->g:[Lcom/google/android/gms/internal/ads/aK;

    .line 451
    .line 452
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 453
    .line 454
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/vK;->b:Lcom/google/android/gms/internal/ads/yO;

    .line 455
    .line 456
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/mK;->f:Lcom/google/android/gms/internal/ads/Gz;

    .line 457
    .line 458
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/Gz;->zza()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    move-object/from16 v16, v12

    .line 463
    .line 464
    check-cast v16, Lcom/google/android/gms/internal/ads/DK;

    .line 465
    .line 466
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/vK;->r:Lcom/google/android/gms/internal/ads/EO;

    .line 467
    .line 468
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 469
    .line 470
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/vK;->A:Lcom/google/android/gms/internal/ads/ZK;

    .line 471
    .line 472
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/mK;->t:Lcom/google/android/gms/internal/ads/eK;

    .line 473
    .line 474
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/mK;->o:J

    .line 475
    .line 476
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

    .line 477
    .line 478
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/vK;->s:Lcom/google/android/gms/internal/ads/Nr;

    .line 479
    .line 480
    move-object/from16 v28, v10

    .line 481
    .line 482
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/vK;->B:Lcom/google/android/gms/internal/ads/nK;

    .line 483
    .line 484
    move-object/from16 v17, v12

    .line 485
    .line 486
    move-object v12, v2

    .line 487
    move-object/from16 v18, v3

    .line 488
    .line 489
    move-object/from16 v19, v11

    .line 490
    .line 491
    move-object/from16 v20, v7

    .line 492
    .line 493
    move-wide/from16 v21, v4

    .line 494
    .line 495
    move-object/from16 v23, v9

    .line 496
    .line 497
    move-object/from16 v24, v8

    .line 498
    .line 499
    move-object/from16 v25, v6

    .line 500
    .line 501
    move-object/from16 v27, v10

    .line 502
    .line 503
    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/internal/ads/BK;-><init>([Lcom/google/android/gms/internal/ads/aK;Lcom/google/android/gms/internal/ads/wO;Lcom/google/android/gms/internal/ads/yO;Lcom/google/android/gms/internal/ads/DK;Lcom/google/android/gms/internal/ads/BO;Lcom/google/android/gms/internal/ads/cL;Lcom/google/android/gms/internal/ads/ZK;Lcom/google/android/gms/internal/ads/eK;JLandroid/os/Looper;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/qK;Lcom/google/android/gms/internal/ads/zL;Lcom/google/android/gms/internal/ads/nK;)V

    .line 504
    .line 505
    .line 506
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 507
    .line 508
    const/high16 v2, 0x3f800000    # 1.0f

    .line 509
    .line 510
    iput v2, v1, Lcom/google/android/gms/internal/ads/vK;->J:F

    .line 511
    .line 512
    sget-object v2, Lcom/google/android/gms/internal/ads/i9;->y:Lcom/google/android/gms/internal/ads/i9;

    .line 513
    .line 514
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/vK;->D:Lcom/google/android/gms/internal/ads/i9;

    .line 515
    .line 516
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    .line 517
    .line 518
    const/4 v2, -0x1

    .line 519
    iput v2, v1, Lcom/google/android/gms/internal/ads/vK;->Q:I

    .line 520
    .line 521
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vK;->e:Landroid/content/Context;

    .line 522
    .line 523
    const-string v4, "audio"

    .line 524
    .line 525
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    check-cast v3, Landroid/media/AudioManager;

    .line 530
    .line 531
    if-nez v3, :cond_3

    .line 532
    .line 533
    const/4 v3, -0x1

    .line 534
    goto :goto_4

    .line 535
    :cond_3
    invoke-virtual {v3}, Landroid/media/AudioManager;->generateAudioSessionId()I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    :goto_4
    sget v4, Lcom/google/android/gms/internal/ads/ck;->a:I

    .line 540
    .line 541
    const/4 v4, 0x1

    .line 542
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/vK;->L:Z

    .line 543
    .line 544
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 545
    .line 546
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    :try_start_1
    invoke-virtual {v5, v4}, Lx/e;->n(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/vK;->r:Lcom/google/android/gms/internal/ads/EO;

    .line 555
    .line 556
    new-instance v5, Landroid/os/Handler;

    .line 557
    .line 558
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

    .line 559
    .line 560
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 561
    .line 562
    .line 563
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 569
    .line 570
    .line 571
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/EO;->H:Lcom/google/android/gms/internal/ads/MN;

    .line 572
    .line 573
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/MN;->c(Lcom/google/android/gms/internal/ads/cL;)V

    .line 574
    .line 575
    .line 576
    new-instance v7, Lcom/google/android/gms/internal/ads/AO;

    .line 577
    .line 578
    invoke-direct {v7, v5, v6}, Lcom/google/android/gms/internal/ads/AO;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/cL;)V

    .line 579
    .line 580
    .line 581
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 584
    .line 585
    invoke-virtual {v4, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/vK;->t:Lcom/google/android/gms/internal/ads/sK;

    .line 589
    .line 590
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/vK;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 591
    .line 592
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 596
    .line 597
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 598
    .line 599
    .line 600
    new-instance v4, Lcom/google/android/gms/internal/ads/WJ;

    .line 601
    .line 602
    move-object/from16 v5, v28

    .line 603
    .line 604
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/WJ;-><init>(Landroid/os/Handler;)V

    .line 605
    .line 606
    .line 607
    new-instance v4, Lcom/google/android/gms/internal/ads/ZJ;

    .line 608
    .line 609
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 610
    .line 611
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/vK;->t:Lcom/google/android/gms/internal/ads/sK;

    .line 612
    .line 613
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/ads/ZJ;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V

    .line 614
    .line 615
    .line 616
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 617
    .line 618
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 619
    .line 620
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 621
    .line 622
    .line 623
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mK;->a:Landroid/content/Context;

    .line 624
    .line 625
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 626
    .line 627
    .line 628
    new-instance v0, Lcom/google/android/gms/internal/ads/fN;

    .line 629
    .line 630
    sget-object v0, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 631
    .line 632
    sget-object v0, Lcom/google/android/gms/internal/ads/Br;->c:Lcom/google/android/gms/internal/ads/Br;

    .line 633
    .line 634
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->H:Lcom/google/android/gms/internal/ads/Br;

    .line 635
    .line 636
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 637
    .line 638
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/vK;->I:Lcom/google/android/gms/internal/ads/bH;

    .line 639
    .line 640
    check-cast v0, Lcom/google/android/gms/internal/ads/sO;

    .line 641
    .line 642
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sO;->c:Ljava/lang/Object;

    .line 643
    .line 644
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    :try_start_2
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/sO;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 646
    .line 647
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/bH;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    const/4 v7, 0x1

    .line 652
    xor-int/2addr v6, v7

    .line 653
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/sO;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 654
    .line 655
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 656
    if-eqz v6, :cond_4

    .line 657
    .line 658
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sO;->i()V

    .line 659
    .line 660
    .line 661
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    const/16 v4, 0xa

    .line 666
    .line 667
    const/4 v5, 0x1

    .line 668
    invoke-virtual {v1, v5, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 669
    .line 670
    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    const/4 v3, 0x2

    .line 676
    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->I:Lcom/google/android/gms/internal/ads/bH;

    .line 680
    .line 681
    const/4 v4, 0x3

    .line 682
    invoke-virtual {v1, v5, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 683
    .line 684
    .line 685
    iget v0, v1, Lcom/google/android/gms/internal/ads/vK;->G:I

    .line 686
    .line 687
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    const/4 v4, 0x4

    .line 692
    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 693
    .line 694
    .line 695
    const/4 v0, 0x0

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    const/4 v4, 0x5

    .line 701
    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 702
    .line 703
    .line 704
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/vK;->K:Z

    .line 705
    .line 706
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    const/16 v3, 0x9

    .line 711
    .line 712
    const/4 v4, 0x1

    .line 713
    invoke-virtual {v1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->u:Lcom/google/android/gms/internal/ads/tK;

    .line 717
    .line 718
    const/4 v3, 0x7

    .line 719
    const/4 v4, 0x2

    .line 720
    invoke-virtual {v1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 721
    .line 722
    .line 723
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->u:Lcom/google/android/gms/internal/ads/tK;

    .line 724
    .line 725
    const/4 v3, 0x6

    .line 726
    const/16 v4, 0x8

    .line 727
    .line 728
    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 729
    .line 730
    .line 731
    iget v0, v1, Lcom/google/android/gms/internal/ads/vK;->N:I

    .line 732
    .line 733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    const/16 v3, 0x10

    .line 738
    .line 739
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    .line 741
    .line 742
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->d:LG/c;

    .line 743
    .line 744
    invoke-virtual {v0}, LG/c;->e()Z

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    :catchall_1
    move-exception v0

    .line 749
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 750
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 751
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vK;->d:LG/c;

    .line 752
    .line 753
    invoke-virtual {v2}, LG/c;->e()Z

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
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

.method public static h(Lcom/google/android/gms/internal/ads/RK;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/we;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/we;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/je;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 18
    .line 19
    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/RK;->c:J

    .line 26
    .line 27
    cmp-long v6, v4, v2

    .line 28
    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 32
    .line 33
    iget v1, v1, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    return-wide v2

    .line 45
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->g:[Lcom/google/android/gms/internal/ads/aK;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    return-void
.end method

.method public final B(Lcom/google/android/gms/internal/ads/eL;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tL;->L:Lx/e;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lx/e;->n(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final C()V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/Et;->e:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/R7;->a:Ljava/util/HashSet;

    .line 12
    .line 13
    const-class v2, Lcom/google/android/gms/internal/ads/R7;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/R7;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v2

    .line 19
    const-string v2, "Release "

    .line 20
    .line 21
    const-string v4, " [AndroidXMedia3/1.4.0] ["

    .line 22
    .line 23
    const-string v5, "] ["

    .line 24
    .line 25
    invoke-static {v2, v0, v4, v1, v5}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "]"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "ExoPlayerImpl"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ZJ;->c:Lcom/google/android/gms/internal/ads/YJ;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZJ;->a()V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/BK;->I()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v2, 0x15

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 72
    .line 73
    new-instance v3, Lcom/google/android/gms/internal/ads/fF;

    .line 74
    .line 75
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/fF;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const/16 v4, 0xa

    .line 79
    .line 80
    invoke-virtual {v0, v4, v3}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lx/e;->o()V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 87
    .line 88
    invoke-virtual {v0}, Lx/e;->q()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->r:Lcom/google/android/gms/internal/ads/EO;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/EO;->H:Lcom/google/android/gms/internal/ads/MN;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/MN;->c(Lcom/google/android/gms/internal/ads/cL;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/RK;->e(I)Lcom/google/android/gms/internal/ads/RK;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 120
    .line 121
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 122
    .line 123
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/RK;->a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 128
    .line 129
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 130
    .line 131
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 134
    .line 135
    const-wide/16 v3, 0x0

    .line 136
    .line 137
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 140
    .line 141
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 142
    .line 143
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/tL;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 144
    .line 145
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v4, Lcom/google/android/gms/internal/ads/Zn;

    .line 149
    .line 150
    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/ts;->b(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wO;->b()V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->F:Landroid/view/Surface;

    .line 162
    .line 163
    if-eqz v0, :cond_1

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->F:Landroid/view/Surface;

    .line 169
    .line 170
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/ck;->a:I

    .line 171
    .line 172
    return-void

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    monitor-exit v2

    .line 175
    throw v0
.end method

.method public final a(IJ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-static {v3}, Lo3/r;->J(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_3

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ie;->c()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge p1, v4, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    return-void

    .line 35
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 36
    .line 37
    check-cast v4, Lcom/google/android/gms/internal/ads/tL;

    .line 38
    .line 39
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/tL;->O:Z

    .line 40
    .line 41
    if-nez v5, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iput-boolean v2, v4, Lcom/google/android/gms/internal/ads/tL;->O:Z

    .line 48
    .line 49
    new-instance v6, Lcom/google/android/gms/internal/ads/mL;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/mL;-><init>(Lcom/google/android/gms/internal/ads/gL;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5, v1, v6}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 59
    .line 60
    add-int/2addr v1, v2

    .line 61
    iput v1, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->p()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v4, 0x2

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    const-string v0, "ExoPlayerImpl"

    .line 71
    .line 72
    const-string v1, "seekTo ignored because an ad is playing"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, LB0/U;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 80
    .line 81
    invoke-direct {v0, v1, v4}, LB0/U;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, LB0/U;->f(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->S:Lcom/google/android/gms/internal/ads/qK;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/co;

    .line 95
    .line 96
    const/16 v3, 0x13

    .line 97
    .line 98
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/vK;->i:Lcom/google/android/gms/internal/ads/ts;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ts;->b(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 108
    .line 109
    iget v2, v1, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 110
    .line 111
    const/4 v5, 0x3

    .line 112
    if-eq v2, v5, :cond_6

    .line 113
    .line 114
    const/4 v6, 0x4

    .line 115
    if-ne v2, v6, :cond_7

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_7

    .line 122
    .line 123
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/RK;->e(I)Lcom/google/android/gms/internal/ads/RK;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->zzd()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/vK;->i(Lcom/google/android/gms/internal/ads/Ie;IJ)Landroid/util/Pair;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/vK;->j(Lcom/google/android/gms/internal/ads/RK;Lcom/google/android/gms/internal/ads/Ie;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/RK;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 142
    .line 143
    .line 144
    move-result-wide v8

    .line 145
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v4, Lcom/google/android/gms/internal/ads/AK;

    .line 151
    .line 152
    invoke-direct {v4, v3, p1, v8, v9}, Lcom/google/android/gms/internal/ads/AK;-><init>(Lcom/google/android/gms/internal/ads/Ie;IJ)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 156
    .line 157
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/ts;->a(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/gs;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gs;->a()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/vK;->f(Lcom/google/android/gms/internal/ads/RK;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v5

    .line 168
    const/4 v3, 0x1

    .line 169
    const/4 v4, 0x1

    .line 170
    const/4 v2, 0x0

    .line 171
    move-object v0, p0

    .line 172
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vK;->q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/eL;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tL;->L:Lx/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lx/e;->r()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 14
    .line 15
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/android/gms/internal/ads/yo;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, v0, Lx/e;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Lcom/google/android/gms/internal/ads/oo;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    iput-boolean v5, v3, Lcom/google/android/gms/internal/ads/yo;->d:Z

    .line 47
    .line 48
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    iput-boolean v5, v3, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 54
    .line 55
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/yo;->b:Lm0/q;

    .line 56
    .line 57
    invoke-virtual {v5}, Lm0/q;->d()Lcom/google/android/gms/internal/ads/o;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/oo;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/o;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/eN;)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 17
    .line 18
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/vK;->d(Lcom/google/android/gms/internal/ads/RK;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->zzk()J

    .line 22
    .line 23
    .line 24
    iget v1, v8, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    add-int/2addr v1, v2

    .line 28
    iput v1, v8, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 29
    .line 30
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/vK;->n:Ljava/util/ArrayList;

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
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 54
    .line 55
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/WN;->b:[I

    .line 56
    .line 57
    array-length v7, v6

    .line 58
    sub-int/2addr v7, v3

    .line 59
    new-array v7, v7, [I

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_1
    array-length v11, v6

    .line 64
    if-ge v9, v11, :cond_3

    .line 65
    .line 66
    aget v11, v6, v9

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
    sub-int v12, v9, v10

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
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/WN;

    .line 86
    .line 87
    new-instance v6, Ljava/util/Random;

    .line 88
    .line 89
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/WN;->a:Ljava/util/Random;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-direct {v6, v9, v10}, Ljava/util/Random;-><init>(J)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v7, v6}, Lcom/google/android/gms/internal/ads/WN;-><init>([ILjava/util/Random;)V

    .line 99
    .line 100
    .line 101
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 102
    .line 103
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

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
    new-instance v5, Lcom/google/android/gms/internal/ads/OK;

    .line 116
    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcom/google/android/gms/internal/ads/eN;

    .line 122
    .line 123
    iget-boolean v7, v8, Lcom/google/android/gms/internal/ads/vK;->o:Z

    .line 124
    .line 125
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/OK;-><init>(Lcom/google/android/gms/internal/ads/eN;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/OK;->b:Ljava/lang/Object;

    .line 132
    .line 133
    new-instance v7, Lcom/google/android/gms/internal/ads/uK;

    .line 134
    .line 135
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 136
    .line 137
    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/internal/ads/uK;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/tN;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 147
    .line 148
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/WN;->a(I)Lcom/google/android/gms/internal/ads/WN;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 157
    .line 158
    new-instance v0, Lcom/google/android/gms/internal/ads/WK;

    .line 159
    .line 160
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 161
    .line 162
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/WK;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/WN;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iget v3, v0, Lcom/google/android/gms/internal/ads/WK;->d:I

    .line 170
    .line 171
    if-nez v1, :cond_7

    .line 172
    .line 173
    if-ltz v3, :cond_6

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/s1;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_7
    :goto_4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/WK;->g(Z)I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 187
    .line 188
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v0, v14, v5, v6}, Lcom/google/android/gms/internal/ads/vK;->i(Lcom/google/android/gms/internal/ads/Ie;IJ)Landroid/util/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v8, v1, v0, v7}, Lcom/google/android/gms/internal/ads/vK;->j(Lcom/google/android/gms/internal/ads/RK;Lcom/google/android/gms/internal/ads/Ie;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/RK;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const/4 v7, -0x1

    .line 202
    iget v9, v1, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 203
    .line 204
    if-eq v14, v7, :cond_9

    .line 205
    .line 206
    if-eq v9, v2, :cond_9

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/4 v9, 0x4

    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    if-lt v14, v3, :cond_8

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    const/4 v9, 0x2

    .line 219
    :cond_9
    :goto_5
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/RK;->e(I)Lcom/google/android/gms/internal/ads/RK;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v15

    .line 227
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/vK;->T:Lcom/google/android/gms/internal/ads/WN;

    .line 228
    .line 229
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v3, Lcom/google/android/gms/internal/ads/zK;

    .line 235
    .line 236
    move-object v11, v3

    .line 237
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zK;-><init>(Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/WN;IJ)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 241
    .line 242
    const/16 v5, 0x11

    .line 243
    .line 244
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/ads/ts;->a(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/gs;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gs;->a()V

    .line 249
    .line 250
    .line 251
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 256
    .line 257
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 258
    .line 259
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_a

    .line 276
    .line 277
    const/4 v3, 0x1

    .line 278
    goto :goto_6

    .line 279
    :cond_a
    const/4 v3, 0x0

    .line 280
    :goto_6
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/vK;->f(Lcom/google/android/gms/internal/ads/RK;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v5

    .line 284
    const/4 v2, 0x0

    .line 285
    const/4 v4, 0x4

    .line 286
    const/4 v7, -0x1

    .line 287
    move-object/from16 v0, p0

    .line 288
    .line 289
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vK;->q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/RK;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/vK;->Q:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p1, p1, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 25
    .line 26
    return p1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/RK;)J
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 18
    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/RK;->c:J

    .line 28
    .line 29
    cmp-long v7, v5, v0

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vK;->d(Lcom/google/android/gms/internal/ads/RK;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 38
    .line 39
    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    add-long/2addr v0, v2

    .line 60
    :goto_0
    return-wide v0

    .line 61
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vK;->f(Lcom/google/android/gms/internal/ads/RK;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    return-wide v0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/RK;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vK;->R:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 17
    .line 18
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 34
    .line 35
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 36
    .line 37
    .line 38
    return-wide v0
.end method

.method public final g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/Ie;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

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
    iput p2, p0, Lcom/google/android/gms/internal/ads/vK;->Q:I

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
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/vK;->R:J

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ie;->c()I

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
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ie;->g(Z)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 63
    .line 64
    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ie;->l(Lcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;IJ)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public final j(Lcom/google/android/gms/internal/ads/RK;Lcom/google/android/gms/internal/ads/Ie;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/RK;
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
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-static {v3}, Lo3/r;->J(Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/vK;->e(Lcom/google/android/gms/internal/ads/RK;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/RK;->f(Lcom/google/android/gms/internal/ads/Ie;)Lcom/google/android/gms/internal/ads/RK;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/RK;->t:Lcom/google/android/gms/internal/ads/wN;

    .line 42
    .line 43
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/vK;->R:J

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vK;->b:Lcom/google/android/gms/internal/ads/yO;

    .line 50
    .line 51
    sget-object v19, Lcom/google/android/gms/internal/ads/bO;->d:Lcom/google/android/gms/internal/ads/bO;

    .line 52
    .line 53
    sget-object v21, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 54
    .line 55
    const-wide/16 v17, 0x0

    .line 56
    .line 57
    move-object v10, v1

    .line 58
    move-wide v11, v15

    .line 59
    move-wide v13, v15

    .line 60
    move-object/from16 v20, v2

    .line 61
    .line 62
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/RK;->b(Lcom/google/android/gms/internal/ads/wN;JJJJLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;)Lcom/google/android/gms/internal/ads/RK;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/RK;->a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 71
    .line 72
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 78
    .line 79
    sget v10, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 80
    .line 81
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    xor-int/2addr v10, v5

    .line 88
    if-eqz v10, :cond_3

    .line 89
    .line 90
    new-instance v11, Lcom/google/android/gms/internal/ads/wN;

    .line 91
    .line 92
    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 93
    .line 94
    const-wide/16 v13, -0x1

    .line 95
    .line 96
    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;J)V

    .line 97
    .line 98
    .line 99
    :goto_1
    move-object v15, v11

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v13

    .line 112
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 123
    .line 124
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 125
    .line 126
    .line 127
    :cond_4
    if-nez v10, :cond_5

    .line 128
    .line 129
    cmp-long v2, v13, v7

    .line 130
    .line 131
    if-gez v2, :cond_6

    .line 132
    .line 133
    :cond_5
    move-wide v7, v13

    .line 134
    move-object v1, v15

    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_6
    if-nez v2, :cond_9

    .line 138
    .line 139
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const/4 v3, -0x1

    .line 148
    if-eq v2, v3, :cond_7

    .line 149
    .line 150
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iget v2, v2, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 157
    .line 158
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 161
    .line 162
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget v3, v3, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 167
    .line 168
    if-eq v2, v3, :cond_e

    .line 169
    .line 170
    :cond_7
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 173
    .line 174
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_8

    .line 182
    .line 183
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 184
    .line 185
    iget v2, v15, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 186
    .line 187
    iget v3, v15, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 188
    .line 189
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/je;->a(II)J

    .line 190
    .line 191
    .line 192
    move-result-wide v1

    .line 193
    goto :goto_3

    .line 194
    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 195
    .line 196
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/je;->d:J

    .line 197
    .line 198
    :goto_3
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 199
    .line 200
    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 201
    .line 202
    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/RK;->d:J

    .line 203
    .line 204
    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 205
    .line 206
    sub-long v17, v1, v5

    .line 207
    .line 208
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    .line 209
    .line 210
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    .line 211
    .line 212
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    .line 213
    .line 214
    move-object v10, v15

    .line 215
    move-object v8, v15

    .line 216
    move-wide v15, v3

    .line 217
    move-object/from16 v19, v5

    .line 218
    .line 219
    move-object/from16 v20, v6

    .line 220
    .line 221
    move-object/from16 v21, v7

    .line 222
    .line 223
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/RK;->b(Lcom/google/android/gms/internal/ads/wN;JJJJLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;)Lcom/google/android/gms/internal/ads/RK;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/RK;->a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 232
    .line 233
    goto/16 :goto_b

    .line 234
    .line 235
    :cond_9
    move-object v1, v15

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    xor-int/2addr v2, v5

    .line 241
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 242
    .line 243
    .line 244
    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/RK;->q:J

    .line 245
    .line 246
    sub-long v4, v13, v7

    .line 247
    .line 248
    sub-long/2addr v2, v4

    .line 249
    const-wide/16 v4, 0x0

    .line 250
    .line 251
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v17

    .line 255
    iget-wide v2, v9, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 256
    .line 257
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 258
    .line 259
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 260
    .line 261
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/wN;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_a

    .line 266
    .line 267
    add-long v2, v13, v17

    .line 268
    .line 269
    :cond_a
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    .line 270
    .line 271
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    .line 272
    .line 273
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    .line 274
    .line 275
    move-object v10, v1

    .line 276
    move-wide v11, v13

    .line 277
    move-wide v7, v13

    .line 278
    move-wide v15, v7

    .line 279
    move-object/from16 v19, v4

    .line 280
    .line 281
    move-object/from16 v20, v5

    .line 282
    .line 283
    move-object/from16 v21, v6

    .line 284
    .line 285
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/RK;->b(Lcom/google/android/gms/internal/ads/wN;JJJJLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;)Lcom/google/android/gms/internal/ads/RK;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    xor-int/2addr v2, v5

    .line 297
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 298
    .line 299
    .line 300
    if-eqz v10, :cond_b

    .line 301
    .line 302
    sget-object v2, Lcom/google/android/gms/internal/ads/bO;->d:Lcom/google/android/gms/internal/ads/bO;

    .line 303
    .line 304
    :goto_5
    move-object/from16 v19, v2

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_b
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/RK;->h:Lcom/google/android/gms/internal/ads/bO;

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :goto_6
    if-eqz v10, :cond_c

    .line 311
    .line 312
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vK;->b:Lcom/google/android/gms/internal/ads/yO;

    .line 313
    .line 314
    :goto_7
    move-object/from16 v20, v2

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_c
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :goto_8
    if-eqz v10, :cond_d

    .line 321
    .line 322
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 323
    .line 324
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 325
    .line 326
    :goto_9
    move-object/from16 v21, v2

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_d
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :goto_a
    const-wide/16 v17, 0x0

    .line 333
    .line 334
    move-object v10, v1

    .line 335
    move-wide v11, v7

    .line 336
    move-wide v13, v7

    .line 337
    move-wide v15, v7

    .line 338
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/RK;->b(Lcom/google/android/gms/internal/ads/wN;JJJJLcom/google/android/gms/internal/ads/bO;Lcom/google/android/gms/internal/ads/yO;Ljava/util/List;)Lcom/google/android/gms/internal/ads/RK;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/RK;->a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 347
    .line 348
    :cond_e
    :goto_b
    return-object v9
.end method

.method public final k(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->H:Lcom/google/android/gms/internal/ads/Br;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/Br;->a:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/gms/internal/ads/Br;->b:I

    .line 8
    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Br;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Br;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->H:Lcom/google/android/gms/internal/ads/Br;

    .line 19
    .line 20
    new-instance v0, LN/r;

    .line 21
    .line 22
    const/16 v1, 0x9

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, p1, p2, v1, v2}, LN/r;-><init>(IIII)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x18

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 31
    .line 32
    invoke-virtual {v2, v1, v0}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lx/e;->o()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/Br;

    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Br;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    const/16 p2, 0xe

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final l(ILjava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->g:[Lcom/google/android/gms/internal/ads/aK;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    const/4 v2, 0x2

    .line 6
    if-ge v1, v2, :cond_2

    .line 7
    .line 8
    aget-object v2, v0, v1

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-eq p1, v3, :cond_0

    .line 12
    .line 13
    iget v3, v2, Lcom/google/android/gms/internal/ads/aK;->b:I

    .line 14
    .line 15
    if-ne v3, p1, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/vK;->d(Lcom/google/android/gms/internal/ads/RK;)I

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/internal/ads/UK;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 29
    .line 30
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/BK;->P:Landroid/os/Looper;

    .line 31
    .line 32
    invoke-direct {v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/UK;-><init>(Lcom/google/android/gms/internal/ads/BK;Lcom/google/android/gms/internal/ads/aK;Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/UK;->f:Z

    .line 36
    .line 37
    xor-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 40
    .line 41
    .line 42
    iput p3, v3, Lcom/google/android/gms/internal/ads/UK;->c:I

    .line 43
    .line 44
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/UK;->f:Z

    .line 45
    .line 46
    xor-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 49
    .line 50
    .line 51
    iput-object p2, v3, Lcom/google/android/gms/internal/ads/UK;->d:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/UK;->a()V

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->g:[Lcom/google/android/gms/internal/ads/aK;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    aget-object v6, v1, v3

    .line 16
    .line 17
    iget v7, v6, Lcom/google/android/gms/internal/ads/aK;->b:I

    .line 18
    .line 19
    if-ne v7, v4, :cond_0

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/vK;->d(Lcom/google/android/gms/internal/ads/RK;)I

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/google/android/gms/internal/ads/UK;

    .line 27
    .line 28
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 29
    .line 30
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 31
    .line 32
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 33
    .line 34
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/BK;->P:Landroid/os/Looper;

    .line 35
    .line 36
    invoke-direct {v4, v7, v6, v8}, Lcom/google/android/gms/internal/ads/UK;-><init>(Lcom/google/android/gms/internal/ads/BK;Lcom/google/android/gms/internal/ads/aK;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/UK;->f:Z

    .line 40
    .line 41
    xor-int/2addr v6, v5

    .line 42
    invoke-static {v6}, Lo3/r;->M(Z)V

    .line 43
    .line 44
    .line 45
    iput v5, v4, Lcom/google/android/gms/internal/ads/UK;->c:I

    .line 46
    .line 47
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/UK;->f:Z

    .line 48
    .line 49
    xor-int/2addr v5, v6

    .line 50
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 51
    .line 52
    .line 53
    iput-object p1, v4, Lcom/google/android/gms/internal/ads/UK;->d:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/UK;->a()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->E:Ljava/lang/Object;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    if-eq v1, p1, :cond_3

    .line 69
    .line 70
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/google/android/gms/internal/ads/UK;

    .line 85
    .line 86
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/vK;->w:J

    .line 87
    .line 88
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/UK;->c(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    nop

    .line 93
    const/4 v2, 0x1

    .line 94
    goto :goto_2

    .line 95
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->E:Ljava/lang/Object;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->F:Landroid/view/Surface;

    .line 105
    .line 106
    if-ne v0, v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->F:Landroid/view/Surface;

    .line 113
    .line 114
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vK;->E:Ljava/lang/Object;

    .line 115
    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    new-instance p1, LY/r;

    .line 119
    .line 120
    const/4 v0, 0x3

    .line 121
    invoke-direct {p1, v0}, LY/r;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/google/android/gms/internal/ads/jK;

    .line 125
    .line 126
    const/16 v1, 0x3eb

    .line 127
    .line 128
    invoke-direct {v0, v4, p1, v1}, Lcom/google/android/gms/internal/ads/jK;-><init>(ILjava/lang/Throwable;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vK;->n(Lcom/google/android/gms/internal/ads/jK;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/jK;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/RK;->a(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/RK;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 10
    .line 11
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/RK;->e(I)Lcom/google/android/gms/internal/ads/RK;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/RK;->d(Lcom/google/android/gms/internal/ads/jK;)Lcom/google/android/gms/internal/ads/RK;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ts;->e()Lcom/google/android/gms/internal/ads/gs;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

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
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/gs;->a:Landroid/os/Message;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gs;->a()V

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
    move-object v2, p0

    .line 67
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/vK;->q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final o(ZII)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 15
    .line 16
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/RK;->l:Z

    .line 17
    .line 18
    if-ne v2, p1, :cond_2

    .line 19
    .line 20
    iget v2, p2, Lcom/google/android/gms/internal/ads/RK;->n:I

    .line 21
    .line 22
    if-ne v2, v0, :cond_2

    .line 23
    .line 24
    iget v2, p2, Lcom/google/android/gms/internal/ads/RK;->m:I

    .line 25
    .line 26
    if-ne v2, p3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 33
    .line 34
    invoke-virtual {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/RK;->c(ZII)Lcom/google/android/gms/internal/ads/RK;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 41
    .line 42
    shl-int/lit8 v0, v0, 0x4

    .line 43
    .line 44
    or-int/2addr p3, v0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/ts;->e()Lcom/google/android/gms/internal/ads/gs;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p2, v1, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/gs;->a:Landroid/os/Message;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gs;->a()V

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x5

    .line 64
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v10, -0x1

    .line 72
    move-object v3, p0

    .line 73
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/vK;->q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 3
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v8

    const/4 v9, -0x1

    .line 5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Landroid/util/Pair;

    .line 7
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v8, v6

    move v6, v2

    move/from16 v2, p3

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v9

    if-eq v8, v9, :cond_1

    new-instance v6, Landroid/util/Pair;

    .line 9
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 11
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/je;->c:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 12
    invoke-virtual {v6, v8, v9, v13, v14}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v6

    .line 13
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/we;->a:Ljava/lang/Object;

    .line 14
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 15
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/je;->c:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 16
    invoke-virtual {v7, v8, v9, v13, v14}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v7

    .line 17
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/we;->a:Ljava/lang/Object;

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-eqz v6, :cond_4

    if-ne v2, v5, :cond_4

    move v6, v7

    const/4 v7, 0x2

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    const/4 v7, 0x3

    :goto_2
    new-instance v8, Landroid/util/Pair;

    .line 19
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v42, v6

    move v6, v2

    move/from16 v2, v42

    goto :goto_4

    .line 20
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    .line 22
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/wN;->d:J

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/wN;->d:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_7

    new-instance v6, Landroid/util/Pair;

    .line 23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    move v6, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v6, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v7, Landroid/util/Pair;

    .line 24
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v7

    .line 25
    :goto_4
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 26
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v7, :cond_b

    .line 27
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v10

    if-nez v10, :cond_a

    .line 28
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 29
    invoke-virtual {v10, v9, v15}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 30
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 31
    invoke-virtual {v10, v9, v15, v13, v14}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v9

    .line 32
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/we;->b:Lcom/google/android/gms/internal/ads/x6;

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    .line 33
    :goto_5
    sget-object v10, Lcom/google/android/gms/internal/ads/i9;->y:Lcom/google/android/gms/internal/ads/i9;

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-nez v7, :cond_c

    .line 34
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    .line 35
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    .line 36
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/i9;->a()Lcom/google/android/gms/internal/ads/A8;

    move-result-object v10

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/RK;->j:Ljava/util/List;

    const/4 v12, 0x0

    .line 37
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_e

    .line 38
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/Q9;

    const/4 v5, 0x0

    .line 39
    :goto_8
    iget-object v13, v11, Lcom/google/android/gms/internal/ads/Q9;->G:[Lcom/google/android/gms/internal/ads/K9;

    .line 40
    array-length v14, v13

    if-ge v5, v14, :cond_d

    .line 41
    aget-object v13, v13, v5

    .line 42
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/ads/K9;->b(Lcom/google/android/gms/internal/ads/A8;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const-wide/16 v13, 0x0

    goto :goto_7

    .line 43
    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/ads/i9;

    .line 44
    invoke-direct {v5, v10}, Lcom/google/android/gms/internal/ads/i9;-><init>(Lcom/google/android/gms/internal/ads/A8;)V

    .line 45
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    .line 46
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    goto/16 :goto_a

    .line 48
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->zzd()I

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    const-wide/16 v12, 0x0

    .line 49
    invoke-virtual {v5, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v5

    .line 50
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/we;->b:Lcom/google/android/gms/internal/ads/x6;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/vK;->O:Lcom/google/android/gms/internal/ads/i9;

    .line 51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/i9;->a()Lcom/google/android/gms/internal/ads/A8;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/x6;->d:Lcom/google/android/gms/internal/ads/i9;

    if-nez v5, :cond_11

    goto/16 :goto_9

    .line 52
    :cond_11
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->a:Ljava/lang/CharSequence;

    if-eqz v11, :cond_12

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->a:Ljava/lang/CharSequence;

    :cond_12
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->b:Ljava/lang/CharSequence;

    if-eqz v11, :cond_13

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->b:Ljava/lang/CharSequence;

    :cond_13
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->c:Ljava/lang/CharSequence;

    if-eqz v11, :cond_14

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->c:Ljava/lang/CharSequence;

    :cond_14
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->d:Ljava/lang/CharSequence;

    if-eqz v11, :cond_15

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->d:Ljava/lang/CharSequence;

    :cond_15
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->e:Ljava/lang/CharSequence;

    if-eqz v11, :cond_16

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->e:Ljava/lang/CharSequence;

    :cond_16
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->f:[B

    if-eqz v11, :cond_17

    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->f:[B

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->g:Ljava/lang/Integer;

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->g:Ljava/lang/Integer;

    :cond_17
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->h:Ljava/lang/Integer;

    if-eqz v11, :cond_18

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->h:Ljava/lang/Integer;

    :cond_18
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->i:Ljava/lang/Integer;

    if-eqz v11, :cond_19

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->i:Ljava/lang/Integer;

    :cond_19
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->j:Ljava/lang/Integer;

    if-eqz v11, :cond_1a

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->j:Ljava/lang/Integer;

    :cond_1a
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->k:Ljava/lang/Boolean;

    if-eqz v11, :cond_1b

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->k:Ljava/lang/Boolean;

    :cond_1b
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->l:Ljava/lang/Integer;

    if-eqz v11, :cond_1c

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->l:Ljava/lang/Integer;

    :cond_1c
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->m:Ljava/lang/Integer;

    if-eqz v11, :cond_1d

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->l:Ljava/lang/Integer;

    :cond_1d
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->n:Ljava/lang/Integer;

    if-eqz v11, :cond_1e

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->m:Ljava/lang/Integer;

    :cond_1e
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->o:Ljava/lang/Integer;

    if-eqz v11, :cond_1f

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->n:Ljava/lang/Integer;

    :cond_1f
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->p:Ljava/lang/Integer;

    if-eqz v11, :cond_20

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->o:Ljava/lang/Integer;

    :cond_20
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->q:Ljava/lang/Integer;

    if-eqz v11, :cond_21

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->p:Ljava/lang/Integer;

    :cond_21
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->r:Ljava/lang/Integer;

    if-eqz v11, :cond_22

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->q:Ljava/lang/Integer;

    :cond_22
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->s:Ljava/lang/CharSequence;

    if-eqz v11, :cond_23

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->r:Ljava/lang/CharSequence;

    :cond_23
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->t:Ljava/lang/CharSequence;

    if-eqz v11, :cond_24

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->s:Ljava/lang/CharSequence;

    :cond_24
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->u:Ljava/lang/CharSequence;

    if-eqz v11, :cond_25

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->t:Ljava/lang/CharSequence;

    :cond_25
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->v:Ljava/lang/CharSequence;

    if-eqz v11, :cond_26

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->u:Ljava/lang/CharSequence;

    :cond_26
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/i9;->w:Ljava/lang/CharSequence;

    if-eqz v11, :cond_27

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/A8;->v:Ljava/lang/CharSequence;

    :cond_27
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/i9;->x:Ljava/lang/Integer;

    if-eqz v5, :cond_28

    iput-object v5, v10, Lcom/google/android/gms/internal/ads/A8;->w:Ljava/lang/Integer;

    .line 53
    :cond_28
    :goto_9
    new-instance v5, Lcom/google/android/gms/internal/ads/i9;

    .line 54
    invoke-direct {v5, v10}, Lcom/google/android/gms/internal/ads/i9;-><init>(Lcom/google/android/gms/internal/ads/A8;)V

    .line 55
    :goto_a
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/vK;->D:Lcom/google/android/gms/internal/ads/i9;

    .line 56
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/i9;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/vK;->D:Lcom/google/android/gms/internal/ads/i9;

    .line 57
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/RK;->l:Z

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/RK;->l:Z

    if-eq v5, v11, :cond_29

    const/4 v11, 0x1

    goto :goto_b

    :cond_29
    const/4 v11, 0x0

    .line 58
    :goto_b
    iget v5, v3, Lcom/google/android/gms/internal/ads/RK;->e:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/RK;->e:I

    if-eq v5, v12, :cond_2a

    const/4 v5, 0x1

    goto :goto_c

    :cond_2a
    const/4 v5, 0x0

    :goto_c
    if-nez v5, :cond_2b

    if-eqz v11, :cond_2d

    .line 59
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->zzf()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2c

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2c

    goto :goto_d

    .line 60
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 61
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->u()Z

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->u()Z

    .line 64
    :cond_2d
    :goto_d
    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/RK;->g:Z

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/RK;->g:Z

    if-eq v12, v13, :cond_2e

    const/4 v12, 0x1

    goto :goto_e

    :cond_2e
    const/4 v12, 0x0

    :goto_e
    const/16 v13, 0xc

    if-eqz v4, :cond_2f

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v14, LK/k;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15, v13}, LK/k;-><init>(Ljava/lang/Object;II)V

    const/4 v15, 0x0

    .line 65
    invoke-virtual {v4, v15, v14}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_2f
    if-eqz v2, :cond_37

    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/je;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 67
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v14

    if-nez v14, :cond_30

    .line 68
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 69
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    iget v15, v2, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 70
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    move-result v13

    .line 71
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    move/from16 p7, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    move/from16 v18, v11

    move/from16 v19, v12

    const-wide/16 v11, 0x0

    .line 72
    invoke-virtual {v4, v15, v13, v11, v12}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v4

    .line 73
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/we;->a:Ljava/lang/Object;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/we;->b:Lcom/google/android/gms/internal/ads/x6;

    move/from16 v25, p7

    move-object/from16 v21, v4

    move-object/from16 v23, v11

    move-object/from16 v24, v14

    move/from16 v22, v15

    goto :goto_f

    :cond_30
    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v22, p7

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_f
    if-nez v6, :cond_33

    .line 74
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 75
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget v11, v4, Lcom/google/android/gms/internal/ads/wN;->b:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 76
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/je;->a(II)J

    move-result-wide v11

    .line 77
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vK;->h(Lcom/google/android/gms/internal/ads/RK;)J

    move-result-wide v13

    goto :goto_11

    .line 78
    :cond_31
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget v4, v4, Lcom/google/android/gms/internal/ads/wN;->e:I

    const/4 v11, -0x1

    if-eq v4, v11, :cond_32

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vK;->h(Lcom/google/android/gms/internal/ads/RK;)J

    move-result-wide v11

    :goto_10
    move-wide v13, v11

    goto :goto_11

    :cond_32
    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/je;->d:J

    goto :goto_10

    .line 80
    :cond_33
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 81
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 82
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/vK;->h(Lcom/google/android/gms/internal/ads/RK;)J

    move-result-wide v13

    goto :goto_11

    .line 83
    :cond_34
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/RK;->r:J

    goto :goto_10

    .line 84
    :goto_11
    new-instance v2, Lcom/google/android/gms/internal/ads/Fc;

    .line 85
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 86
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget v15, v4, Lcom/google/android/gms/internal/ads/wN;->b:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/wN;->c:I

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    move-result-wide v26

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    move-result-wide v28

    move-object/from16 v20, v2

    move/from16 v30, v15

    move/from16 v31, v4

    invoke-direct/range {v20 .. v31}, Lcom/google/android/gms/internal/ads/Fc;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/x6;Ljava/lang/Object;IJJII)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/vK;->zzd()I

    move-result v4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 88
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v11

    if-nez v11, :cond_35

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 89
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 90
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 91
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    move-result v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 92
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    move/from16 p3, v11

    move-object v15, v12

    const-wide/16 v11, 0x0

    .line 93
    invoke-virtual {v13, v4, v14, v11, v12}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v13

    .line 94
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/we;->a:Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/we;->b:Lcom/google/android/gms/internal/ads/x6;

    move/from16 v35, p3

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move-object/from16 v34, v15

    goto :goto_12

    :cond_35
    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    :goto_12
    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    move-result-wide v36

    new-instance v11, Lcom/google/android/gms/internal/ads/Fc;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 95
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    move-result v12

    if-eqz v12, :cond_36

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 96
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/vK;->h(Lcom/google/android/gms/internal/ads/RK;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    move-result-wide v12

    move-wide/from16 v38, v12

    goto :goto_13

    :cond_36
    move-wide/from16 v38, v36

    :goto_13
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 97
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    iget v13, v12, Lcom/google/android/gms/internal/ads/wN;->b:I

    iget v12, v12, Lcom/google/android/gms/internal/ads/wN;->c:I

    move-object/from16 v30, v11

    move/from16 v32, v4

    move/from16 v40, v13

    move/from16 v41, v12

    invoke-direct/range {v30 .. v41}, Lcom/google/android/gms/internal/ads/Fc;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/x6;Ljava/lang/Object;IJJII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v12, Lcom/google/android/gms/internal/ads/f8;

    invoke-direct {v12, v6, v2, v11}, Lcom/google/android/gms/internal/ads/f8;-><init>(ILcom/google/android/gms/internal/ads/Fc;Lcom/google/android/gms/internal/ads/Fc;)V

    const/16 v2, 0xb

    .line 98
    invoke-virtual {v4, v2, v12}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    goto :goto_14

    :cond_37
    move/from16 v18, v11

    move/from16 v19, v12

    :goto_14
    const/16 v2, 0xd

    if-eqz v7, :cond_38

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, LK/k;

    invoke-direct {v6, v9, v8, v2}, LK/k;-><init>(Ljava/lang/Object;II)V

    const/4 v7, 0x1

    .line 99
    invoke-virtual {v4, v7, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 100
    :cond_38
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/16 v9, 0xa

    if-eq v4, v6, :cond_39

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v6, v1, v8}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 101
    invoke-virtual {v4, v9, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 102
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/RK;->f:Lcom/google/android/gms/internal/ads/jK;

    if-eqz v4, :cond_39

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v6, v1, v7}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 103
    invoke-virtual {v4, v9, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 104
    :cond_39
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    const/16 v11, 0x9

    if-eq v4, v6, :cond_3a

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->h:Lcom/google/android/gms/internal/ads/wO;

    .line 105
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/yO;->e:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    check-cast v6, Lcom/google/android/gms/internal/ads/vO;

    .line 107
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v6, v1, v11}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    const/4 v12, 0x2

    .line 108
    invoke-virtual {v4, v12, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_3a
    if-eqz v10, :cond_3b

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->D:Lcom/google/android/gms/internal/ads/i9;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v10, Lcom/google/android/gms/internal/ads/Xu;

    const/16 v12, 0x18

    invoke-direct {v10, v4, v12}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    const/16 v4, 0xe

    .line 109
    invoke-virtual {v6, v4, v10}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_3b
    if-eqz v19, :cond_3c

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    const/4 v10, 0x0

    invoke-direct {v6, v1, v10}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    const/4 v10, 0x3

    .line 110
    invoke-virtual {v4, v10, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_3c
    if-nez v5, :cond_3e

    if-eqz v18, :cond_3d

    goto :goto_15

    :cond_3d
    const/4 v10, 0x1

    goto :goto_16

    :cond_3e
    :goto_15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    const/4 v10, 0x1

    invoke-direct {v6, v1, v10}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    const/4 v12, -0x1

    .line 111
    invoke-virtual {v4, v12, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :goto_16
    const/4 v4, 0x4

    if-eqz v5, :cond_3f

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    const/4 v12, 0x2

    invoke-direct {v6, v1, v12}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 112
    invoke-virtual {v5, v4, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_3f
    const/4 v5, 0x5

    if-nez v18, :cond_40

    .line 113
    iget v6, v3, Lcom/google/android/gms/internal/ads/RK;->m:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/RK;->m:I

    if-eq v6, v12, :cond_41

    :cond_40
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v12, Lcom/google/android/gms/internal/ads/oK;

    const/4 v13, 0x3

    invoke-direct {v12, v1, v13}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 114
    invoke-virtual {v6, v5, v12}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 115
    :cond_41
    iget v6, v3, Lcom/google/android/gms/internal/ads/RK;->n:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/RK;->n:I

    const/4 v13, 0x6

    if-eq v6, v12, :cond_42

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v12, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v12, v1, v4}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 116
    invoke-virtual {v6, v13, v12}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 117
    :cond_42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/RK;->h()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/RK;->h()Z

    move-result v12

    if-eq v6, v12, :cond_43

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v12, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v12, v1, v5}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    .line 118
    invoke-virtual {v6, v8, v12}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 119
    :cond_43
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/RK;->o:Lcom/google/android/gms/internal/ads/ob;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/ob;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v6, Lcom/google/android/gms/internal/ads/oK;

    invoke-direct {v6, v1, v13}, Lcom/google/android/gms/internal/ads/oK;-><init>(Lcom/google/android/gms/internal/ads/RK;I)V

    const/16 v1, 0xc

    .line 120
    invoke-virtual {v3, v1, v6}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->C:Lcom/google/android/gms/internal/ads/ac;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->f:Lcom/google/android/gms/internal/ads/Vc;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vK;->c:Lcom/google/android/gms/internal/ads/ac;

    .line 121
    sget v12, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 122
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Vc;->p()Z

    move-result v12

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/internal/ads/pK;

    .line 123
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v15

    .line 124
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v17

    if-nez v17, :cond_45

    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    move-result v10

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    const-wide/16 v7, 0x0

    .line 125
    invoke-virtual {v15, v10, v2, v7, v8}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v2

    .line 126
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/we;->f:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    goto :goto_17

    :cond_45
    const/4 v2, 0x0

    .line 127
    :goto_17
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v7

    .line 128
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v8

    if-eqz v8, :cond_46

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto :goto_18

    .line 129
    :cond_46
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    move-result v8

    .line 130
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzh()V

    .line 131
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->g()V

    .line 132
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/Ie;->k(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_47

    const/4 v7, 0x1

    goto :goto_18

    :cond_47
    const/4 v7, 0x0

    .line 133
    :goto_18
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v10

    .line 134
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v15

    if-eqz v15, :cond_49

    const/4 v9, 0x0

    :cond_48
    const/16 v16, 0x0

    goto :goto_19

    .line 135
    :cond_49
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    move-result v15

    .line 136
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzh()V

    .line 137
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->g()V

    const/4 v9, 0x0

    .line 138
    invoke-virtual {v10, v9, v15, v9}, Lcom/google/android/gms/internal/ads/Ie;->j(ZII)I

    move-result v10

    if-eq v10, v8, :cond_48

    const/16 v16, 0x1

    .line 139
    :goto_19
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v10

    if-nez v10, :cond_4b

    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    move-result v10

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    const-wide/16 v4, 0x0

    .line 141
    invoke-virtual {v8, v10, v15, v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v8

    .line 142
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/we;->b()Z

    move-result v8

    if-eqz v8, :cond_4a

    const/4 v8, 0x1

    goto :goto_1b

    :cond_4a
    :goto_1a
    const/4 v8, 0x0

    goto :goto_1b

    :cond_4b
    const-wide/16 v4, 0x0

    goto :goto_1a

    .line 143
    :goto_1b
    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v10

    .line 144
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v15

    if-nez v15, :cond_4c

    invoke-interface {v14}, Lcom/google/android/gms/internal/ads/Vc;->zzd()I

    move-result v15

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 145
    invoke-virtual {v10, v15, v14, v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    move-result-object v4

    .line 146
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/we;->g:Z

    if-eqz v4, :cond_4c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_4c
    const/4 v4, 0x0

    .line 147
    :goto_1c
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    move-result v3

    new-instance v5, Lcom/google/android/gms/internal/ads/K4;

    const/16 v10, 0x15

    .line 148
    invoke-direct {v5, v10}, Lcom/google/android/gms/internal/ads/K4;-><init>(I)V

    .line 149
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ac;->a:Lcom/google/android/gms/internal/ads/o;

    const/4 v15, 0x0

    .line 150
    :goto_1d
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/o;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    if-ge v15, v10, :cond_4d

    .line 151
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v10, Lm0/q;

    .line 152
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/o;->a(I)I

    move-result v14

    invoke-virtual {v10, v14}, Lm0/q;->c(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    :cond_4d
    xor-int/lit8 v6, v12, 0x1

    const/4 v10, 0x4

    .line 153
    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-eqz v2, :cond_4e

    if-nez v12, :cond_4e

    const/4 v10, 0x1

    :goto_1e
    const/4 v14, 0x5

    goto :goto_1f

    :cond_4e
    const/4 v10, 0x0

    goto :goto_1e

    .line 154
    :goto_1f
    invoke-virtual {v5, v14, v10}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-eqz v7, :cond_4f

    if-nez v12, :cond_4f

    const/4 v10, 0x1

    goto :goto_20

    :cond_4f
    const/4 v10, 0x0

    .line 155
    :goto_20
    invoke-virtual {v5, v13, v10}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-nez v3, :cond_50

    if-nez v7, :cond_51

    if-eqz v8, :cond_51

    if-eqz v2, :cond_50

    goto :goto_22

    :cond_50
    const/4 v7, 0x0

    :goto_21
    const/4 v10, 0x7

    goto :goto_23

    :cond_51
    :goto_22
    if-nez v12, :cond_50

    const/4 v7, 0x1

    goto :goto_21

    .line 156
    :goto_23
    invoke-virtual {v5, v10, v7}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-eqz v16, :cond_52

    if-nez v12, :cond_52

    const/4 v7, 0x1

    :goto_24
    const/16 v10, 0x8

    goto :goto_25

    :cond_52
    const/4 v7, 0x0

    goto :goto_24

    .line 157
    :goto_25
    invoke-virtual {v5, v10, v7}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-nez v3, :cond_53

    if-nez v16, :cond_54

    if-eqz v8, :cond_53

    if-eqz v4, :cond_53

    goto :goto_26

    :cond_53
    const/4 v3, 0x0

    goto :goto_27

    :cond_54
    :goto_26
    if-nez v12, :cond_53

    const/4 v3, 0x1

    .line 158
    :goto_27
    invoke-virtual {v5, v11, v3}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    const/16 v3, 0xa

    .line 159
    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-eqz v2, :cond_55

    if-nez v12, :cond_55

    const/16 v3, 0xb

    const/4 v11, 0x1

    goto :goto_28

    :cond_55
    const/16 v3, 0xb

    const/4 v11, 0x0

    .line 160
    :goto_28
    invoke-virtual {v5, v3, v11}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    if-eqz v2, :cond_56

    if-nez v12, :cond_56

    const/16 v2, 0xc

    const/4 v9, 0x1

    goto :goto_29

    :cond_56
    const/16 v2, 0xc

    .line 161
    :goto_29
    invoke-virtual {v5, v2, v9}, Lcom/google/android/gms/internal/ads/K4;->h(IZ)V

    .line 162
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    check-cast v2, Lm0/q;

    new-instance v3, Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v2}, Lm0/q;->d()Lcom/google/android/gms/internal/ads/o;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/ac;-><init>(Lcom/google/android/gms/internal/ads/o;)V

    .line 163
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vK;->C:Lcom/google/android/gms/internal/ads/ac;

    .line 164
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/ac;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    new-instance v2, Lcom/google/android/gms/internal/ads/qK;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/qK;-><init>(Lcom/google/android/gms/internal/ads/vK;)V

    const/16 v3, 0xd

    .line 165
    invoke-virtual {v1, v3, v2}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    :cond_57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 166
    invoke-virtual {v1}, Lx/e;->o()V

    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->d:LG/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LG/c;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->q:Landroid/os/Looper;

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
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    const-string v2, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    .line 37
    .line 38
    const-string v3, "\'\nExpected thread: \'"

    .line 39
    .line 40
    const-string v4, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 41
    .line 42
    invoke-static {v2, v0, v3, v1, v4}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vK;->L:Z

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/vK;->M:Z

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 62
    .line 63
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/vK;->M:Z

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    return-void
.end method

.method public final s()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wN;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 23
    .line 24
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->t()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/vK;->R:J

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 56
    .line 57
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 58
    .line 59
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 60
    .line 61
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 62
    .line 63
    const-wide/16 v5, 0x0

    .line 64
    .line 65
    cmp-long v7, v1, v3

    .line 66
    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->zzd()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/we;->j:J

    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RK;->p:J

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 109
    .line 110
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 117
    .line 118
    iget v1, v1, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 119
    .line 120
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    move-wide v5, v0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->k:Lcom/google/android/gms/internal/ads/wN;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 140
    .line 141
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    :goto_1
    return-wide v0
.end method

.method public final t()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->zzd()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pK;->a:Lcom/google/android/gms/internal/ads/we;

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/we;->j:J

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 48
    .line 49
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vK;->m:Lcom/google/android/gms/internal/ads/je;

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 56
    .line 57
    .line 58
    iget v0, v1, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 59
    .line 60
    iget v1, v1, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 61
    .line 62
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/je;->a(II)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/RK;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public final v()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->u()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZJ;->a()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/vK;->o(ZII)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 22
    .line 23
    iget v2, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 24
    .line 25
    if-eq v2, v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/RK;->d(Lcom/google/android/gms/internal/ads/jK;)Lcom/google/android/gms/internal/ads/RK;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x4

    .line 44
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/RK;->e(I)Lcom/google/android/gms/internal/ads/RK;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 49
    .line 50
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/vK;->x:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->j:Lcom/google/android/gms/internal/ads/BK;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/BK;->N:Lcom/google/android/gms/internal/ads/ts;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/ts;->e()Lcom/google/android/gms/internal/ads/gs;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 65
    .line 66
    const/16 v2, 0x1d

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/gs;->a:Landroid/os/Message;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gs;->a()V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x5

    .line 78
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v10, -0x1

    .line 86
    move-object v3, p0

    .line 87
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/vK;->q(Lcom/google/android/gms/internal/ads/RK;IZIJI)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->zzf()I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZJ;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/vK;->o(ZII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final x(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vK;->m(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/google/android/gms/internal/ads/vK;->k(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final y(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/vK;->J:F

    .line 16
    .line 17
    cmpl-float v0, v0, p1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/vK;->J:F

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 25
    .line 26
    iget v0, v0, Lcom/google/android/gms/internal/ads/ZJ;->e:F

    .line 27
    .line 28
    mul-float v0, v0, p1

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/vK;->l(ILjava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/y1;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/y1;-><init>(F)V

    .line 42
    .line 43
    .line 44
    const/16 p1, 0x16

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->k:Lx/e;

    .line 47
    .line 48
    invoke-virtual {v1, p1, v0}, Lx/e;->p(ILcom/google/android/gms/internal/ads/bo;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lx/e;->o()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->v:Lcom/google/android/gms/internal/ads/ZJ;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->u()Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZJ;->a()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ZJ;->c(I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vK;->n(Lcom/google/android/gms/internal/ads/jK;)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/ck;->a:I

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 25
    .line 26
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zzb()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->p()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    return v0
.end method

.method public final zzd()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vK;->d(Lcom/google/android/gms/internal/ads/RK;)I

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

.method public final zze()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public final zzf()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/RK;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public final zzg()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/RK;->n:I

    .line 7
    .line 8
    return v0
.end method

.method public final zzh()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzj()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vK;->e(Lcom/google/android/gms/internal/ads/RK;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/vK;->f(Lcom/google/android/gms/internal/ads/RK;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final zzm()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RK;->q:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/Ie;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 7
    .line 8
    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/Hg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vK;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vK;->P:Lcom/google/android/gms/internal/ads/RK;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RK;->i:Lcom/google/android/gms/internal/ads/yO;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yO;->d:Lcom/google/android/gms/internal/ads/Hg;

    .line 9
    .line 10
    return-object v0
.end method
