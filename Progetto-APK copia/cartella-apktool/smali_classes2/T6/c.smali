.class public final LT6/c;
.super LT6/e;
.source "SourceFile"


# instance fields
.field public P:LT6/d;


# virtual methods
.method public final d(Landroid/graphics/Canvas;LV6/d;FFILandroid/graphics/Paint;)V
    .locals 8

    .line 1
    invoke-virtual {p6}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p2, LV6/d;->M:F

    .line 6
    .line 7
    invoke-virtual {p6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x41f00000    # 30.0f

    .line 11
    .line 12
    add-float v5, p3, v1

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    move v3, p3

    .line 16
    move v4, p4

    .line 17
    move v6, p4

    .line 18
    move-object v7, p6

    .line 19
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, LT6/c;->u(LV6/d;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/high16 v0, 0x40a00000    # 5.0f

    .line 32
    .line 33
    add-float v4, p3, v0

    .line 34
    .line 35
    iget-object v1, p0, LT6/c;->P:LT6/d;

    .line 36
    .line 37
    move-object v2, p1

    .line 38
    move-object v3, p2

    .line 39
    move v5, p4

    .line 40
    move v6, p5

    .line 41
    move-object v7, p6

    .line 42
    invoke-virtual/range {v1 .. v7}, LT6/d;->d(Landroid/graphics/Canvas;LV6/d;FFILandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    return v0
.end method

.method public final k(Ljava/util/ArrayList;Ljava/util/ArrayList;)[LT6/b;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    div-int/lit8 v3, v2, 0x2

    .line 10
    .line 11
    new-array v3, v3, [LT6/b;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    .line 16
    move-object/from16 v5, p0

    .line 17
    .line 18
    iget-object v6, v5, LT6/e;->H:LV6/b;

    .line 19
    .line 20
    iget v6, v6, LV6/a;->Y:I

    .line 21
    .line 22
    div-int/lit8 v7, v4, 0x2

    .line 23
    .line 24
    new-instance v14, LT6/b;

    .line 25
    .line 26
    new-instance v9, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Ljava/lang/Float;

    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    int-to-float v6, v6

    .line 39
    sub-float/2addr v8, v6

    .line 40
    add-int/lit8 v10, v4, 0x1

    .line 41
    .line 42
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    check-cast v11, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    sub-float/2addr v11, v6

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    add-float/2addr v12, v6

    .line 64
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    check-cast v13, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    add-float/2addr v13, v6

    .line 75
    invoke-direct {v9, v8, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Ljava/lang/Double;

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/Double;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 95
    .line 96
    .line 97
    move-result-wide v15

    .line 98
    move-object v8, v14

    .line 99
    move-wide v10, v11

    .line 100
    move-wide v12, v15

    .line 101
    invoke-direct/range {v8 .. v13}, LT6/b;-><init>(Landroid/graphics/RectF;DD)V

    .line 102
    .line 103
    .line 104
    aput-object v14, v3, v7

    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    move-object/from16 v5, p0

    .line 110
    .line 111
    return-object v3
.end method

.method public final m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/ArrayList;LV6/d;F)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget v5, v3, LV6/d;->M:F

    .line 14
    .line 15
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    .line 17
    .line 18
    iget-object v5, v3, LV6/d;->J:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    new-array v7, v6, [LV6/c;

    .line 22
    .line 23
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, [LV6/c;

    .line 28
    .line 29
    array-length v7, v5

    .line 30
    const/4 v8, 0x0

    .line 31
    :goto_0
    if-ge v8, v7, :cond_16

    .line 32
    .line 33
    aget-object v9, v5, v8

    .line 34
    .line 35
    iget v10, v9, LV6/c;->G:I

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    if-eq v10, v11, :cond_14

    .line 39
    .line 40
    iget v10, v9, LV6/c;->H:I

    .line 41
    .line 42
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    iget v9, v9, LV6/c;->G:I

    .line 54
    .line 55
    invoke-static {v9}, Lu/h;->b(I)I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    const/4 v13, 0x4

    .line 60
    const/4 v14, 0x3

    .line 61
    const/4 v15, 0x2

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    if-eq v12, v11, :cond_2

    .line 65
    .line 66
    if-eq v12, v15, :cond_2

    .line 67
    .line 68
    if-eq v12, v14, :cond_2

    .line 69
    .line 70
    if-eq v12, v13, :cond_1

    .line 71
    .line 72
    const/4 v15, 0x5

    .line 73
    if-ne v12, v15, :cond_0

    .line 74
    .line 75
    const/4 v12, 0x0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    const-string v1, "You have added a new type of filling but have not implemented."

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    int-to-float v12, v12

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move/from16 v12, p5

    .line 92
    .line 93
    :goto_1
    if-eq v9, v13, :cond_4

    .line 94
    .line 95
    if-ne v9, v14, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move-object/from16 v19, v5

    .line 99
    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_4
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-lez v6, :cond_6

    .line 112
    .line 113
    if-ne v9, v13, :cond_6

    .line 114
    .line 115
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v17

    .line 119
    check-cast v17, Ljava/lang/Float;

    .line 120
    .line 121
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result v17

    .line 125
    cmpg-float v17, v17, v12

    .line 126
    .line 127
    if-ltz v17, :cond_5

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    :goto_3
    const/4 v14, 0x0

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    :goto_4
    if-ne v9, v14, :cond_7

    .line 133
    .line 134
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v17

    .line 138
    check-cast v17, Ljava/lang/Float;

    .line 139
    .line 140
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    cmpl-float v17, v17, v12

    .line 145
    .line 146
    if-lez v17, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :goto_5
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    const/4 v13, 0x1

    .line 164
    goto :goto_6

    .line 165
    :cond_7
    const/4 v13, 0x0

    .line 166
    :goto_6
    const/4 v14, 0x3

    .line 167
    :goto_7
    if-ge v14, v6, :cond_11

    .line 168
    .line 169
    add-int/lit8 v11, v14, -0x2

    .line 170
    .line 171
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Ljava/lang/Float;

    .line 176
    .line 177
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v18

    .line 185
    move-object/from16 v19, v5

    .line 186
    .line 187
    move-object/from16 v5, v18

    .line 188
    .line 189
    check-cast v5, Ljava/lang/Float;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v18

    .line 195
    cmpg-float v20, v11, v12

    .line 196
    .line 197
    if-gez v20, :cond_8

    .line 198
    .line 199
    cmpl-float v20, v18, v12

    .line 200
    .line 201
    if-gtz v20, :cond_9

    .line 202
    .line 203
    :cond_8
    cmpl-float v20, v11, v12

    .line 204
    .line 205
    if-lez v20, :cond_d

    .line 206
    .line 207
    cmpg-float v20, v18, v12

    .line 208
    .line 209
    if-gez v20, :cond_d

    .line 210
    .line 211
    :cond_9
    add-int/lit8 v13, v14, -0x3

    .line 212
    .line 213
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    check-cast v13, Ljava/lang/Float;

    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    move/from16 v20, v6

    .line 224
    .line 225
    add-int/lit8 v6, v14, -0x1

    .line 226
    .line 227
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Ljava/lang/Float;

    .line 232
    .line 233
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 234
    .line 235
    .line 236
    move-result v21

    .line 237
    sub-float v21, v21, v13

    .line 238
    .line 239
    sub-float v22, v12, v11

    .line 240
    .line 241
    mul-float v22, v22, v21

    .line 242
    .line 243
    sub-float v11, v18, v11

    .line 244
    .line 245
    div-float v22, v22, v11

    .line 246
    .line 247
    add-float v22, v22, v13

    .line 248
    .line 249
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    const/4 v11, 0x4

    .line 264
    if-ne v9, v11, :cond_a

    .line 265
    .line 266
    cmpl-float v11, v18, v12

    .line 267
    .line 268
    if-gtz v11, :cond_b

    .line 269
    .line 270
    :cond_a
    const/4 v11, 0x3

    .line 271
    if-ne v9, v11, :cond_c

    .line 272
    .line 273
    cmpg-float v11, v18, v12

    .line 274
    .line 275
    if-gez v11, :cond_c

    .line 276
    .line 277
    :cond_b
    add-int/lit8 v14, v14, 0x2

    .line 278
    .line 279
    const/4 v5, 0x0

    .line 280
    goto :goto_8

    .line 281
    :cond_c
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    const/4 v5, 0x1

    .line 288
    :goto_8
    move v13, v5

    .line 289
    const/4 v5, 0x2

    .line 290
    const/4 v11, 0x3

    .line 291
    goto :goto_b

    .line 292
    :cond_d
    move/from16 v20, v6

    .line 293
    .line 294
    const/4 v6, 0x4

    .line 295
    if-nez v13, :cond_f

    .line 296
    .line 297
    if-ne v9, v6, :cond_e

    .line 298
    .line 299
    cmpg-float v11, v18, v12

    .line 300
    .line 301
    if-ltz v11, :cond_f

    .line 302
    .line 303
    :cond_e
    const/4 v11, 0x3

    .line 304
    goto :goto_9

    .line 305
    :cond_f
    const/4 v11, 0x3

    .line 306
    goto :goto_a

    .line 307
    :goto_9
    if-ne v9, v11, :cond_10

    .line 308
    .line 309
    cmpl-float v17, v18, v12

    .line 310
    .line 311
    if-lez v17, :cond_10

    .line 312
    .line 313
    :goto_a
    add-int/lit8 v6, v14, -0x1

    .line 314
    .line 315
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :cond_10
    const/4 v5, 0x2

    .line 326
    :goto_b
    add-int/2addr v14, v5

    .line 327
    move-object/from16 v5, v19

    .line 328
    .line 329
    move/from16 v6, v20

    .line 330
    .line 331
    const/4 v11, 0x1

    .line 332
    goto/16 :goto_7

    .line 333
    .line 334
    :cond_11
    move-object/from16 v19, v5

    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    .line 341
    .line 342
    :goto_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    if-lez v5, :cond_15

    .line 347
    .line 348
    const/4 v6, 0x0

    .line 349
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    check-cast v9, Ljava/lang/Float;

    .line 354
    .line 355
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    const/high16 v11, 0x3f800000    # 1.0f

    .line 360
    .line 361
    add-float/2addr v9, v11

    .line 362
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    add-int/lit8 v9, v5, -0x2

    .line 370
    .line 371
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    add-int/lit8 v6, v5, 0x1

    .line 393
    .line 394
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    const/4 v14, 0x0

    .line 402
    :goto_d
    add-int/lit8 v6, v5, 0x4

    .line 403
    .line 404
    if-ge v14, v6, :cond_13

    .line 405
    .line 406
    add-int/lit8 v6, v14, 0x1

    .line 407
    .line 408
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    check-cast v9, Ljava/lang/Float;

    .line 413
    .line 414
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 415
    .line 416
    .line 417
    move-result v9

    .line 418
    cmpg-float v9, v9, v16

    .line 419
    .line 420
    if-gez v9, :cond_12

    .line 421
    .line 422
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    :cond_12
    add-int/lit8 v14, v14, 0x2

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_13
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 433
    .line 434
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    .line 436
    .line 437
    const/4 v5, 0x1

    .line 438
    invoke-static {v0, v10, v1, v5}, LT6/a;->e(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/Paint;Z)V

    .line 439
    .line 440
    .line 441
    goto :goto_e

    .line 442
    :cond_14
    move-object/from16 v19, v5

    .line 443
    .line 444
    :cond_15
    :goto_e
    add-int/lit8 v8, v8, 0x1

    .line 445
    .line 446
    move-object/from16 v5, v19

    .line 447
    .line 448
    const/4 v6, 0x0

    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_16
    iget v3, v3, LV6/d;->G:I

    .line 452
    .line 453
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    .line 455
    .line 456
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 457
    .line 458
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 459
    .line 460
    .line 461
    const/4 v3, 0x0

    .line 462
    invoke-static {v0, v2, v1, v3}, LT6/a;->e(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/Paint;Z)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 466
    .line 467
    .line 468
    return-void
.end method

.method public final r()LT6/d;
    .locals 1

    .line 1
    iget-object v0, p0, LT6/c;->P:LT6/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(LV6/d;)Z
    .locals 1

    .line 1
    iget p1, p1, LV6/d;->K:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method
