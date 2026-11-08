.class public final Lcom/google/android/gms/internal/ads/eO;
.super Lcom/google/android/gms/internal/ads/fO;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ve;I)V
    .locals 0

    .line 1
    filled-new-array {p2}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/fO;-><init>(Lcom/google/android/gms/internal/ads/Ve;[I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic a([Lcom/google/android/gms/internal/ads/tO;)Lcom/google/android/gms/internal/ads/PA;
    .locals 22

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/4 v3, 0x1

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    if-ge v2, v6, :cond_1

    .line 13
    .line 14
    aget-object v6, p0, v2

    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/tO;->b:[I

    .line 19
    .line 20
    array-length v6, v6

    .line 21
    if-le v6, v3, :cond_0

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/gms/internal/ads/rA;

    .line 24
    .line 25
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lcom/google/android/gms/internal/ads/dO;

    .line 29
    .line 30
    invoke-direct {v6, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/dO;-><init>(JJ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-array v2, v6, [[J

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    :goto_2
    const-wide/16 v8, -0x1

    .line 51
    .line 52
    if-ge v7, v6, :cond_5

    .line 53
    .line 54
    aget-object v10, p0, v7

    .line 55
    .line 56
    if-nez v10, :cond_2

    .line 57
    .line 58
    new-array v8, v1, [J

    .line 59
    .line 60
    aput-object v8, v2, v7

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_2
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/tO;->b:[I

    .line 64
    .line 65
    array-length v12, v11

    .line 66
    new-array v12, v12, [J

    .line 67
    .line 68
    aput-object v12, v2, v7

    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    :goto_3
    array-length v13, v11

    .line 72
    if-ge v12, v13, :cond_4

    .line 73
    .line 74
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/tO;->a:Lcom/google/android/gms/internal/ads/Ve;

    .line 75
    .line 76
    aget v14, v11, v12

    .line 77
    .line 78
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/Ve;->a(I)Lcom/google/android/gms/internal/ads/p0;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    iget v13, v13, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 83
    .line 84
    int-to-long v13, v13

    .line 85
    aget-object v15, v2, v7

    .line 86
    .line 87
    cmp-long v16, v13, v8

    .line 88
    .line 89
    if-nez v16, :cond_3

    .line 90
    .line 91
    move-wide v13, v4

    .line 92
    :cond_3
    aput-wide v13, v15, v12

    .line 93
    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    aget-object v8, v2, v7

    .line 98
    .line 99
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    .line 100
    .line 101
    .line 102
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    new-array v7, v6, [I

    .line 106
    .line 107
    new-array v10, v6, [J

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    :goto_5
    if-ge v11, v6, :cond_7

    .line 111
    .line 112
    aget-object v12, v2, v11

    .line 113
    .line 114
    array-length v13, v12

    .line 115
    if-nez v13, :cond_6

    .line 116
    .line 117
    move-wide v13, v4

    .line 118
    goto :goto_6

    .line 119
    :cond_6
    aget-wide v13, v12, v1

    .line 120
    .line 121
    :goto_6
    aput-wide v13, v10, v11

    .line 122
    .line 123
    add-int/lit8 v11, v11, 0x1

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_7
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/eO;->b(Ljava/util/ArrayList;[J)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/google/android/gms/internal/ads/OA;->a()Lcom/google/android/gms/internal/ads/NA;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v4}, LS3/e;->A(Lcom/google/android/gms/internal/ads/NA;)Lcom/google/android/gms/internal/ads/IA;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lf/b;->l0()Lcom/google/android/gms/internal/ads/KA;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/KA;->K()Lcom/google/android/gms/internal/ads/LA;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const/4 v5, 0x0

    .line 146
    :goto_7
    if-ge v5, v6, :cond_d

    .line 147
    .line 148
    aget-object v11, v2, v5

    .line 149
    .line 150
    array-length v11, v11

    .line 151
    if-gt v11, v3, :cond_8

    .line 152
    .line 153
    move-object/from16 p0, v7

    .line 154
    .line 155
    goto :goto_c

    .line 156
    :cond_8
    new-array v12, v11, [D

    .line 157
    .line 158
    const/4 v13, 0x0

    .line 159
    :goto_8
    aget-object v14, v2, v5

    .line 160
    .line 161
    array-length v15, v14

    .line 162
    const-wide/16 v16, 0x0

    .line 163
    .line 164
    if-ge v13, v15, :cond_a

    .line 165
    .line 166
    move-object/from16 p0, v7

    .line 167
    .line 168
    aget-wide v6, v14, v13

    .line 169
    .line 170
    cmp-long v14, v6, v8

    .line 171
    .line 172
    if-nez v14, :cond_9

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_9
    long-to-double v6, v6

    .line 176
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 177
    .line 178
    .line 179
    move-result-wide v16

    .line 180
    :goto_9
    aput-wide v16, v12, v13

    .line 181
    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 183
    .line 184
    move-object/from16 v7, p0

    .line 185
    .line 186
    const/4 v6, 0x2

    .line 187
    goto :goto_8

    .line 188
    :cond_a
    move-object/from16 p0, v7

    .line 189
    .line 190
    add-int/lit8 v11, v11, -0x1

    .line 191
    .line 192
    aget-wide v6, v12, v11

    .line 193
    .line 194
    aget-wide v13, v12, v1

    .line 195
    .line 196
    sub-double/2addr v6, v13

    .line 197
    const/4 v13, 0x0

    .line 198
    :goto_a
    if-ge v13, v11, :cond_c

    .line 199
    .line 200
    aget-wide v18, v12, v13

    .line 201
    .line 202
    add-int/lit8 v13, v13, 0x1

    .line 203
    .line 204
    aget-wide v20, v12, v13

    .line 205
    .line 206
    add-double v18, v18, v20

    .line 207
    .line 208
    cmpl-double v14, v6, v16

    .line 209
    .line 210
    if-nez v14, :cond_b

    .line 211
    .line 212
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 213
    .line 214
    goto :goto_b

    .line 215
    :cond_b
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 216
    .line 217
    mul-double v18, v18, v20

    .line 218
    .line 219
    aget-wide v20, v12, v1

    .line 220
    .line 221
    sub-double v18, v18, v20

    .line 222
    .line 223
    div-double v18, v18, v6

    .line 224
    .line 225
    :goto_b
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 226
    .line 227
    .line 228
    move-result-object v14

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v4, v14, v1}, Lcom/google/android/gms/internal/ads/Mz;->d(Ljava/lang/Double;Ljava/lang/Integer;)Z

    .line 234
    .line 235
    .line 236
    const/4 v1, 0x0

    .line 237
    goto :goto_a

    .line 238
    :cond_c
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 239
    .line 240
    move-object/from16 v7, p0

    .line 241
    .line 242
    const/4 v1, 0x0

    .line 243
    const/4 v6, 0x2

    .line 244
    goto :goto_7

    .line 245
    :cond_d
    move-object/from16 p0, v7

    .line 246
    .line 247
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dA;->a()Ljava/util/Collection;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const/4 v4, 0x0

    .line 256
    :goto_d
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-ge v4, v5, :cond_e

    .line 261
    .line 262
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    check-cast v5, Ljava/lang/Integer;

    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    aget v6, p0, v5

    .line 273
    .line 274
    add-int/2addr v6, v3

    .line 275
    aput v6, p0, v5

    .line 276
    .line 277
    aget-object v7, v2, v5

    .line 278
    .line 279
    aget-wide v6, v7, v6

    .line 280
    .line 281
    aput-wide v6, v10, v5

    .line 282
    .line 283
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/eO;->b(Ljava/util/ArrayList;[J)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    goto :goto_d

    .line 289
    :cond_e
    const/4 v1, 0x2

    .line 290
    const/4 v2, 0x0

    .line 291
    :goto_e
    if-ge v2, v1, :cond_10

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    if-eqz v3, :cond_f

    .line 298
    .line 299
    aget-wide v3, v10, v2

    .line 300
    .line 301
    add-long/2addr v3, v3

    .line 302
    aput-wide v3, v10, v2

    .line 303
    .line 304
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    goto :goto_e

    .line 307
    :cond_10
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/eO;->b(Ljava/util/ArrayList;[J)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lcom/google/android/gms/internal/ads/rA;

    .line 311
    .line 312
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 313
    .line 314
    .line 315
    const/4 v2, 0x0

    .line 316
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ge v2, v3, :cond_12

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Lcom/google/android/gms/internal/ads/rA;

    .line 327
    .line 328
    if-nez v3, :cond_11

    .line 329
    .line 330
    invoke-static {}, Lcom/google/android/gms/internal/ads/uA;->v()Lcom/google/android/gms/internal/ads/PA;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    goto :goto_10

    .line 335
    :cond_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    :goto_10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    add-int/lit8 v2, v2, 0x1

    .line 343
    .line 344
    goto :goto_f

    .line 345
    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    return-object v0
.end method

.method public static b(Ljava/util/ArrayList;[J)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    const/4 v4, 0x2

    .line 6
    if-ge v3, v4, :cond_0

    .line 7
    .line 8
    aget-wide v4, p1, v3

    .line 9
    .line 10
    add-long/2addr v1, v4

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/internal/ads/rA;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v4, Lcom/google/android/gms/internal/ads/dO;

    .line 29
    .line 30
    aget-wide v5, p1, v0

    .line 31
    .line 32
    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/dO;-><init>(JJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return-void
.end method
