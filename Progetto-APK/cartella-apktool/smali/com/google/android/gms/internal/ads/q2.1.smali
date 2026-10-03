.class public final Lcom/google/android/gms/internal/ads/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/T1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/m2;

.field public final b:[J

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/m2;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q2;->a:Lcom/google/android/gms/internal/ads/m2;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q2;->d:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/q2;->e:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q2;->c:Ljava/util/Map;

    .line 15
    .line 16
    new-instance p2, Ljava/util/TreeSet;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/m2;->g(Ljava/util/TreeSet;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [J

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_0

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    check-cast p4, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    add-int/lit8 p4, p3, 0x1

    .line 52
    .line 53
    aput-wide v0, p1, p3

    .line 54
    .line 55
    move p3, p4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q2;->b:[J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q2;->b:[J

    array-length v0, v0

    return v0
.end method

.method public final zzb(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q2;->b:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    return-wide v1
.end method

.method public final zzc(J)Ljava/util/ArrayList;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/q2;->a:Lcom/google/android/gms/internal/ads/m2;

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v8, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 14
    .line 15
    move-wide/from16 v9, p1

    .line 16
    .line 17
    invoke-virtual {v7, v9, v10, v1, v8}, Lcom/google/android/gms/internal/ads/m2;->h(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    new-instance v11, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 27
    .line 28
    move-object v1, v7

    .line 29
    move-wide/from16 v2, p1

    .line 30
    .line 31
    move-object v6, v11

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/m2;->j(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/q2;->c:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/q2;->d:Ljava/util/Map;

    .line 38
    .line 39
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 40
    .line 41
    move-object v5, v12

    .line 42
    move-object v7, v11

    .line 43
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/m2;->i(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_0
    if-ge v4, v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/util/Pair;

    .line 64
    .line 65
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/q2;->e:Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    if-nez v6, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    array-length v7, v6

    .line 83
    invoke-static {v6, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Lcom/google/android/gms/internal/ads/o2;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v6, Lcom/google/android/gms/internal/ads/ak;

    .line 99
    .line 100
    iget v7, v5, Lcom/google/android/gms/internal/ads/o2;->g:F

    .line 101
    .line 102
    iget v9, v5, Lcom/google/android/gms/internal/ads/o2;->j:I

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    iget v10, v5, Lcom/google/android/gms/internal/ads/o2;->c:F

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    iget v15, v5, Lcom/google/android/gms/internal/ads/o2;->e:I

    .line 111
    .line 112
    iget v14, v5, Lcom/google/android/gms/internal/ads/o2;->b:F

    .line 113
    .line 114
    const/16 v22, 0x0

    .line 115
    .line 116
    const/high16 v23, -0x80000000

    .line 117
    .line 118
    const v24, -0x800001

    .line 119
    .line 120
    .line 121
    iget v5, v5, Lcom/google/android/gms/internal/ads/o2;->f:F

    .line 122
    .line 123
    const/16 v28, 0x0

    .line 124
    .line 125
    move-object v13, v6

    .line 126
    move/from16 v21, v14

    .line 127
    .line 128
    move-object/from16 v14, v16

    .line 129
    .line 130
    move/from16 v20, v15

    .line 131
    .line 132
    move-object/from16 v15, v16

    .line 133
    .line 134
    move/from16 v18, v10

    .line 135
    .line 136
    move/from16 v25, v5

    .line 137
    .line 138
    move/from16 v26, v7

    .line 139
    .line 140
    move/from16 v27, v9

    .line 141
    .line 142
    invoke-direct/range {v13 .. v28}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_d

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Ljava/util/Map$Entry;

    .line 170
    .line 171
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Lcom/google/android/gms/internal/ads/o2;

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Lcom/google/android/gms/internal/ads/Dj;

    .line 189
    .line 190
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    check-cast v6, Landroid/text/SpannableStringBuilder;

    .line 196
    .line 197
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    const-class v8, Lcom/google/android/gms/internal/ads/k2;

    .line 202
    .line 203
    invoke-virtual {v6, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, [Lcom/google/android/gms/internal/ads/k2;

    .line 208
    .line 209
    array-length v8, v7

    .line 210
    const/4 v9, 0x0

    .line 211
    :goto_3
    if-ge v9, v8, :cond_2

    .line 212
    .line 213
    aget-object v10, v7, v9

    .line 214
    .line 215
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    const-string v13, ""

    .line 224
    .line 225
    invoke-virtual {v6, v11, v10, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 226
    .line 227
    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_2
    const/4 v7, 0x0

    .line 232
    :goto_4
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    const/16 v9, 0x20

    .line 237
    .line 238
    if-ge v7, v8, :cond_5

    .line 239
    .line 240
    add-int/lit8 v8, v7, 0x1

    .line 241
    .line 242
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-ne v10, v9, :cond_4

    .line 247
    .line 248
    move v10, v8

    .line 249
    :goto_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    if-ge v10, v11, :cond_3

    .line 254
    .line 255
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-ne v11, v9, :cond_3

    .line 260
    .line 261
    add-int/lit8 v10, v10, 0x1

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_3
    sub-int/2addr v10, v8

    .line 265
    if-lez v10, :cond_4

    .line 266
    .line 267
    add-int/2addr v10, v7

    .line 268
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 269
    .line 270
    .line 271
    :cond_4
    move v7, v8

    .line 272
    goto :goto_4

    .line 273
    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-lez v7, :cond_6

    .line 278
    .line 279
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-ne v7, v9, :cond_6

    .line 284
    .line 285
    const/4 v7, 0x1

    .line 286
    invoke-virtual {v6, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 287
    .line 288
    .line 289
    :cond_6
    const/4 v7, 0x0

    .line 290
    :goto_6
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    add-int/lit8 v8, v8, -0x1

    .line 295
    .line 296
    const/16 v10, 0xa

    .line 297
    .line 298
    if-ge v7, v8, :cond_8

    .line 299
    .line 300
    add-int/lit8 v8, v7, 0x1

    .line 301
    .line 302
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-ne v11, v10, :cond_7

    .line 307
    .line 308
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-ne v10, v9, :cond_7

    .line 313
    .line 314
    add-int/lit8 v7, v7, 0x2

    .line 315
    .line 316
    invoke-virtual {v6, v8, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 317
    .line 318
    .line 319
    :cond_7
    move v7, v8

    .line 320
    goto :goto_6

    .line 321
    :cond_8
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-lez v7, :cond_9

    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    add-int/lit8 v7, v7, -0x1

    .line 332
    .line 333
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-ne v7, v9, :cond_9

    .line 338
    .line 339
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    add-int/lit8 v7, v7, -0x1

    .line 344
    .line 345
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 350
    .line 351
    .line 352
    :cond_9
    const/4 v7, 0x0

    .line 353
    :goto_7
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    add-int/lit8 v8, v8, -0x1

    .line 358
    .line 359
    if-ge v7, v8, :cond_b

    .line 360
    .line 361
    add-int/lit8 v8, v7, 0x1

    .line 362
    .line 363
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    if-ne v11, v9, :cond_a

    .line 368
    .line 369
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    if-ne v11, v10, :cond_a

    .line 374
    .line 375
    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 376
    .line 377
    .line 378
    :cond_a
    move v7, v8

    .line 379
    goto :goto_7

    .line 380
    :cond_b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    if-lez v7, :cond_c

    .line 385
    .line 386
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    add-int/lit8 v7, v7, -0x1

    .line 391
    .line 392
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    if-ne v7, v10, :cond_c

    .line 397
    .line 398
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    add-int/lit8 v7, v7, -0x1

    .line 403
    .line 404
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 409
    .line 410
    .line 411
    :cond_c
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->c:F

    .line 412
    .line 413
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->e:F

    .line 414
    .line 415
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->d:I

    .line 416
    .line 417
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->f:I

    .line 418
    .line 419
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->e:I

    .line 420
    .line 421
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->g:I

    .line 422
    .line 423
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->b:F

    .line 424
    .line 425
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->h:F

    .line 426
    .line 427
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->f:F

    .line 428
    .line 429
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->l:F

    .line 430
    .line 431
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->i:F

    .line 432
    .line 433
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->k:F

    .line 434
    .line 435
    iget v6, v5, Lcom/google/android/gms/internal/ads/o2;->h:I

    .line 436
    .line 437
    iput v6, v4, Lcom/google/android/gms/internal/ads/Dj;->j:I

    .line 438
    .line 439
    iget v5, v5, Lcom/google/android/gms/internal/ads/o2;->j:I

    .line 440
    .line 441
    iput v5, v4, Lcom/google/android/gms/internal/ads/Dj;->n:I

    .line 442
    .line 443
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Dj;->a()Lcom/google/android/gms/internal/ads/ak;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto/16 :goto_2

    .line 451
    .line 452
    :cond_d
    return-object v1
.end method
