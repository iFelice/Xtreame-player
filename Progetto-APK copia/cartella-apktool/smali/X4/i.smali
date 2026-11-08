.class public LX4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:J

.field public final K:Landroid/view/View;

.field public final L:Lm2/e;

.field public M:I

.field public N:F

.field public O:F

.field public P:Z

.field public Q:I

.field public final R:Ljava/lang/Object;

.field public S:Landroid/view/VelocityTracker;

.field public T:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lm2/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, LX4/i;->M:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, LX4/i;->G:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-int/lit8 v1, v1, 0x10

    .line 26
    .line 27
    iput v1, p0, LX4/i;->H:I

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, LX4/i;->I:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/high16 v1, 0x10e0000

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-long v0, v0

    .line 50
    iput-wide v0, p0, LX4/i;->J:J

    .line 51
    .line 52
    iput-object p1, p0, LX4/i;->K:Landroid/view/View;

    .line 53
    .line 54
    iput-object p2, p0, LX4/i;->L:Lm2/e;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(FFLl/d;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, LX4/i;->b()F

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    sub-float v3, p1, v2

    .line 6
    .line 7
    iget-object p1, p0, LX4/i;->K:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    sub-float v5, p2, v4

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [F

    .line 17
    .line 18
    fill-array-data p1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-wide v0, p0, LX4/i;->J:J

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    new-instance p2, LX4/g;

    .line 31
    .line 32
    move-object v0, p2

    .line 33
    move-object v1, p0

    .line 34
    invoke-direct/range {v0 .. v5}, LX4/g;-><init>(LX4/i;FFFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    .line 39
    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b()F
    .locals 1

    .line 1
    iget-object v0, p0, LX4/i;->K:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, LX4/i;->K:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget p1, p0, LX4/i;->T:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5
    .line 6
    .line 7
    iget p1, p0, LX4/i;->M:I

    .line 8
    .line 9
    iget-object v1, p0, LX4/i;->K:Landroid/view/View;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ge p1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, LX4/i;->M:I

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p1, :cond_15

    .line 26
    .line 27
    const/high16 v4, 0x3f800000    # 1.0f

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eq p1, v6, :cond_7

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    if-eq p1, v2, :cond_3

    .line 35
    .line 36
    if-eq p1, v7, :cond_1

    .line 37
    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v0, v4, v5}, LX4/i;->a(FFLl/d;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 52
    .line 53
    .line 54
    iput-object v5, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    iput v0, p0, LX4/i;->T:F

    .line 57
    .line 58
    iput v0, p0, LX4/i;->N:F

    .line 59
    .line 60
    iput v0, p0, LX4/i;->O:F

    .line 61
    .line 62
    iput-boolean v3, p0, LX4/i;->P:Z

    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_3
    iget-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto/16 :goto_9

    .line 71
    .line 72
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget v2, p0, LX4/i;->N:F

    .line 80
    .line 81
    sub-float/2addr p1, v2

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget v5, p0, LX4/i;->O:F

    .line 87
    .line 88
    sub-float/2addr v2, v5

    .line 89
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget v8, p0, LX4/i;->G:I

    .line 94
    .line 95
    int-to-float v9, v8

    .line 96
    const/high16 v10, 0x40000000    # 2.0f

    .line 97
    .line 98
    cmpl-float v5, v5, v9

    .line 99
    .line 100
    if-lez v5, :cond_6

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    div-float/2addr v5, v10

    .line 111
    cmpg-float v2, v2, v5

    .line 112
    .line 113
    if-gez v2, :cond_6

    .line 114
    .line 115
    iput-boolean v6, p0, LX4/i;->P:Z

    .line 116
    .line 117
    cmpl-float v2, p1, v0

    .line 118
    .line 119
    if-lez v2, :cond_5

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    neg-int v8, v8

    .line 123
    :goto_0
    iput v8, p0, LX4/i;->Q:I

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v2, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    shl-int/lit8 p2, p2, 0x8

    .line 141
    .line 142
    or-int/2addr p2, v7

    .line 143
    invoke-virtual {v2, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-boolean p2, p0, LX4/i;->P:Z

    .line 153
    .line 154
    if-eqz p2, :cond_14

    .line 155
    .line 156
    iput p1, p0, LX4/i;->T:F

    .line 157
    .line 158
    iget p2, p0, LX4/i;->Q:I

    .line 159
    .line 160
    int-to-float p2, p2

    .line 161
    sub-float p2, p1, p2

    .line 162
    .line 163
    invoke-virtual {p0, p2}, LX4/i;->c(F)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    mul-float p1, p1, v10

    .line 171
    .line 172
    iget p2, p0, LX4/i;->M:I

    .line 173
    .line 174
    int-to-float p2, p2

    .line 175
    div-float/2addr p1, p2

    .line 176
    sub-float p1, v4, p1

    .line 177
    .line 178
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object p2, p0, LX4/i;->K:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 189
    .line 190
    .line 191
    return v6

    .line 192
    :cond_7
    iget-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 193
    .line 194
    if-nez p1, :cond_8

    .line 195
    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget v1, p0, LX4/i;->N:F

    .line 203
    .line 204
    sub-float/2addr p1, v1

    .line 205
    iget-object v1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 206
    .line 207
    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 208
    .line 209
    .line 210
    iget-object p2, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 211
    .line 212
    const/16 v1, 0x3e8

    .line 213
    .line 214
    invoke-virtual {p2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    iget-object v7, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 228
    .line 229
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    iget v9, p0, LX4/i;->M:I

    .line 242
    .line 243
    div-int/2addr v9, v2

    .line 244
    int-to-float v2, v9

    .line 245
    cmpl-float v2, v8, v2

    .line 246
    .line 247
    if-lez v2, :cond_a

    .line 248
    .line 249
    iget-boolean v2, p0, LX4/i;->P:Z

    .line 250
    .line 251
    if-eqz v2, :cond_a

    .line 252
    .line 253
    cmpl-float p1, p1, v0

    .line 254
    .line 255
    if-lez p1, :cond_9

    .line 256
    .line 257
    const/4 p1, 0x1

    .line 258
    goto :goto_5

    .line 259
    :cond_9
    const/4 p1, 0x0

    .line 260
    goto :goto_5

    .line 261
    :cond_a
    iget v2, p0, LX4/i;->H:I

    .line 262
    .line 263
    int-to-float v2, v2

    .line 264
    cmpg-float v2, v2, v1

    .line 265
    .line 266
    if-gtz v2, :cond_f

    .line 267
    .line 268
    iget v2, p0, LX4/i;->I:I

    .line 269
    .line 270
    int-to-float v2, v2

    .line 271
    cmpg-float v2, v1, v2

    .line 272
    .line 273
    if-gtz v2, :cond_f

    .line 274
    .line 275
    cmpg-float v1, v7, v1

    .line 276
    .line 277
    if-gez v1, :cond_f

    .line 278
    .line 279
    if-gez v1, :cond_f

    .line 280
    .line 281
    iget-boolean v1, p0, LX4/i;->P:Z

    .line 282
    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    cmpg-float p2, p2, v0

    .line 286
    .line 287
    if-gez p2, :cond_b

    .line 288
    .line 289
    const/4 p2, 0x1

    .line 290
    goto :goto_1

    .line 291
    :cond_b
    const/4 p2, 0x0

    .line 292
    :goto_1
    cmpg-float p1, p1, v0

    .line 293
    .line 294
    if-gez p1, :cond_c

    .line 295
    .line 296
    const/4 p1, 0x1

    .line 297
    goto :goto_2

    .line 298
    :cond_c
    const/4 p1, 0x0

    .line 299
    :goto_2
    if-ne p2, p1, :cond_d

    .line 300
    .line 301
    const/4 p1, 0x1

    .line 302
    goto :goto_3

    .line 303
    :cond_d
    const/4 p1, 0x0

    .line 304
    :goto_3
    iget-object p2, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 305
    .line 306
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    cmpl-float p2, p2, v0

    .line 311
    .line 312
    if-lez p2, :cond_e

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_e
    const/4 v6, 0x0

    .line 316
    :goto_4
    move v11, v6

    .line 317
    move v6, p1

    .line 318
    move p1, v11

    .line 319
    goto :goto_5

    .line 320
    :cond_f
    const/4 p1, 0x0

    .line 321
    const/4 v6, 0x0

    .line 322
    :goto_5
    if-eqz v6, :cond_11

    .line 323
    .line 324
    if-eqz p1, :cond_10

    .line 325
    .line 326
    iget p1, p0, LX4/i;->M:I

    .line 327
    .line 328
    :goto_6
    int-to-float p1, p1

    .line 329
    goto :goto_7

    .line 330
    :cond_10
    iget p1, p0, LX4/i;->M:I

    .line 331
    .line 332
    neg-int p1, p1

    .line 333
    goto :goto_6

    .line 334
    :goto_7
    new-instance p2, Ll/d;

    .line 335
    .line 336
    const/4 v1, 0x7

    .line 337
    invoke-direct {p2, p0, v1}, Ll/d;-><init>(Ljava/lang/Object;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, p1, v0, p2}, LX4/i;->a(FFLl/d;)V

    .line 341
    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_11
    iget-boolean p1, p0, LX4/i;->P:Z

    .line 345
    .line 346
    if-eqz p1, :cond_12

    .line 347
    .line 348
    invoke-virtual {p0, v0, v4, v5}, LX4/i;->a(FFLl/d;)V

    .line 349
    .line 350
    .line 351
    :cond_12
    :goto_8
    iget-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 352
    .line 353
    if-eqz p1, :cond_13

    .line 354
    .line 355
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 356
    .line 357
    .line 358
    :cond_13
    iput-object v5, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 359
    .line 360
    iput v0, p0, LX4/i;->T:F

    .line 361
    .line 362
    iput v0, p0, LX4/i;->N:F

    .line 363
    .line 364
    iput v0, p0, LX4/i;->O:F

    .line 365
    .line 366
    iput-boolean v3, p0, LX4/i;->P:Z

    .line 367
    .line 368
    :cond_14
    :goto_9
    return v3

    .line 369
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    iput p1, p0, LX4/i;->N:F

    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iput p1, p0, LX4/i;->O:F

    .line 380
    .line 381
    iget-object p1, p0, LX4/i;->L:Lm2/e;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    iput-object p1, p0, LX4/i;->S:Landroid/view/VelocityTracker;

    .line 391
    .line 392
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 393
    .line 394
    .line 395
    return v3
.end method
