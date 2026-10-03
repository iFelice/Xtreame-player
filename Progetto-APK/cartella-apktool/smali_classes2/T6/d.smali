.class public final LT6/d;
.super LT6/e;
.source "SourceFile"


# instance fields
.field public P:F


# virtual methods
.method public final d(Landroid/graphics/Canvas;LV6/d;FFILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 2
    .line 3
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    .line 5
    .line 6
    iget p2, p2, LV6/d;->K:I

    .line 7
    .line 8
    invoke-static {p2}, Lu/h;->b(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/high16 p5, 0x41200000    # 10.0f

    .line 13
    .line 14
    if-eqz p2, :cond_5

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p2, v0, :cond_4

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p2, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p2, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq p2, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x5

    .line 29
    if-eq p2, v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    add-float/2addr p3, p5

    .line 34
    invoke-virtual {p1, p3, p4, p6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p2, 0x8

    .line 39
    .line 40
    new-array v3, p2, [F

    .line 41
    .line 42
    add-float v4, p3, p5

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    move-object v1, p1

    .line 46
    move-object v2, p6

    .line 47
    move v5, p4

    .line 48
    invoke-virtual/range {v0 .. v5}, LT6/d;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    add-float/2addr p3, p5

    .line 53
    iget p2, p0, LT6/d;->P:F

    .line 54
    .line 55
    sub-float v1, p3, p2

    .line 56
    .line 57
    sub-float v2, p4, p2

    .line 58
    .line 59
    add-float v3, p3, p2

    .line 60
    .line 61
    add-float v4, p4, p2

    .line 62
    .line 63
    move-object v0, p1

    .line 64
    move-object v5, p6

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p2, 0x6

    .line 70
    new-array v3, p2, [F

    .line 71
    .line 72
    add-float v4, p3, p5

    .line 73
    .line 74
    move-object v0, p0

    .line 75
    move-object v1, p1

    .line 76
    move-object v2, p6

    .line 77
    move v5, p4

    .line 78
    invoke-virtual/range {v0 .. v5}, LT6/d;->y(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    add-float/2addr p3, p5

    .line 83
    iget p2, p0, LT6/d;->P:F

    .line 84
    .line 85
    invoke-virtual {p1, p3, p4, p2, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    add-float/2addr p3, p5

    .line 90
    iget p2, p0, LT6/d;->P:F

    .line 91
    .line 92
    sub-float p5, p3, p2

    .line 93
    .line 94
    sub-float v6, p4, p2

    .line 95
    .line 96
    add-float/2addr p3, p2

    .line 97
    add-float/2addr p2, p4

    .line 98
    move-object v0, p1

    .line 99
    move v1, p5

    .line 100
    move v2, v6

    .line 101
    move v3, p3

    .line 102
    move v4, p2

    .line 103
    move-object v5, p6

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    move v1, p3

    .line 108
    move v3, p5

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method public final i()I
    .locals 1

    .line 1
    const/16 v0, 0xa

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
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    iget v1, v0, LV6/d;->G:I

    .line 12
    .line 13
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 17
    .line 18
    .line 19
    move-result v10

    .line 20
    iget v1, v0, LV6/d;->L:F

    .line 21
    .line 22
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget v0, v0, LV6/d;->K:I

    .line 35
    .line 36
    invoke-static {v0}, Lu/h;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    if-eq v0, v1, :cond_4

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-eq v0, v1, :cond_2

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    if-eq v0, v1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    if-eq v0, v1, :cond_0

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_0
    :goto_0
    if-ge v2, v11, :cond_6

    .line 61
    .line 62
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/lit8 v1, v2, 0x1

    .line 73
    .line 74
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Float;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v7, v0, v1, v8}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/16 v0, 0x8

    .line 91
    .line 92
    new-array v12, v0, [F

    .line 93
    .line 94
    const/4 v13, 0x0

    .line 95
    :goto_1
    if-ge v13, v11, :cond_6

    .line 96
    .line 97
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Float;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    add-int/lit8 v0, v13, 0x1

    .line 108
    .line 109
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Float;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move-object/from16 v1, p1

    .line 122
    .line 123
    move-object/from16 v2, p2

    .line 124
    .line 125
    move-object v3, v12

    .line 126
    invoke-virtual/range {v0 .. v5}, LT6/d;->x(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v13, v13, 0x2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const/4 v12, 0x0

    .line 133
    :goto_2
    if-ge v12, v11, :cond_6

    .line 134
    .line 135
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/Float;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/lit8 v1, v12, 0x1

    .line 146
    .line 147
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget v2, v6, LT6/d;->P:F

    .line 158
    .line 159
    sub-float v3, v0, v2

    .line 160
    .line 161
    sub-float v4, v1, v2

    .line 162
    .line 163
    add-float v5, v0, v2

    .line 164
    .line 165
    add-float v13, v1, v2

    .line 166
    .line 167
    move-object/from16 v0, p1

    .line 168
    .line 169
    move v1, v3

    .line 170
    move v2, v4

    .line 171
    move v3, v5

    .line 172
    move v4, v13

    .line 173
    move-object/from16 v5, p2

    .line 174
    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v12, v12, 0x2

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    const/4 v0, 0x6

    .line 182
    new-array v12, v0, [F

    .line 183
    .line 184
    const/4 v13, 0x0

    .line 185
    :goto_3
    if-ge v13, v11, :cond_6

    .line 186
    .line 187
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/lang/Float;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    add-int/lit8 v0, v13, 0x1

    .line 198
    .line 199
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ljava/lang/Float;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move-object/from16 v1, p1

    .line 212
    .line 213
    move-object/from16 v2, p2

    .line 214
    .line 215
    move-object v3, v12

    .line 216
    invoke-virtual/range {v0 .. v5}, LT6/d;->y(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v13, v13, 0x2

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_4
    :goto_4
    if-ge v2, v11, :cond_6

    .line 223
    .line 224
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/Float;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    add-int/lit8 v1, v2, 0x1

    .line 235
    .line 236
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Ljava/lang/Float;

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iget v3, v6, LT6/d;->P:F

    .line 247
    .line 248
    invoke-virtual {v7, v0, v1, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    .line 250
    .line 251
    add-int/lit8 v2, v2, 0x2

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_5
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    .line 256
    .line 257
    const/4 v12, 0x0

    .line 258
    :goto_5
    if-ge v12, v11, :cond_6

    .line 259
    .line 260
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Float;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    add-int/lit8 v1, v12, 0x1

    .line 271
    .line 272
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Ljava/lang/Float;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    iget v2, v6, LT6/d;->P:F

    .line 283
    .line 284
    sub-float v13, v0, v2

    .line 285
    .line 286
    sub-float v14, v1, v2

    .line 287
    .line 288
    add-float v15, v0, v2

    .line 289
    .line 290
    add-float v16, v1, v2

    .line 291
    .line 292
    move-object/from16 v0, p1

    .line 293
    .line 294
    move v1, v13

    .line 295
    move v2, v14

    .line 296
    move v3, v15

    .line 297
    move/from16 v4, v16

    .line 298
    .line 299
    move-object/from16 v5, p2

    .line 300
    .line 301
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    .line 303
    .line 304
    move v1, v15

    .line 305
    move v3, v13

    .line 306
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 307
    .line 308
    .line 309
    add-int/lit8 v12, v12, 0x2

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_6
    :goto_6
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public final x(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aput p4, p3, v0

    .line 3
    .line 4
    iget v0, p0, LT6/d;->P:F

    .line 5
    .line 6
    sub-float v1, p5, v0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aput v1, p3, v2

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    sub-float v2, p4, v0

    .line 13
    .line 14
    aput v2, p3, v1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aput p5, p3, v1

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    aput p4, p3, v1

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    add-float v2, p5, v0

    .line 24
    .line 25
    aput v2, p3, v1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    add-float/2addr p4, v0

    .line 29
    aput p4, p3, v1

    .line 30
    .line 31
    const/4 p4, 0x7

    .line 32
    aput p5, p3, p4

    .line 33
    .line 34
    invoke-static {p1, p3, p2}, LT6/a;->f(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final y(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aput p4, p3, v0

    .line 3
    .line 4
    iget v0, p0, LT6/d;->P:F

    .line 5
    .line 6
    sub-float v1, p5, v0

    .line 7
    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float v2, v0, v2

    .line 11
    .line 12
    sub-float/2addr v1, v2

    .line 13
    const/4 v2, 0x1

    .line 14
    aput v1, p3, v2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    sub-float v2, p4, v0

    .line 18
    .line 19
    aput v2, p3, v1

    .line 20
    .line 21
    add-float/2addr p5, v0

    .line 22
    const/4 v1, 0x3

    .line 23
    aput p5, p3, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    add-float/2addr p4, v0

    .line 27
    aput p4, p3, v1

    .line 28
    .line 29
    const/4 p4, 0x5

    .line 30
    aput p5, p3, p4

    .line 31
    .line 32
    invoke-static {p1, p3, p2}, LT6/a;->f(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
