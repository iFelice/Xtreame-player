.class public final Ls0/H;
.super Ls0/c;
.source "SourceFile"


# instance fields
.field public volatile A:J

.field public final e:Landroid/net/http/HttpEngine;

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

.field public final q:Ly4/l;

.field public final r:Z

.field public s:Z

.field public t:J

.field public u:Ls0/m;

.field public v:Ls0/G;

.field public w:Ljava/nio/ByteBuffer;

.field public x:Landroid/net/http/UrlResponseInfo;

.field public y:Ljava/io/IOException;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/Executor;IIILm2/l;)V
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
    invoke-static {p1}, LL1/d;->k(Ljava/lang/Object;)Landroid/net/http/HttpEngine;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ls0/H;->e:Landroid/net/http/HttpEngine;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Ls0/H;->f:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    iput p3, p0, Ls0/H;->g:I

    .line 20
    .line 21
    iput p4, p0, Ls0/H;->h:I

    .line 22
    .line 23
    iput p5, p0, Ls0/H;->i:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Ls0/H;->j:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Ls0/H;->k:Z

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Ls0/H;->l:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p6, p0, Ls0/H;->m:Lm2/l;

    .line 34
    .line 35
    iput-object p2, p0, Ls0/H;->q:Ly4/l;

    .line 36
    .line 37
    iput-boolean p1, p0, Ls0/H;->r:Z

    .line 38
    .line 39
    sget-object p1, Lp0/f;->a:Lp0/G;

    .line 40
    .line 41
    iput-object p1, p0, Ls0/H;->p:Lp0/G;

    .line 42
    .line 43
    new-instance p1, Lm2/l;

    .line 44
    .line 45
    const/4 p2, 0x3

    .line 46
    invoke-direct {p1, p2}, Lm2/l;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Ls0/H;->n:Lm2/l;

    .line 50
    .line 51
    new-instance p1, Lp0/i;

    .line 52
    .line 53
    invoke-direct {p1}, Lp0/i;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Ls0/H;->o:Lp0/i;

    .line 57
    .line 58
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
    invoke-virtual {p0}, Ls0/H;->y()Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    iget-boolean v2, p0, Ls0/H;->z:Z

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Ls0/H;->o:Lp0/i;

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
    invoke-virtual {p0, v1}, Ls0/H;->z(Ljava/nio/ByteBuffer;)V

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
    iget-boolean v2, v1, Ls0/H;->s:Z

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
    iget-object v2, v1, Ls0/H;->o:Lp0/i;

    .line 16
    .line 17
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Ls0/H;->p:Lp0/G;

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
    iget v2, v1, Ls0/H;->h:I

    .line 30
    .line 31
    int-to-long v6, v2

    .line 32
    add-long/2addr v4, v6

    .line 33
    iput-wide v4, v1, Ls0/H;->A:J

    .line 34
    .line 35
    iput-object v0, v1, Ls0/H;->u:Ls0/m;

    .line 36
    .line 37
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ls0/H;->w(Ls0/m;)Ls0/G;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v1, Ls0/H;->v:Ls0/G;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 42
    .line 43
    iget-object v4, v2, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 44
    .line 45
    invoke-static {v4}, Ls0/B;->l(Landroid/net/http/UrlRequest;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Ls0/c;->u()V

    .line 49
    .line 50
    .line 51
    :try_start_1
    iget-object v4, v1, Ls0/H;->p:Lp0/G;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    const/4 v6, 0x0

    .line 61
    :goto_0
    if-nez v6, :cond_0

    .line 62
    .line 63
    iget-wide v7, v1, Ls0/H;->A:J

    .line 64
    .line 65
    cmp-long v9, v4, v7

    .line 66
    .line 67
    if-gez v9, :cond_0

    .line 68
    .line 69
    iget-object v6, v1, Ls0/H;->o:Lp0/i;

    .line 70
    .line 71
    iget-wide v7, v1, Ls0/H;->A:J

    .line 72
    .line 73
    sub-long/2addr v7, v4

    .line 74
    const-wide/16 v4, 0x5

    .line 75
    .line 76
    add-long/2addr v7, v4

    .line 77
    invoke-virtual {v6, v7, v8}, Lp0/i;->b(J)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    iget-object v4, v1, Ls0/H;->p:Lp0/G;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v4, v1, Ls0/H;->y:Ljava/io/IOException;

    .line 92
    .line 93
    const/16 v5, 0x7d1

    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-static {v0}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v6, "err_cleartext_not_permitted"

    .line 108
    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    new-instance v0, Ls0/w;

    .line 116
    .line 117
    invoke-direct {v0, v4}, Ls0/w;-><init>(Ljava/io/IOException;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_1
    new-instance v0, Ls0/D;

    .line 122
    .line 123
    new-instance v6, Lp0/i;

    .line 124
    .line 125
    invoke-direct {v6}, Lp0/i;-><init>()V

    .line 126
    .line 127
    .line 128
    new-array v7, v3, [I

    .line 129
    .line 130
    new-instance v8, Ls0/F;

    .line 131
    .line 132
    invoke-direct {v8, v7, v6}, Ls0/F;-><init>([ILp0/i;)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v2, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 136
    .line 137
    invoke-static {v2, v8}, Ls0/B;->h(Landroid/net/http/UrlRequest;Ls0/F;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lp0/i;->a()V

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, v4, v5, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 144
    .line 145
    .line 146
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    :cond_2
    const/16 v4, 0x7d2

    .line 148
    .line 149
    if-eqz v6, :cond_16

    .line 150
    .line 151
    iget-object v2, v1, Ls0/H;->x:Landroid/net/http/UrlResponseInfo;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v2}, LL1/d;->o(Ljava/lang/Object;)Landroid/net/http/UrlResponseInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, LL1/d;->b(Landroid/net/http/UrlResponseInfo;)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {v2}, LL1/d;->A(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static {v7}, LL1/d;->s(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const-string v8, "Content-Range"

    .line 173
    .line 174
    const/16 v9, 0xc8

    .line 175
    .line 176
    const-wide/16 v10, -0x1

    .line 177
    .line 178
    const-wide/16 v12, 0x0

    .line 179
    .line 180
    if-lt v6, v9, :cond_12

    .line 181
    .line 182
    const/16 v14, 0x12b

    .line 183
    .line 184
    if-le v6, v14, :cond_3

    .line 185
    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :cond_3
    iget-object v14, v1, Ls0/H;->q:Ly4/l;

    .line 189
    .line 190
    if-eqz v14, :cond_5

    .line 191
    .line 192
    const-string v15, "Content-Type"

    .line 193
    .line 194
    invoke-static {v15, v7}, Ls0/H;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    if-eqz v15, :cond_5

    .line 199
    .line 200
    invoke-interface {v14, v15}, Ly4/l;->apply(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-eqz v14, :cond_4

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_4
    new-instance v0, Ls0/z;

    .line 208
    .line 209
    invoke-direct {v0, v15}, Ls0/z;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_5
    :goto_1
    if-ne v6, v9, :cond_6

    .line 214
    .line 215
    iget-wide v14, v0, Ls0/m;->f:J

    .line 216
    .line 217
    cmp-long v6, v14, v12

    .line 218
    .line 219
    if-eqz v6, :cond_6

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    move-wide v14, v12

    .line 223
    :goto_2
    invoke-static {v2}, LL1/d;->A(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v2}, Ls0/B;->e(Landroid/net/http/HeaderBlock;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_9

    .line 240
    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Ljava/util/Map$Entry;

    .line 246
    .line 247
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    check-cast v9, Ljava/lang/String;

    .line 252
    .line 253
    const-string v5, "Content-Encoding"

    .line 254
    .line 255
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_8

    .line 260
    .line 261
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Ljava/lang/String;

    .line 266
    .line 267
    const-string v5, "identity"

    .line 268
    .line 269
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    xor-int/2addr v2, v3

    .line 274
    if-nez v2, :cond_7

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_7
    iget-wide v5, v0, Ls0/m;->g:J

    .line 278
    .line 279
    iput-wide v5, v1, Ls0/H;->t:J

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_8
    const/16 v5, 0x7d1

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_9
    :goto_4
    iget-wide v5, v0, Ls0/m;->g:J

    .line 286
    .line 287
    cmp-long v2, v5, v10

    .line 288
    .line 289
    if-eqz v2, :cond_a

    .line 290
    .line 291
    iput-wide v5, v1, Ls0/H;->t:J

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_a
    const-string v2, "Content-Length"

    .line 295
    .line 296
    invoke-static {v2, v7}, Ls0/H;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v8, v7}, Ls0/H;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v2, v5}, Ls0/I;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    cmp-long v2, v5, v10

    .line 309
    .line 310
    if-eqz v2, :cond_b

    .line 311
    .line 312
    sub-long v10, v5, v14

    .line 313
    .line 314
    :cond_b
    iput-wide v10, v1, Ls0/H;->t:J

    .line 315
    .line 316
    :goto_5
    iput-boolean v3, v1, Ls0/H;->s:Z

    .line 317
    .line 318
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 319
    .line 320
    .line 321
    cmp-long v0, v14, v12

    .line 322
    .line 323
    if-nez v0, :cond_c

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ls0/H;->y()Ljava/nio/ByteBuffer;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_6
    cmp-long v2, v14, v12

    .line 331
    .line 332
    if-lez v2, :cond_11

    .line 333
    .line 334
    :try_start_2
    iget-object v2, v1, Ls0/H;->o:Lp0/i;

    .line 335
    .line 336
    invoke-virtual {v2}, Lp0/i;->e()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ls0/H;->z(Ljava/nio/ByteBuffer;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v2, :cond_e

    .line 354
    .line 355
    iget-boolean v2, v1, Ls0/H;->z:Z

    .line 356
    .line 357
    if-nez v2, :cond_d

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    int-to-long v5, v2

    .line 374
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 375
    .line 376
    .line 377
    move-result-wide v5

    .line 378
    long-to-int v2, v5

    .line 379
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    add-int/2addr v5, v2

    .line 384
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 385
    .line 386
    .line 387
    int-to-long v5, v2

    .line 388
    sub-long/2addr v14, v5

    .line 389
    goto :goto_6

    .line 390
    :catch_0
    move-exception v0

    .line 391
    goto :goto_7

    .line 392
    :cond_d
    new-instance v0, Ls0/D;

    .line 393
    .line 394
    invoke-direct {v0}, Ls0/y;-><init>()V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :cond_e
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 401
    .line 402
    .line 403
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    :goto_7
    instance-of v2, v0, Ls0/y;

    .line 405
    .line 406
    if-nez v2, :cond_10

    .line 407
    .line 408
    new-instance v2, Ls0/D;

    .line 409
    .line 410
    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    .line 411
    .line 412
    if-eqz v5, :cond_f

    .line 413
    .line 414
    const/16 v5, 0x7d2

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_f
    const/16 v5, 0x7d1

    .line 418
    .line 419
    :goto_8
    invoke-direct {v2, v0, v5, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 420
    .line 421
    .line 422
    throw v2

    .line 423
    :cond_10
    check-cast v0, Ls0/y;

    .line 424
    .line 425
    throw v0

    .line 426
    :cond_11
    :goto_9
    iget-wide v2, v1, Ls0/H;->t:J

    .line 427
    .line 428
    return-wide v2

    .line 429
    :cond_12
    :goto_a
    const/16 v4, 0x1a0

    .line 430
    .line 431
    if-ne v6, v4, :cond_14

    .line 432
    .line 433
    invoke-static {v8, v7}, Ls0/H;->x(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    invoke-static {v5}, Ls0/I;->d(Ljava/lang/String;)J

    .line 438
    .line 439
    .line 440
    move-result-wide v8

    .line 441
    iget-wide v14, v0, Ls0/m;->f:J

    .line 442
    .line 443
    cmp-long v5, v14, v8

    .line 444
    .line 445
    if-nez v5, :cond_14

    .line 446
    .line 447
    iput-boolean v3, v1, Ls0/H;->s:Z

    .line 448
    .line 449
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 450
    .line 451
    .line 452
    iget-wide v2, v0, Ls0/m;->g:J

    .line 453
    .line 454
    cmp-long v0, v2, v10

    .line 455
    .line 456
    if-eqz v0, :cond_13

    .line 457
    .line 458
    move-wide v12, v2

    .line 459
    :cond_13
    return-wide v12

    .line 460
    :cond_14
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ls0/H;->A()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 461
    .line 462
    .line 463
    goto :goto_b

    .line 464
    :catch_1
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 465
    .line 466
    :goto_b
    if-ne v6, v4, :cond_15

    .line 467
    .line 468
    new-instance v0, Ls0/j;

    .line 469
    .line 470
    const/16 v3, 0x7d8

    .line 471
    .line 472
    invoke-direct {v0, v3}, Ls0/j;-><init>(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_15
    const/4 v0, 0x0

    .line 477
    :goto_c
    new-instance v3, Ls0/A;

    .line 478
    .line 479
    invoke-static {v2}, Ls0/B;->d(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    invoke-direct {v3, v6, v0, v7}, Ls0/A;-><init>(ILs0/j;Ljava/util/Map;)V

    .line 483
    .line 484
    .line 485
    throw v3

    .line 486
    :cond_16
    :try_start_4
    new-instance v0, Ls0/D;

    .line 487
    .line 488
    new-instance v5, Ljava/net/SocketTimeoutException;

    .line 489
    .line 490
    invoke-direct {v5}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 491
    .line 492
    .line 493
    new-instance v6, Lp0/i;

    .line 494
    .line 495
    invoke-direct {v6}, Lp0/i;-><init>()V

    .line 496
    .line 497
    .line 498
    new-array v7, v3, [I

    .line 499
    .line 500
    new-instance v8, Ls0/F;

    .line 501
    .line 502
    invoke-direct {v8, v7, v6}, Ls0/F;-><init>([ILp0/i;)V

    .line 503
    .line 504
    .line 505
    iget-object v2, v2, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 506
    .line 507
    invoke-static {v2, v8}, Ls0/B;->h(Landroid/net/http/UrlRequest;Ls0/F;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6}, Lp0/i;->a()V

    .line 511
    .line 512
    .line 513
    invoke-direct {v0, v5, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 514
    .line 515
    .line 516
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 517
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 522
    .line 523
    .line 524
    new-instance v0, Ls0/D;

    .line 525
    .line 526
    new-instance v2, Ljava/io/InterruptedIOException;

    .line 527
    .line 528
    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 529
    .line 530
    .line 531
    const/16 v4, 0x3ec

    .line 532
    .line 533
    invoke-direct {v0, v2, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 534
    .line 535
    .line 536
    throw v0

    .line 537
    :catch_3
    move-exception v0

    .line 538
    instance-of v2, v0, Ls0/y;

    .line 539
    .line 540
    if-eqz v2, :cond_17

    .line 541
    .line 542
    check-cast v0, Ls0/y;

    .line 543
    .line 544
    throw v0

    .line 545
    :cond_17
    new-instance v2, Ls0/D;

    .line 546
    .line 547
    const/16 v4, 0x7d0

    .line 548
    .line 549
    invoke-direct {v2, v0, v4, v3}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 550
    .line 551
    .line 552
    throw v2
.end method

.method public final declared-synchronized close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls0/H;->v:Ls0/G;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Ls0/G;->b:Ls0/E;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    iput-boolean v3, v2, Ls0/E;->a:Z

    .line 11
    .line 12
    iget-object v0, v0, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 13
    .line 14
    invoke-static {v0}, Ls0/B;->k(Landroid/net/http/UrlRequest;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Ls0/H;->v:Ls0/G;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    :cond_1
    iput-object v1, p0, Ls0/H;->u:Ls0/m;

    .line 31
    .line 32
    iput-object v1, p0, Ls0/H;->x:Landroid/net/http/UrlResponseInfo;

    .line 33
    .line 34
    iput-object v1, p0, Ls0/H;->y:Ljava/io/IOException;

    .line 35
    .line 36
    iput-boolean v2, p0, Ls0/H;->z:Z

    .line 37
    .line 38
    iget-boolean v0, p0, Ls0/H;->s:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iput-boolean v2, p0, Ls0/H;->s:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Ls0/c;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :cond_2
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/H;->x:Landroid/net/http/UrlResponseInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, LL1/d;->r(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

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
    iget-object v0, p0, Ls0/H;->u:Ls0/m;

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
    iget-object v0, p0, Ls0/H;->x:Landroid/net/http/UrlResponseInfo;

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
    invoke-static {v0}, LL1/d;->h(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, LL1/d;->s(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    return-object v0
.end method

.method public final q([BII)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Ls0/H;->s:Z

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
    iget-wide v1, p0, Ls0/H;->t:J

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
    invoke-virtual {p0}, Ls0/H;->y()Ljava/nio/ByteBuffer;

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
    iget-object v2, p0, Ls0/H;->o:Lp0/i;

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
    invoke-virtual {p0, v1}, Ls0/H;->z(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v2, p0, Ls0/H;->z:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iput-wide v4, p0, Ls0/H;->t:J

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
    iget-wide v3, p0, Ls0/H;->t:J

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
    iget-wide p1, p0, Ls0/H;->t:J

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
    iput-wide p1, p0, Ls0/H;->t:J

    .line 108
    .line 109
    :cond_5
    invoke-virtual {p0, p3}, Ls0/c;->s(I)V

    .line 110
    .line 111
    .line 112
    return p3
.end method

.method public final w(Ls0/m;)Ls0/G;
    .locals 10

    .line 1
    new-instance v0, Ls0/E;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ls0/E;-><init>(Ls0/H;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ls0/G;

    .line 7
    .line 8
    iget-object v2, p1, Ls0/m;->a:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Ls0/H;->e:Landroid/net/http/HttpEngine;

    .line 15
    .line 16
    iget-object v4, p0, Ls0/H;->f:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-static {v3, v2, v4, v0}, LL1/d;->l(Landroid/net/http/HttpEngine;Ljava/lang/String;Ljava/util/concurrent/Executor;Ls0/E;)Landroid/net/http/UrlRequest$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Ls0/H;->g:I

    .line 23
    .line 24
    invoke-static {v2, v3}, LL1/d;->n(Landroid/net/http/UrlRequest$Builder;I)Landroid/net/http/UrlRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, LL1/d;->m(Landroid/net/http/UrlRequest$Builder;)Landroid/net/http/UrlRequest$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Ls0/H;->m:Lm2/l;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v5}, Lm2/l;->k()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v5, p0, Ls0/H;->n:Lm2/l;

    .line 49
    .line 50
    invoke-virtual {v5}, Lm2/l;->k()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p1, Ls0/m;->e:Ljava/util/Map;

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2, v7, v6}, LL1/d;->y(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v5, p1, Ls0/m;->d:[B

    .line 99
    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    const-string v6, "Content-Type"

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    new-instance p1, Ls0/D;

    .line 112
    .line 113
    const-string v0, "HTTP request with non-empty body must set Content-Type"

    .line 114
    .line 115
    const/16 v1, 0x3ec

    .line 116
    .line 117
    invoke-direct {p1, v0, v1}, Ls0/y;-><init>(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_3
    :goto_1
    iget-wide v6, p1, Ls0/m;->f:J

    .line 122
    .line 123
    iget-wide v8, p1, Ls0/m;->g:J

    .line 124
    .line 125
    invoke-static {v6, v7, v8, v9}, Ls0/I;->a(JJ)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    invoke-static {v2, v3}, LL1/d;->x(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    iget-object v3, p0, Ls0/H;->l:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-static {v2, v3}, LL1/d;->C(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget p1, p1, Ls0/m;->c:I

    .line 142
    .line 143
    invoke-static {p1}, Ls0/m;->b(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v2, p1}, LL1/d;->D(Landroid/net/http/UrlRequest$Builder;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    if-eqz v5, :cond_6

    .line 151
    .line 152
    new-instance p1, Ls0/d;

    .line 153
    .line 154
    invoke-direct {p1, v5}, Ls0/d;-><init>([B)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2, p1, v4}, LL1/d;->z(Landroid/net/http/UrlRequest$Builder;Ls0/d;Ljava/util/concurrent/Executor;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-static {v2}, Ls0/B;->c(Landroid/net/http/UrlRequest$Builder;)Landroid/net/http/UrlRequest;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v1, p1, v0}, Ls0/G;-><init>(Landroid/net/http/UrlRequest;Ls0/E;)V

    .line 165
    .line 166
    .line 167
    return-object v1
.end method

.method public final y()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x8000

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    return-object v0
.end method

.method public final z(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ls0/H;->v:Ls0/G;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 6
    .line 7
    invoke-static {v0, p1}, Ls0/B;->g(Landroid/net/http/UrlRequest;Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Ls0/H;->o:Lp0/i;

    .line 13
    .line 14
    iget v3, p0, Ls0/H;->i:I

    .line 15
    .line 16
    int-to-long v3, v3

    .line 17
    invoke-virtual {v2, v3, v4}, Lp0/i;->b(J)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    nop

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    iget-object v3, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    if-ne p1, v3, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    :cond_1
    new-instance p1, Ls0/y;

    .line 41
    .line 42
    const/16 v1, 0x7d2

    .line 43
    .line 44
    invoke-direct {p1, v2, v1, v0}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Ls0/H;->y:Ljava/io/IOException;

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :goto_1
    iget-object v2, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    if-ne p1, v2, :cond_2

    .line 53
    .line 54
    iput-object v1, p0, Ls0/H;->w:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 61
    .line 62
    .line 63
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Ls0/H;->y:Ljava/io/IOException;

    .line 69
    .line 70
    :goto_2
    iget-object p1, p0, Ls0/H;->y:Ljava/io/IOException;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    instance-of v1, p1, Ls0/y;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    check-cast p1, Ls0/y;

    .line 79
    .line 80
    throw p1

    .line 81
    :cond_3
    invoke-static {p1, v0}, Ls0/y;->b(Ljava/io/IOException;I)Ls0/y;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1

    .line 86
    :cond_4
    return-void
.end method
