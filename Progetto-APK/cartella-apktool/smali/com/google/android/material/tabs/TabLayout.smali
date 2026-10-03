.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime La2/b;
.end annotation


# static fields
.field public static final x0:LM/d;


# instance fields
.field public final G:Ljava/util/ArrayList;

.field public H:Ls4/f;

.field public final I:Landroid/graphics/RectF;

.field public final J:Ls4/e;

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public P:Landroid/content/res/ColorStateList;

.field public Q:Landroid/content/res/ColorStateList;

.field public R:Landroid/content/res/ColorStateList;

.field public S:Landroid/graphics/drawable/Drawable;

.field public final T:Landroid/graphics/PorterDuff$Mode;

.field public final U:F

.field public final V:F

.field public final W:I

.field public a0:I

.field public final b0:I

.field public final c0:I

.field public final d0:I

.field public final e0:I

.field public f0:I

.field public final g0:I

.field public h0:I

.field public i0:I

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Ls4/b;

.field public final n0:Ljava/util/ArrayList;

.field public o0:Ls4/i;

.field public p0:Landroid/animation/ValueAnimator;

.field public q0:Landroidx/viewpager/widget/ViewPager;

.field public r0:La2/a;

.field public s0:Ll/J0;

.field public t0:Ls4/g;

.field public u0:Ls4/a;

.field public v0:Z

.field public final w0:Lu/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LM/d;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, LM/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->x0:LM/d;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const v6, 0x7f040401

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v3, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroid/graphics/RectF;

    .line 23
    .line 24
    const v3, 0x7fffffff

    .line 25
    .line 26
    .line 27
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->a0:I

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v3, Lu/e;

    .line 37
    .line 38
    const/16 v9, 0xc

    .line 39
    .line 40
    invoke-direct {v3, v9, v2}, Lu/e;-><init>(II)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->w0:Lu/e;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 46
    .line 47
    .line 48
    new-instance v10, Ls4/e;

    .line 49
    .line 50
    invoke-direct {v10, p0, p1}, Ls4/e;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v10, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 54
    .line 55
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v4, -0x2

    .line 58
    const/4 v11, -0x1

    .line 59
    invoke-direct {v3, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-super {p0, v10, v1, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    sget-object v5, Lh4/a;->g:[I

    .line 66
    .line 67
    const/16 v12, 0x16

    .line 68
    .line 69
    filled-new-array {v12}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    const v7, 0x7f14026a

    .line 74
    .line 75
    .line 76
    move-object v3, p1

    .line 77
    move-object v4, p2

    .line 78
    invoke-static/range {v3 .. v8}, Lp4/b;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const/16 v3, 0xa

    .line 83
    .line 84
    invoke-virtual {p2, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget v4, v10, Ls4/e;->G:I

    .line 89
    .line 90
    if-eq v4, v3, :cond_0

    .line 91
    .line 92
    iput v3, v10, Ls4/e;->G:I

    .line 93
    .line 94
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 95
    .line 96
    invoke-virtual {v10}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 97
    .line 98
    .line 99
    :cond_0
    const/4 v3, 0x7

    .line 100
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget-object v4, v10, Ls4/e;->H:Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eq v5, v3, :cond_1

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 116
    .line 117
    invoke-virtual {v10}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 118
    .line 119
    .line 120
    :cond_1
    const/4 v3, 0x5

    .line 121
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    invoke-static {p1, v4}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v4, :cond_2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    const/16 v3, 0x9

    .line 148
    .line 149
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 154
    .line 155
    .line 156
    const/16 v3, 0x8

    .line 157
    .line 158
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 163
    .line 164
    .line 165
    const/16 v3, 0xf

    .line 166
    .line 167
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->N:I

    .line 172
    .line 173
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->M:I

    .line 174
    .line 175
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->L:I

    .line 176
    .line 177
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->K:I

    .line 178
    .line 179
    const/16 v4, 0x12

    .line 180
    .line 181
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->K:I

    .line 186
    .line 187
    const/16 v4, 0x13

    .line 188
    .line 189
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->L:I

    .line 194
    .line 195
    const/16 v4, 0x11

    .line 196
    .line 197
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->M:I

    .line 202
    .line 203
    const/16 v4, 0x10

    .line 204
    .line 205
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->N:I

    .line 210
    .line 211
    const v3, 0x7f140188

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iput v3, p0, Lcom/google/android/material/tabs/TabLayout;->O:I

    .line 219
    .line 220
    sget-object v4, Le/a;->w:[I

    .line 221
    .line 222
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    :try_start_0
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    int-to-float v4, v4

    .line 231
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->U:F

    .line 232
    .line 233
    const/4 v4, 0x3

    .line 234
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->l(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    iput-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .line 240
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    .line 242
    .line 243
    const/16 v3, 0x17

    .line 244
    .line 245
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_3

    .line 250
    .line 251
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/ads/Cw;->l(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 256
    .line 257
    :cond_3
    const/16 v3, 0x15

    .line 258
    .line 259
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_4

    .line 264
    .line 265
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 270
    .line 271
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    new-array v6, v0, [[I

    .line 276
    .line 277
    sget-object v7, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    .line 278
    .line 279
    aput-object v7, v6, v1

    .line 280
    .line 281
    sget-object v7, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    .line 282
    .line 283
    aput-object v7, v6, v2

    .line 284
    .line 285
    filled-new-array {v3, v5}, [I

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 290
    .line 291
    invoke-direct {v5, v6, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 292
    .line 293
    .line 294
    iput-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 295
    .line 296
    :cond_4
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/Cw;->l(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Landroid/content/res/ColorStateList;

    .line 301
    .line 302
    const/4 v3, 0x4

    .line 303
    invoke-virtual {p2, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    const/4 v4, 0x0

    .line 308
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->m(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->T:Landroid/graphics/PorterDuff$Mode;

    .line 313
    .line 314
    const/16 v3, 0x14

    .line 315
    .line 316
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/ads/Cw;->l(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 321
    .line 322
    const/4 p1, 0x6

    .line 323
    const/16 v3, 0x12c

    .line 324
    .line 325
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->g0:I

    .line 330
    .line 331
    const/16 p1, 0xd

    .line 332
    .line 333
    invoke-virtual {p2, p1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->b0:I

    .line 338
    .line 339
    invoke-virtual {p2, v9, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->c0:I

    .line 344
    .line 345
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->W:I

    .line 350
    .line 351
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->e0:I

    .line 356
    .line 357
    const/16 p1, 0xe

    .line 358
    .line 359
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 364
    .line 365
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 370
    .line 371
    const/16 p1, 0xb

    .line 372
    .line 373
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 378
    .line 379
    const/16 p1, 0x18

    .line 380
    .line 381
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->l0:Z

    .line 386
    .line 387
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    const p2, 0x7f0700ad

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    int-to-float p2, p2

    .line 402
    iput p2, p0, Lcom/google/android/material/tabs/TabLayout;->V:F

    .line 403
    .line 404
    const p2, 0x7f0700ab

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->d0:I

    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :catchall_0
    move-exception p1

    .line 418
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 419
    .line 420
    .line 421
    throw p1
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ls4/f;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v4, v3, Ls4/f;->a:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    iget-object v3, v3, Ls4/f;->b:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x48

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v0, 0x30

    .line 41
    .line 42
    :goto_1
    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->b0:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->d0:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method private setSelectedTabView(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v6, 0x0

    .line 23
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 24
    .line 25
    .line 26
    if-ne v3, p1, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/4 v5, 0x0

    .line 30
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-gtz v4, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->c(IF)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eq v2, v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->e()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    filled-new-array {v2, v1}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->g0:I

    .line 71
    .line 72
    invoke-virtual {v0, p1, v1}, Ls4/e;->a(II)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/google/android/material/tabs/TabLayout;->i(IFZZ)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->e0:I

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/material/tabs/TabLayout;->K:I

    .line 9
    .line 10
    sub-int/2addr v0, v2

    .line 11
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sget-object v2, LN/N;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const v0, 0x800003

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->k(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c(IF)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge p1, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    div-int/lit8 v2, v0, 0x2

    .line 45
    .line 46
    add-int/2addr v2, p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    div-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    sub-int/2addr v2, p1

    .line 54
    add-int/2addr v0, v1

    .line 55
    int-to-float p1, v0

    .line 56
    const/high16 v0, 0x3f000000    # 0.5f

    .line 57
    .line 58
    mul-float p1, p1, v0

    .line 59
    .line 60
    mul-float p1, p1, p2

    .line 61
    .line 62
    float-to-int p1, p1

    .line 63
    sget-object p2, LN/N;->a:Ljava/util/WeakHashMap;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_3

    .line 70
    .line 71
    add-int/2addr v2, p1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    sub-int/2addr v2, p1

    .line 74
    :goto_2
    return v2

    .line 75
    :cond_4
    return v1
.end method

.method public final d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    mul-float v0, v0, p1

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    sget-object v1, Li4/a;->a:La0/b;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->g0:I

    .line 20
    .line 21
    int-to-long v1, v1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    new-instance v1, Landroidx/leanback/widget/M;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/M;-><init>(Landroid/widget/FrameLayout;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->w0:Lu/e;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-ltz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    check-cast v6, Ls4/h;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 22
    .line 23
    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    iget-object v7, v6, Ls4/h;->G:Ls4/f;

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    iput-object v5, v6, Ls4/h;->G:Ls4/f;

    .line 31
    .line 32
    invoke-virtual {v6}, Ls4/h;->a()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v6, v4}, Ls4/h;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v6}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    sget-object v8, Lcom/google/android/material/tabs/TabLayout;->x0:LM/d;

    .line 58
    .line 59
    const/4 v9, -0x1

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ls4/f;

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 69
    .line 70
    .line 71
    iput-object v5, v7, Ls4/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 72
    .line 73
    iput-object v5, v7, Ls4/f;->g:Ls4/h;

    .line 74
    .line 75
    iput-object v5, v7, Ls4/f;->a:Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    iput-object v5, v7, Ls4/f;->b:Ljava/lang/CharSequence;

    .line 78
    .line 79
    iput-object v5, v7, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 80
    .line 81
    iput v9, v7, Ls4/f;->d:I

    .line 82
    .line 83
    iput-object v5, v7, Ls4/f;->e:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v8, v7}, LM/d;->a(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iput-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ls4/f;

    .line 90
    .line 91
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->r0:La2/a;

    .line 92
    .line 93
    if-eqz v6, :cond_15

    .line 94
    .line 95
    invoke-virtual {v6}, La2/a;->c()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x0

    .line 100
    :goto_2
    if-ge v7, v6, :cond_12

    .line 101
    .line 102
    invoke-virtual {v8}, LM/d;->h()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ls4/f;

    .line 107
    .line 108
    if-nez v10, :cond_4

    .line 109
    .line 110
    new-instance v10, Ls4/f;

    .line 111
    .line 112
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    iput v9, v10, Ls4/f;->d:I

    .line 116
    .line 117
    :cond_4
    iput-object p0, v10, Ls4/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    invoke-virtual {v3}, Lu/e;->h()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, Ls4/h;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move-object v11, v5

    .line 129
    :goto_3
    if-nez v11, :cond_6

    .line 130
    .line 131
    new-instance v11, Ls4/h;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-direct {v11, p0, v12}, Ls4/h;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v12, v11, Ls4/h;->G:Ls4/f;

    .line 141
    .line 142
    if-eq v10, v12, :cond_7

    .line 143
    .line 144
    iput-object v10, v11, Ls4/h;->G:Ls4/f;

    .line 145
    .line 146
    invoke-virtual {v11}, Ls4/h;->a()V

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-virtual {v11, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-virtual {v11, v12}, Landroid/view/View;->setMinimumWidth(I)V

    .line 157
    .line 158
    .line 159
    iget-object v12, v10, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_8

    .line 166
    .line 167
    iget-object v12, v10, Ls4/f;->b:Ljava/lang/CharSequence;

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    iget-object v12, v10, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 174
    .line 175
    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    iput-object v11, v10, Ls4/f;->g:Ls4/h;

    .line 179
    .line 180
    iget-object v11, p0, Lcom/google/android/material/tabs/TabLayout;->r0:La2/a;

    .line 181
    .line 182
    check-cast v11, Le7/c;

    .line 183
    .line 184
    iget-object v11, v11, Le7/c;->g:Le7/d;

    .line 185
    .line 186
    invoke-virtual {v11}, LY/s;->o()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    iget-object v11, v11, Le7/d;->T0:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    check-cast v11, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-eq v11, v2, :cond_c

    .line 203
    .line 204
    const/4 v13, 0x2

    .line 205
    if-eq v11, v13, :cond_b

    .line 206
    .line 207
    const/4 v13, 0x3

    .line 208
    if-eq v11, v13, :cond_a

    .line 209
    .line 210
    const/4 v13, 0x4

    .line 211
    if-ne v11, v13, :cond_9

    .line 212
    .line 213
    const v11, 0x7f130196

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    goto :goto_5

    .line 221
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_a
    const v11, 0x7f130197

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    goto :goto_5

    .line 235
    :cond_b
    const v11, 0x7f130198

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    goto :goto_5

    .line 243
    :cond_c
    const v11, 0x7f130195

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    :goto_5
    iget-object v12, v10, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 251
    .line 252
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    if-eqz v12, :cond_d

    .line 257
    .line 258
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_d

    .line 263
    .line 264
    iget-object v12, v10, Ls4/f;->g:Ls4/h;

    .line 265
    .line 266
    invoke-virtual {v12, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    :cond_d
    iput-object v11, v10, Ls4/f;->b:Ljava/lang/CharSequence;

    .line 270
    .line 271
    iget-object v11, v10, Ls4/f;->g:Ls4/h;

    .line 272
    .line 273
    if-eqz v11, :cond_e

    .line 274
    .line 275
    invoke-virtual {v11}, Ls4/h;->a()V

    .line 276
    .line 277
    .line 278
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    iget-object v12, v10, Ls4/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 283
    .line 284
    if-ne v12, p0, :cond_11

    .line 285
    .line 286
    iput v11, v10, Ls4/f;->d:I

    .line 287
    .line 288
    invoke-virtual {v1, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 296
    .line 297
    if-ge v11, v12, :cond_f

    .line 298
    .line 299
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    check-cast v13, Ls4/f;

    .line 304
    .line 305
    iput v11, v13, Ls4/f;->d:I

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_f
    iget-object v11, v10, Ls4/f;->g:Ls4/h;

    .line 309
    .line 310
    iget v10, v10, Ls4/f;->d:I

    .line 311
    .line 312
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .line 314
    const/4 v13, -0x2

    .line 315
    invoke-direct {v12, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    iget v14, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 319
    .line 320
    if-ne v14, v2, :cond_10

    .line 321
    .line 322
    iget v14, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 323
    .line 324
    if-nez v14, :cond_10

    .line 325
    .line 326
    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 327
    .line 328
    const/high16 v13, 0x3f800000    # 1.0f

    .line 329
    .line 330
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_10
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 334
    .line 335
    const/4 v13, 0x0

    .line 336
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 337
    .line 338
    :goto_7
    invoke-virtual {v0, v11, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .line 340
    .line 341
    add-int/lit8 v7, v7, 0x1

    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    const-string v1, "Tab belongs to a different TabLayout."

    .line 348
    .line 349
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 354
    .line 355
    if-eqz v0, :cond_15

    .line 356
    .line 357
    if-lez v6, :cond_15

    .line 358
    .line 359
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eq v0, v3, :cond_15

    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-ge v0, v3, :cond_15

    .line 374
    .line 375
    if-ltz v0, :cond_14

    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-lt v0, v3, :cond_13

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    move-object v5, v0

    .line 389
    check-cast v5, Ls4/f;

    .line 390
    .line 391
    :cond_14
    :goto_8
    invoke-virtual {p0, v5, v2}, Lcom/google/android/material/tabs/TabLayout;->g(Ls4/f;Z)V

    .line 392
    .line 393
    .line 394
    :cond_15
    return-void
.end method

.method public final g(Ls4/f;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ls4/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, p1, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    sub-int/2addr p2, v2

    .line 15
    :goto_0
    if-ltz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ls4/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p1, p1, Ls4/f;->d:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->a(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_5

    .line 35
    :cond_1
    const/4 v3, -0x1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget v4, p1, Ls4/f;->d:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v4, -0x1

    .line 42
    :goto_1
    if-eqz p2, :cond_5

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget p2, v0, Ls4/f;->d:I

    .line 47
    .line 48
    if-ne p2, v3, :cond_4

    .line 49
    .line 50
    :cond_3
    if-eq v4, v3, :cond_4

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, v4, p2, v2, v2}, Lcom/google/android/material/tabs/TabLayout;->i(IFZZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->a(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    if-eq v4, v3, :cond_5

    .line 61
    .line 62
    invoke-direct {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ls4/f;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    sub-int/2addr p2, v2

    .line 74
    :goto_3
    if-ltz p2, :cond_6

    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ls4/b;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    add-int/lit8 p2, p2, -0x1

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    sub-int/2addr p2, v2

    .line 95
    :goto_4
    if-ltz p2, :cond_7

    .line 96
    .line 97
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ls4/b;

    .line 102
    .line 103
    check-cast v0, Ls4/i;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget v2, p1, Ls4/f;->d:I

    .line 109
    .line 110
    iget-object v0, v0, Ls4/i;->a:Landroidx/viewpager/widget/ViewPager;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, -0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    :goto_5
    return-void
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ls4/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Ls4/f;->d:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->h0:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->a0:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 2
    .line 3
    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->S:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(La2/a;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->r0:La2/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Ll/J0;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, La2/a;->a:Landroid/database/DataSetObservable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->r0:La2/a;

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Ll/J0;

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    new-instance p2, Ll/J0;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-direct {p2, p0, v0}, Ll/J0;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Ll/J0;

    .line 31
    .line 32
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Ll/J0;

    .line 33
    .line 34
    iget-object p1, p1, La2/a;->a:Landroid/database/DataSetObservable;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->f()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final i(IFZZ)V
    .locals 3

    .line 1
    int-to-float v0, p1

    .line 2
    add-float/2addr v0, p2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz p4, :cond_2

    .line 19
    .line 20
    iget-object p4, v1, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    iget-object p4, v1, Ls4/e;->O:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iput p1, v1, Ls4/e;->J:I

    .line 36
    .line 37
    iput p2, v1, Ls4/e;->K:F

    .line 38
    .line 39
    invoke-virtual {v1}, Ls4/e;->c()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    if-eqz p4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    if-eqz p4, :cond_3

    .line 51
    .line 52
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->c(IF)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 63
    .line 64
    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return-void
.end method

.method public final j(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->t0:Ls4/g;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->z0:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->u0:Ls4/a;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->B0:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Ls4/i;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Ls4/i;

    .line 40
    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_9

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->t0:Ls4/g;

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Ls4/g;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Ls4/g;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->t0:Ls4/g;

    .line 56
    .line 57
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->t0:Ls4/g;

    .line 58
    .line 59
    iput v0, v2, Ls4/g;->c:I

    .line 60
    .line 61
    iput v0, v2, Ls4/g;->b:I

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->z0:Ljava/util/ArrayList;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p1, Landroidx/viewpager/widget/ViewPager;->z0:Ljava/util/ArrayList;

    .line 73
    .line 74
    :cond_4
    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->z0:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v0, Ls4/i;

    .line 80
    .line 81
    invoke-direct {v0, p1}, Ls4/i;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Ls4/i;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()La2/a;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, 0x1

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(La2/a;Z)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->u0:Ls4/a;

    .line 106
    .line 107
    if-nez v0, :cond_7

    .line 108
    .line 109
    new-instance v0, Ls4/a;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Ls4/a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->u0:Ls4/a;

    .line 115
    .line 116
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->u0:Ls4/a;

    .line 117
    .line 118
    iput-boolean v1, v0, Ls4/a;->a:Z

    .line 119
    .line 120
    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager;->B0:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-nez v2, :cond_8

    .line 123
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v2, p1, Landroidx/viewpager/widget/ViewPager;->B0:Ljava/util/ArrayList;

    .line 130
    .line 131
    :cond_8
    iget-object v2, p1, Landroidx/viewpager/widget/ViewPager;->B0:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->i(IFZZ)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 146
    .line 147
    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->h(La2/a;Z)V

    .line 148
    .line 149
    .line 150
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/material/tabs/TabLayout;->v0:Z

    .line 151
    .line 152
    return-void
.end method

.method public final k(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    .line 28
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 38
    .line 39
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v4, -0x2

    .line 45
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49
    .line 50
    :goto_1
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->j(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->v0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->v0:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Ls4/h;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Ls4/h;

    .line 19
    .line 20
    iget-object v2, v1, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, v1

    .line 19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/high16 v2, -0x80000000

    .line 24
    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->c0:I

    .line 60
    .line 61
    if-lez v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/16 v1, 0x38

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int v1, v0, v1

    .line 71
    .line 72
    :goto_1
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->a0:I

    .line 73
    .line 74
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v0, 0x1

    .line 82
    if-ne p1, v0, :cond_6

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    if-eq v1, v0, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eq v0, v1, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ge v0, v1, :cond_6

    .line 116
    .line 117
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v1, v0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    .line 132
    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_3
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p1, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Ls4/h;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast v0, Ls4/h;

    .line 25
    .line 26
    iget-object v1, v0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 27
    .line 28
    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 29
    .line 30
    xor-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Ls4/h;->K:Landroid/widget/TextView;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v2, v0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v1, v0, Ls4/h;->H:Landroid/widget/TextView;

    .line 45
    .line 46
    iget-object v2, v0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ls4/h;->c(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :goto_1
    iget-object v2, v0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Ls4/h;->c(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()V

    .line 61
    .line 62
    .line 63
    :cond_4
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setOnTabSelectedListener(Ls4/b;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->m0:Ls4/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->m0:Ls4/b;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->S:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->S:Landroid/graphics/drawable/Drawable;

    .line 3
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 2
    .line 3
    iget-object v1, v0, Ls4/e;->H:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eq v2, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->h0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->h0:I

    .line 6
    .line 7
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 2
    .line 3
    iget v1, v0, Ls4/e;->G:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Ls4/e;->G:I

    .line 8
    .line 9
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->f0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->Q:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ls4/f;

    .line 21
    .line 22
    iget-object v2, v2, Ls4/f;->g:Ls4/h;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ls4/h;->a()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->k0:Z

    .line 2
    .line 3
    sget-object p1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Ls4/h;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Ls4/h;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget v2, Ls4/h;->P:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ls4/h;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, LJ6/r;->g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->G:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ls4/f;

    .line 21
    .line 22
    iget-object v2, v2, Ls4/f;->g:Ls4/h;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ls4/h;->a()V

    .line 27
    .line 28
    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public setTabsFromPagerAdapter(La2/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->h(La2/a;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->l0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->l0:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Ls4/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p1, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Ls4/h;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Ls4/h;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget v2, Ls4/h;->P:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ls4/h;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->j(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
