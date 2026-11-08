.class public final LQ6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/D;


# instance fields
.field public G:B

.field public final H:LQ6/x;

.field public final I:Ljava/util/zip/Inflater;

.field public final J:LQ6/s;

.field public final K:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(LQ6/D;)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, LQ6/x;

    .line 10
    .line 11
    invoke-direct {v0, p1}, LQ6/x;-><init>(LQ6/D;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LQ6/r;->H:LQ6/x;

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LQ6/r;->I:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    new-instance v1, LQ6/s;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, LQ6/s;-><init>(LQ6/x;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, LQ6/r;->J:LQ6/s;

    .line 30
    .line 31
    new-instance p1, Ljava/util/zip/CRC32;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, LQ6/r;->K:Ljava/util/zip/CRC32;

    .line 37
    .line 38
    return-void
.end method

.method public static k(IILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p2, v2, v3

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    aput-object p1, v2, p2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object p0, v2, p1

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method


# virtual methods
.method public final E(JLQ6/j;J)V
    .locals 5

    .line 1
    iget-object p3, p3, LQ6/j;->G:LQ6/y;

    .line 2
    .line 3
    invoke-static {p3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget v0, p3, LQ6/y;->c:I

    .line 7
    .line 8
    iget v1, p3, LQ6/y;->b:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v4, p1, v2

    .line 14
    .line 15
    if-ltz v4, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    sub-long/2addr p1, v0

    .line 20
    iget-object p3, p3, LQ6/y;->f:LQ6/y;

    .line 21
    .line 22
    invoke-static {p3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p4, v0

    .line 29
    .line 30
    if-lez v2, :cond_1

    .line 31
    .line 32
    iget v2, p3, LQ6/y;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v2, p1

    .line 36
    long-to-int p1, v2

    .line 37
    iget p2, p3, LQ6/y;->c:I

    .line 38
    .line 39
    sub-int/2addr p2, p1

    .line 40
    int-to-long v2, p2

    .line 41
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int p2, v2

    .line 46
    iget-object v2, p0, LQ6/r;->K:Ljava/util/zip/CRC32;

    .line 47
    .line 48
    iget-object v3, p3, LQ6/y;->a:[B

    .line 49
    .line 50
    invoke-virtual {v2, v3, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    .line 52
    .line 53
    int-to-long p1, p2

    .line 54
    sub-long/2addr p4, p1

    .line 55
    iget-object p3, p3, LQ6/y;->f:LQ6/y;

    .line 56
    .line 57
    invoke-static {p3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-wide p1, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/r;->J:LQ6/s;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/s;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final read(LQ6/j;J)J
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    const-string v0, "sink"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, v8, v0

    .line 15
    .line 16
    if-ltz v2, :cond_12

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    iget-byte v0, v6, LQ6/r;->G:B

    .line 22
    .line 23
    iget-object v10, v6, LQ6/r;->K:Ljava/util/zip/CRC32;

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    const-wide/16 v12, -0x1

    .line 27
    .line 28
    iget-object v15, v6, LQ6/r;->H:LQ6/x;

    .line 29
    .line 30
    if-nez v0, :cond_d

    .line 31
    .line 32
    const-wide/16 v0, 0xa

    .line 33
    .line 34
    invoke-virtual {v15, v0, v1}, LQ6/x;->U(J)V

    .line 35
    .line 36
    .line 37
    iget-object v14, v15, LQ6/x;->H:LQ6/j;

    .line 38
    .line 39
    const-wide/16 v0, 0x3

    .line 40
    .line 41
    invoke-virtual {v14, v0, v1}, LQ6/j;->a0(J)B

    .line 42
    .line 43
    .line 44
    move-result v20

    .line 45
    shr-int/lit8 v0, v20, 0x1

    .line 46
    .line 47
    and-int/2addr v0, v11

    .line 48
    if-ne v0, v11, :cond_1

    .line 49
    .line 50
    const/16 v21, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    const/16 v21, 0x0

    .line 55
    .line 56
    :goto_0
    if-eqz v21, :cond_2

    .line 57
    .line 58
    const-wide/16 v4, 0xa

    .line 59
    .line 60
    iget-object v3, v15, LQ6/x;->H:LQ6/j;

    .line 61
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .line 64
    move-object/from16 v0, p0

    .line 65
    .line 66
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v15}, LQ6/x;->readShort()S

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const-string v1, "ID1ID2"

    .line 74
    .line 75
    const/16 v2, 0x1f8b

    .line 76
    .line 77
    invoke-static {v2, v0, v1}, LQ6/r;->k(IILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0x8

    .line 81
    .line 82
    invoke-virtual {v15, v0, v1}, LQ6/x;->b(J)V

    .line 83
    .line 84
    .line 85
    shr-int/lit8 v0, v20, 0x2

    .line 86
    .line 87
    and-int/2addr v0, v11

    .line 88
    const v22, 0xff00

    .line 89
    .line 90
    .line 91
    const-wide/16 v4, 0x2

    .line 92
    .line 93
    if-ne v0, v11, :cond_5

    .line 94
    .line 95
    invoke-virtual {v15, v4, v5}, LQ6/x;->U(J)V

    .line 96
    .line 97
    .line 98
    if-eqz v21, :cond_3

    .line 99
    .line 100
    const-wide/16 v16, 0x2

    .line 101
    .line 102
    iget-object v3, v15, LQ6/x;->H:LQ6/j;

    .line 103
    .line 104
    const-wide/16 v1, 0x0

    .line 105
    .line 106
    move-object/from16 v0, p0

    .line 107
    .line 108
    move-wide/from16 v4, v16

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v14}, LQ6/j;->readShort()S

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    and-int v1, v0, v22

    .line 118
    .line 119
    ushr-int/lit8 v1, v1, 0x8

    .line 120
    .line 121
    and-int/lit16 v0, v0, 0xff

    .line 122
    .line 123
    shl-int/lit8 v0, v0, 0x8

    .line 124
    .line 125
    or-int/2addr v0, v1

    .line 126
    int-to-short v0, v0

    .line 127
    const v1, 0xffff

    .line 128
    .line 129
    .line 130
    and-int/2addr v0, v1

    .line 131
    int-to-long v4, v0

    .line 132
    invoke-virtual {v15, v4, v5}, LQ6/x;->U(J)V

    .line 133
    .line 134
    .line 135
    if-eqz v21, :cond_4

    .line 136
    .line 137
    iget-object v3, v15, LQ6/x;->H:LQ6/j;

    .line 138
    .line 139
    const-wide/16 v1, 0x0

    .line 140
    .line 141
    move-object/from16 v0, p0

    .line 142
    .line 143
    move-wide/from16 v16, v4

    .line 144
    .line 145
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 146
    .line 147
    .line 148
    move-wide/from16 v0, v16

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    move-wide v0, v4

    .line 152
    :goto_1
    invoke-virtual {v15, v0, v1}, LQ6/x;->b(J)V

    .line 153
    .line 154
    .line 155
    :cond_5
    shr-int/lit8 v0, v20, 0x3

    .line 156
    .line 157
    and-int/2addr v0, v11

    .line 158
    const-wide/16 v23, 0x1

    .line 159
    .line 160
    if-ne v0, v11, :cond_8

    .line 161
    .line 162
    const-wide v18, 0x7fffffffffffffffL

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    const-wide/16 v16, 0x0

    .line 169
    .line 170
    move-object/from16 v25, v14

    .line 171
    .line 172
    move-object v14, v15

    .line 173
    move-object v4, v15

    .line 174
    move v15, v0

    .line 175
    invoke-virtual/range {v14 .. v19}, LQ6/x;->k(BJJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v14

    .line 179
    cmp-long v0, v14, v12

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    if-eqz v21, :cond_6

    .line 184
    .line 185
    add-long v16, v14, v23

    .line 186
    .line 187
    iget-object v3, v4, LQ6/x;->H:LQ6/j;

    .line 188
    .line 189
    const-wide/16 v1, 0x0

    .line 190
    .line 191
    move-object/from16 v0, p0

    .line 192
    .line 193
    move-object v12, v4

    .line 194
    move-wide/from16 v4, v16

    .line 195
    .line 196
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_6
    move-object v12, v4

    .line 201
    :goto_2
    add-long v14, v14, v23

    .line 202
    .line 203
    invoke-virtual {v12, v14, v15}, LQ6/x;->b(J)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_8
    move-object/from16 v25, v14

    .line 214
    .line 215
    move-object v12, v15

    .line 216
    :goto_3
    shr-int/lit8 v0, v20, 0x4

    .line 217
    .line 218
    and-int/2addr v0, v11

    .line 219
    if-ne v0, v11, :cond_b

    .line 220
    .line 221
    const-wide v18, 0x7fffffffffffffffL

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    const/4 v15, 0x0

    .line 227
    const-wide/16 v16, 0x0

    .line 228
    .line 229
    move-object v14, v12

    .line 230
    invoke-virtual/range {v14 .. v19}, LQ6/x;->k(BJJ)J

    .line 231
    .line 232
    .line 233
    move-result-wide v13

    .line 234
    const-wide/16 v0, -0x1

    .line 235
    .line 236
    cmp-long v2, v13, v0

    .line 237
    .line 238
    if-eqz v2, :cond_a

    .line 239
    .line 240
    if-eqz v21, :cond_9

    .line 241
    .line 242
    add-long v4, v13, v23

    .line 243
    .line 244
    iget-object v3, v12, LQ6/x;->H:LQ6/j;

    .line 245
    .line 246
    const-wide/16 v1, 0x0

    .line 247
    .line 248
    move-object/from16 v0, p0

    .line 249
    .line 250
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 251
    .line 252
    .line 253
    :cond_9
    add-long v13, v13, v23

    .line 254
    .line 255
    invoke-virtual {v12, v13, v14}, LQ6/x;->b(J)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_b
    :goto_4
    if-eqz v21, :cond_c

    .line 266
    .line 267
    const-wide/16 v0, 0x2

    .line 268
    .line 269
    invoke-virtual {v12, v0, v1}, LQ6/x;->U(J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual/range {v25 .. v25}, LQ6/j;->readShort()S

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    and-int v1, v0, v22

    .line 277
    .line 278
    ushr-int/lit8 v1, v1, 0x8

    .line 279
    .line 280
    and-int/lit16 v0, v0, 0xff

    .line 281
    .line 282
    shl-int/lit8 v0, v0, 0x8

    .line 283
    .line 284
    or-int/2addr v0, v1

    .line 285
    int-to-short v0, v0

    .line 286
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    long-to-int v2, v1

    .line 291
    int-to-short v1, v2

    .line 292
    const-string v2, "FHCRC"

    .line 293
    .line 294
    invoke-static {v0, v1, v2}, LQ6/r;->k(IILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    .line 298
    .line 299
    .line 300
    :cond_c
    iput-byte v11, v6, LQ6/r;->G:B

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_d
    move-object v12, v15

    .line 304
    :goto_5
    iget-byte v0, v6, LQ6/r;->G:B

    .line 305
    .line 306
    const/4 v1, 0x2

    .line 307
    if-ne v0, v11, :cond_f

    .line 308
    .line 309
    iget-wide v2, v7, LQ6/j;->H:J

    .line 310
    .line 311
    iget-object v0, v6, LQ6/r;->J:LQ6/s;

    .line 312
    .line 313
    invoke-virtual {v0, v7, v8, v9}, LQ6/s;->read(LQ6/j;J)J

    .line 314
    .line 315
    .line 316
    move-result-wide v8

    .line 317
    const-wide/16 v4, -0x1

    .line 318
    .line 319
    cmp-long v0, v8, v4

    .line 320
    .line 321
    if-eqz v0, :cond_e

    .line 322
    .line 323
    move-object/from16 v0, p0

    .line 324
    .line 325
    move-wide v1, v2

    .line 326
    move-object/from16 v3, p1

    .line 327
    .line 328
    move-wide v4, v8

    .line 329
    invoke-virtual/range {v0 .. v5}, LQ6/r;->E(JLQ6/j;J)V

    .line 330
    .line 331
    .line 332
    return-wide v8

    .line 333
    :cond_e
    iput-byte v1, v6, LQ6/r;->G:B

    .line 334
    .line 335
    :cond_f
    iget-byte v0, v6, LQ6/r;->G:B

    .line 336
    .line 337
    if-ne v0, v1, :cond_10

    .line 338
    .line 339
    invoke-virtual {v12}, LQ6/x;->E()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 344
    .line 345
    .line 346
    move-result-wide v1

    .line 347
    long-to-int v2, v1

    .line 348
    const-string v1, "CRC"

    .line 349
    .line 350
    invoke-static {v0, v2, v1}, LQ6/r;->k(IILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v12}, LQ6/x;->E()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iget-object v1, v6, LQ6/r;->I:Ljava/util/zip/Inflater;

    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 360
    .line 361
    .line 362
    move-result-wide v1

    .line 363
    long-to-int v2, v1

    .line 364
    const-string v1, "ISIZE"

    .line 365
    .line 366
    invoke-static {v0, v2, v1}, LQ6/r;->k(IILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const/4 v0, 0x3

    .line 370
    iput-byte v0, v6, LQ6/r;->G:B

    .line 371
    .line 372
    invoke-virtual {v12}, LQ6/x;->q()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_11

    .line 377
    .line 378
    :cond_10
    const-wide/16 v0, -0x1

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 382
    .line 383
    const-string v1, "gzip finished without exhausting source"

    .line 384
    .line 385
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :goto_6
    return-wide v0

    .line 390
    :cond_12
    const-string v0, "byteCount < 0: "

    .line 391
    .line 392
    invoke-static {v0, v8, v9}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v1
.end method

.method public final timeout()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/r;->H:LQ6/x;

    .line 2
    .line 3
    iget-object v0, v0, LQ6/x;->G:LQ6/D;

    .line 4
    .line 5
    invoke-interface {v0}, LQ6/D;->timeout()LQ6/G;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
