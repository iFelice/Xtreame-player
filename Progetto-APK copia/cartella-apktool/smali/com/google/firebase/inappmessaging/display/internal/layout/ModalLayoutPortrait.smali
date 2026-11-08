.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;
.super La5/a;
.source "SourceFile"


# instance fields
.field public final K:Lb5/a;

.field public L:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La5/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lb5/a;

    .line 5
    .line 6
    invoke-direct {p1}, Lb5/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->K:Lb5/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, La5/a;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p5

    .line 16
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p5, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    add-int/2addr v3, p1

    .line 48
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    and-int/2addr v2, v5

    .line 52
    if-ne v2, v5, :cond_0

    .line 53
    .line 54
    sub-int v2, p4, p2

    .line 55
    .line 56
    div-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    div-int/lit8 v4, v4, 0x2

    .line 59
    .line 60
    sub-int v5, v2, v4

    .line 61
    .line 62
    add-int/2addr v2, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    add-int v2, p3, v4

    .line 65
    .line 66
    move v5, p3

    .line 67
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "Layout child "

    .line 70
    .line 71
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4}, Ly4/k;->S(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    int-to-float v4, p1

    .line 85
    int-to-float v6, v3

    .line 86
    const-string v7, "\t(top, bottom)"

    .line 87
    .line 88
    invoke-static {v7, v4, v6}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 89
    .line 90
    .line 91
    int-to-float v4, v5

    .line 92
    int-to-float v6, v2

    .line 93
    const-string v7, "\t(left, right)"

    .line 94
    .line 95
    invoke-static {v7, v4, v6}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v1, p1

    .line 106
    add-int/lit8 p1, p5, -0x1

    .line 107
    .line 108
    if-ge v0, p1, :cond_1

    .line 109
    .line 110
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->L:I

    .line 111
    .line 112
    add-int/2addr v1, p1

    .line 113
    :cond_1
    move p1, v1

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, La5/a;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    iget-object v1, p0, La5/a;->I:Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    float-to-double v0, v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    double-to-int v0, v0

    .line 20
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->L:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v1, v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v0

    .line 40
    invoke-virtual {p0, p1}, La5/a;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p2}, La5/a;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sub-int/2addr v0, v2

    .line 57
    iget v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->L:I

    .line 58
    .line 59
    mul-int v0, v0, v4

    .line 60
    .line 61
    add-int/2addr v0, v3

    .line 62
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->K:Lb5/a;

    .line 63
    .line 64
    iput p1, v3, Lb5/a;->c:I

    .line 65
    .line 66
    iput p2, v3, Lb5/a;->d:I

    .line 67
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, v3, Lb5/a;->b:Ljava/util/List;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ge v5, v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    const v8, 0x7f0b0083

    .line 92
    .line 93
    .line 94
    if-eq v7, v8, :cond_1

    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const v8, 0x7f0b0287

    .line 101
    .line 102
    .line 103
    if-ne v7, v8, :cond_0

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    const/4 v7, 0x0

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    :goto_1
    const/4 v7, 0x1

    .line 109
    :goto_2
    new-instance v8, Lb5/b;

    .line 110
    .line 111
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v6, v8, Lb5/b;->a:Landroid/view/View;

    .line 115
    .line 116
    iput-boolean v7, v8, Lb5/b;->b:Z

    .line 117
    .line 118
    iget v6, v3, Lb5/a;->d:I

    .line 119
    .line 120
    iput v6, v8, Lb5/b;->c:I

    .line 121
    .line 122
    iget-object v6, v3, Lb5/a;->b:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v6, "Screen dimens: "

    .line 133
    .line 134
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, La5/a;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v5}, Ly4/k;->S(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, La5/a;->getMaxWidthPct()F

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-virtual {p0}, La5/a;->getMaxHeightPct()F

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const-string v7, "Max pct"

    .line 160
    .line 161
    invoke-static {v7, v5, v6}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 162
    .line 163
    .line 164
    int-to-float v5, p1

    .line 165
    int-to-float v6, p2

    .line 166
    const-string v7, "Base dimens"

    .line 167
    .line 168
    invoke-static {v7, v5, v6}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 169
    .line 170
    .line 171
    iget-object v6, v3, Lb5/a;->b:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_3

    .line 182
    .line 183
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lb5/b;

    .line 188
    .line 189
    const-string v8, "Pre-measure child"

    .line 190
    .line 191
    invoke-static {v8}, Ly4/k;->S(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v7, v7, Lb5/b;->a:Landroid/view/View;

    .line 195
    .line 196
    invoke-static {v7, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_3
    iget-object v6, v3, Lb5/a;->b:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const/4 v7, 0x0

    .line 207
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_4

    .line 212
    .line 213
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    check-cast v8, Lb5/b;

    .line 218
    .line 219
    invoke-virtual {v8}, Lb5/b;->a()I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    add-int/2addr v7, v8

    .line 224
    goto :goto_4

    .line 225
    :cond_4
    add-int/2addr v7, v0

    .line 226
    const-string v6, "Total reserved height"

    .line 227
    .line 228
    int-to-float v8, v0

    .line 229
    invoke-static {v6, v8}, Ly4/k;->T(Ljava/lang/String;F)V

    .line 230
    .line 231
    .line 232
    const-string v6, "Total desired height"

    .line 233
    .line 234
    int-to-float v8, v7

    .line 235
    invoke-static {v6, v8}, Ly4/k;->T(Ljava/lang/String;F)V

    .line 236
    .line 237
    .line 238
    if-le v7, p2, :cond_5

    .line 239
    .line 240
    const/4 v6, 0x1

    .line 241
    goto :goto_5

    .line 242
    :cond_5
    const/4 v6, 0x0

    .line 243
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v8, "Total height constrained: "

    .line 246
    .line 247
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-static {v7}, Ly4/k;->S(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-eqz v6, :cond_e

    .line 261
    .line 262
    sub-int/2addr p2, v0

    .line 263
    iget-object v6, v3, Lb5/a;->b:Ljava/util/List;

    .line 264
    .line 265
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    const/4 v7, 0x0

    .line 270
    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-eqz v8, :cond_7

    .line 275
    .line 276
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    check-cast v8, Lb5/b;

    .line 281
    .line 282
    iget-boolean v9, v8, Lb5/b;->b:Z

    .line 283
    .line 284
    if-nez v9, :cond_6

    .line 285
    .line 286
    invoke-virtual {v8}, Lb5/b;->a()I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    add-int/2addr v7, v8

    .line 291
    goto :goto_6

    .line 292
    :cond_7
    sub-int/2addr p2, v7

    .line 293
    new-instance v6, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    iget-object v7, v3, Lb5/a;->b:Ljava/util/List;

    .line 299
    .line 300
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    :cond_8
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_9

    .line 309
    .line 310
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    check-cast v8, Lb5/b;

    .line 315
    .line 316
    iget-boolean v9, v8, Lb5/b;->b:Z

    .line 317
    .line 318
    if-eqz v9, :cond_8

    .line 319
    .line 320
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_9
    new-instance v7, Lu/f;

    .line 325
    .line 326
    invoke-direct {v7, v3, v2}, Lu/f;-><init>(Ljava/lang/Object;I)V

    .line 327
    .line 328
    .line 329
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_a

    .line 341
    .line 342
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    check-cast v8, Lb5/b;

    .line 347
    .line 348
    invoke-virtual {v8}, Lb5/b;->a()I

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    add-int/2addr v4, v8

    .line 353
    goto :goto_8

    .line 354
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    const/4 v8, 0x6

    .line 359
    if-ge v7, v8, :cond_d

    .line 360
    .line 361
    sub-int/2addr v7, v2

    .line 362
    int-to-float v2, v7

    .line 363
    const v7, 0x3e4ccccd    # 0.2f

    .line 364
    .line 365
    .line 366
    mul-float v2, v2, v7

    .line 367
    .line 368
    const/high16 v8, 0x3f800000    # 1.0f

    .line 369
    .line 370
    sub-float/2addr v8, v2

    .line 371
    const-string v2, "VVGM (minFrac, maxFrac)"

    .line 372
    .line 373
    invoke-static {v2, v7, v8}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    const/4 v6, 0x0

    .line 381
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    if-eqz v9, :cond_e

    .line 386
    .line 387
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    check-cast v9, Lb5/b;

    .line 392
    .line 393
    invoke-virtual {v9}, Lb5/b;->a()I

    .line 394
    .line 395
    .line 396
    move-result v10

    .line 397
    int-to-float v10, v10

    .line 398
    int-to-float v11, v4

    .line 399
    div-float/2addr v10, v11

    .line 400
    cmpl-float v11, v10, v8

    .line 401
    .line 402
    if-lez v11, :cond_b

    .line 403
    .line 404
    sub-float v11, v10, v8

    .line 405
    .line 406
    add-float/2addr v6, v11

    .line 407
    move v11, v8

    .line 408
    goto :goto_a

    .line 409
    :cond_b
    move v11, v10

    .line 410
    :goto_a
    cmpg-float v12, v10, v7

    .line 411
    .line 412
    if-gez v12, :cond_c

    .line 413
    .line 414
    sub-float v11, v7, v10

    .line 415
    .line 416
    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    add-float v12, v10, v11

    .line 421
    .line 422
    sub-float/2addr v6, v11

    .line 423
    move v11, v12

    .line 424
    :cond_c
    const-string v12, "\t(desired, granted)"

    .line 425
    .line 426
    invoke-static {v12, v10, v11}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 427
    .line 428
    .line 429
    int-to-float v10, p2

    .line 430
    mul-float v11, v11, v10

    .line 431
    .line 432
    float-to-int v10, v11

    .line 433
    iput v10, v9, Lb5/b;->c:I

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 437
    .line 438
    const-string p2, "VerticalViewGroupMeasure only supports up to 5 children"

    .line 439
    .line 440
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw p1

    .line 444
    :cond_e
    sub-int p2, p1, v1

    .line 445
    .line 446
    iget-object v1, v3, Lb5/a;->b:Ljava/util/List;

    .line 447
    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_f

    .line 457
    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Lb5/b;

    .line 463
    .line 464
    const-string v3, "Measuring child"

    .line 465
    .line 466
    invoke-static {v3}, Ly4/k;->S(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object v3, v2, Lb5/b;->a:Landroid/view/View;

    .line 470
    .line 471
    iget v4, v2, Lb5/b;->c:I

    .line 472
    .line 473
    invoke-static {v3, p2, v4}, LS3/e;->k(Landroid/view/View;II)V

    .line 474
    .line 475
    .line 476
    iget-object v2, v2, Lb5/b;->a:Landroid/view/View;

    .line 477
    .line 478
    invoke-static {v2}, La5/a;->d(Landroid/view/View;)I

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    add-int/2addr v0, v2

    .line 483
    goto :goto_b

    .line 484
    :cond_f
    const-string p2, "Measured dims"

    .line 485
    .line 486
    int-to-float v1, v0

    .line 487
    invoke-static {p2, v5, v1}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 491
    .line 492
    .line 493
    return-void
.end method
