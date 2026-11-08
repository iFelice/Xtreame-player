.class public final Landroidx/media3/decoder/opus/OpusDecoder;
.super Lw0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw0/k;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Landroidx/media3/decoder/CryptoConfig;

.field public final d:I

.field public final e:I

.field public final f:J

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(ILjava/util/List;Landroidx/media3/decoder/CryptoConfig;Z)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    new-array v3, v2, [Lw0/g;

    .line 12
    .line 13
    new-array v4, v2, [Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 14
    .line 15
    invoke-direct {v7, v3, v4}, Lw0/k;-><init>([Lw0/g;[Lw0/i;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Landroidx/media3/decoder/opus/OpusLibrary;->a:Lx0/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Lp0/r;->isAvailable()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_f

    .line 25
    .line 26
    iput-object v1, v7, Landroidx/media3/decoder/opus/OpusDecoder;->c:Landroidx/media3/decoder/CryptoConfig;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroidx/media3/decoder/opus/OpusLibrary;->opusIsSecureDecodeSupported()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lx0/a;

    .line 38
    .line 39
    const-string v1, "Opus decoder does not support secure decode"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x3

    .line 50
    const/4 v4, 0x1

    .line 51
    if-eq v1, v4, :cond_3

    .line 52
    .line 53
    if-ne v1, v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Lx0/a;

    .line 57
    .line 58
    const-string v1, "Invalid initialization data size"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_3
    :goto_1
    const/4 v5, 0x2

    .line 65
    const/16 v6, 0x8

    .line 66
    .line 67
    if-ne v1, v3, :cond_5

    .line 68
    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, [B

    .line 74
    .line 75
    array-length v1, v1

    .line 76
    if-ne v1, v6, :cond_4

    .line 77
    .line 78
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, [B

    .line 83
    .line 84
    array-length v1, v1

    .line 85
    if-ne v1, v6, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance v0, Lx0/a;

    .line 89
    .line 90
    const-string v1, "Invalid pre-skip or seek pre-roll"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_5
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const-wide/32 v9, 0x3b9aca00

    .line 101
    .line 102
    .line 103
    const-wide/32 v11, 0xbb80

    .line 104
    .line 105
    .line 106
    const/4 v13, 0x0

    .line 107
    if-ne v1, v3, :cond_6

    .line 108
    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, [B

    .line 114
    .line 115
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 128
    .line 129
    .line 130
    move-result-wide v14

    .line 131
    mul-long v14, v14, v11

    .line 132
    .line 133
    div-long/2addr v14, v9

    .line 134
    long-to-int v1, v14

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, [B

    .line 141
    .line 142
    const/16 v14, 0xb

    .line 143
    .line 144
    aget-byte v14, v1, v14

    .line 145
    .line 146
    and-int/lit16 v14, v14, 0xff

    .line 147
    .line 148
    shl-int/2addr v14, v6

    .line 149
    const/16 v15, 0xa

    .line 150
    .line 151
    aget-byte v1, v1, v15

    .line 152
    .line 153
    and-int/lit16 v1, v1, 0xff

    .line 154
    .line 155
    or-int/2addr v1, v14

    .line 156
    :goto_3
    iput v1, v7, Landroidx/media3/decoder/opus/OpusDecoder;->d:I

    .line 157
    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-ne v14, v3, :cond_7

    .line 163
    .line 164
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, [B

    .line 169
    .line 170
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    .line 183
    .line 184
    .line 185
    move-result-wide v14

    .line 186
    mul-long v14, v14, v11

    .line 187
    .line 188
    div-long/2addr v14, v9

    .line 189
    long-to-int v3, v14

    .line 190
    goto :goto_4

    .line 191
    :cond_7
    const/16 v3, 0xf00

    .line 192
    .line 193
    :goto_4
    iput v3, v7, Landroidx/media3/decoder/opus/OpusDecoder;->e:I

    .line 194
    .line 195
    iput v1, v7, Landroidx/media3/decoder/opus/OpusDecoder;->h:I

    .line 196
    .line 197
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, [B

    .line 202
    .line 203
    array-length v1, v0

    .line 204
    const-string v3, "Invalid header length"

    .line 205
    .line 206
    const/16 v9, 0x13

    .line 207
    .line 208
    if-lt v1, v9, :cond_e

    .line 209
    .line 210
    const/16 v1, 0x9

    .line 211
    .line 212
    aget-byte v1, v0, v1

    .line 213
    .line 214
    and-int/lit16 v10, v1, 0xff

    .line 215
    .line 216
    iput v10, v7, Landroidx/media3/decoder/opus/OpusDecoder;->b:I

    .line 217
    .line 218
    aget-byte v1, v0, v2

    .line 219
    .line 220
    and-int/lit16 v1, v1, 0xff

    .line 221
    .line 222
    const/16 v2, 0x11

    .line 223
    .line 224
    aget-byte v2, v0, v2

    .line 225
    .line 226
    and-int/lit16 v2, v2, 0xff

    .line 227
    .line 228
    shl-int/2addr v2, v6

    .line 229
    or-int/2addr v1, v2

    .line 230
    int-to-short v11, v1

    .line 231
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    new-array v6, v1, [B

    .line 236
    .line 237
    const/16 v1, 0x12

    .line 238
    .line 239
    aget-byte v1, v0, v1

    .line 240
    .line 241
    if-nez v1, :cond_a

    .line 242
    .line 243
    if-gt v10, v5, :cond_9

    .line 244
    .line 245
    if-ne v10, v5, :cond_8

    .line 246
    .line 247
    const/4 v0, 0x1

    .line 248
    goto :goto_5

    .line 249
    :cond_8
    const/4 v0, 0x0

    .line 250
    :goto_5
    aput-byte v13, v6, v13

    .line 251
    .line 252
    aput-byte v4, v6, v4

    .line 253
    .line 254
    move v4, v0

    .line 255
    const/4 v3, 0x1

    .line 256
    goto :goto_6

    .line 257
    :cond_9
    new-instance v0, Lx0/a;

    .line 258
    .line 259
    const-string v1, "Invalid header, missing stream map"

    .line 260
    .line 261
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_a
    array-length v1, v0

    .line 266
    add-int/lit8 v2, v10, 0x15

    .line 267
    .line 268
    if-lt v1, v2, :cond_d

    .line 269
    .line 270
    aget-byte v1, v0, v9

    .line 271
    .line 272
    and-int/lit16 v1, v1, 0xff

    .line 273
    .line 274
    const/16 v2, 0x14

    .line 275
    .line 276
    aget-byte v2, v0, v2

    .line 277
    .line 278
    and-int/lit16 v2, v2, 0xff

    .line 279
    .line 280
    const/16 v3, 0x15

    .line 281
    .line 282
    invoke-static {v0, v3, v6, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    .line 284
    .line 285
    move v3, v1

    .line 286
    move v4, v2

    .line 287
    :goto_6
    const v1, 0xbb80

    .line 288
    .line 289
    .line 290
    move-object/from16 v0, p0

    .line 291
    .line 292
    move v2, v10

    .line 293
    move v5, v11

    .line 294
    invoke-direct/range {v0 .. v6}, Landroidx/media3/decoder/opus/OpusDecoder;->opusInit(IIIII[B)J

    .line 295
    .line 296
    .line 297
    move-result-wide v0

    .line 298
    iput-wide v0, v7, Landroidx/media3/decoder/opus/OpusDecoder;->f:J

    .line 299
    .line 300
    const-wide/16 v2, 0x0

    .line 301
    .line 302
    cmp-long v4, v0, v2

    .line 303
    .line 304
    if-eqz v4, :cond_c

    .line 305
    .line 306
    invoke-virtual/range {p0 .. p1}, Lw0/k;->setInitialInputBufferSize(I)V

    .line 307
    .line 308
    .line 309
    iput-boolean v8, v7, Landroidx/media3/decoder/opus/OpusDecoder;->a:Z

    .line 310
    .line 311
    if-eqz v8, :cond_b

    .line 312
    .line 313
    invoke-direct/range {p0 .. p0}, Landroidx/media3/decoder/opus/OpusDecoder;->opusSetFloatOutput()V

    .line 314
    .line 315
    .line 316
    :cond_b
    return-void

    .line 317
    :cond_c
    new-instance v0, Lx0/a;

    .line 318
    .line 319
    const-string v1, "Failed to initialize decoder"

    .line 320
    .line 321
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_d
    new-instance v0, Lx0/a;

    .line 326
    .line 327
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_e
    new-instance v0, Lx0/a;

    .line 332
    .line 333
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_f
    new-instance v0, Lx0/a;

    .line 338
    .line 339
    const-string v1, "Failed to load decoder native libraries"

    .line 340
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v0
.end method

.method private native opusClose(J)V
.end method

.method private native opusDecode(JJLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;)I
.end method

.method private native opusGetErrorCode(J)I
.end method

.method private native opusGetErrorMessage(J)Ljava/lang/String;
.end method

.method private native opusInit(IIIII[B)J
.end method

.method private native opusReset(J)V
.end method

.method private native opusSecureDecode(JJLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;ILandroidx/media3/decoder/CryptoConfig;I[B[BI[I[I)I
.end method

.method private native opusSetFloatOutput()V
.end method


# virtual methods
.method public final createInputBuffer()Lw0/g;
    .locals 3

    .line 1
    new-instance v0, Lw0/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v2, v1}, Lw0/g;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final createOutputBuffer()Lw0/i;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 2
    .line 3
    new-instance v1, LB0/x;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, v2}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;-><init>(Lw0/h;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lw0/e;
    .locals 2

    .line 1
    new-instance v0, Lx0/a;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final decode(Lw0/g;Lw0/i;Z)Lw0/e;
    .locals 26

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    check-cast v13, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    .line 8
    .line 9
    const-wide/16 v16, 0x0

    .line 10
    .line 11
    iget-wide v11, v15, Landroidx/media3/decoder/opus/OpusDecoder;->f:J

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-direct {v15, v11, v12}, Landroidx/media3/decoder/opus/OpusDecoder;->opusReset(J)V

    .line 16
    .line 17
    .line 18
    iget-wide v0, v14, Lw0/g;->K:J

    .line 19
    .line 20
    cmp-long v2, v0, v16

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iget v0, v15, Landroidx/media3/decoder/opus/OpusDecoder;->d:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v0, v15, Landroidx/media3/decoder/opus/OpusDecoder;->e:I

    .line 28
    .line 29
    :goto_0
    iput v0, v15, Landroidx/media3/decoder/opus/OpusDecoder;->h:I

    .line 30
    .line 31
    :cond_1
    iget-object v5, v14, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 34
    .line 35
    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-virtual {v14, v0}, Lw0/a;->getFlag(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-wide v3, v14, Lw0/g;->K:J

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v0, v14, Lw0/g;->H:Lw0/c;

    .line 50
    .line 51
    iget v10, v0, Lw0/c;->c:I

    .line 52
    .line 53
    iget-object v9, v0, Lw0/c;->b:[B

    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Lw0/c;->a:[B

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget v7, v0, Lw0/c;->f:I

    .line 64
    .line 65
    iget-object v1, v0, Lw0/c;->d:[I

    .line 66
    .line 67
    iget-object v2, v0, Lw0/c;->e:[I

    .line 68
    .line 69
    iget-object v0, v15, Landroidx/media3/decoder/opus/OpusDecoder;->c:Landroidx/media3/decoder/CryptoConfig;

    .line 70
    .line 71
    move-object/from16 p2, v1

    .line 72
    .line 73
    move-object/from16 p3, v2

    .line 74
    .line 75
    iget-wide v1, v15, Landroidx/media3/decoder/opus/OpusDecoder;->f:J

    .line 76
    .line 77
    const v18, 0xbb80

    .line 78
    .line 79
    .line 80
    move-object/from16 v19, v0

    .line 81
    .line 82
    move-object/from16 v0, p0

    .line 83
    .line 84
    move-object/from16 v20, p2

    .line 85
    .line 86
    move-object/from16 v21, p3

    .line 87
    .line 88
    move/from16 v22, v7

    .line 89
    .line 90
    move-object v7, v13

    .line 91
    move-object/from16 v23, v8

    .line 92
    .line 93
    move/from16 v8, v18

    .line 94
    .line 95
    move-object/from16 v18, v9

    .line 96
    .line 97
    move-object/from16 v9, v19

    .line 98
    .line 99
    move-wide/from16 v24, v11

    .line 100
    .line 101
    move-object/from16 v11, v18

    .line 102
    .line 103
    move-object/from16 v12, v23

    .line 104
    .line 105
    move-object/from16 p2, v13

    .line 106
    .line 107
    move/from16 v13, v22

    .line 108
    .line 109
    move-object/from16 v14, v20

    .line 110
    .line 111
    move-object/from16 v15, v21

    .line 112
    .line 113
    invoke-direct/range {v0 .. v15}, Landroidx/media3/decoder/opus/OpusDecoder;->opusSecureDecode(JJLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;ILandroidx/media3/decoder/CryptoConfig;I[B[BI[I[I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    move-object/from16 v9, p0

    .line 118
    .line 119
    move-object/from16 v8, p1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move-wide/from16 v24, v11

    .line 123
    .line 124
    move-object/from16 p2, v13

    .line 125
    .line 126
    move-object v8, v14

    .line 127
    iget-wide v3, v8, Lw0/g;->K:J

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    move-object/from16 v9, p0

    .line 134
    .line 135
    iget-wide v1, v9, Landroidx/media3/decoder/opus/OpusDecoder;->f:J

    .line 136
    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    move-object/from16 v7, p2

    .line 140
    .line 141
    invoke-direct/range {v0 .. v7}, Landroidx/media3/decoder/opus/OpusDecoder;->opusDecode(JJLjava/nio/ByteBuffer;ILandroidx/media3/decoder/SimpleDecoderOutputBuffer;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    :goto_1
    if-gez v0, :cond_4

    .line 146
    .line 147
    const/4 v1, -0x2

    .line 148
    if-ne v0, v1, :cond_3

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v1, "Drm error: "

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-wide/from16 v1, v24

    .line 158
    .line 159
    invoke-direct {v9, v1, v2}, Landroidx/media3/decoder/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v3, LD0/t;

    .line 171
    .line 172
    invoke-direct {v9, v1, v2}, Landroidx/media3/decoder/opus/OpusDecoder;->opusGetErrorCode(J)I

    .line 173
    .line 174
    .line 175
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lx0/a;

    .line 179
    .line 180
    invoke-direct {v1, v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_4

    .line 184
    .line 185
    :cond_3
    new-instance v1, Lx0/a;

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "Decode error: "

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    int-to-long v3, v0

    .line 195
    invoke-direct {v9, v3, v4}, Landroidx/media3/decoder/opus/OpusDecoder;->opusGetErrorMessage(J)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_4

    .line 210
    .line 211
    :cond_4
    move-object/from16 v1, p2

    .line 212
    .line 213
    iget-object v2, v1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    const/4 v3, 0x0

    .line 216
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 220
    .line 221
    .line 222
    iget v4, v9, Landroidx/media3/decoder/opus/OpusDecoder;->h:I

    .line 223
    .line 224
    const/4 v5, 0x2

    .line 225
    const/4 v6, 0x4

    .line 226
    iget-boolean v7, v9, Landroidx/media3/decoder/opus/OpusDecoder;->a:Z

    .line 227
    .line 228
    iget v10, v9, Landroidx/media3/decoder/opus/OpusDecoder;->b:I

    .line 229
    .line 230
    if-lez v4, :cond_7

    .line 231
    .line 232
    if-eqz v7, :cond_5

    .line 233
    .line 234
    const/4 v5, 0x4

    .line 235
    :cond_5
    mul-int v10, v10, v5

    .line 236
    .line 237
    mul-int v5, v4, v10

    .line 238
    .line 239
    if-gt v0, v5, :cond_6

    .line 240
    .line 241
    div-int v3, v0, v10

    .line 242
    .line 243
    sub-int/2addr v4, v3

    .line 244
    iput v4, v9, Landroidx/media3/decoder/opus/OpusDecoder;->h:I

    .line 245
    .line 246
    const/4 v3, 0x1

    .line 247
    iput-boolean v3, v1, Lw0/i;->shouldBeSkipped:Z

    .line 248
    .line 249
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    iput v3, v9, Landroidx/media3/decoder/opus/OpusDecoder;->h:I

    .line 254
    .line 255
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_7
    iget-boolean v1, v9, Landroidx/media3/decoder/opus/OpusDecoder;->g:Z

    .line 260
    .line 261
    if-eqz v1, :cond_c

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Lw0/a;->hasSupplementalData()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_c

    .line 268
    .line 269
    iget-object v1, v8, Lw0/g;->L:Ljava/nio/ByteBuffer;

    .line 270
    .line 271
    if-eqz v1, :cond_a

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    const/16 v8, 0x8

    .line 278
    .line 279
    if-eq v4, v8, :cond_8

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_8
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 283
    .line 284
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 289
    .line 290
    .line 291
    move-result-wide v11

    .line 292
    cmp-long v1, v11, v16

    .line 293
    .line 294
    if-gez v1, :cond_9

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_9
    const-wide/32 v3, 0xbb80

    .line 298
    .line 299
    .line 300
    mul-long v11, v11, v3

    .line 301
    .line 302
    const-wide/32 v3, 0x3b9aca00

    .line 303
    .line 304
    .line 305
    div-long/2addr v11, v3

    .line 306
    long-to-int v3, v11

    .line 307
    :cond_a
    :goto_2
    if-lez v3, :cond_c

    .line 308
    .line 309
    if-eqz v7, :cond_b

    .line 310
    .line 311
    const/4 v5, 0x4

    .line 312
    :cond_b
    mul-int v3, v3, v10

    .line 313
    .line 314
    mul-int v3, v3, v5

    .line 315
    .line 316
    if-lt v0, v3, :cond_c

    .line 317
    .line 318
    sub-int/2addr v0, v3

    .line 319
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 320
    .line 321
    .line 322
    :cond_c
    :goto_3
    const/4 v1, 0x0

    .line 323
    :goto_4
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "libopus"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroidx/media3/decoder/opus/OpusLibrary;->a:Lx0/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lp0/r;->isAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroidx/media3/decoder/opus/OpusLibrary;->opusGetVersion()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lw0/k;->release()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/decoder/opus/OpusDecoder;->f:J

    .line 5
    .line 6
    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/opus/OpusDecoder;->opusClose(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
