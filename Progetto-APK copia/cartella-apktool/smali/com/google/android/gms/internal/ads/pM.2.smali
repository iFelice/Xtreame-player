.class public final Lcom/google/android/gms/internal/ads/pM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[B

.field public static final e:[B


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/pM;->d:[B

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/pM;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static final b(Ljava/nio/ByteBuffer;JIIZ)V
    .locals 4

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x67

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x53

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v1, p5, :cond_0

    .line 25
    .line 26
    const/4 p5, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p5, 0x2

    .line 29
    :goto_0
    invoke-virtual {p0, p5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    int-to-long p1, p4

    .line 45
    const/16 p3, 0x8

    .line 46
    .line 47
    shr-long p3, p1, p3

    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    cmp-long p5, p3, v2

    .line 52
    .line 53
    if-nez p5, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    :cond_1
    const-string p3, "out of range: %s"

    .line 57
    .line 58
    invoke-static {p1, p2, p3, v0}, Lf/b;->C0(JLjava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    long-to-int p2, p1

    .line 62
    int-to-byte p1, p2

    .line 63
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/VJ;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v2, v3

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x2

    .line 30
    if-ne v2, v6, :cond_2

    .line 31
    .line 32
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v2, v4, :cond_1

    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v7, 0x3

    .line 43
    if-ne v2, v7, :cond_2

    .line 44
    .line 45
    :cond_1
    move-object/from16 v2, p2

    .line 46
    .line 47
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v5, v2

    .line 52
    check-cast v5, [B

    .line 53
    .line 54
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    sub-int v9, v8, v7

    .line 65
    .line 66
    iget v10, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 67
    .line 68
    add-int/lit16 v11, v9, 0xff

    .line 69
    .line 70
    const/16 v12, 0xff

    .line 71
    .line 72
    div-int/2addr v11, v12

    .line 73
    add-int/lit8 v13, v11, 0x1b

    .line 74
    .line 75
    add-int/2addr v13, v9

    .line 76
    if-ne v10, v6, :cond_4

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    array-length v10, v5

    .line 81
    add-int/lit8 v10, v10, 0x1c

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/16 v10, 0x2f

    .line 85
    .line 86
    :goto_0
    add-int/lit8 v14, v10, 0x2c

    .line 87
    .line 88
    add-int/2addr v13, v14

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v10, 0x0

    .line 91
    :goto_1
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    invoke-virtual {v14}, Ljava/nio/Buffer;->capacity()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    if-ge v14, v13, :cond_5

    .line 98
    .line 99
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    .line 116
    .line 117
    :goto_2
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    iget v14, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 120
    .line 121
    const/16 v15, 0x16

    .line 122
    .line 123
    if-ne v14, v6, :cond_8

    .line 124
    .line 125
    if-eqz v5, :cond_7

    .line 126
    .line 127
    const-wide/16 v16, 0x0

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    const/16 v19, 0x1

    .line 132
    .line 133
    const/16 v20, 0x1

    .line 134
    .line 135
    move-object v14, v13

    .line 136
    const/16 v6, 0x16

    .line 137
    .line 138
    move-wide/from16 v15, v16

    .line 139
    .line 140
    move/from16 v17, v18

    .line 141
    .line 142
    move/from16 v18, v19

    .line 143
    .line 144
    move/from16 v19, v20

    .line 145
    .line 146
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/pM;->b(Ljava/nio/ByteBuffer;JIIZ)V

    .line 147
    .line 148
    .line 149
    array-length v14, v5

    .line 150
    move/from16 p2, v7

    .line 151
    .line 152
    int-to-long v6, v14

    .line 153
    const/16 v15, 0x8

    .line 154
    .line 155
    shr-long v15, v6, v15

    .line 156
    .line 157
    const-wide/16 v17, 0x0

    .line 158
    .line 159
    cmp-long v20, v15, v17

    .line 160
    .line 161
    if-nez v20, :cond_6

    .line 162
    .line 163
    const/4 v15, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_6
    const/4 v15, 0x0

    .line 166
    :goto_3
    const-string v12, "out of range: %s"

    .line 167
    .line 168
    invoke-static {v6, v7, v12, v15}, Lf/b;->C0(JLjava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    long-to-int v7, v6

    .line 172
    int-to-byte v6, v7

    .line 173
    invoke-virtual {v13, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    add-int/lit8 v14, v14, 0x1c

    .line 188
    .line 189
    invoke-static {v6, v5, v14, v3}, Lcom/google/android/gms/internal/ads/Et;->l(I[BII)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/16 v6, 0x16

    .line 194
    .line 195
    invoke-virtual {v13, v6, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    move/from16 p2, v7

    .line 203
    .line 204
    sget-object v5, Lcom/google/android/gms/internal/ads/pM;->d:[B

    .line 205
    .line 206
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    :goto_4
    sget-object v5, Lcom/google/android/gms/internal/ads/pM;->e:[B

    .line 210
    .line 211
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    move/from16 p2, v7

    .line 216
    .line 217
    :goto_5
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-le v6, v4, :cond_9

    .line 226
    .line 227
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    const/4 v6, 0x0

    .line 233
    :goto_6
    invoke-static {v5, v6}, LQ3/b;->X(BB)J

    .line 234
    .line 235
    .line 236
    move-result-wide v5

    .line 237
    const-wide/32 v14, 0xbb80

    .line 238
    .line 239
    .line 240
    mul-long v5, v5, v14

    .line 241
    .line 242
    const-wide/32 v14, 0xf4240

    .line 243
    .line 244
    .line 245
    div-long/2addr v5, v14

    .line 246
    long-to-int v6, v5

    .line 247
    iget v5, v0, Lcom/google/android/gms/internal/ads/pM;->c:I

    .line 248
    .line 249
    add-int/2addr v5, v6

    .line 250
    iput v5, v0, Lcom/google/android/gms/internal/ads/pM;->c:I

    .line 251
    .line 252
    iget v6, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 253
    .line 254
    int-to-long v14, v5

    .line 255
    const/16 v18, 0x0

    .line 256
    .line 257
    move-object v5, v13

    .line 258
    move/from16 v16, v6

    .line 259
    .line 260
    move/from16 v17, v11

    .line 261
    .line 262
    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/pM;->b(Ljava/nio/ByteBuffer;JIIZ)V

    .line 263
    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    :goto_7
    if-ge v6, v11, :cond_b

    .line 267
    .line 268
    const/16 v7, 0xff

    .line 269
    .line 270
    if-lt v9, v7, :cond_a

    .line 271
    .line 272
    const/4 v12, -0x1

    .line 273
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 274
    .line 275
    .line 276
    add-int/lit16 v9, v9, -0xff

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_a
    int-to-byte v9, v9

    .line 280
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    .line 283
    const/4 v9, 0x0

    .line 284
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_b
    move/from16 v7, p2

    .line 288
    .line 289
    :goto_9
    if-ge v7, v8, :cond_c

    .line 290
    .line 291
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    add-int/lit8 v7, v7, 0x1

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_c
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 309
    .line 310
    .line 311
    iget v2, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 312
    .line 313
    const/4 v6, 0x2

    .line 314
    if-ne v2, v6, :cond_d

    .line 315
    .line 316
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    add-int/2addr v6, v10

    .line 325
    add-int/lit8 v6, v6, 0x2c

    .line 326
    .line 327
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 332
    .line 333
    .line 334
    move-result v8

    .line 335
    sub-int/2addr v7, v8

    .line 336
    invoke-static {v6, v2, v7, v3}, Lcom/google/android/gms/internal/ads/Et;->l(I[BII)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    add-int/lit8 v10, v10, 0x42

    .line 341
    .line 342
    invoke-virtual {v5, v10, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_d
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    sub-int/2addr v7, v8

    .line 363
    invoke-static {v6, v2, v7, v3}, Lcom/google/android/gms/internal/ads/Et;->l(I[BII)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    const/16 v3, 0x16

    .line 368
    .line 369
    invoke-virtual {v5, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 370
    .line 371
    .line 372
    :goto_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 373
    .line 374
    add-int/2addr v2, v4

    .line 375
    iput v2, v0, Lcom/google/android/gms/internal/ads/pM;->b:I

    .line 376
    .line 377
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 378
    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 380
    .line 381
    .line 382
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/VJ;->f(I)V

    .line 389
    .line 390
    .line 391
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/VJ;->e:Ljava/nio/ByteBuffer;

    .line 392
    .line 393
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/pM;->a:Ljava/nio/ByteBuffer;

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/VJ;->g()V

    .line 399
    .line 400
    .line 401
    return-void
.end method
