.class public final Lcom/google/android/gms/internal/pal/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/p3;


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/c6;

.field public final b:Lcom/google/android/gms/internal/pal/g4;

.field public final c:Lcom/google/android/gms/internal/pal/d4;

.field public final d:Lcom/google/android/gms/internal/pal/r1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/pal/f4;->e:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/c6;Lcom/google/android/gms/internal/pal/g4;Lcom/google/android/gms/internal/pal/r1;Lcom/google/android/gms/internal/pal/d4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/f4;->a:Lcom/google/android/gms/internal/pal/c6;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/f4;->b:Lcom/google/android/gms/internal/pal/g4;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/f4;->d:Lcom/google/android/gms/internal/pal/r1;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/f4;->c:Lcom/google/android/gms/internal/pal/d4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x4

    .line 4
    const/4 v4, 0x3

    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v6, 0x1

    .line 7
    const/4 v7, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    new-array v8, v7, [B

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object/from16 v8, p2

    .line 14
    .line 15
    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/pal/f4;->a:Lcom/google/android/gms/internal/pal/c6;

    .line 16
    .line 17
    iget-object v10, v1, Lcom/google/android/gms/internal/pal/f4;->b:Lcom/google/android/gms/internal/pal/g4;

    .line 18
    .line 19
    iget-object v11, v1, Lcom/google/android/gms/internal/pal/f4;->d:Lcom/google/android/gms/internal/pal/r1;

    .line 20
    .line 21
    iget-object v15, v1, Lcom/google/android/gms/internal/pal/f4;->c:Lcom/google/android/gms/internal/pal/d4;

    .line 22
    .line 23
    invoke-virtual {v9}, Lcom/google/android/gms/internal/pal/c6;->r()Lcom/google/android/gms/internal/pal/r;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/pal/g4;->a([B)Lcom/google/android/gms/internal/pal/m2;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    iget-object v12, v9, Lcom/google/android/gms/internal/pal/m2;->I:Ljava/lang/Object;

    .line 36
    .line 37
    move-object/from16 v18, v12

    .line 38
    .line 39
    check-cast v18, [B

    .line 40
    .line 41
    iget-object v9, v9, Lcom/google/android/gms/internal/pal/m2;->H:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v9, [B

    .line 44
    .line 45
    invoke-interface {v10}, Lcom/google/android/gms/internal/pal/g4;->zzb()[B

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v11}, Lcom/google/android/gms/internal/pal/r1;->e()[B

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-interface {v15}, Lcom/google/android/gms/internal/pal/d4;->zzb()[B

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    new-array v14, v3, [[B

    .line 58
    .line 59
    sget-object v16, Lcom/google/android/gms/internal/pal/i4;->n:[B

    .line 60
    .line 61
    aput-object v16, v14, v7

    .line 62
    .line 63
    aput-object v10, v14, v6

    .line 64
    .line 65
    aput-object v12, v14, v5

    .line 66
    .line 67
    aput-object v13, v14, v4

    .line 68
    .line 69
    invoke-static {v14}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    sget-object v12, Lcom/google/android/gms/internal/pal/i4;->l:[B

    .line 74
    .line 75
    sget-object v13, Lcom/google/android/gms/internal/pal/e4;->d:[B

    .line 76
    .line 77
    const-string v14, "psk_id_hash"

    .line 78
    .line 79
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    .line 81
    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    sget-object v16, Lcom/google/android/gms/internal/pal/i4;->o:[B

    .line 86
    .line 87
    new-array v2, v3, [[B

    .line 88
    .line 89
    aput-object v16, v2, v7

    .line 90
    .line 91
    aput-object v10, v2, v6

    .line 92
    .line 93
    aput-object v14, v2, v5

    .line 94
    .line 95
    aput-object v13, v2, v4

    .line 96
    .line 97
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/internal/pal/r1;->g([B[B)[B

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v14, "info_hash"

    .line 106
    .line 107
    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    new-array v4, v3, [[B

    .line 112
    .line 113
    aput-object v16, v4, v7

    .line 114
    .line 115
    aput-object v10, v4, v6

    .line 116
    .line 117
    aput-object v14, v4, v5

    .line 118
    .line 119
    const/4 v14, 0x3

    .line 120
    aput-object v8, v4, v14

    .line 121
    .line 122
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v11, v4, v12}, Lcom/google/android/gms/internal/pal/r1;->g([B[B)[B

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    new-array v8, v14, [[B

    .line 131
    .line 132
    sget-object v12, Lcom/google/android/gms/internal/pal/i4;->a:[B

    .line 133
    .line 134
    aput-object v12, v8, v7

    .line 135
    .line 136
    aput-object v2, v8, v6

    .line 137
    .line 138
    aput-object v4, v8, v5

    .line 139
    .line 140
    invoke-static {v8}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v4, "secret"

    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-array v8, v3, [[B

    .line 151
    .line 152
    aput-object v16, v8, v7

    .line 153
    .line 154
    aput-object v10, v8, v6

    .line 155
    .line 156
    aput-object v4, v8, v5

    .line 157
    .line 158
    const/4 v4, 0x3

    .line 159
    aput-object v13, v8, v4

    .line 160
    .line 161
    invoke-static {v8}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v11, v4, v9}, Lcom/google/android/gms/internal/pal/r1;->g([B[B)[B

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-interface {v15}, Lcom/google/android/gms/internal/pal/d4;->zza()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    const-string v9, "key"

    .line 174
    .line 175
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    const/4 v13, 0x5

    .line 184
    new-array v14, v13, [[B

    .line 185
    .line 186
    aput-object v12, v14, v7

    .line 187
    .line 188
    aput-object v16, v14, v6

    .line 189
    .line 190
    aput-object v10, v14, v5

    .line 191
    .line 192
    const/4 v12, 0x3

    .line 193
    aput-object v9, v14, v12

    .line 194
    .line 195
    aput-object v2, v14, v3

    .line 196
    .line 197
    invoke-static {v14}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v11, v8, v4, v9}, Lcom/google/android/gms/internal/pal/r1;->f(I[B[B)[B

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    const-string v9, "base_nonce"

    .line 206
    .line 207
    const/16 v12, 0xc

    .line 208
    .line 209
    invoke-static {v5, v12}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const/4 v9, 0x5

    .line 218
    new-array v9, v9, [[B

    .line 219
    .line 220
    aput-object v13, v9, v7

    .line 221
    .line 222
    aput-object v16, v9, v6

    .line 223
    .line 224
    aput-object v10, v9, v5

    .line 225
    .line 226
    const/4 v10, 0x3

    .line 227
    aput-object v0, v9, v10

    .line 228
    .line 229
    aput-object v2, v9, v3

    .line 230
    .line 231
    invoke-static {v9}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v11, v12, v4, v0}, Lcom/google/android/gms/internal/pal/r1;->f(I[B[B)[B

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 240
    .line 241
    const/16 v3, 0x60

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 248
    .line 249
    .line 250
    move-result-object v16

    .line 251
    new-instance v3, Lcom/google/android/gms/internal/pal/e4;

    .line 252
    .line 253
    move-object v12, v3

    .line 254
    move-object/from16 v13, v18

    .line 255
    .line 256
    move-object v14, v8

    .line 257
    move-object v4, v15

    .line 258
    move-object v15, v0

    .line 259
    move-object/from16 v17, v4

    .line 260
    .line 261
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/pal/e4;-><init>([B[B[BLjava/math/BigInteger;Lcom/google/android/gms/internal/pal/d4;)V

    .line 262
    .line 263
    .line 264
    sget-object v4, Lcom/google/android/gms/internal/pal/f4;->e:[B

    .line 265
    .line 266
    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v9, v3, Lcom/google/android/gms/internal/pal/e4;->c:Ljava/math/BigInteger;

    .line 268
    .line 269
    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    array-length v10, v9

    .line 274
    const/16 v11, 0xc

    .line 275
    .line 276
    if-ne v10, v11, :cond_1

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_1
    const/16 v11, 0xd

    .line 280
    .line 281
    if-gt v10, v11, :cond_5

    .line 282
    .line 283
    if-ne v10, v11, :cond_3

    .line 284
    .line 285
    aget-byte v10, v9, v7

    .line 286
    .line 287
    if-nez v10, :cond_2

    .line 288
    .line 289
    invoke-static {v9, v6, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    goto :goto_2

    .line 296
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 297
    .line 298
    const-string v2, "integer too large"

    .line 299
    .line 300
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_3
    const/16 v11, 0xc

    .line 305
    .line 306
    new-array v12, v11, [B

    .line 307
    .line 308
    sub-int/2addr v11, v10

    .line 309
    invoke-static {v9, v7, v12, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    .line 311
    .line 312
    move-object v9, v12

    .line 313
    :goto_1
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/pal/y4;->h0([B[B)[B

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v9, v3, Lcom/google/android/gms/internal/pal/e4;->c:Ljava/math/BigInteger;

    .line 318
    .line 319
    iget-object v10, v3, Lcom/google/android/gms/internal/pal/e4;->b:Ljava/math/BigInteger;

    .line 320
    .line 321
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    if-gez v9, :cond_4

    .line 326
    .line 327
    iget-object v9, v3, Lcom/google/android/gms/internal/pal/e4;->c:Ljava/math/BigInteger;

    .line 328
    .line 329
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    iput-object v2, v3, Lcom/google/android/gms/internal/pal/e4;->c:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .line 335
    monitor-exit v3

    .line 336
    iget-object v2, v3, Lcom/google/android/gms/internal/pal/e4;->a:Lcom/google/android/gms/internal/pal/d4;

    .line 337
    .line 338
    move-object/from16 v3, p1

    .line 339
    .line 340
    invoke-interface {v2, v8, v0, v3, v4}, Lcom/google/android/gms/internal/pal/d4;->a([B[B[B[B)[B

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    new-array v2, v5, [[B

    .line 345
    .line 346
    aput-object v18, v2, v7

    .line 347
    .line 348
    aput-object v0, v2, v6

    .line 349
    .line 350
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    return-object v0

    .line 355
    :cond_4
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 356
    .line 357
    const-string v2, "message limit reached"

    .line 358
    .line 359
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 364
    .line 365
    const-string v2, "integer too large"

    .line 366
    .line 367
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :goto_2
    monitor-exit v3

    .line 372
    throw v0
.end method
