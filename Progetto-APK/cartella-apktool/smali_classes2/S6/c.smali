.class public final LS6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS6/b;


# instance fields
.field public a:LV6/b;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Landroid/graphics/RectF;

.field public g:LW6/a;

.field public h:LW6/b;

.field public i:LS6/a;


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v0, LS6/c;->a:LV6/b;

    .line 10
    .line 11
    iget-object v4, v0, LS6/c;->i:LS6/a;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    const/4 v8, 0x2

    .line 19
    if-ne v2, v8, :cond_7

    .line 20
    .line 21
    iget v2, v0, LS6/c;->b:F

    .line 22
    .line 23
    cmpl-float v2, v2, v7

    .line 24
    .line 25
    if-gez v2, :cond_0

    .line 26
    .line 27
    iget v2, v0, LS6/c;->c:F

    .line 28
    .line 29
    cmpl-float v2, v2, v7

    .line 30
    .line 31
    if-ltz v2, :cond_d

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    if-le v10, v6, :cond_1

    .line 46
    .line 47
    iget v10, v0, LS6/c;->d:F

    .line 48
    .line 49
    cmpl-float v10, v10, v7

    .line 50
    .line 51
    if-gez v10, :cond_2

    .line 52
    .line 53
    iget v10, v0, LS6/c;->e:F

    .line 54
    .line 55
    cmpl-float v10, v10, v7

    .line 56
    .line 57
    if-ltz v10, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move/from16 v16, v9

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-virtual {v3}, LV6/b;->i()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-float v7, v2, v3

    .line 79
    .line 80
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sub-float v10, v9, v1

    .line 85
    .line 86
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    iget v11, v0, LS6/c;->b:F

    .line 91
    .line 92
    iget v12, v0, LS6/c;->d:F

    .line 93
    .line 94
    sub-float/2addr v11, v12

    .line 95
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    iget v12, v0, LS6/c;->c:F

    .line 100
    .line 101
    iget v13, v0, LS6/c;->e:F

    .line 102
    .line 103
    sub-float/2addr v12, v13

    .line 104
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    iget v13, v0, LS6/c;->c:F

    .line 109
    .line 110
    sub-float v13, v9, v13

    .line 111
    .line 112
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    iget v14, v0, LS6/c;->b:F

    .line 117
    .line 118
    sub-float v14, v2, v14

    .line 119
    .line 120
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    div-float/2addr v13, v14

    .line 125
    iget v14, v0, LS6/c;->e:F

    .line 126
    .line 127
    sub-float v14, v1, v14

    .line 128
    .line 129
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    iget v15, v0, LS6/c;->d:F

    .line 134
    .line 135
    sub-float v15, v3, v15

    .line 136
    .line 137
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    div-float/2addr v14, v15

    .line 142
    move/from16 v16, v9

    .line 143
    .line 144
    float-to-double v8, v13

    .line 145
    const-wide/high16 v17, 0x3fd0000000000000L    # 0.25

    .line 146
    .line 147
    cmpg-double v13, v8, v17

    .line 148
    .line 149
    if-gtz v13, :cond_3

    .line 150
    .line 151
    float-to-double v5, v14

    .line 152
    cmpg-double v19, v5, v17

    .line 153
    .line 154
    if-gtz v19, :cond_3

    .line 155
    .line 156
    div-float/2addr v7, v11

    .line 157
    const/4 v5, 0x1

    .line 158
    invoke-virtual {v0, v5, v7}, LS6/c;->b(IF)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    const-wide v5, 0x400dd70a3d70a3d7L    # 3.73

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    cmpl-double v17, v8, v5

    .line 168
    .line 169
    if-ltz v17, :cond_4

    .line 170
    .line 171
    float-to-double v8, v14

    .line 172
    cmpl-double v14, v8, v5

    .line 173
    .line 174
    if-ltz v14, :cond_4

    .line 175
    .line 176
    div-float/2addr v10, v12

    .line 177
    const/4 v5, 0x2

    .line 178
    invoke-virtual {v0, v5, v10}, LS6/c;->b(IF)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_4
    iget v5, v0, LS6/c;->b:F

    .line 183
    .line 184
    sub-float v5, v2, v5

    .line 185
    .line 186
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    iget v6, v0, LS6/c;->c:F

    .line 191
    .line 192
    sub-float v9, v16, v6

    .line 193
    .line 194
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    cmpl-float v5, v5, v6

    .line 199
    .line 200
    if-ltz v5, :cond_5

    .line 201
    .line 202
    div-float/2addr v7, v11

    .line 203
    :goto_1
    const/4 v5, 0x0

    .line 204
    goto :goto_2

    .line 205
    :cond_5
    div-float v7, v10, v12

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :goto_2
    invoke-virtual {v0, v5, v7}, LS6/c;->b(IF)V

    .line 209
    .line 210
    .line 211
    :goto_3
    iput v3, v0, LS6/c;->d:F

    .line 212
    .line 213
    iput v1, v0, LS6/c;->e:F

    .line 214
    .line 215
    :cond_6
    move/from16 v6, v16

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :goto_4
    invoke-virtual {v3}, LV6/b;->h()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_6

    .line 223
    .line 224
    iget v1, v0, LS6/c;->b:F

    .line 225
    .line 226
    iget v3, v0, LS6/c;->c:F

    .line 227
    .line 228
    iget-object v5, v0, LS6/c;->g:LW6/a;

    .line 229
    .line 230
    move/from16 v6, v16

    .line 231
    .line 232
    invoke-virtual {v5, v1, v3, v2, v6}, LW6/a;->s(FFFF)V

    .line 233
    .line 234
    .line 235
    iput v7, v0, LS6/c;->d:F

    .line 236
    .line 237
    iput v7, v0, LS6/c;->e:F

    .line 238
    .line 239
    :goto_5
    iput v2, v0, LS6/c;->b:F

    .line 240
    .line 241
    iput v6, v0, LS6/c;->c:F

    .line 242
    .line 243
    invoke-virtual {v4}, LS6/a;->a()V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_7
    if-nez v2, :cond_b

    .line 248
    .line 249
    const/4 v5, 0x0

    .line 250
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    iput v2, v0, LS6/c;->b:F

    .line 255
    .line 256
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iput v1, v0, LS6/c;->c:F

    .line 261
    .line 262
    if-eqz v3, :cond_d

    .line 263
    .line 264
    invoke-virtual {v3}, LV6/b;->i()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_d

    .line 269
    .line 270
    iget v1, v0, LS6/c;->b:F

    .line 271
    .line 272
    iget v2, v0, LS6/c;->c:F

    .line 273
    .line 274
    iget-object v5, v0, LS6/c;->f:Landroid/graphics/RectF;

    .line 275
    .line 276
    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_d

    .line 281
    .line 282
    iget v1, v0, LS6/c;->b:F

    .line 283
    .line 284
    iget v2, v5, Landroid/graphics/RectF;->left:F

    .line 285
    .line 286
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    const/high16 v6, 0x40400000    # 3.0f

    .line 291
    .line 292
    div-float/2addr v3, v6

    .line 293
    add-float/2addr v3, v2

    .line 294
    cmpg-float v1, v1, v3

    .line 295
    .line 296
    if-gez v1, :cond_8

    .line 297
    .line 298
    iget-object v1, v4, LS6/a;->P:LW6/b;

    .line 299
    .line 300
    if-eqz v1, :cond_a

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    invoke-virtual {v1, v2}, LW6/b;->s(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, LS6/a;->a()V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_8
    iget v1, v0, LS6/c;->b:F

    .line 311
    .line 312
    iget v2, v5, Landroid/graphics/RectF;->left:F

    .line 313
    .line 314
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    const/high16 v5, 0x40000000    # 2.0f

    .line 319
    .line 320
    mul-float v3, v3, v5

    .line 321
    .line 322
    div-float/2addr v3, v6

    .line 323
    add-float/2addr v3, v2

    .line 324
    cmpg-float v1, v1, v3

    .line 325
    .line 326
    if-gez v1, :cond_9

    .line 327
    .line 328
    iget-object v1, v4, LS6/a;->Q:LW6/b;

    .line 329
    .line 330
    if-eqz v1, :cond_a

    .line 331
    .line 332
    const/4 v2, 0x0

    .line 333
    invoke-virtual {v1, v2}, LW6/b;->s(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, LS6/a;->a()V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_9
    invoke-virtual {v4}, LS6/a;->b()V

    .line 341
    .line 342
    .line 343
    :cond_a
    :goto_6
    return-void

    .line 344
    :cond_b
    const/4 v1, 0x6

    .line 345
    const/4 v4, 0x1

    .line 346
    if-eq v2, v4, :cond_c

    .line 347
    .line 348
    if-ne v2, v1, :cond_d

    .line 349
    .line 350
    :cond_c
    iput v7, v0, LS6/c;->b:F

    .line 351
    .line 352
    iput v7, v0, LS6/c;->c:F

    .line 353
    .line 354
    iput v7, v0, LS6/c;->d:F

    .line 355
    .line 356
    iput v7, v0, LS6/c;->e:F

    .line 357
    .line 358
    if-ne v2, v1, :cond_d

    .line 359
    .line 360
    const/high16 v1, -0x40800000    # -1.0f

    .line 361
    .line 362
    iput v1, v0, LS6/c;->b:F

    .line 363
    .line 364
    iput v1, v0, LS6/c;->c:F

    .line 365
    .line 366
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    return-void
.end method

.method public final b(IF)V
    .locals 6

    .line 1
    const v0, 0x3f666666    # 0.9f

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v0, 0x3f8ccccd    # 1.1f

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iget-object v0, p0, LS6/c;->h:LW6/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    float-to-double v1, p2

    .line 20
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmpl-double v5, v1, v3

    .line 26
    .line 27
    if-lez v5, :cond_0

    .line 28
    .line 29
    const-wide v3, 0x3ff199999999999aL    # 1.1

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpg-double v5, v1, v3

    .line 35
    .line 36
    if-gez v5, :cond_0

    .line 37
    .line 38
    iput p2, v0, LW6/b;->d:F

    .line 39
    .line 40
    invoke-virtual {v0, p1}, LW6/b;->s(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
