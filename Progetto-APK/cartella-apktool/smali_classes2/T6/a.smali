.class public abstract LT6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public static a(FFFFII)[F
    .locals 6

    .line 1
    int-to-float p4, p4

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpl-float v1, p1, p4

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    sub-float v1, p3, p1

    .line 8
    .line 9
    sub-float v2, p2, p0

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    sub-float v2, p4, p1

    .line 13
    .line 14
    mul-float v3, v1, p0

    .line 15
    .line 16
    add-float/2addr v2, v3

    .line 17
    div-float/2addr v2, v1

    .line 18
    cmpg-float v4, v2, v0

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    :goto_0
    sub-float v1, p1, v3

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    int-to-float v4, p5

    .line 27
    cmpl-float v5, v2, v4

    .line 28
    .line 29
    if-lez v5, :cond_1

    .line 30
    .line 31
    :goto_1
    mul-float v1, v1, v4

    .line 32
    .line 33
    add-float/2addr v1, p1

    .line 34
    sub-float/2addr v1, v3

    .line 35
    move v2, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    move v1, p4

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    cmpg-float v1, p1, v0

    .line 40
    .line 41
    if-gez v1, :cond_5

    .line 42
    .line 43
    sub-float v1, p3, p1

    .line 44
    .line 45
    sub-float v2, p2, p0

    .line 46
    .line 47
    div-float/2addr v1, v2

    .line 48
    neg-float v2, p1

    .line 49
    mul-float v3, v1, p0

    .line 50
    .line 51
    add-float/2addr v2, v3

    .line 52
    div-float/2addr v2, v1

    .line 53
    cmpg-float v4, v2, v0

    .line 54
    .line 55
    if-gez v4, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    int-to-float v4, p5

    .line 59
    cmpl-float v5, v2, v4

    .line 60
    .line 61
    if-lez v5, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    const/4 v1, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    move v2, p0

    .line 67
    move v1, p1

    .line 68
    :goto_2
    cmpl-float v3, p3, p4

    .line 69
    .line 70
    if-lez v3, :cond_8

    .line 71
    .line 72
    sub-float/2addr p3, p1

    .line 73
    sub-float/2addr p2, p0

    .line 74
    div-float/2addr p3, p2

    .line 75
    sub-float p2, p4, p1

    .line 76
    .line 77
    mul-float p0, p0, p3

    .line 78
    .line 79
    add-float/2addr p2, p0

    .line 80
    div-float/2addr p2, p3

    .line 81
    cmpg-float v3, p2, v0

    .line 82
    .line 83
    if-gez v3, :cond_6

    .line 84
    .line 85
    :goto_3
    sub-float/2addr p1, p0

    .line 86
    move p3, p1

    .line 87
    const/4 p2, 0x0

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    int-to-float p5, p5

    .line 90
    cmpl-float v0, p2, p5

    .line 91
    .line 92
    if-lez v0, :cond_7

    .line 93
    .line 94
    mul-float p3, p3, p5

    .line 95
    .line 96
    add-float/2addr p3, p1

    .line 97
    sub-float/2addr p3, p0

    .line 98
    move p2, p5

    .line 99
    goto :goto_4

    .line 100
    :cond_7
    move p3, p4

    .line 101
    goto :goto_4

    .line 102
    :cond_8
    cmpg-float p4, p3, v0

    .line 103
    .line 104
    if-gez p4, :cond_b

    .line 105
    .line 106
    sub-float/2addr p3, p1

    .line 107
    sub-float/2addr p2, p0

    .line 108
    div-float/2addr p3, p2

    .line 109
    neg-float p2, p1

    .line 110
    mul-float p0, p0, p3

    .line 111
    .line 112
    add-float/2addr p2, p0

    .line 113
    div-float/2addr p2, p3

    .line 114
    cmpg-float p4, p2, v0

    .line 115
    .line 116
    if-gez p4, :cond_9

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_9
    int-to-float p4, p5

    .line 120
    cmpl-float p5, p2, p4

    .line 121
    .line 122
    if-lez p5, :cond_a

    .line 123
    .line 124
    mul-float p3, p3, p4

    .line 125
    .line 126
    add-float/2addr p3, p1

    .line 127
    sub-float/2addr p3, p0

    .line 128
    move p2, p4

    .line 129
    goto :goto_4

    .line 130
    :cond_a
    const/4 p3, 0x0

    .line 131
    :cond_b
    :goto_4
    const/4 p0, 0x4

    .line 132
    new-array p0, p0, [F

    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    aput v2, p0, p1

    .line 136
    .line 137
    const/4 p1, 0x1

    .line 138
    aput v1, p0, p1

    .line 139
    .line 140
    const/4 p1, 0x2

    .line 141
    aput p2, p0, p1

    .line 142
    .line 143
    const/4 p1, 0x3

    .line 144
    aput p3, p0, p1

    .line 145
    .line 146
    return-object p0
.end method

.method public static b(LV6/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p7, :cond_1

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    .line 8
    invoke-virtual {p6, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p6, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    invoke-virtual {p6, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    .line 21
    int-to-float v1, p2

    .line 22
    int-to-float v2, p3

    .line 23
    add-int/2addr p2, p4

    .line 24
    int-to-float v3, p2

    .line 25
    add-int/2addr p3, p5

    .line 26
    int-to-float v4, p3

    .line 27
    move-object v0, p1

    .line 28
    move-object v5, p6

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public static e(Landroid/graphics/Canvas;Ljava/util/ArrayList;Landroid/graphics/Paint;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Path;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v10, 0x4

    .line 21
    if-ge v2, v10, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v11, 0x0

    .line 25
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Float;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v12, 0x1

    .line 36
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/Float;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v13, 0x2

    .line 47
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Float;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v14, 0x3

    .line 58
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    move v6, v8

    .line 69
    move v7, v9

    .line 70
    invoke-static/range {v2 .. v7}, LT6/a;->a(FFFFII)[F

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    aget v3, v2, v11

    .line 75
    .line 76
    aget v4, v2, v12

    .line 77
    .line 78
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    .line 80
    .line 81
    aget v3, v2, v13

    .line 82
    .line 83
    aget v2, v2, v14

    .line 84
    .line 85
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    :goto_0
    if-ge v10, v15, :cond_5

    .line 93
    .line 94
    add-int/lit8 v2, v10, -0x1

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/Float;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    const/4 v4, 0x0

    .line 107
    cmpg-float v3, v3, v4

    .line 108
    .line 109
    if-gez v3, :cond_1

    .line 110
    .line 111
    add-int/lit8 v3, v10, 0x1

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/lang/Float;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    cmpg-float v3, v3, v4

    .line 124
    .line 125
    if-ltz v3, :cond_4

    .line 126
    .line 127
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/Float;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    int-to-float v4, v8

    .line 138
    cmpl-float v3, v3, v4

    .line 139
    .line 140
    if-lez v3, :cond_2

    .line 141
    .line 142
    add-int/lit8 v3, v10, 0x1

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/Float;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    cmpl-float v3, v3, v4

    .line 155
    .line 156
    if-lez v3, :cond_2

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v3, v10, -0x2

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Ljava/lang/Float;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Ljava/lang/Float;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/Float;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    add-int/lit8 v2, v10, 0x1

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Ljava/lang/Float;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    move v2, v3

    .line 204
    move v3, v4

    .line 205
    move v4, v5

    .line 206
    move v5, v6

    .line 207
    move v6, v8

    .line 208
    move v7, v9

    .line 209
    invoke-static/range {v2 .. v7}, LT6/a;->a(FFFFII)[F

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-nez p3, :cond_3

    .line 214
    .line 215
    aget v3, v2, v11

    .line 216
    .line 217
    aget v4, v2, v12

    .line 218
    .line 219
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    .line 221
    .line 222
    :cond_3
    aget v3, v2, v13

    .line 223
    .line 224
    aget v2, v2, v14

    .line 225
    .line 226
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x2

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_5
    if-eqz p3, :cond_6

    .line 234
    .line 235
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Ljava/lang/Float;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/Float;

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    .line 257
    .line 258
    :cond_6
    move-object/from16 v0, p0

    .line 259
    .line 260
    move-object/from16 v2, p2

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 263
    .line 264
    .line 265
    return-void
.end method

.method public static f(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Path;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    array-length v2, v0

    .line 17
    const/4 v10, 0x4

    .line 18
    if-ge v2, v10, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v11, 0x0

    .line 22
    aget v2, v0, v11

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    aget v3, v0, v12

    .line 26
    .line 27
    const/4 v13, 0x2

    .line 28
    aget v4, v0, v13

    .line 29
    .line 30
    const/4 v14, 0x3

    .line 31
    aget v5, v0, v14

    .line 32
    .line 33
    move v6, v8

    .line 34
    move v7, v9

    .line 35
    invoke-static/range {v2 .. v7}, LT6/a;->a(FFFFII)[F

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    aget v3, v2, v11

    .line 40
    .line 41
    aget v4, v2, v12

    .line 42
    .line 43
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    .line 45
    .line 46
    aget v3, v2, v13

    .line 47
    .line 48
    aget v2, v2, v14

    .line 49
    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    .line 52
    .line 53
    array-length v15, v0

    .line 54
    :goto_0
    if-ge v10, v15, :cond_4

    .line 55
    .line 56
    add-int/lit8 v2, v10, -0x1

    .line 57
    .line 58
    aget v3, v0, v2

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    cmpg-float v4, v3, v2

    .line 62
    .line 63
    if-gez v4, :cond_1

    .line 64
    .line 65
    add-int/lit8 v4, v10, 0x1

    .line 66
    .line 67
    aget v4, v0, v4

    .line 68
    .line 69
    cmpg-float v2, v4, v2

    .line 70
    .line 71
    if-ltz v2, :cond_3

    .line 72
    .line 73
    :cond_1
    int-to-float v2, v8

    .line 74
    cmpl-float v4, v3, v2

    .line 75
    .line 76
    if-lez v4, :cond_2

    .line 77
    .line 78
    add-int/lit8 v4, v10, 0x1

    .line 79
    .line 80
    aget v4, v0, v4

    .line 81
    .line 82
    cmpl-float v2, v4, v2

    .line 83
    .line 84
    if-lez v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v2, v10, -0x2

    .line 88
    .line 89
    aget v2, v0, v2

    .line 90
    .line 91
    aget v4, v0, v10

    .line 92
    .line 93
    add-int/lit8 v5, v10, 0x1

    .line 94
    .line 95
    aget v5, v0, v5

    .line 96
    .line 97
    move v6, v8

    .line 98
    move v7, v9

    .line 99
    invoke-static/range {v2 .. v7}, LT6/a;->a(FFFFII)[F

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    aget v3, v2, v13

    .line 104
    .line 105
    aget v2, v2, v14

    .line 106
    .line 107
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x2

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    aget v2, v0, v11

    .line 114
    .line 115
    aget v0, v0, v12

    .line 116
    .line 117
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    move-object/from16 v2, p2

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static g(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "\n"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    array-length v4, p1

    .line 18
    if-ge v2, v4, :cond_0

    .line 19
    .line 20
    aget-object v4, p1, v2

    .line 21
    .line 22
    int-to-float v5, v3

    .line 23
    add-float/2addr v5, p3

    .line 24
    invoke-virtual {p0, v4, p2, v5, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    .line 26
    .line 27
    aget-object v4, p1, v2

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {p4, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    add-int/2addr v4, v3

    .line 41
    add-int/lit8 v3, v4, 0x5

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static h(Ljava/text/NumberFormat;D)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-double v0, v0

    .line 13
    const-string p0, ""

    .line 14
    .line 15
    cmpl-double v2, p1, v0

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :goto_0
    return-object p0
.end method

.method public static j(LV6/b;)Z
    .locals 1

    .line 1
    instance-of v0, p0, LV6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, LV6/b;->B0:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;LV6/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    move-object/from16 v11, p10

    .line 10
    .line 11
    iget-boolean v4, v0, LV6/a;->P:Z

    .line 12
    .line 13
    iget v12, v0, LV6/a;->Q:F

    .line 14
    .line 15
    const/high16 v5, 0x42000000    # 32.0f

    .line 16
    .line 17
    if-eqz v4, :cond_a

    .line 18
    .line 19
    move/from16 v4, p4

    .line 20
    .line 21
    int-to-float v13, v4

    .line 22
    add-int v4, p6, p8

    .line 23
    .line 24
    sub-int v4, v4, p9

    .line 25
    .line 26
    int-to-float v4, v4

    .line 27
    add-float/2addr v4, v5

    .line 28
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 29
    .line 30
    invoke-virtual {v11, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    .line 36
    array-length v6, v1

    .line 37
    iget-object v7, v0, LV6/a;->T:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    move v6, v13

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_0
    if-ge v10, v14, :cond_a

    .line 50
    .line 51
    iget-object v7, v0, LV6/a;->T:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, LV6/d;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, LT6/a;->i()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    int-to-float v9, v8

    .line 64
    iget-boolean v8, v7, LV6/d;->H:Z

    .line 65
    .line 66
    if-eqz v8, :cond_9

    .line 67
    .line 68
    aget-object v8, v1, v10

    .line 69
    .line 70
    array-length v15, v1

    .line 71
    iget-object v1, v0, LV6/a;->T:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v15, v1, :cond_0

    .line 78
    .line 79
    iget v1, v7, LV6/d;->G:I

    .line 80
    .line 81
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const v1, -0x333334

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    new-array v15, v1, [F

    .line 96
    .line 97
    invoke-virtual {v11, v8, v15}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 98
    .line 99
    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    :goto_2
    if-ge v0, v1, :cond_1

    .line 104
    .line 105
    aget v17, v15, v0

    .line 106
    .line 107
    add-float v16, v16, v17

    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 113
    .line 114
    add-float v1, v9, v0

    .line 115
    .line 116
    add-float v1, v1, v16

    .line 117
    .line 118
    add-float v16, v6, v1

    .line 119
    .line 120
    if-lez v10, :cond_4

    .line 121
    .line 122
    int-to-float v0, v2

    .line 123
    cmpl-float v0, v16, v0

    .line 124
    .line 125
    if-lez v0, :cond_2

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_2
    const/4 v0, 0x0

    .line 130
    :goto_3
    invoke-static/range {p2 .. p2}, LT6/a;->j(LV6/b;)Z

    .line 131
    .line 132
    .line 133
    move-result v17

    .line 134
    if-eqz v17, :cond_3

    .line 135
    .line 136
    int-to-float v0, v3

    .line 137
    cmpl-float v0, v16, v0

    .line 138
    .line 139
    if-lez v0, :cond_4

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_3
    if-eqz v0, :cond_4

    .line 143
    .line 144
    :goto_4
    add-float/2addr v4, v12

    .line 145
    add-float/2addr v5, v12

    .line 146
    add-float v16, v13, v1

    .line 147
    .line 148
    move v0, v4

    .line 149
    move/from16 v17, v13

    .line 150
    .line 151
    :goto_5
    move/from16 v4, v16

    .line 152
    .line 153
    move/from16 v16, v5

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_4
    move v0, v4

    .line 157
    move/from16 v17, v6

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :goto_6
    int-to-float v5, v2

    .line 161
    cmpl-float v6, v4, v5

    .line 162
    .line 163
    if-lez v6, :cond_5

    .line 164
    .line 165
    const/4 v6, 0x1

    .line 166
    goto :goto_7

    .line 167
    :cond_5
    const/4 v6, 0x0

    .line 168
    :goto_7
    invoke-static/range {p2 .. p2}, LT6/a;->j(LV6/b;)Z

    .line 169
    .line 170
    .line 171
    move-result v18

    .line 172
    if-eqz v18, :cond_7

    .line 173
    .line 174
    int-to-float v6, v3

    .line 175
    cmpl-float v4, v4, v6

    .line 176
    .line 177
    if-lez v4, :cond_6

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_6
    const/4 v15, 0x0

    .line 181
    goto :goto_9

    .line 182
    :cond_7
    if-eqz v6, :cond_6

    .line 183
    .line 184
    :goto_8
    sub-float v5, v5, v17

    .line 185
    .line 186
    sub-float/2addr v5, v9

    .line 187
    const/high16 v4, 0x41200000    # 10.0f

    .line 188
    .line 189
    sub-float/2addr v5, v4

    .line 190
    invoke-static/range {p2 .. p2}, LT6/a;->j(LV6/b;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    int-to-float v5, v3

    .line 197
    sub-float v5, v5, v17

    .line 198
    .line 199
    sub-float/2addr v5, v9

    .line 200
    sub-float/2addr v5, v4

    .line 201
    :cond_8
    const/4 v4, 0x1

    .line 202
    invoke-virtual {v11, v8, v4, v5, v15}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const/4 v15, 0x0

    .line 212
    invoke-virtual {v8, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v4, "..."

    .line 220
    .line 221
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    :goto_9
    move-object/from16 v4, p0

    .line 229
    .line 230
    move-object/from16 v5, p1

    .line 231
    .line 232
    move-object v6, v7

    .line 233
    move/from16 v7, v17

    .line 234
    .line 235
    move-object v15, v8

    .line 236
    move v8, v0

    .line 237
    move/from16 v18, v9

    .line 238
    .line 239
    move v9, v10

    .line 240
    move/from16 v19, v10

    .line 241
    .line 242
    move-object/from16 v10, p10

    .line 243
    .line 244
    invoke-virtual/range {v4 .. v10}, LT6/a;->d(Landroid/graphics/Canvas;LV6/d;FFILandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    add-float v9, v17, v18

    .line 248
    .line 249
    const/high16 v4, 0x40a00000    # 5.0f

    .line 250
    .line 251
    add-float/2addr v9, v4

    .line 252
    add-float/2addr v4, v0

    .line 253
    move-object/from16 v7, p1

    .line 254
    .line 255
    invoke-static {v7, v15, v9, v4, v11}, LT6/a;->g(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 256
    .line 257
    .line 258
    add-float v6, v17, v1

    .line 259
    .line 260
    move v4, v0

    .line 261
    move/from16 v5, v16

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_9
    move-object/from16 v7, p1

    .line 265
    .line 266
    move/from16 v19, v10

    .line 267
    .line 268
    :goto_a
    add-int/lit8 v10, v19, 0x1

    .line 269
    .line 270
    move-object/from16 v0, p2

    .line 271
    .line 272
    move-object/from16 v1, p3

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_a
    add-float/2addr v5, v12

    .line 277
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 278
    .line 279
    .line 280
    return-void
.end method

.method public abstract d(Landroid/graphics/Canvas;LV6/d;FFILandroid/graphics/Paint;)V
.end method

.method public abstract i()I
.end method
