.class public final Lw1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public final G:Lw1/c;

.field public final H:[J

.field public final I:Ljava/util/Map;

.field public final J:Ljava/util/Map;

.field public final K:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lw1/c;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/h;->G:Lw1/c;

    .line 5
    .line 6
    iput-object p3, p0, Lw1/h;->J:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p4, p0, Lw1/h;->K:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lw1/h;->I:Ljava/util/Map;

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
    invoke-virtual {p1, p2, p3}, Lw1/c;->d(Ljava/util/TreeSet;Z)V

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
    iput-object p1, p0, Lw1/h;->H:[J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw1/h;->H:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, p2, v1}, Lp0/M;->a([JJZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length p2, v0

    .line 9
    if-ge p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method public final b(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lw1/h;->H:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    return-wide v1
.end method

.method public final c(J)Ljava/util/List;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lw1/h;->G:Lw1/c;

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
    iget-object v1, v7, Lw1/c;->h:Ljava/lang/String;

    .line 14
    .line 15
    move-wide/from16 v9, p1

    .line 16
    .line 17
    invoke-virtual {v7, v9, v10, v1, v8}, Lw1/c;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

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
    iget-object v5, v7, Lw1/c;->h:Ljava/lang/String;

    .line 27
    .line 28
    move-object v1, v7

    .line 29
    move-wide/from16 v2, p1

    .line 30
    .line 31
    move-object v6, v11

    .line 32
    invoke-virtual/range {v1 .. v6}, Lw1/c;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v0, Lw1/h;->I:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v12, v0, Lw1/h;->J:Ljava/util/Map;

    .line 38
    .line 39
    iget-object v6, v7, Lw1/c;->h:Ljava/lang/String;

    .line 40
    .line 41
    move-object v5, v12

    .line 42
    move-object v7, v11

    .line 43
    invoke-virtual/range {v1 .. v7}, Lw1/c;->h(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

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
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/util/Pair;

    .line 67
    .line 68
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v6, v0, Lw1/h;->K:Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    if-nez v5, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    array-length v6, v5

    .line 86
    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v17

    .line 90
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lw1/f;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    new-instance v4, Lo0/b;

    .line 102
    .line 103
    move-object v13, v4

    .line 104
    const/high16 v28, -0x1000000

    .line 105
    .line 106
    iget v5, v3, Lw1/f;->j:I

    .line 107
    .line 108
    move/from16 v29, v5

    .line 109
    .line 110
    const/4 v14, 0x0

    .line 111
    const/4 v15, 0x0

    .line 112
    move-object/from16 v16, v15

    .line 113
    .line 114
    iget v5, v3, Lw1/f;->c:F

    .line 115
    .line 116
    move/from16 v18, v5

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    iget v5, v3, Lw1/f;->e:I

    .line 121
    .line 122
    move/from16 v20, v5

    .line 123
    .line 124
    iget v5, v3, Lw1/f;->b:F

    .line 125
    .line 126
    move/from16 v21, v5

    .line 127
    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    const/high16 v23, -0x80000000

    .line 131
    .line 132
    const v24, -0x800001

    .line 133
    .line 134
    .line 135
    iget v5, v3, Lw1/f;->f:F

    .line 136
    .line 137
    move/from16 v25, v5

    .line 138
    .line 139
    iget v3, v3, Lw1/f;->g:F

    .line 140
    .line 141
    move/from16 v26, v3

    .line 142
    .line 143
    const/16 v27, 0x0

    .line 144
    .line 145
    const/16 v30, 0x0

    .line 146
    .line 147
    const/16 v31, 0x0

    .line 148
    .line 149
    invoke-direct/range {v13 .. v31}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v11}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_d

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/util/Map$Entry;

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lw1/f;

    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Lo0/a;

    .line 194
    .line 195
    iget-object v6, v3, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    check-cast v6, Landroid/text/SpannableStringBuilder;

    .line 201
    .line 202
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    const-class v8, Lw1/a;

    .line 207
    .line 208
    invoke-virtual {v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, [Lw1/a;

    .line 213
    .line 214
    array-length v8, v7

    .line 215
    const/4 v9, 0x0

    .line 216
    :goto_2
    if-ge v9, v8, :cond_2

    .line 217
    .line 218
    aget-object v10, v7, v9

    .line 219
    .line 220
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    const-string v13, ""

    .line 229
    .line 230
    invoke-virtual {v6, v11, v10, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    .line 232
    .line 233
    add-int/lit8 v9, v9, 0x1

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_2
    const/4 v7, 0x0

    .line 237
    :goto_3
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    const/16 v9, 0x20

    .line 242
    .line 243
    if-ge v7, v8, :cond_5

    .line 244
    .line 245
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-ne v8, v9, :cond_4

    .line 250
    .line 251
    add-int/lit8 v8, v7, 0x1

    .line 252
    .line 253
    move v10, v8

    .line 254
    :goto_4
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    if-ge v10, v11, :cond_3

    .line 259
    .line 260
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    if-ne v11, v9, :cond_3

    .line 265
    .line 266
    add-int/lit8 v10, v10, 0x1

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_3
    sub-int/2addr v10, v8

    .line 270
    if-lez v10, :cond_4

    .line 271
    .line 272
    add-int/2addr v10, v7

    .line 273
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 274
    .line 275
    .line 276
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    const/4 v8, 0x1

    .line 284
    if-lez v7, :cond_6

    .line 285
    .line 286
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    if-ne v7, v9, :cond_6

    .line 291
    .line 292
    invoke-virtual {v6, v4, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 293
    .line 294
    .line 295
    :cond_6
    const/4 v7, 0x0

    .line 296
    :goto_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    sub-int/2addr v10, v8

    .line 301
    const/16 v11, 0xa

    .line 302
    .line 303
    if-ge v7, v10, :cond_8

    .line 304
    .line 305
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-ne v10, v11, :cond_7

    .line 310
    .line 311
    add-int/lit8 v10, v7, 0x1

    .line 312
    .line 313
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    if-ne v11, v9, :cond_7

    .line 318
    .line 319
    add-int/lit8 v11, v7, 0x2

    .line 320
    .line 321
    invoke-virtual {v6, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 322
    .line 323
    .line 324
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_8
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-lez v7, :cond_9

    .line 332
    .line 333
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    sub-int/2addr v7, v8

    .line 338
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    if-ne v7, v9, :cond_9

    .line 343
    .line 344
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    sub-int/2addr v7, v8

    .line 349
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 350
    .line 351
    .line 352
    move-result v10

    .line 353
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 354
    .line 355
    .line 356
    :cond_9
    const/4 v7, 0x0

    .line 357
    :goto_6
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    sub-int/2addr v10, v8

    .line 362
    if-ge v7, v10, :cond_b

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    if-ne v10, v9, :cond_a

    .line 369
    .line 370
    add-int/lit8 v10, v7, 0x1

    .line 371
    .line 372
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v13

    .line 376
    if-ne v13, v11, :cond_a

    .line 377
    .line 378
    invoke-virtual {v6, v7, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 379
    .line 380
    .line 381
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 382
    .line 383
    goto :goto_6

    .line 384
    :cond_b
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-lez v7, :cond_c

    .line 389
    .line 390
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    sub-int/2addr v7, v8

    .line 395
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    if-ne v7, v11, :cond_c

    .line 400
    .line 401
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    sub-int/2addr v7, v8

    .line 406
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    .line 407
    .line 408
    .line 409
    move-result v8

    .line 410
    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 411
    .line 412
    .line 413
    :cond_c
    iget v6, v5, Lw1/f;->c:F

    .line 414
    .line 415
    iput v6, v3, Lo0/a;->e:F

    .line 416
    .line 417
    iget v6, v5, Lw1/f;->d:I

    .line 418
    .line 419
    iput v6, v3, Lo0/a;->f:I

    .line 420
    .line 421
    iget v6, v5, Lw1/f;->e:I

    .line 422
    .line 423
    iput v6, v3, Lo0/a;->g:I

    .line 424
    .line 425
    iget v6, v5, Lw1/f;->b:F

    .line 426
    .line 427
    iput v6, v3, Lo0/a;->h:F

    .line 428
    .line 429
    iget v6, v5, Lw1/f;->f:F

    .line 430
    .line 431
    iput v6, v3, Lo0/a;->l:F

    .line 432
    .line 433
    iget v6, v5, Lw1/f;->i:F

    .line 434
    .line 435
    iput v6, v3, Lo0/a;->k:F

    .line 436
    .line 437
    iget v6, v5, Lw1/f;->h:I

    .line 438
    .line 439
    iput v6, v3, Lo0/a;->j:I

    .line 440
    .line 441
    iget v5, v5, Lw1/f;->j:I

    .line 442
    .line 443
    iput v5, v3, Lo0/a;->p:I

    .line 444
    .line 445
    invoke-virtual {v3}, Lo0/a;->a()Lo0/b;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    goto/16 :goto_1

    .line 453
    .line 454
    :cond_d
    return-object v1
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/h;->H:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
