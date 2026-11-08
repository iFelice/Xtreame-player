.class public final Lu0/e;
.super Ls0/c;
.source "SourceFile"


# instance fields
.field public A:Ljava/io/IOException;

.field public B:Z

.field public volatile C:J

.field public final e:Lorg/chromium/net/CronetEngine;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Lm2/l;

.field public final n:Lm2/l;

.field public final o:Lp0/i;

.field public final p:Lp0/G;

.field public final q:I

.field public final r:Ly4/l;

.field public final s:Z

.field public t:Z

.field public u:J

.field public v:Lorg/chromium/net/UrlRequest;

.field public w:Lu0/d;

.field public x:Ls0/m;

.field public y:Ljava/nio/ByteBuffer;

.field public z:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.datasource.cronet"

    .line 2
    .line 3
    invoke-static {v0}, Lm0/J;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIILm2/l;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ls0/c;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lu0/e;->e:Lorg/chromium/net/CronetEngine;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lu0/e;->f:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput p3, p0, Lu0/e;->g:I

    .line 16
    .line 17
    iput p4, p0, Lu0/e;->h:I

    .line 18
    .line 19
    iput p5, p0, Lu0/e;->i:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lu0/e;->j:Z

    .line 23
    .line 24
    iput-boolean p1, p0, Lu0/e;->k:Z

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lu0/e;->l:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p6, p0, Lu0/e;->m:Lm2/l;

    .line 30
    .line 31
    iput-object p2, p0, Lu0/e;->r:Ly4/l;

    .line 32
    .line 33
    iput-boolean p1, p0, Lu0/e;->s:Z

    .line 34
    .line 35
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 36
    .line 37
    iput-object p1, p0, Lu0/e;->p:Lp0/G;

    .line 38
    .line 39
    iput p7, p0, Lu0/e;->q:I

    .line 40
    .line 41
    new-instance p1, Lm2/l;

    .line 42
    .line 43
    const/4 p2, 0x3

    .line 44
    invoke-direct {p1, p2}, Lm2/l;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lu0/e;->n:Lm2/l;

    .line 48
    .line 49
    new-instance p1, Lp0/i;

    .line 50
    .line 51
    invoke-direct {p1}, Lp0/i;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lu0/e;->o:Lp0/i;

    .line 55
    .line 56
    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A()[B
    .locals 5

    .line 1
    sget-object v0, Lp0/M;->b:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lu0/e;->y()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lu0/e;->B:Z

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lu0/e;->o:Lp0/i;

    .line 12
    .line 13
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lu0/e;->z(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_0

    .line 30
    .line 31
    array-length v2, v0

    .line 32
    array-length v3, v0

    .line 33
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-int/2addr v4, v3

    .line 38
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0
.end method

.method public final a(Ls0/m;)J
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v2, v1, Lu0/e;->t:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    xor-int/2addr v2, v3

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lu0/e;->o:Lp0/i;

    .line 16
    .line 17
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lu0/e;->p:Lp0/G;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iget v2, v1, Lu0/e;->h:I

    .line 30
    .line 31
    int-to-long v6, v2

    .line 32
    add-long/2addr v4, v6

    .line 33
    iput-wide v4, v1, Lu0/e;->C:J

    .line 34
    .line 35
    iput-object v0, v1, Lu0/e;->x:Ls0/m;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lu0/e;->w(Ls0/m;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lu0/e;->v:Lorg/chromium/net/UrlRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/chromium/net/UrlRequest;->start()V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Ls0/c;->u()V

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object v4, v1, Lu0/e;->p:Lp0/G;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    const/4 v6, 0x0

    .line 58
    :goto_0
    if-nez v6, :cond_0

    .line 59
    .line 60
    iget-wide v7, v1, Lu0/e;->C:J

    .line 61
    .line 62
    cmp-long v9, v4, v7

    .line 63
    .line 64
    if-gez v9, :cond_0

    .line 65
    .line 66
    iget-object v6, v1, Lu0/e;->o:Lp0/i;

    .line 67
    .line 68
    iget-wide v7, v1, Lu0/e;->C:J

    .line 69
    .line 70
    sub-long/2addr v7, v4

    .line 71
    const-wide/16 v4, 0x5

    .line 72
    .line 73
    add-long/2addr v7, v4

    .line 74
    invoke-virtual {v6, v7, v8}, Lp0/i;->b(J)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-object v4, v1, Lu0/e;->p:Lp0/G;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v4, v1, Lu0/e;->A:Ljava/io/IOException;

    .line 89
    .line 90
    const/16 v5, 0x7d1

    .line 91
    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    invoke-static {v0}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v6, "err_cleartext_not_permitted"

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    new-instance v0, Ls0/w;

    .line 113
    .line 114
    invoke-direct {v0, v4}, Ls0/w;-><init>(Ljava/io/IOException;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_1
    new-instance v0, Ls0/D;

    .line 119
    .line 120
    new-instance v6, Lp0/i;

    .line 121
    .line 122
    invoke-direct {v6}, Lp0/i;-><init>()V

    .line 123
    .line 124
    .line 125
    new-array v7, v3, [I

    .line 126
    .line 127
    new-instance v8, Lu0/b;

    .line 128
    .line 129
    invoke-direct {v8, v7, v6}, Lu0/b;-><init>([ILp0/i;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v8}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lp0/i;->a()V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v4, v5, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 139
    .line 140
    .line 141
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :cond_2
    const/16 v4, 0x7d2

    .line 143
    .line 144
    if-eqz v6, :cond_16

    .line 145
    .line 146
    iget-object v2, v1, Lu0/e;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const-string v8, "Content-Range"

    .line 160
    .line 161
    const/16 v9, 0xc8

    .line 162
    .line 163
    const-wide/16 v10, -0x1

    .line 164
    .line 165
    const-wide/16 v12, 0x0

    .line 166
    .line 167
    if-lt v6, v9, :cond_12

    .line 168
    .line 169
    const/16 v14, 0x12b

    .line 170
    .line 171
    if-le v6, v14, :cond_3

    .line 172
    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :cond_3
    iget-object v14, v1, Lu0/e;->r:Ly4/l;

    .line 176
    .line 177
    if-eqz v14, :cond_5

    .line 178
    .line 179
    const-string v15, "Content-Type"

    .line 180
    .line 181
    invoke-static {v15, v7}, Lu0/e;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    if-eqz v15, :cond_5

    .line 186
    .line 187
    invoke-interface {v14, v15}, Ly4/l;->apply(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_4

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_4
    new-instance v0, Ls0/z;

    .line 195
    .line 196
    invoke-direct {v0, v15}, Ls0/z;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_5
    :goto_1
    if-ne v6, v9, :cond_6

    .line 201
    .line 202
    iget-wide v14, v0, Ls0/m;->f:J

    .line 203
    .line 204
    cmp-long v6, v14, v12

    .line 205
    .line 206
    if-eqz v6, :cond_6

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    move-wide v14, v12

    .line 210
    :goto_2
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_9

    .line 223
    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    check-cast v6, Ljava/util/Map$Entry;

    .line 229
    .line 230
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    check-cast v9, Ljava/lang/String;

    .line 235
    .line 236
    const-string v5, "Content-Encoding"

    .line 237
    .line 238
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_8

    .line 243
    .line 244
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    check-cast v2, Ljava/lang/String;

    .line 249
    .line 250
    const-string v5, "identity"

    .line 251
    .line 252
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    xor-int/2addr v2, v3

    .line 257
    if-nez v2, :cond_7

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_7
    iget-wide v5, v0, Ls0/m;->g:J

    .line 261
    .line 262
    iput-wide v5, v1, Lu0/e;->u:J

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    const/16 v5, 0x7d1

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_9
    :goto_4
    iget-wide v5, v0, Ls0/m;->g:J

    .line 269
    .line 270
    cmp-long v2, v5, v10

    .line 271
    .line 272
    if-eqz v2, :cond_a

    .line 273
    .line 274
    iput-wide v5, v1, Lu0/e;->u:J

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_a
    const-string v2, "Content-Length"

    .line 278
    .line 279
    invoke-static {v2, v7}, Lu0/e;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v8, v7}, Lu0/e;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-static {v2, v5}, Ls0/I;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 288
    .line 289
    .line 290
    move-result-wide v5

    .line 291
    cmp-long v2, v5, v10

    .line 292
    .line 293
    if-eqz v2, :cond_b

    .line 294
    .line 295
    sub-long v10, v5, v14

    .line 296
    .line 297
    :cond_b
    iput-wide v10, v1, Lu0/e;->u:J

    .line 298
    .line 299
    :goto_5
    iput-boolean v3, v1, Lu0/e;->t:Z

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 302
    .line 303
    .line 304
    cmp-long v0, v14, v12

    .line 305
    .line 306
    if-nez v0, :cond_c

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lu0/e;->y()Ljava/nio/ByteBuffer;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :goto_6
    cmp-long v2, v14, v12

    .line 314
    .line 315
    if-lez v2, :cond_11

    .line 316
    .line 317
    :try_start_2
    iget-object v2, v1, Lu0/e;->o:Lp0/i;

    .line 318
    .line 319
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Lu0/e;->z(Ljava/nio/ByteBuffer;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_e

    .line 337
    .line 338
    iget-boolean v2, v1, Lu0/e;->B:Z

    .line 339
    .line 340
    if-nez v2, :cond_d

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    int-to-long v5, v2

    .line 357
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 358
    .line 359
    .line 360
    move-result-wide v5

    .line 361
    long-to-int v2, v5

    .line 362
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    add-int/2addr v5, v2

    .line 367
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    .line 369
    .line 370
    int-to-long v5, v2

    .line 371
    sub-long/2addr v14, v5

    .line 372
    goto :goto_6

    .line 373
    :catch_0
    move-exception v0

    .line 374
    goto :goto_7

    .line 375
    :cond_d
    new-instance v0, Ls0/D;

    .line 376
    .line 377
    invoke-direct {v0}, Ls0/y;-><init>()V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_e
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 382
    .line 383
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 384
    .line 385
    .line 386
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :goto_7
    instance-of v2, v0, Ls0/y;

    .line 388
    .line 389
    if-nez v2, :cond_10

    .line 390
    .line 391
    new-instance v2, Ls0/D;

    .line 392
    .line 393
    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    .line 394
    .line 395
    if-eqz v5, :cond_f

    .line 396
    .line 397
    const/16 v5, 0x7d2

    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_f
    const/16 v5, 0x7d1

    .line 401
    .line 402
    :goto_8
    invoke-direct {v2, v0, v5, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 403
    .line 404
    .line 405
    throw v2

    .line 406
    :cond_10
    check-cast v0, Ls0/y;

    .line 407
    .line 408
    throw v0

    .line 409
    :cond_11
    :goto_9
    iget-wide v2, v1, Lu0/e;->u:J

    .line 410
    .line 411
    return-wide v2

    .line 412
    :cond_12
    :goto_a
    const/16 v4, 0x1a0

    .line 413
    .line 414
    if-ne v6, v4, :cond_14

    .line 415
    .line 416
    invoke-static {v8, v7}, Lu0/e;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-static {v5}, Ls0/I;->d(Ljava/lang/String;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v8

    .line 424
    iget-wide v14, v0, Ls0/m;->f:J

    .line 425
    .line 426
    cmp-long v5, v14, v8

    .line 427
    .line 428
    if-nez v5, :cond_14

    .line 429
    .line 430
    iput-boolean v3, v1, Lu0/e;->t:Z

    .line 431
    .line 432
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 433
    .line 434
    .line 435
    iget-wide v2, v0, Ls0/m;->g:J

    .line 436
    .line 437
    cmp-long v0, v2, v10

    .line 438
    .line 439
    if-eqz v0, :cond_13

    .line 440
    .line 441
    move-wide v12, v2

    .line 442
    :cond_13
    return-wide v12

    .line 443
    :cond_14
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lu0/e;->A()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 444
    .line 445
    .line 446
    goto :goto_b

    .line 447
    :catch_1
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 448
    .line 449
    :goto_b
    if-ne v6, v4, :cond_15

    .line 450
    .line 451
    new-instance v0, Ls0/j;

    .line 452
    .line 453
    const/16 v3, 0x7d8

    .line 454
    .line 455
    invoke-direct {v0, v3}, Ls0/j;-><init>(I)V

    .line 456
    .line 457
    .line 458
    goto :goto_c

    .line 459
    :cond_15
    const/4 v0, 0x0

    .line 460
    :goto_c
    new-instance v3, Ls0/A;

    .line 461
    .line 462
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    invoke-direct {v3, v6, v0, v7}, Ls0/A;-><init>(ILs0/j;Ljava/util/Map;)V

    .line 466
    .line 467
    .line 468
    throw v3

    .line 469
    :cond_16
    :try_start_4
    new-instance v0, Ls0/D;

    .line 470
    .line 471
    new-instance v5, Ljava/net/SocketTimeoutException;

    .line 472
    .line 473
    invoke-direct {v5}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 474
    .line 475
    .line 476
    new-instance v6, Lp0/i;

    .line 477
    .line 478
    invoke-direct {v6}, Lp0/i;-><init>()V

    .line 479
    .line 480
    .line 481
    new-array v7, v3, [I

    .line 482
    .line 483
    new-instance v8, Lu0/b;

    .line 484
    .line 485
    invoke-direct {v8, v7, v6}, Lu0/b;-><init>([ILp0/i;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v8}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v6}, Lp0/i;->a()V

    .line 492
    .line 493
    .line 494
    invoke-direct {v0, v5, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 495
    .line 496
    .line 497
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 498
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 503
    .line 504
    .line 505
    new-instance v0, Ls0/D;

    .line 506
    .line 507
    new-instance v2, Ljava/io/InterruptedIOException;

    .line 508
    .line 509
    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 510
    .line 511
    .line 512
    const/16 v4, 0x3ec

    .line 513
    .line 514
    invoke-direct {v0, v2, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :catch_3
    move-exception v0

    .line 519
    instance-of v2, v0, Ls0/y;

    .line 520
    .line 521
    if-eqz v2, :cond_17

    .line 522
    .line 523
    check-cast v0, Ls0/y;

    .line 524
    .line 525
    throw v0

    .line 526
    :cond_17
    new-instance v2, Ls0/D;

    .line 527
    .line 528
    const/16 v4, 0x7d0

    .line 529
    .line 530
    invoke-direct {v2, v0, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 531
    .line 532
    .line 533
    throw v2
.end method

.method public final declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lu0/e;->w:Lu0/d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Lu0/d;->a:Z

    .line 18
    .line 19
    iput-object v1, p0, Lu0/e;->w:Lu0/d;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    iput-object v1, p0, Lu0/e;->x:Ls0/m;

    .line 33
    .line 34
    iput-object v1, p0, Lu0/e;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 35
    .line 36
    iput-object v1, p0, Lu0/e;->A:Ljava/io/IOException;

    .line 37
    .line 38
    iput-boolean v2, p0, Lu0/e;->B:Z

    .line 39
    .line 40
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iput-boolean v2, p0, Lu0/e;->t:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Ls0/c;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_3
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/e;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lu0/e;->x:Ls0/m;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Ls0/m;->a:Landroid/net/Uri;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/e;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final q([BII)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lu0/e;->t:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-wide v1, p0, Lu0/e;->u:J

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v6, v1, v4

    .line 16
    .line 17
    if-nez v6, :cond_1

    .line 18
    .line 19
    return v3

    .line 20
    :cond_1
    invoke-virtual {p0}, Lu0/e;->y()Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lu0/e;->o:Lp0/i;

    .line 31
    .line 32
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lu0/e;->z(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v2, p0, Lu0/e;->B:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iput-wide v4, p0, Lu0/e;->u:J

    .line 48
    .line 49
    return v3

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    const/4 v2, 0x3

    .line 61
    new-array v2, v2, [J

    .line 62
    .line 63
    iget-wide v3, p0, Lu0/e;->u:J

    .line 64
    .line 65
    const-wide/16 v5, -0x1

    .line 66
    .line 67
    cmp-long v7, v3, v5

    .line 68
    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-wide v3, 0x7fffffffffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :goto_0
    aput-wide v3, v2, v0

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-long v3, v0

    .line 84
    const/4 v0, 0x1

    .line 85
    aput-wide v3, v2, v0

    .line 86
    .line 87
    const/4 v0, 0x2

    .line 88
    int-to-long v3, p3

    .line 89
    aput-wide v3, v2, v0

    .line 90
    .line 91
    invoke-static {v2}, Lz4/q0;->B([J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    long-to-int p3, v2

    .line 96
    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    iget-wide p1, p0, Lu0/e;->u:J

    .line 100
    .line 101
    cmp-long v0, p1, v5

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    int-to-long v0, p3

    .line 106
    sub-long/2addr p1, v0

    .line 107
    iput-wide p1, p0, Lu0/e;->u:J

    .line 108
    .line 109
    :cond_5
    invoke-virtual {p0, p3}, Ls0/c;->s(I)V

    .line 110
    .line 111
    .line 112
    return p3
.end method

.method public final w(Ls0/m;)V
    .locals 8

    .line 1
    new-instance v0, Lu0/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lu0/d;-><init>(Lu0/e;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lu0/e;->w:Lu0/d;

    .line 7
    .line 8
    iget-object v0, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lu0/e;->w:Lu0/d;

    .line 15
    .line 16
    iget-object v2, p0, Lu0/e;->e:Lorg/chromium/net/CronetEngine;

    .line 17
    .line 18
    iget-object v3, p0, Lu0/e;->f:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lu0/e;->g:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setPriority(I)Lorg/chromium/net/UrlRequest$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lu0/e;->m:Lm2/l;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lm2/l;->k()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v2, p0, Lu0/e;->n:Lm2/l;

    .line 51
    .line 52
    invoke-virtual {v2}, Lm2/l;->k()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Ls0/m;->e:Ljava/util/Map;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/util/Map$Entry;

    .line 83
    .line 84
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v5, v4}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p1, Ls0/m;->d:[B

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    const-string v4, "Content-Type"

    .line 105
    .line 106
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-instance p1, Ls0/D;

    .line 114
    .line 115
    const-string v0, "HTTP request with non-empty body must set Content-Type"

    .line 116
    .line 117
    const/16 v1, 0x3ec

    .line 118
    .line 119
    invoke-direct {p1, v0, v1}, Ls0/y;-><init>(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_3
    :goto_1
    iget-wide v4, p1, Ls0/m;->f:J

    .line 124
    .line 125
    iget-wide v6, p1, Ls0/m;->g:J

    .line 126
    .line 127
    invoke-static {v4, v5, v6, v7}, Ls0/I;->a(JJ)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    const-string v4, "Range"

    .line 134
    .line 135
    invoke-virtual {v0, v4, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v1, p0, Lu0/e;->l:Ljava/lang/String;

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    const-string v4, "User-Agent"

    .line 143
    .line 144
    invoke-virtual {v0, v4, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 145
    .line 146
    .line 147
    :cond_5
    iget p1, p1, Ls0/m;->c:I

    .line 148
    .line 149
    invoke-static {p1}, Ls0/m;->b(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    new-instance p1, Lu0/a;

    .line 159
    .line 160
    invoke-direct {p1, v2}, Lu0/a;-><init>([B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1, v3}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 171
    .line 172
    return-void
.end method

.method public final y()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lu0/e;->q:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    return-object v0
.end method

.method public final z(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v2, p0, Lu0/e;->o:Lp0/i;

    .line 11
    .line 12
    iget v3, p0, Lu0/e;->i:I

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    invoke-virtual {v2, v3, v4}, Lp0/i;->b(J)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    nop

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    iget-object v3, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    if-ne p1, v3, :cond_1

    .line 35
    .line 36
    iput-object v1, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    :cond_1
    new-instance p1, Ls0/y;

    .line 39
    .line 40
    const/16 v1, 0x7d2

    .line 41
    .line 42
    invoke-direct {p1, v2, v1, v0}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lu0/e;->A:Ljava/io/IOException;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    iget-object v2, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    if-ne p1, v2, :cond_2

    .line 51
    .line 52
    iput-object v1, p0, Lu0/e;->y:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lu0/e;->A:Ljava/io/IOException;

    .line 67
    .line 68
    :goto_2
    iget-object p1, p0, Lu0/e;->A:Ljava/io/IOException;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    instance-of v1, p1, Ls0/y;

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    check-cast p1, Ls0/y;

    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    invoke-static {p1, v0}, Ls0/y;->b(Ljava/io/IOException;I)Ls0/y;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    throw p1

    .line 84
    :cond_4
    return-void
.end method
