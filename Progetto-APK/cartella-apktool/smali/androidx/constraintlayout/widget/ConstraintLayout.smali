.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static V:Lz/s;


# instance fields
.field public final G:Landroid/util/SparseArray;

.field public final H:Ljava/util/ArrayList;

.field public final I:Lw/e;

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Z

.field public O:I

.field public P:Lz/o;

.field public final Q:Lz/h;

.field public final R:I

.field public S:Ljava/util/HashMap;

.field public final T:Landroid/util/SparseArray;

.field public final U:Lz/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lw/e;

    .line 20
    .line 21
    invoke-direct {v0}, Lw/d;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, v0, Lw/j;->p0:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v2, Lm2/u;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lm2/u;-><init>(Lw/e;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Lw/e;->q0:Lm2/u;

    .line 37
    .line 38
    new-instance v2, Lx/e;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    iput-boolean v3, v2, Lx/e;->a:Z

    .line 45
    .line 46
    iput-boolean v3, v2, Lx/e;->b:Z

    .line 47
    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v4, v2, Lx/e;->e:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v4, v2, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    iput-object v4, v2, Lx/e;->h:Ljava/lang/Object;

    .line 64
    .line 65
    new-instance v5, Lx/b;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v5, v2, Lx/e;->i:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v5, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v5, v2, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 78
    .line 79
    iput-object v0, v2, Lx/e;->c:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v0, v2, Lx/e;->d:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v2, v0, Lw/e;->r0:Lx/e;

    .line 84
    .line 85
    iput-object v4, v0, Lw/e;->t0:Lz/f;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    iput-boolean v5, v0, Lw/e;->u0:Z

    .line 89
    .line 90
    new-instance v6, Lu/d;

    .line 91
    .line 92
    invoke-direct {v6}, Lu/d;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v6, v0, Lw/e;->v0:Lu/d;

    .line 96
    .line 97
    iput v5, v0, Lw/e;->y0:I

    .line 98
    .line 99
    iput v5, v0, Lw/e;->z0:I

    .line 100
    .line 101
    new-array v6, v1, [Lw/b;

    .line 102
    .line 103
    iput-object v6, v0, Lw/e;->A0:[Lw/b;

    .line 104
    .line 105
    new-array v1, v1, [Lw/b;

    .line 106
    .line 107
    iput-object v1, v0, Lw/e;->B0:[Lw/b;

    .line 108
    .line 109
    const/16 v1, 0x101

    .line 110
    .line 111
    iput v1, v0, Lw/e;->C0:I

    .line 112
    .line 113
    iput-boolean v5, v0, Lw/e;->D0:Z

    .line 114
    .line 115
    iput-boolean v5, v0, Lw/e;->E0:Z

    .line 116
    .line 117
    iput-object v4, v0, Lw/e;->F0:Ljava/lang/ref/WeakReference;

    .line 118
    .line 119
    iput-object v4, v0, Lw/e;->G0:Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    iput-object v4, v0, Lw/e;->H0:Ljava/lang/ref/WeakReference;

    .line 122
    .line 123
    iput-object v4, v0, Lw/e;->I0:Ljava/lang/ref/WeakReference;

    .line 124
    .line 125
    new-instance v6, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v6, v0, Lw/e;->J0:Ljava/util/HashSet;

    .line 131
    .line 132
    new-instance v6, Lx/b;

    .line 133
    .line 134
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v6, v0, Lw/e;->K0:Lx/b;

    .line 138
    .line 139
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 140
    .line 141
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 142
    .line 143
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 144
    .line 145
    const v6, 0x7fffffff

    .line 146
    .line 147
    .line 148
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 149
    .line 150
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 151
    .line 152
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 153
    .line 154
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 155
    .line 156
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 157
    .line 158
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Lz/h;

    .line 159
    .line 160
    const/4 v1, -0x1

    .line 161
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:I

    .line 162
    .line 163
    new-instance v1, Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->S:Ljava/util/HashMap;

    .line 169
    .line 170
    new-instance v1, Landroid/util/SparseArray;

    .line 171
    .line 172
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->T:Landroid/util/SparseArray;

    .line 176
    .line 177
    new-instance v1, Lz/f;

    .line 178
    .line 179
    invoke-direct {v1, p0, p0}, Lz/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:Lz/f;

    .line 183
    .line 184
    iput-object p0, v0, Lw/d;->e0:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v1, v0, Lw/e;->t0:Lz/f;

    .line 187
    .line 188
    iput-object v1, v2, Lx/e;->h:Ljava/lang/Object;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 198
    .line 199
    if-eqz p2, :cond_8

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object v1, Lz/r;->b:[I

    .line 206
    .line 207
    invoke-virtual {p1, p2, v1, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    const/4 v1, 0x0

    .line 216
    :goto_0
    if-ge v1, p2, :cond_7

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const/16 v3, 0x10

    .line 223
    .line 224
    if-ne v2, v3, :cond_0

    .line 225
    .line 226
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 227
    .line 228
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :cond_0
    const/16 v3, 0x11

    .line 237
    .line 238
    if-ne v2, v3, :cond_1

    .line 239
    .line 240
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 241
    .line 242
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_1
    const/16 v3, 0xe

    .line 250
    .line 251
    if-ne v2, v3, :cond_2

    .line 252
    .line 253
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 254
    .line 255
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_2
    const/16 v3, 0xf

    .line 263
    .line 264
    if-ne v2, v3, :cond_3

    .line 265
    .line 266
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 267
    .line 268
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_3
    const/16 v3, 0x71

    .line 276
    .line 277
    if-ne v2, v3, :cond_4

    .line 278
    .line 279
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 280
    .line 281
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 286
    .line 287
    goto :goto_2

    .line 288
    :cond_4
    const/16 v3, 0x38

    .line 289
    .line 290
    if-ne v2, v3, :cond_5

    .line 291
    .line 292
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_6

    .line 297
    .line 298
    :try_start_0
    new-instance v3, Lz/h;

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-direct {v3, v6, p0, v2}, Lz/h;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 305
    .line 306
    .line 307
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Lz/h;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :catch_0
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Lz/h;

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_5
    const/16 v3, 0x22

    .line 314
    .line 315
    if-ne v2, v3, :cond_6

    .line 316
    .line 317
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    :try_start_1
    new-instance v3, Lz/o;

    .line 322
    .line 323
    invoke-direct {v3}, Lz/o;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v3, v6, v2}, Lz/o;->d(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .line 334
    .line 335
    goto :goto_1

    .line 336
    :catch_1
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 337
    .line 338
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->R:I

    .line 339
    .line 340
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    .line 345
    .line 346
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 347
    .line 348
    iput p1, v0, Lw/e;->C0:I

    .line 349
    .line 350
    const/16 p1, 0x200

    .line 351
    .line 352
    invoke-virtual {v0, p1}, Lw/e;->S(I)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    sput-boolean p1, Lu/d;->q:Z

    .line 357
    .line 358
    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    move v2, v1

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Lz/s;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:Lz/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lz/s;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:Lz/s;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->V:Lz/s;

    .line 23
    .line 24
    return-object v0
.end method

.method public static h()Lz/e;
    .locals 8

    .line 1
    new-instance v0, Lz/e;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lz/e;->a:I

    .line 9
    .line 10
    iput v1, v0, Lz/e;->b:I

    .line 11
    .line 12
    const/high16 v2, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v2, v0, Lz/e;->c:F

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Lz/e;->d:Z

    .line 18
    .line 19
    iput v1, v0, Lz/e;->e:I

    .line 20
    .line 21
    iput v1, v0, Lz/e;->f:I

    .line 22
    .line 23
    iput v1, v0, Lz/e;->g:I

    .line 24
    .line 25
    iput v1, v0, Lz/e;->h:I

    .line 26
    .line 27
    iput v1, v0, Lz/e;->i:I

    .line 28
    .line 29
    iput v1, v0, Lz/e;->j:I

    .line 30
    .line 31
    iput v1, v0, Lz/e;->k:I

    .line 32
    .line 33
    iput v1, v0, Lz/e;->l:I

    .line 34
    .line 35
    iput v1, v0, Lz/e;->m:I

    .line 36
    .line 37
    iput v1, v0, Lz/e;->n:I

    .line 38
    .line 39
    iput v1, v0, Lz/e;->o:I

    .line 40
    .line 41
    iput v1, v0, Lz/e;->p:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iput v4, v0, Lz/e;->q:I

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    iput v5, v0, Lz/e;->r:F

    .line 48
    .line 49
    iput v1, v0, Lz/e;->s:I

    .line 50
    .line 51
    iput v1, v0, Lz/e;->t:I

    .line 52
    .line 53
    iput v1, v0, Lz/e;->u:I

    .line 54
    .line 55
    iput v1, v0, Lz/e;->v:I

    .line 56
    .line 57
    const/high16 v5, -0x80000000

    .line 58
    .line 59
    iput v5, v0, Lz/e;->w:I

    .line 60
    .line 61
    iput v5, v0, Lz/e;->x:I

    .line 62
    .line 63
    iput v5, v0, Lz/e;->y:I

    .line 64
    .line 65
    iput v5, v0, Lz/e;->z:I

    .line 66
    .line 67
    iput v5, v0, Lz/e;->A:I

    .line 68
    .line 69
    iput v5, v0, Lz/e;->B:I

    .line 70
    .line 71
    iput v5, v0, Lz/e;->C:I

    .line 72
    .line 73
    iput v4, v0, Lz/e;->D:I

    .line 74
    .line 75
    const/high16 v6, 0x3f000000    # 0.5f

    .line 76
    .line 77
    iput v6, v0, Lz/e;->E:F

    .line 78
    .line 79
    iput v6, v0, Lz/e;->F:F

    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    iput-object v7, v0, Lz/e;->G:Ljava/lang/String;

    .line 83
    .line 84
    iput v2, v0, Lz/e;->H:F

    .line 85
    .line 86
    iput v2, v0, Lz/e;->I:F

    .line 87
    .line 88
    iput v4, v0, Lz/e;->J:I

    .line 89
    .line 90
    iput v4, v0, Lz/e;->K:I

    .line 91
    .line 92
    iput v4, v0, Lz/e;->L:I

    .line 93
    .line 94
    iput v4, v0, Lz/e;->M:I

    .line 95
    .line 96
    iput v4, v0, Lz/e;->N:I

    .line 97
    .line 98
    iput v4, v0, Lz/e;->O:I

    .line 99
    .line 100
    iput v4, v0, Lz/e;->P:I

    .line 101
    .line 102
    iput v4, v0, Lz/e;->Q:I

    .line 103
    .line 104
    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    .line 106
    iput v2, v0, Lz/e;->R:F

    .line 107
    .line 108
    iput v2, v0, Lz/e;->S:F

    .line 109
    .line 110
    iput v1, v0, Lz/e;->T:I

    .line 111
    .line 112
    iput v1, v0, Lz/e;->U:I

    .line 113
    .line 114
    iput v1, v0, Lz/e;->V:I

    .line 115
    .line 116
    iput-boolean v4, v0, Lz/e;->W:Z

    .line 117
    .line 118
    iput-boolean v4, v0, Lz/e;->X:Z

    .line 119
    .line 120
    iput-object v7, v0, Lz/e;->Y:Ljava/lang/String;

    .line 121
    .line 122
    iput v4, v0, Lz/e;->Z:I

    .line 123
    .line 124
    iput-boolean v3, v0, Lz/e;->a0:Z

    .line 125
    .line 126
    iput-boolean v3, v0, Lz/e;->b0:Z

    .line 127
    .line 128
    iput-boolean v4, v0, Lz/e;->c0:Z

    .line 129
    .line 130
    iput-boolean v4, v0, Lz/e;->d0:Z

    .line 131
    .line 132
    iput-boolean v4, v0, Lz/e;->e0:Z

    .line 133
    .line 134
    iput v1, v0, Lz/e;->f0:I

    .line 135
    .line 136
    iput v1, v0, Lz/e;->g0:I

    .line 137
    .line 138
    iput v1, v0, Lz/e;->h0:I

    .line 139
    .line 140
    iput v1, v0, Lz/e;->i0:I

    .line 141
    .line 142
    iput v5, v0, Lz/e;->j0:I

    .line 143
    .line 144
    iput v5, v0, Lz/e;->k0:I

    .line 145
    .line 146
    iput v6, v0, Lz/e;->l0:F

    .line 147
    .line 148
    new-instance v1, Lw/d;

    .line 149
    .line 150
    invoke-direct {v1}, Lw/d;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v1, v0, Lz/e;->p0:Lw/d;

    .line 154
    .line 155
    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lz/e;

    .line 2
    .line 3
    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lz/c;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    if-ge v5, v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v2

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float v7, v7, v1

    .line 123
    .line 124
    float-to-int v7, v7

    .line 125
    int-to-float v8, v8

    .line 126
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 127
    .line 128
    div-float/2addr v8, v11

    .line 129
    mul-float v8, v8, v3

    .line 130
    .line 131
    float-to-int v8, v8

    .line 132
    int-to-float v9, v9

    .line 133
    div-float/2addr v9, v10

    .line 134
    mul-float v9, v9, v1

    .line 135
    .line 136
    float-to-int v9, v9

    .line 137
    int-to-float v6, v6

    .line 138
    div-float/2addr v6, v11

    .line 139
    mul-float v6, v6, v3

    .line 140
    .line 141
    float-to-int v6, v6

    .line 142
    new-instance v15, Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .line 146
    .line 147
    const/high16 v10, -0x10000

    .line 148
    .line 149
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    .line 151
    .line 152
    int-to-float v14, v7

    .line 153
    int-to-float v13, v8

    .line 154
    add-int/2addr v7, v9

    .line 155
    int-to-float v7, v7

    .line 156
    move-object/from16 v10, p1

    .line 157
    .line 158
    move v11, v14

    .line 159
    move v12, v13

    .line 160
    move v9, v13

    .line 161
    move v13, v7

    .line 162
    move/from16 v16, v14

    .line 163
    .line 164
    move v14, v9

    .line 165
    move-object/from16 v17, v15

    .line 166
    .line 167
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    add-int/2addr v8, v6

    .line 171
    int-to-float v6, v8

    .line 172
    move v11, v7

    .line 173
    move v12, v9

    .line 174
    move v14, v6

    .line 175
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    move v12, v6

    .line 179
    move/from16 v13, v16

    .line 180
    .line 181
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    move/from16 v11, v16

    .line 185
    .line 186
    move v14, v9

    .line 187
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    const v8, -0xff0100

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    .line 195
    .line 196
    move v12, v9

    .line 197
    move v13, v7

    .line 198
    move v14, v6

    .line 199
    move-object v8, v15

    .line 200
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    .line 202
    .line 203
    move v12, v6

    .line 204
    move v14, v9

    .line 205
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_3
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(ZLandroid/view/View;Lw/d;Lz/e;Landroid/util/SparseArray;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Lz/e;->a()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v6, Lw/d;->f0:I

    .line 17
    .line 18
    iput-object v0, v6, Lw/d;->e0:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of v1, v0, Lz/c;

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    const/4 v10, 0x0

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    check-cast v0, Lz/c;

    .line 27
    .line 28
    move-object/from16 v11, p0

    .line 29
    .line 30
    iget-object v1, v11, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 31
    .line 32
    iget-boolean v1, v1, Lw/e;->u0:Z

    .line 33
    .line 34
    check-cast v0, Lz/a;

    .line 35
    .line 36
    iget v2, v0, Lz/a;->N:I

    .line 37
    .line 38
    iput v2, v0, Lz/a;->O:I

    .line 39
    .line 40
    const/4 v3, 0x6

    .line 41
    const/4 v4, 0x5

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    if-ne v2, v4, :cond_0

    .line 45
    .line 46
    iput v9, v0, Lz/a;->O:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    iput v10, v0, Lz/a;->O:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    if-ne v2, v4, :cond_2

    .line 55
    .line 56
    iput v10, v0, Lz/a;->O:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-ne v2, v3, :cond_3

    .line 60
    .line 61
    iput v9, v0, Lz/a;->O:I

    .line 62
    .line 63
    :cond_3
    :goto_0
    instance-of v1, v6, Lw/a;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    move-object v1, v6

    .line 68
    check-cast v1, Lw/a;

    .line 69
    .line 70
    iget v0, v0, Lz/a;->O:I

    .line 71
    .line 72
    iput v0, v1, Lw/a;->r0:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move-object/from16 v11, p0

    .line 76
    .line 77
    :cond_5
    :goto_1
    iget-boolean v0, v7, Lz/e;->d0:Z

    .line 78
    .line 79
    const/4 v12, -0x1

    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    move-object v0, v6

    .line 83
    check-cast v0, Lw/f;

    .line 84
    .line 85
    iget v1, v7, Lz/e;->m0:I

    .line 86
    .line 87
    iget v2, v7, Lz/e;->n0:I

    .line 88
    .line 89
    iget v3, v7, Lz/e;->o0:F

    .line 90
    .line 91
    const/high16 v4, -0x40800000    # -1.0f

    .line 92
    .line 93
    cmpl-float v5, v3, v4

    .line 94
    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    if-lez v5, :cond_30

    .line 98
    .line 99
    iput v3, v0, Lw/f;->p0:F

    .line 100
    .line 101
    iput v12, v0, Lw/f;->q0:I

    .line 102
    .line 103
    iput v12, v0, Lw/f;->r0:I

    .line 104
    .line 105
    goto/16 :goto_16

    .line 106
    .line 107
    :cond_6
    if-eq v1, v12, :cond_7

    .line 108
    .line 109
    if-le v1, v12, :cond_30

    .line 110
    .line 111
    iput v4, v0, Lw/f;->p0:F

    .line 112
    .line 113
    iput v1, v0, Lw/f;->q0:I

    .line 114
    .line 115
    iput v12, v0, Lw/f;->r0:I

    .line 116
    .line 117
    goto/16 :goto_16

    .line 118
    .line 119
    :cond_7
    if-eq v2, v12, :cond_30

    .line 120
    .line 121
    if-le v2, v12, :cond_30

    .line 122
    .line 123
    iput v4, v0, Lw/f;->p0:F

    .line 124
    .line 125
    iput v12, v0, Lw/f;->q0:I

    .line 126
    .line 127
    iput v2, v0, Lw/f;->r0:I

    .line 128
    .line 129
    goto/16 :goto_16

    .line 130
    .line 131
    :cond_8
    iget v0, v7, Lz/e;->f0:I

    .line 132
    .line 133
    iget v1, v7, Lz/e;->g0:I

    .line 134
    .line 135
    iget v13, v7, Lz/e;->h0:I

    .line 136
    .line 137
    iget v14, v7, Lz/e;->i0:I

    .line 138
    .line 139
    iget v5, v7, Lz/e;->j0:I

    .line 140
    .line 141
    iget v15, v7, Lz/e;->k0:I

    .line 142
    .line 143
    iget v4, v7, Lz/e;->l0:F

    .line 144
    .line 145
    iget v2, v7, Lz/e;->p:I

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    const/4 v9, 0x2

    .line 149
    const/4 v10, 0x3

    .line 150
    if-eq v2, v12, :cond_a

    .line 151
    .line 152
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v2, v0

    .line 157
    check-cast v2, Lw/d;

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    iget v8, v7, Lz/e;->r:F

    .line 162
    .line 163
    iget v4, v7, Lz/e;->q:I

    .line 164
    .line 165
    const/4 v5, 0x7

    .line 166
    const/4 v13, 0x0

    .line 167
    move-object/from16 v0, p3

    .line 168
    .line 169
    move v1, v5

    .line 170
    const/4 v14, 0x4

    .line 171
    move v3, v5

    .line 172
    move v5, v13

    .line 173
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 174
    .line 175
    .line 176
    iput v8, v6, Lw/d;->D:F

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    const/4 v14, 0x4

    .line 180
    :goto_2
    const/16 v17, 0x4

    .line 181
    .line 182
    goto/16 :goto_9

    .line 183
    .line 184
    :cond_a
    if-eq v0, v12, :cond_c

    .line 185
    .line 186
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object v2, v0

    .line 191
    check-cast v2, Lw/d;

    .line 192
    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 196
    .line 197
    move-object/from16 v0, p3

    .line 198
    .line 199
    move/from16 v16, v1

    .line 200
    .line 201
    move v1, v9

    .line 202
    const/16 v17, 0x4

    .line 203
    .line 204
    move v3, v9

    .line 205
    move/from16 v18, v4

    .line 206
    .line 207
    move/from16 v4, v16

    .line 208
    .line 209
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_b
    move/from16 v18, v4

    .line 214
    .line 215
    const/16 v17, 0x4

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    move/from16 v18, v4

    .line 219
    .line 220
    const/16 v17, 0x4

    .line 221
    .line 222
    if-eq v1, v12, :cond_d

    .line 223
    .line 224
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object v2, v0

    .line 229
    check-cast v2, Lw/d;

    .line 230
    .line 231
    if-eqz v2, :cond_d

    .line 232
    .line 233
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 234
    .line 235
    move-object/from16 v0, p3

    .line 236
    .line 237
    move v1, v9

    .line 238
    move/from16 v3, v17

    .line 239
    .line 240
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 241
    .line 242
    .line 243
    :cond_d
    :goto_3
    if-eq v13, v12, :cond_e

    .line 244
    .line 245
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object v2, v0

    .line 250
    check-cast v2, Lw/d;

    .line 251
    .line 252
    if-eqz v2, :cond_f

    .line 253
    .line 254
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 255
    .line 256
    move-object/from16 v0, p3

    .line 257
    .line 258
    move/from16 v1, v17

    .line 259
    .line 260
    move v3, v9

    .line 261
    move v5, v15

    .line 262
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_e
    if-eq v14, v12, :cond_f

    .line 267
    .line 268
    invoke-virtual {v8, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    move-object v2, v0

    .line 273
    check-cast v2, Lw/d;

    .line 274
    .line 275
    if-eqz v2, :cond_f

    .line 276
    .line 277
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 278
    .line 279
    move-object/from16 v0, p3

    .line 280
    .line 281
    move/from16 v1, v17

    .line 282
    .line 283
    move/from16 v3, v17

    .line 284
    .line 285
    move v5, v15

    .line 286
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 287
    .line 288
    .line 289
    :cond_f
    :goto_4
    iget v0, v7, Lz/e;->i:I

    .line 290
    .line 291
    if-eq v0, v12, :cond_10

    .line 292
    .line 293
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    move-object v2, v0

    .line 298
    check-cast v2, Lw/d;

    .line 299
    .line 300
    if-eqz v2, :cond_11

    .line 301
    .line 302
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 303
    .line 304
    iget v5, v7, Lz/e;->x:I

    .line 305
    .line 306
    move-object/from16 v0, p3

    .line 307
    .line 308
    move v1, v10

    .line 309
    move v3, v10

    .line 310
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_10
    iget v0, v7, Lz/e;->j:I

    .line 315
    .line 316
    if-eq v0, v12, :cond_11

    .line 317
    .line 318
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    move-object v2, v0

    .line 323
    check-cast v2, Lw/d;

    .line 324
    .line 325
    if-eqz v2, :cond_11

    .line 326
    .line 327
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 328
    .line 329
    iget v5, v7, Lz/e;->x:I

    .line 330
    .line 331
    move-object/from16 v0, p3

    .line 332
    .line 333
    move v1, v10

    .line 334
    const/4 v13, 0x5

    .line 335
    move v3, v13

    .line 336
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 337
    .line 338
    .line 339
    :cond_11
    :goto_5
    iget v0, v7, Lz/e;->k:I

    .line 340
    .line 341
    if-eq v0, v12, :cond_12

    .line 342
    .line 343
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    move-object v2, v0

    .line 348
    check-cast v2, Lw/d;

    .line 349
    .line 350
    if-eqz v2, :cond_13

    .line 351
    .line 352
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    .line 354
    iget v5, v7, Lz/e;->z:I

    .line 355
    .line 356
    move-object/from16 v0, p3

    .line 357
    .line 358
    const/4 v3, 0x5

    .line 359
    move v1, v3

    .line 360
    move v3, v10

    .line 361
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 362
    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_12
    iget v0, v7, Lz/e;->l:I

    .line 366
    .line 367
    if-eq v0, v12, :cond_13

    .line 368
    .line 369
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    move-object v2, v0

    .line 374
    check-cast v2, Lw/d;

    .line 375
    .line 376
    if-eqz v2, :cond_13

    .line 377
    .line 378
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 379
    .line 380
    iget v5, v7, Lz/e;->z:I

    .line 381
    .line 382
    move-object/from16 v0, p3

    .line 383
    .line 384
    const/4 v13, 0x5

    .line 385
    move v1, v13

    .line 386
    move v3, v13

    .line 387
    invoke-virtual/range {v0 .. v5}, Lw/d;->t(ILw/d;III)V

    .line 388
    .line 389
    .line 390
    :cond_13
    :goto_6
    iget v4, v7, Lz/e;->m:I

    .line 391
    .line 392
    if-eq v4, v12, :cond_15

    .line 393
    .line 394
    const/4 v5, 0x6

    .line 395
    move-object/from16 v0, p0

    .line 396
    .line 397
    move-object/from16 v1, p3

    .line 398
    .line 399
    move-object/from16 v2, p4

    .line 400
    .line 401
    move-object/from16 v3, p5

    .line 402
    .line 403
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Lw/d;Lz/e;Landroid/util/SparseArray;II)V

    .line 404
    .line 405
    .line 406
    :cond_14
    :goto_7
    move/from16 v0, v18

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    goto :goto_8

    .line 410
    :cond_15
    iget v4, v7, Lz/e;->n:I

    .line 411
    .line 412
    if-eq v4, v12, :cond_16

    .line 413
    .line 414
    move-object/from16 v0, p0

    .line 415
    .line 416
    move-object/from16 v1, p3

    .line 417
    .line 418
    move-object/from16 v2, p4

    .line 419
    .line 420
    move-object/from16 v3, p5

    .line 421
    .line 422
    move v5, v10

    .line 423
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Lw/d;Lz/e;Landroid/util/SparseArray;II)V

    .line 424
    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_16
    iget v4, v7, Lz/e;->o:I

    .line 428
    .line 429
    if-eq v4, v12, :cond_14

    .line 430
    .line 431
    move-object/from16 v0, p0

    .line 432
    .line 433
    move-object/from16 v1, p3

    .line 434
    .line 435
    move-object/from16 v2, p4

    .line 436
    .line 437
    move-object/from16 v3, p5

    .line 438
    .line 439
    const/4 v8, 0x5

    .line 440
    move v5, v8

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->k(Lw/d;Lz/e;Landroid/util/SparseArray;II)V

    .line 442
    .line 443
    .line 444
    goto :goto_7

    .line 445
    :goto_8
    cmpl-float v2, v0, v1

    .line 446
    .line 447
    if-ltz v2, :cond_17

    .line 448
    .line 449
    iput v0, v6, Lw/d;->c0:F

    .line 450
    .line 451
    :cond_17
    iget v0, v7, Lz/e;->F:F

    .line 452
    .line 453
    cmpl-float v2, v0, v1

    .line 454
    .line 455
    if-ltz v2, :cond_18

    .line 456
    .line 457
    iput v0, v6, Lw/d;->d0:F

    .line 458
    .line 459
    :cond_18
    :goto_9
    if-eqz p1, :cond_1a

    .line 460
    .line 461
    iget v0, v7, Lz/e;->T:I

    .line 462
    .line 463
    if-ne v0, v12, :cond_19

    .line 464
    .line 465
    iget v1, v7, Lz/e;->U:I

    .line 466
    .line 467
    if-eq v1, v12, :cond_1a

    .line 468
    .line 469
    :cond_19
    iget v1, v7, Lz/e;->U:I

    .line 470
    .line 471
    iput v0, v6, Lw/d;->X:I

    .line 472
    .line 473
    iput v1, v6, Lw/d;->Y:I

    .line 474
    .line 475
    :cond_1a
    iget-boolean v0, v7, Lz/e;->a0:Z

    .line 476
    .line 477
    const/4 v1, 0x3

    .line 478
    const/4 v2, 0x2

    .line 479
    const/4 v3, -0x2

    .line 480
    const/4 v4, 0x4

    .line 481
    if-nez v0, :cond_1d

    .line 482
    .line 483
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 484
    .line 485
    if-ne v0, v12, :cond_1c

    .line 486
    .line 487
    iget-boolean v0, v7, Lz/e;->W:Z

    .line 488
    .line 489
    if-eqz v0, :cond_1b

    .line 490
    .line 491
    invoke-virtual {v6, v1}, Lw/d;->I(I)V

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_1b
    invoke-virtual {v6, v4}, Lw/d;->I(I)V

    .line 496
    .line 497
    .line 498
    :goto_a
    invoke-virtual {v6, v9}, Lw/d;->g(I)Lw/c;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 503
    .line 504
    iput v5, v0, Lw/c;->g:I

    .line 505
    .line 506
    const/4 v0, 0x4

    .line 507
    invoke-virtual {v6, v0}, Lw/d;->g(I)Lw/c;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 512
    .line 513
    iput v5, v0, Lw/c;->g:I

    .line 514
    .line 515
    goto :goto_b

    .line 516
    :cond_1c
    invoke-virtual {v6, v1}, Lw/d;->I(I)V

    .line 517
    .line 518
    .line 519
    const/4 v0, 0x0

    .line 520
    invoke-virtual {v6, v0}, Lw/d;->K(I)V

    .line 521
    .line 522
    .line 523
    goto :goto_b

    .line 524
    :cond_1d
    const/4 v0, 0x1

    .line 525
    invoke-virtual {v6, v0}, Lw/d;->I(I)V

    .line 526
    .line 527
    .line 528
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 529
    .line 530
    invoke-virtual {v6, v0}, Lw/d;->K(I)V

    .line 531
    .line 532
    .line 533
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 534
    .line 535
    if-ne v0, v3, :cond_1e

    .line 536
    .line 537
    invoke-virtual {v6, v2}, Lw/d;->I(I)V

    .line 538
    .line 539
    .line 540
    :cond_1e
    :goto_b
    iget-boolean v0, v7, Lz/e;->b0:Z

    .line 541
    .line 542
    if-nez v0, :cond_21

    .line 543
    .line 544
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 545
    .line 546
    if-ne v0, v12, :cond_20

    .line 547
    .line 548
    iget-boolean v0, v7, Lz/e;->X:Z

    .line 549
    .line 550
    if-eqz v0, :cond_1f

    .line 551
    .line 552
    invoke-virtual {v6, v1}, Lw/d;->J(I)V

    .line 553
    .line 554
    .line 555
    goto :goto_c

    .line 556
    :cond_1f
    invoke-virtual {v6, v4}, Lw/d;->J(I)V

    .line 557
    .line 558
    .line 559
    :goto_c
    invoke-virtual {v6, v10}, Lw/d;->g(I)Lw/c;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 564
    .line 565
    iput v3, v0, Lw/c;->g:I

    .line 566
    .line 567
    const/4 v0, 0x5

    .line 568
    invoke-virtual {v6, v0}, Lw/d;->g(I)Lw/c;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 573
    .line 574
    iput v3, v0, Lw/c;->g:I

    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_20
    invoke-virtual {v6, v1}, Lw/d;->J(I)V

    .line 578
    .line 579
    .line 580
    const/4 v0, 0x0

    .line 581
    invoke-virtual {v6, v0}, Lw/d;->H(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_d

    .line 585
    :cond_21
    const/4 v0, 0x1

    .line 586
    invoke-virtual {v6, v0}, Lw/d;->J(I)V

    .line 587
    .line 588
    .line 589
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 590
    .line 591
    invoke-virtual {v6, v0}, Lw/d;->H(I)V

    .line 592
    .line 593
    .line 594
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 595
    .line 596
    if-ne v0, v3, :cond_22

    .line 597
    .line 598
    invoke-virtual {v6, v2}, Lw/d;->J(I)V

    .line 599
    .line 600
    .line 601
    :cond_22
    :goto_d
    iget-object v0, v7, Lz/e;->G:Ljava/lang/String;

    .line 602
    .line 603
    if-eqz v0, :cond_23

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-nez v3, :cond_24

    .line 610
    .line 611
    :cond_23
    const/4 v3, 0x0

    .line 612
    goto/16 :goto_13

    .line 613
    .line 614
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    const/16 v4, 0x2c

    .line 619
    .line 620
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-lez v4, :cond_27

    .line 625
    .line 626
    add-int/lit8 v5, v3, -0x1

    .line 627
    .line 628
    if-ge v4, v5, :cond_27

    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v8

    .line 635
    const-string v5, "W"

    .line 636
    .line 637
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-eqz v5, :cond_25

    .line 642
    .line 643
    const/4 v5, 0x1

    .line 644
    const/4 v12, 0x0

    .line 645
    goto :goto_e

    .line 646
    :cond_25
    const-string v5, "H"

    .line 647
    .line 648
    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    if-eqz v5, :cond_26

    .line 653
    .line 654
    const/4 v5, 0x1

    .line 655
    const/4 v12, 0x1

    .line 656
    goto :goto_e

    .line 657
    :cond_26
    const/4 v5, 0x1

    .line 658
    :goto_e
    add-int/2addr v4, v5

    .line 659
    goto :goto_f

    .line 660
    :cond_27
    const/4 v5, 0x1

    .line 661
    const/4 v4, 0x0

    .line 662
    :goto_f
    const/16 v8, 0x3a

    .line 663
    .line 664
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-ltz v8, :cond_29

    .line 669
    .line 670
    sub-int/2addr v3, v5

    .line 671
    if-ge v8, v3, :cond_29

    .line 672
    .line 673
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    add-int/2addr v8, v5

    .line 678
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    if-lez v4, :cond_2a

    .line 687
    .line 688
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    if-lez v4, :cond_2a

    .line 693
    .line 694
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    const/4 v4, 0x0

    .line 703
    cmpl-float v5, v3, v4

    .line 704
    .line 705
    if-lez v5, :cond_2a

    .line 706
    .line 707
    cmpl-float v5, v0, v4

    .line 708
    .line 709
    if-lez v5, :cond_2a

    .line 710
    .line 711
    const/4 v4, 0x1

    .line 712
    if-ne v12, v4, :cond_28

    .line 713
    .line 714
    div-float/2addr v0, v3

    .line 715
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    goto :goto_10

    .line 720
    :catch_0
    nop

    .line 721
    goto :goto_11

    .line 722
    :cond_28
    div-float/2addr v3, v0

    .line 723
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 724
    .line 725
    .line 726
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_10
    const/4 v3, 0x0

    .line 728
    goto :goto_12

    .line 729
    :cond_29
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-lez v3, :cond_2a

    .line 738
    .line 739
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 740
    .line 741
    .line 742
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    goto :goto_10

    .line 744
    :catch_1
    nop

    .line 745
    :cond_2a
    :goto_11
    const/4 v0, 0x0

    .line 746
    goto :goto_10

    .line 747
    :goto_12
    cmpl-float v4, v0, v3

    .line 748
    .line 749
    if-lez v4, :cond_2b

    .line 750
    .line 751
    iput v0, v6, Lw/d;->V:F

    .line 752
    .line 753
    iput v12, v6, Lw/d;->W:I

    .line 754
    .line 755
    goto :goto_14

    .line 756
    :goto_13
    iput v3, v6, Lw/d;->V:F

    .line 757
    .line 758
    :cond_2b
    :goto_14
    iget v0, v7, Lz/e;->H:F

    .line 759
    .line 760
    iget-object v3, v6, Lw/d;->j0:[F

    .line 761
    .line 762
    const/4 v4, 0x0

    .line 763
    aput v0, v3, v4

    .line 764
    .line 765
    iget v0, v7, Lz/e;->I:F

    .line 766
    .line 767
    const/4 v5, 0x1

    .line 768
    aput v0, v3, v5

    .line 769
    .line 770
    iget v0, v7, Lz/e;->J:I

    .line 771
    .line 772
    iput v0, v6, Lw/d;->h0:I

    .line 773
    .line 774
    iget v0, v7, Lz/e;->K:I

    .line 775
    .line 776
    iput v0, v6, Lw/d;->i0:I

    .line 777
    .line 778
    iget v0, v7, Lz/e;->Z:I

    .line 779
    .line 780
    if-ltz v0, :cond_2c

    .line 781
    .line 782
    if-gt v0, v1, :cond_2c

    .line 783
    .line 784
    iput v0, v6, Lw/d;->q:I

    .line 785
    .line 786
    :cond_2c
    iget v0, v7, Lz/e;->L:I

    .line 787
    .line 788
    iget v1, v7, Lz/e;->N:I

    .line 789
    .line 790
    iget v3, v7, Lz/e;->P:I

    .line 791
    .line 792
    iget v5, v7, Lz/e;->R:F

    .line 793
    .line 794
    iput v0, v6, Lw/d;->r:I

    .line 795
    .line 796
    iput v1, v6, Lw/d;->u:I

    .line 797
    .line 798
    const v1, 0x7fffffff

    .line 799
    .line 800
    .line 801
    if-ne v3, v1, :cond_2d

    .line 802
    .line 803
    const/4 v3, 0x0

    .line 804
    :cond_2d
    iput v3, v6, Lw/d;->v:I

    .line 805
    .line 806
    iput v5, v6, Lw/d;->w:F

    .line 807
    .line 808
    const/high16 v3, 0x3f800000    # 1.0f

    .line 809
    .line 810
    const/4 v8, 0x0

    .line 811
    cmpl-float v9, v5, v8

    .line 812
    .line 813
    if-lez v9, :cond_2e

    .line 814
    .line 815
    cmpg-float v5, v5, v3

    .line 816
    .line 817
    if-gez v5, :cond_2e

    .line 818
    .line 819
    if-nez v0, :cond_2e

    .line 820
    .line 821
    iput v2, v6, Lw/d;->r:I

    .line 822
    .line 823
    :cond_2e
    iget v0, v7, Lz/e;->M:I

    .line 824
    .line 825
    iget v5, v7, Lz/e;->O:I

    .line 826
    .line 827
    iget v8, v7, Lz/e;->Q:I

    .line 828
    .line 829
    iget v7, v7, Lz/e;->S:F

    .line 830
    .line 831
    iput v0, v6, Lw/d;->s:I

    .line 832
    .line 833
    iput v5, v6, Lw/d;->x:I

    .line 834
    .line 835
    if-ne v8, v1, :cond_2f

    .line 836
    .line 837
    const/4 v10, 0x0

    .line 838
    goto :goto_15

    .line 839
    :cond_2f
    move v10, v8

    .line 840
    :goto_15
    iput v10, v6, Lw/d;->y:I

    .line 841
    .line 842
    iput v7, v6, Lw/d;->z:F

    .line 843
    .line 844
    const/4 v1, 0x0

    .line 845
    cmpl-float v1, v7, v1

    .line 846
    .line 847
    if-lez v1, :cond_30

    .line 848
    .line 849
    cmpg-float v1, v7, v3

    .line 850
    .line 851
    if-gez v1, :cond_30

    .line 852
    .line 853
    if-nez v0, :cond_30

    .line 854
    .line 855
    iput v2, v6, Lw/d;->s:I

    .line 856
    .line 857
    :cond_30
    :goto_16
    return-void
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()Lz/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 12

    .line 1
    new-instance v0, Lz/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Lz/e;->a:I

    .line 4
    iput v2, v0, Lz/e;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 5
    iput v3, v0, Lz/e;->c:F

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v0, Lz/e;->d:Z

    .line 7
    iput v2, v0, Lz/e;->e:I

    .line 8
    iput v2, v0, Lz/e;->f:I

    .line 9
    iput v2, v0, Lz/e;->g:I

    .line 10
    iput v2, v0, Lz/e;->h:I

    .line 11
    iput v2, v0, Lz/e;->i:I

    .line 12
    iput v2, v0, Lz/e;->j:I

    .line 13
    iput v2, v0, Lz/e;->k:I

    .line 14
    iput v2, v0, Lz/e;->l:I

    .line 15
    iput v2, v0, Lz/e;->m:I

    .line 16
    iput v2, v0, Lz/e;->n:I

    .line 17
    iput v2, v0, Lz/e;->o:I

    .line 18
    iput v2, v0, Lz/e;->p:I

    const/4 v5, 0x0

    .line 19
    iput v5, v0, Lz/e;->q:I

    const/4 v6, 0x0

    .line 20
    iput v6, v0, Lz/e;->r:F

    .line 21
    iput v2, v0, Lz/e;->s:I

    .line 22
    iput v2, v0, Lz/e;->t:I

    .line 23
    iput v2, v0, Lz/e;->u:I

    .line 24
    iput v2, v0, Lz/e;->v:I

    const/high16 v7, -0x80000000

    .line 25
    iput v7, v0, Lz/e;->w:I

    .line 26
    iput v7, v0, Lz/e;->x:I

    .line 27
    iput v7, v0, Lz/e;->y:I

    .line 28
    iput v7, v0, Lz/e;->z:I

    .line 29
    iput v7, v0, Lz/e;->A:I

    .line 30
    iput v7, v0, Lz/e;->B:I

    .line 31
    iput v7, v0, Lz/e;->C:I

    .line 32
    iput v5, v0, Lz/e;->D:I

    const/high16 v8, 0x3f000000    # 0.5f

    .line 33
    iput v8, v0, Lz/e;->E:F

    .line 34
    iput v8, v0, Lz/e;->F:F

    const/4 v9, 0x0

    .line 35
    iput-object v9, v0, Lz/e;->G:Ljava/lang/String;

    .line 36
    iput v3, v0, Lz/e;->H:F

    .line 37
    iput v3, v0, Lz/e;->I:F

    .line 38
    iput v5, v0, Lz/e;->J:I

    .line 39
    iput v5, v0, Lz/e;->K:I

    .line 40
    iput v5, v0, Lz/e;->L:I

    .line 41
    iput v5, v0, Lz/e;->M:I

    .line 42
    iput v5, v0, Lz/e;->N:I

    .line 43
    iput v5, v0, Lz/e;->O:I

    .line 44
    iput v5, v0, Lz/e;->P:I

    .line 45
    iput v5, v0, Lz/e;->Q:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    iput v3, v0, Lz/e;->R:F

    .line 47
    iput v3, v0, Lz/e;->S:F

    .line 48
    iput v2, v0, Lz/e;->T:I

    .line 49
    iput v2, v0, Lz/e;->U:I

    .line 50
    iput v2, v0, Lz/e;->V:I

    .line 51
    iput-boolean v5, v0, Lz/e;->W:Z

    .line 52
    iput-boolean v5, v0, Lz/e;->X:Z

    .line 53
    iput-object v9, v0, Lz/e;->Y:Ljava/lang/String;

    .line 54
    iput v5, v0, Lz/e;->Z:I

    .line 55
    iput-boolean v4, v0, Lz/e;->a0:Z

    .line 56
    iput-boolean v4, v0, Lz/e;->b0:Z

    .line 57
    iput-boolean v5, v0, Lz/e;->c0:Z

    .line 58
    iput-boolean v5, v0, Lz/e;->d0:Z

    .line 59
    iput-boolean v5, v0, Lz/e;->e0:Z

    .line 60
    iput v2, v0, Lz/e;->f0:I

    .line 61
    iput v2, v0, Lz/e;->g0:I

    .line 62
    iput v2, v0, Lz/e;->h0:I

    .line 63
    iput v2, v0, Lz/e;->i0:I

    .line 64
    iput v7, v0, Lz/e;->j0:I

    .line 65
    iput v7, v0, Lz/e;->k0:I

    .line 66
    iput v8, v0, Lz/e;->l0:F

    .line 67
    new-instance v3, Lw/d;

    invoke-direct {v3}, Lw/d;-><init>()V

    iput-object v3, v0, Lz/e;->p0:Lw/d;

    .line 68
    sget-object v3, Lz/r;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 70
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 71
    sget-object v8, Lz/d;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 72
    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_1

    .line 73
    :pswitch_0
    iget-boolean v8, v0, Lz/e;->d:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lz/e;->d:Z

    goto/16 :goto_1

    .line 74
    :pswitch_1
    iget v8, v0, Lz/e;->Z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->Z:I

    goto/16 :goto_1

    .line 75
    :pswitch_2
    invoke-static {v0, p1, v7, v4}, Lz/o;->f(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 76
    :pswitch_3
    invoke-static {v0, p1, v7, v5}, Lz/o;->f(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 77
    :pswitch_4
    iget v8, v0, Lz/e;->C:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->C:I

    goto/16 :goto_1

    .line 78
    :pswitch_5
    iget v8, v0, Lz/e;->D:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->D:I

    goto/16 :goto_1

    .line 79
    :pswitch_6
    iget v8, v0, Lz/e;->o:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->o:I

    if-ne v8, v2, :cond_0

    .line 80
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->o:I

    goto/16 :goto_1

    .line 81
    :pswitch_7
    iget v8, v0, Lz/e;->n:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->n:I

    if-ne v8, v2, :cond_0

    .line 82
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->n:I

    goto/16 :goto_1

    .line 83
    :pswitch_8
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lz/e;->Y:Ljava/lang/String;

    goto/16 :goto_1

    .line 84
    :pswitch_9
    iget v8, v0, Lz/e;->U:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lz/e;->U:I

    goto/16 :goto_1

    .line 85
    :pswitch_a
    iget v8, v0, Lz/e;->T:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lz/e;->T:I

    goto/16 :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->K:I

    goto/16 :goto_1

    .line 87
    :pswitch_c
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->J:I

    goto/16 :goto_1

    .line 88
    :pswitch_d
    iget v8, v0, Lz/e;->I:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lz/e;->I:F

    goto/16 :goto_1

    .line 89
    :pswitch_e
    iget v8, v0, Lz/e;->H:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lz/e;->H:F

    goto/16 :goto_1

    .line 90
    :pswitch_f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lz/o;->g(Lz/e;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :pswitch_10
    iget v8, v0, Lz/e;->S:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lz/e;->S:F

    .line 92
    iput v10, v0, Lz/e;->M:I

    goto/16 :goto_1

    .line 93
    :pswitch_11
    :try_start_0
    iget v8, v0, Lz/e;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lz/e;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    nop

    .line 94
    iget v8, v0, Lz/e;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 95
    iput v11, v0, Lz/e;->Q:I

    goto/16 :goto_1

    .line 96
    :pswitch_12
    :try_start_1
    iget v8, v0, Lz/e;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lz/e;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    nop

    .line 97
    iget v8, v0, Lz/e;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 98
    iput v11, v0, Lz/e;->O:I

    goto/16 :goto_1

    .line 99
    :pswitch_13
    iget v8, v0, Lz/e;->R:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lz/e;->R:F

    .line 100
    iput v10, v0, Lz/e;->L:I

    goto/16 :goto_1

    .line 101
    :pswitch_14
    :try_start_2
    iget v8, v0, Lz/e;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lz/e;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    nop

    .line 102
    iget v8, v0, Lz/e;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 103
    iput v11, v0, Lz/e;->P:I

    goto/16 :goto_1

    .line 104
    :pswitch_15
    :try_start_3
    iget v8, v0, Lz/e;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Lz/e;->N:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    nop

    .line 105
    iget v8, v0, Lz/e;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 106
    iput v11, v0, Lz/e;->N:I

    goto/16 :goto_1

    .line 107
    :pswitch_16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->M:I

    if-ne v7, v4, :cond_0

    .line 108
    const-string v7, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 109
    :pswitch_17
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->L:I

    if-ne v7, v4, :cond_0

    .line 110
    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 111
    :pswitch_18
    iget v8, v0, Lz/e;->F:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lz/e;->F:F

    goto/16 :goto_1

    .line 112
    :pswitch_19
    iget v8, v0, Lz/e;->E:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lz/e;->E:F

    goto/16 :goto_1

    .line 113
    :pswitch_1a
    iget-boolean v8, v0, Lz/e;->X:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lz/e;->X:Z

    goto/16 :goto_1

    .line 114
    :pswitch_1b
    iget-boolean v8, v0, Lz/e;->W:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lz/e;->W:Z

    goto/16 :goto_1

    .line 115
    :pswitch_1c
    iget v8, v0, Lz/e;->B:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->B:I

    goto/16 :goto_1

    .line 116
    :pswitch_1d
    iget v8, v0, Lz/e;->A:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->A:I

    goto/16 :goto_1

    .line 117
    :pswitch_1e
    iget v8, v0, Lz/e;->z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->z:I

    goto/16 :goto_1

    .line 118
    :pswitch_1f
    iget v8, v0, Lz/e;->y:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->y:I

    goto/16 :goto_1

    .line 119
    :pswitch_20
    iget v8, v0, Lz/e;->x:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->x:I

    goto/16 :goto_1

    .line 120
    :pswitch_21
    iget v8, v0, Lz/e;->w:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->w:I

    goto/16 :goto_1

    .line 121
    :pswitch_22
    iget v8, v0, Lz/e;->v:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->v:I

    if-ne v8, v2, :cond_0

    .line 122
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->v:I

    goto/16 :goto_1

    .line 123
    :pswitch_23
    iget v8, v0, Lz/e;->u:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->u:I

    if-ne v8, v2, :cond_0

    .line 124
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->u:I

    goto/16 :goto_1

    .line 125
    :pswitch_24
    iget v8, v0, Lz/e;->t:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->t:I

    if-ne v8, v2, :cond_0

    .line 126
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->t:I

    goto/16 :goto_1

    .line 127
    :pswitch_25
    iget v8, v0, Lz/e;->s:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->s:I

    if-ne v8, v2, :cond_0

    .line 128
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->s:I

    goto/16 :goto_1

    .line 129
    :pswitch_26
    iget v8, v0, Lz/e;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->m:I

    if-ne v8, v2, :cond_0

    .line 130
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->m:I

    goto/16 :goto_1

    .line 131
    :pswitch_27
    iget v8, v0, Lz/e;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->l:I

    if-ne v8, v2, :cond_0

    .line 132
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->l:I

    goto/16 :goto_1

    .line 133
    :pswitch_28
    iget v8, v0, Lz/e;->k:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->k:I

    if-ne v8, v2, :cond_0

    .line 134
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->k:I

    goto/16 :goto_1

    .line 135
    :pswitch_29
    iget v8, v0, Lz/e;->j:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->j:I

    if-ne v8, v2, :cond_0

    .line 136
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->j:I

    goto/16 :goto_1

    .line 137
    :pswitch_2a
    iget v8, v0, Lz/e;->i:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->i:I

    if-ne v8, v2, :cond_0

    .line 138
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->i:I

    goto/16 :goto_1

    .line 139
    :pswitch_2b
    iget v8, v0, Lz/e;->h:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->h:I

    if-ne v8, v2, :cond_0

    .line 140
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->h:I

    goto/16 :goto_1

    .line 141
    :pswitch_2c
    iget v8, v0, Lz/e;->g:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->g:I

    if-ne v8, v2, :cond_0

    .line 142
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->g:I

    goto/16 :goto_1

    .line 143
    :pswitch_2d
    iget v8, v0, Lz/e;->f:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->f:I

    if-ne v8, v2, :cond_0

    .line 144
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->f:I

    goto :goto_1

    .line 145
    :pswitch_2e
    iget v8, v0, Lz/e;->e:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->e:I

    if-ne v8, v2, :cond_0

    .line 146
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->e:I

    goto :goto_1

    .line 147
    :pswitch_2f
    iget v8, v0, Lz/e;->c:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Lz/e;->c:F

    goto :goto_1

    .line 148
    :pswitch_30
    iget v8, v0, Lz/e;->b:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lz/e;->b:I

    goto :goto_1

    .line 149
    :pswitch_31
    iget v8, v0, Lz/e;->a:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Lz/e;->a:I

    goto :goto_1

    .line 150
    :pswitch_32
    iget v8, v0, Lz/e;->r:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    iput v7, v0, Lz/e;->r:F

    cmpg-float v9, v7, v6

    if-gez v9, :cond_0

    sub-float v7, v8, v7

    rem-float/2addr v7, v8

    .line 151
    iput v7, v0, Lz/e;->r:F

    goto :goto_1

    .line 152
    :pswitch_33
    iget v8, v0, Lz/e;->q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lz/e;->q:I

    goto :goto_1

    .line 153
    :pswitch_34
    iget v8, v0, Lz/e;->p:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Lz/e;->p:I

    if-ne v8, v2, :cond_0

    .line 154
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->p:I

    goto :goto_1

    .line 155
    :pswitch_35
    iget v8, v0, Lz/e;->V:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Lz/e;->V:I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {v0}, Lz/e;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    .line 158
    new-instance v0, Lz/e;

    .line 159
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, -0x1

    .line 160
    iput v1, v0, Lz/e;->a:I

    .line 161
    iput v1, v0, Lz/e;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 162
    iput v2, v0, Lz/e;->c:F

    const/4 v3, 0x1

    .line 163
    iput-boolean v3, v0, Lz/e;->d:Z

    .line 164
    iput v1, v0, Lz/e;->e:I

    .line 165
    iput v1, v0, Lz/e;->f:I

    .line 166
    iput v1, v0, Lz/e;->g:I

    .line 167
    iput v1, v0, Lz/e;->h:I

    .line 168
    iput v1, v0, Lz/e;->i:I

    .line 169
    iput v1, v0, Lz/e;->j:I

    .line 170
    iput v1, v0, Lz/e;->k:I

    .line 171
    iput v1, v0, Lz/e;->l:I

    .line 172
    iput v1, v0, Lz/e;->m:I

    .line 173
    iput v1, v0, Lz/e;->n:I

    .line 174
    iput v1, v0, Lz/e;->o:I

    .line 175
    iput v1, v0, Lz/e;->p:I

    const/4 v4, 0x0

    .line 176
    iput v4, v0, Lz/e;->q:I

    const/4 v5, 0x0

    .line 177
    iput v5, v0, Lz/e;->r:F

    .line 178
    iput v1, v0, Lz/e;->s:I

    .line 179
    iput v1, v0, Lz/e;->t:I

    .line 180
    iput v1, v0, Lz/e;->u:I

    .line 181
    iput v1, v0, Lz/e;->v:I

    const/high16 v5, -0x80000000

    .line 182
    iput v5, v0, Lz/e;->w:I

    .line 183
    iput v5, v0, Lz/e;->x:I

    .line 184
    iput v5, v0, Lz/e;->y:I

    .line 185
    iput v5, v0, Lz/e;->z:I

    .line 186
    iput v5, v0, Lz/e;->A:I

    .line 187
    iput v5, v0, Lz/e;->B:I

    .line 188
    iput v5, v0, Lz/e;->C:I

    .line 189
    iput v4, v0, Lz/e;->D:I

    const/high16 v6, 0x3f000000    # 0.5f

    .line 190
    iput v6, v0, Lz/e;->E:F

    .line 191
    iput v6, v0, Lz/e;->F:F

    const/4 v7, 0x0

    .line 192
    iput-object v7, v0, Lz/e;->G:Ljava/lang/String;

    .line 193
    iput v2, v0, Lz/e;->H:F

    .line 194
    iput v2, v0, Lz/e;->I:F

    .line 195
    iput v4, v0, Lz/e;->J:I

    .line 196
    iput v4, v0, Lz/e;->K:I

    .line 197
    iput v4, v0, Lz/e;->L:I

    .line 198
    iput v4, v0, Lz/e;->M:I

    .line 199
    iput v4, v0, Lz/e;->N:I

    .line 200
    iput v4, v0, Lz/e;->O:I

    .line 201
    iput v4, v0, Lz/e;->P:I

    .line 202
    iput v4, v0, Lz/e;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 203
    iput v2, v0, Lz/e;->R:F

    .line 204
    iput v2, v0, Lz/e;->S:F

    .line 205
    iput v1, v0, Lz/e;->T:I

    .line 206
    iput v1, v0, Lz/e;->U:I

    .line 207
    iput v1, v0, Lz/e;->V:I

    .line 208
    iput-boolean v4, v0, Lz/e;->W:Z

    .line 209
    iput-boolean v4, v0, Lz/e;->X:Z

    .line 210
    iput-object v7, v0, Lz/e;->Y:Ljava/lang/String;

    .line 211
    iput v4, v0, Lz/e;->Z:I

    .line 212
    iput-boolean v3, v0, Lz/e;->a0:Z

    .line 213
    iput-boolean v3, v0, Lz/e;->b0:Z

    .line 214
    iput-boolean v4, v0, Lz/e;->c0:Z

    .line 215
    iput-boolean v4, v0, Lz/e;->d0:Z

    .line 216
    iput-boolean v4, v0, Lz/e;->e0:Z

    .line 217
    iput v1, v0, Lz/e;->f0:I

    .line 218
    iput v1, v0, Lz/e;->g0:I

    .line 219
    iput v1, v0, Lz/e;->h0:I

    .line 220
    iput v1, v0, Lz/e;->i0:I

    .line 221
    iput v5, v0, Lz/e;->j0:I

    .line 222
    iput v5, v0, Lz/e;->k0:I

    .line 223
    iput v6, v0, Lz/e;->l0:F

    .line 224
    new-instance v1, Lw/d;

    invoke-direct {v1}, Lw/d;-><init>()V

    iput-object v1, v0, Lz/e;->p0:Lw/d;

    .line 225
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 226
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 228
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 229
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 230
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 231
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 232
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 233
    :cond_0
    instance-of v1, p1, Lz/e;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 234
    :cond_1
    check-cast p1, Lz/e;

    .line 235
    iget v1, p1, Lz/e;->a:I

    iput v1, v0, Lz/e;->a:I

    .line 236
    iget v1, p1, Lz/e;->b:I

    iput v1, v0, Lz/e;->b:I

    .line 237
    iget v1, p1, Lz/e;->c:F

    iput v1, v0, Lz/e;->c:F

    .line 238
    iget-boolean v1, p1, Lz/e;->d:Z

    iput-boolean v1, v0, Lz/e;->d:Z

    .line 239
    iget v1, p1, Lz/e;->e:I

    iput v1, v0, Lz/e;->e:I

    .line 240
    iget v1, p1, Lz/e;->f:I

    iput v1, v0, Lz/e;->f:I

    .line 241
    iget v1, p1, Lz/e;->g:I

    iput v1, v0, Lz/e;->g:I

    .line 242
    iget v1, p1, Lz/e;->h:I

    iput v1, v0, Lz/e;->h:I

    .line 243
    iget v1, p1, Lz/e;->i:I

    iput v1, v0, Lz/e;->i:I

    .line 244
    iget v1, p1, Lz/e;->j:I

    iput v1, v0, Lz/e;->j:I

    .line 245
    iget v1, p1, Lz/e;->k:I

    iput v1, v0, Lz/e;->k:I

    .line 246
    iget v1, p1, Lz/e;->l:I

    iput v1, v0, Lz/e;->l:I

    .line 247
    iget v1, p1, Lz/e;->m:I

    iput v1, v0, Lz/e;->m:I

    .line 248
    iget v1, p1, Lz/e;->n:I

    iput v1, v0, Lz/e;->n:I

    .line 249
    iget v1, p1, Lz/e;->o:I

    iput v1, v0, Lz/e;->o:I

    .line 250
    iget v1, p1, Lz/e;->p:I

    iput v1, v0, Lz/e;->p:I

    .line 251
    iget v1, p1, Lz/e;->q:I

    iput v1, v0, Lz/e;->q:I

    .line 252
    iget v1, p1, Lz/e;->r:F

    iput v1, v0, Lz/e;->r:F

    .line 253
    iget v1, p1, Lz/e;->s:I

    iput v1, v0, Lz/e;->s:I

    .line 254
    iget v1, p1, Lz/e;->t:I

    iput v1, v0, Lz/e;->t:I

    .line 255
    iget v1, p1, Lz/e;->u:I

    iput v1, v0, Lz/e;->u:I

    .line 256
    iget v1, p1, Lz/e;->v:I

    iput v1, v0, Lz/e;->v:I

    .line 257
    iget v1, p1, Lz/e;->w:I

    iput v1, v0, Lz/e;->w:I

    .line 258
    iget v1, p1, Lz/e;->x:I

    iput v1, v0, Lz/e;->x:I

    .line 259
    iget v1, p1, Lz/e;->y:I

    iput v1, v0, Lz/e;->y:I

    .line 260
    iget v1, p1, Lz/e;->z:I

    iput v1, v0, Lz/e;->z:I

    .line 261
    iget v1, p1, Lz/e;->A:I

    iput v1, v0, Lz/e;->A:I

    .line 262
    iget v1, p1, Lz/e;->B:I

    iput v1, v0, Lz/e;->B:I

    .line 263
    iget v1, p1, Lz/e;->C:I

    iput v1, v0, Lz/e;->C:I

    .line 264
    iget v1, p1, Lz/e;->D:I

    iput v1, v0, Lz/e;->D:I

    .line 265
    iget v1, p1, Lz/e;->E:F

    iput v1, v0, Lz/e;->E:F

    .line 266
    iget v1, p1, Lz/e;->F:F

    iput v1, v0, Lz/e;->F:F

    .line 267
    iget-object v1, p1, Lz/e;->G:Ljava/lang/String;

    iput-object v1, v0, Lz/e;->G:Ljava/lang/String;

    .line 268
    iget v1, p1, Lz/e;->H:F

    iput v1, v0, Lz/e;->H:F

    .line 269
    iget v1, p1, Lz/e;->I:F

    iput v1, v0, Lz/e;->I:F

    .line 270
    iget v1, p1, Lz/e;->J:I

    iput v1, v0, Lz/e;->J:I

    .line 271
    iget v1, p1, Lz/e;->K:I

    iput v1, v0, Lz/e;->K:I

    .line 272
    iget-boolean v1, p1, Lz/e;->W:Z

    iput-boolean v1, v0, Lz/e;->W:Z

    .line 273
    iget-boolean v1, p1, Lz/e;->X:Z

    iput-boolean v1, v0, Lz/e;->X:Z

    .line 274
    iget v1, p1, Lz/e;->L:I

    iput v1, v0, Lz/e;->L:I

    .line 275
    iget v1, p1, Lz/e;->M:I

    iput v1, v0, Lz/e;->M:I

    .line 276
    iget v1, p1, Lz/e;->N:I

    iput v1, v0, Lz/e;->N:I

    .line 277
    iget v1, p1, Lz/e;->P:I

    iput v1, v0, Lz/e;->P:I

    .line 278
    iget v1, p1, Lz/e;->O:I

    iput v1, v0, Lz/e;->O:I

    .line 279
    iget v1, p1, Lz/e;->Q:I

    iput v1, v0, Lz/e;->Q:I

    .line 280
    iget v1, p1, Lz/e;->R:F

    iput v1, v0, Lz/e;->R:F

    .line 281
    iget v1, p1, Lz/e;->S:F

    iput v1, v0, Lz/e;->S:F

    .line 282
    iget v1, p1, Lz/e;->T:I

    iput v1, v0, Lz/e;->T:I

    .line 283
    iget v1, p1, Lz/e;->U:I

    iput v1, v0, Lz/e;->U:I

    .line 284
    iget v1, p1, Lz/e;->V:I

    iput v1, v0, Lz/e;->V:I

    .line 285
    iget-boolean v1, p1, Lz/e;->a0:Z

    iput-boolean v1, v0, Lz/e;->a0:Z

    .line 286
    iget-boolean v1, p1, Lz/e;->b0:Z

    iput-boolean v1, v0, Lz/e;->b0:Z

    .line 287
    iget-boolean v1, p1, Lz/e;->c0:Z

    iput-boolean v1, v0, Lz/e;->c0:Z

    .line 288
    iget-boolean v1, p1, Lz/e;->d0:Z

    iput-boolean v1, v0, Lz/e;->d0:Z

    .line 289
    iget v1, p1, Lz/e;->f0:I

    iput v1, v0, Lz/e;->f0:I

    .line 290
    iget v1, p1, Lz/e;->g0:I

    iput v1, v0, Lz/e;->g0:I

    .line 291
    iget v1, p1, Lz/e;->h0:I

    iput v1, v0, Lz/e;->h0:I

    .line 292
    iget v1, p1, Lz/e;->i0:I

    iput v1, v0, Lz/e;->i0:I

    .line 293
    iget v1, p1, Lz/e;->j0:I

    iput v1, v0, Lz/e;->j0:I

    .line 294
    iget v1, p1, Lz/e;->k0:I

    iput v1, v0, Lz/e;->k0:I

    .line 295
    iget v1, p1, Lz/e;->l0:F

    iput v1, v0, Lz/e;->l0:F

    .line 296
    iget-object v1, p1, Lz/e;->Y:Ljava/lang/String;

    iput-object v1, v0, Lz/e;->Y:Ljava/lang/String;

    .line 297
    iget v1, p1, Lz/e;->Z:I

    iput v1, v0, Lz/e;->Z:I

    .line 298
    iget-object p1, p1, Lz/e;->p0:Lw/d;

    iput-object p1, v0, Lz/e;->p0:Lw/d;

    :goto_0
    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 2
    .line 3
    iget v0, v0, Lw/e;->C0:I

    .line 4
    .line 5
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 7
    .line 8
    iget-object v2, v1, Lw/d;->j:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v1, Lw/d;->j:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v2, "parent"

    .line 35
    .line 36
    iput-object v2, v1, Lw/d;->j:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v2, v1, Lw/d;->g0:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, " setDebugName "

    .line 41
    .line 42
    const-string v5, "ConstraintLayout"

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    iget-object v2, v1, Lw/d;->j:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v2, v1, Lw/d;->g0:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, v1, Lw/d;->g0:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v2, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lw/d;

    .line 84
    .line 85
    iget-object v7, v6, Lw/d;->e0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v7, Landroid/view/View;

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    iget-object v8, v6, Lw/d;->j:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eq v7, v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    iput-object v7, v6, Lw/d;->j:Ljava/lang/String;

    .line 114
    .line 115
    :cond_4
    iget-object v7, v6, Lw/d;->g0:Ljava/lang/String;

    .line 116
    .line 117
    if-nez v7, :cond_3

    .line 118
    .line 119
    iget-object v7, v6, Lw/d;->j:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v7, v6, Lw/d;->g0:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v6, v6, Lw/d;->g0:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v1, v0}, Lw/e;->l(Ljava/lang/StringBuilder;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0
.end method

.method public final i(Landroid/view/View;)Lw/d;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Lz/e;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lz/e;

    .line 21
    .line 22
    iget-object p1, p1, Lz/e;->p0:Lw/d;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Lz/e;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lz/e;

    .line 49
    .line 50
    iget-object p1, p1, Lz/e;->p0:Lw/d;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method public final j(Lw/e;III)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    add-int v10, v7, v9

    .line 41
    .line 42
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->U:Lz/f;

    .line 47
    .line 48
    iput v7, v12, Lz/f;->b:I

    .line 49
    .line 50
    iput v9, v12, Lz/f;->c:I

    .line 51
    .line 52
    iput v11, v12, Lz/f;->d:I

    .line 53
    .line 54
    iput v10, v12, Lz/f;->e:I

    .line 55
    .line 56
    move/from16 v9, p3

    .line 57
    .line 58
    iput v9, v12, Lz/f;->f:I

    .line 59
    .line 60
    move/from16 v9, p4

    .line 61
    .line 62
    iput v9, v12, Lz/f;->g:I

    .line 63
    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    const/4 v14, 0x1

    .line 81
    if-gtz v9, :cond_1

    .line 82
    .line 83
    if-lez v13, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 104
    .line 105
    const/high16 v16, 0x400000

    .line 106
    .line 107
    and-int v15, v15, v16

    .line 108
    .line 109
    if-eqz v15, :cond_2

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-ne v14, v15, :cond_2

    .line 116
    .line 117
    move v9, v13

    .line 118
    :cond_2
    :goto_1
    sub-int/2addr v4, v11

    .line 119
    sub-int/2addr v6, v10

    .line 120
    iget v10, v12, Lz/f;->e:I

    .line 121
    .line 122
    iget v11, v12, Lz/f;->d:I

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    const/high16 v15, 0x40000000    # 2.0f

    .line 129
    .line 130
    const/high16 v13, -0x80000000

    .line 131
    .line 132
    if-eq v3, v13, :cond_6

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    if-eq v3, v15, :cond_3

    .line 137
    .line 138
    :goto_2
    const/16 v17, 0x0

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_3
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 142
    .line 143
    sub-int/2addr v14, v11

    .line 144
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    move/from16 v17, v14

    .line 149
    .line 150
    const/4 v14, 0x1

    .line 151
    goto :goto_5

    .line 152
    :cond_4
    if-nez v12, :cond_5

    .line 153
    .line 154
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 155
    .line 156
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    :goto_3
    move/from16 v17, v14

    .line 161
    .line 162
    :goto_4
    const/4 v14, 0x2

    .line 163
    goto :goto_5

    .line 164
    :cond_5
    const/4 v14, 0x2

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    if-nez v12, :cond_7

    .line 167
    .line 168
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 169
    .line 170
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    move/from16 v17, v4

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :goto_5
    if-eq v5, v13, :cond_b

    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    if-eq v5, v15, :cond_8

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    :goto_6
    const/4 v13, 0x0

    .line 186
    goto :goto_9

    .line 187
    :cond_8
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 188
    .line 189
    sub-int/2addr v12, v10

    .line 190
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    move v13, v12

    .line 195
    const/4 v12, 0x1

    .line 196
    goto :goto_9

    .line 197
    :cond_9
    if-nez v12, :cond_a

    .line 198
    .line 199
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 200
    .line 201
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    :goto_7
    move v13, v12

    .line 206
    :goto_8
    const/4 v12, 0x2

    .line 207
    goto :goto_9

    .line 208
    :cond_a
    const/4 v12, 0x2

    .line 209
    goto :goto_6

    .line 210
    :cond_b
    if-nez v12, :cond_c

    .line 211
    .line 212
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 213
    .line 214
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    goto :goto_7

    .line 219
    :cond_c
    move v13, v6

    .line 220
    goto :goto_8

    .line 221
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    iget-object v8, v1, Lw/e;->r0:Lx/e;

    .line 226
    .line 227
    move/from16 v19, v6

    .line 228
    .line 229
    move/from16 v6, v17

    .line 230
    .line 231
    if-ne v6, v15, :cond_d

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 234
    .line 235
    .line 236
    move-result v15

    .line 237
    if-eq v13, v15, :cond_e

    .line 238
    .line 239
    :cond_d
    const/4 v15, 0x1

    .line 240
    goto :goto_b

    .line 241
    :cond_e
    :goto_a
    const/4 v15, 0x0

    .line 242
    goto :goto_c

    .line 243
    :goto_b
    iput-boolean v15, v8, Lx/e;->b:Z

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :goto_c
    iput v15, v1, Lw/d;->X:I

    .line 247
    .line 248
    iput v15, v1, Lw/d;->Y:I

    .line 249
    .line 250
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 251
    .line 252
    sub-int/2addr v15, v11

    .line 253
    move-object/from16 v17, v8

    .line 254
    .line 255
    iget-object v8, v1, Lw/d;->C:[I

    .line 256
    .line 257
    move/from16 v20, v4

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    aput v15, v8, v4

    .line 261
    .line 262
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 263
    .line 264
    sub-int/2addr v15, v10

    .line 265
    const/16 v18, 0x1

    .line 266
    .line 267
    aput v15, v8, v18

    .line 268
    .line 269
    iput v4, v1, Lw/d;->a0:I

    .line 270
    .line 271
    iput v4, v1, Lw/d;->b0:I

    .line 272
    .line 273
    invoke-virtual {v1, v14}, Lw/d;->I(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v6}, Lw/d;->K(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v12}, Lw/d;->J(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v13}, Lw/d;->H(I)V

    .line 283
    .line 284
    .line 285
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 286
    .line 287
    sub-int/2addr v6, v11

    .line 288
    if-gez v6, :cond_f

    .line 289
    .line 290
    iput v4, v1, Lw/d;->a0:I

    .line 291
    .line 292
    goto :goto_d

    .line 293
    :cond_f
    iput v6, v1, Lw/d;->a0:I

    .line 294
    .line 295
    :goto_d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 296
    .line 297
    sub-int/2addr v6, v10

    .line 298
    if-gez v6, :cond_10

    .line 299
    .line 300
    iput v4, v1, Lw/d;->b0:I

    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_10
    iput v6, v1, Lw/d;->b0:I

    .line 304
    .line 305
    :goto_e
    iput v9, v1, Lw/e;->w0:I

    .line 306
    .line 307
    iput v7, v1, Lw/e;->x0:I

    .line 308
    .line 309
    iget-object v4, v1, Lw/e;->q0:Lm2/u;

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    iget-object v6, v1, Lw/e;->t0:Lz/f;

    .line 315
    .line 316
    iget-object v7, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    const/16 v11, 0x80

    .line 331
    .line 332
    invoke-static {v2, v11}, Lw/i;->b(II)Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    const/16 v12, 0x40

    .line 337
    .line 338
    if-nez v11, :cond_12

    .line 339
    .line 340
    invoke-static {v2, v12}, Lw/i;->b(II)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_11

    .line 345
    .line 346
    goto :goto_f

    .line 347
    :cond_11
    const/4 v2, 0x0

    .line 348
    goto :goto_10

    .line 349
    :cond_12
    :goto_f
    const/4 v2, 0x1

    .line 350
    :goto_10
    const/4 v13, 0x3

    .line 351
    if-eqz v2, :cond_1a

    .line 352
    .line 353
    const/4 v15, 0x0

    .line 354
    :goto_11
    if-ge v15, v7, :cond_1a

    .line 355
    .line 356
    iget-object v12, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Lw/d;

    .line 363
    .line 364
    iget-object v14, v12, Lw/d;->o0:[I

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    aget v0, v14, v18

    .line 369
    .line 370
    if-ne v0, v13, :cond_13

    .line 371
    .line 372
    const/4 v0, 0x1

    .line 373
    :goto_12
    const/16 v21, 0x1

    .line 374
    .line 375
    goto :goto_13

    .line 376
    :cond_13
    const/4 v0, 0x0

    .line 377
    goto :goto_12

    .line 378
    :goto_13
    aget v14, v14, v21

    .line 379
    .line 380
    if-ne v14, v13, :cond_14

    .line 381
    .line 382
    const/4 v14, 0x1

    .line 383
    goto :goto_14

    .line 384
    :cond_14
    const/4 v14, 0x0

    .line 385
    :goto_14
    if-eqz v0, :cond_15

    .line 386
    .line 387
    if-eqz v14, :cond_15

    .line 388
    .line 389
    iget v0, v12, Lw/d;->V:F

    .line 390
    .line 391
    const/4 v14, 0x0

    .line 392
    cmpl-float v0, v0, v14

    .line 393
    .line 394
    if-lez v0, :cond_15

    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    goto :goto_15

    .line 398
    :cond_15
    const/4 v0, 0x0

    .line 399
    :goto_15
    invoke-virtual {v12}, Lw/d;->v()Z

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    if-eqz v14, :cond_17

    .line 404
    .line 405
    if-eqz v0, :cond_17

    .line 406
    .line 407
    :cond_16
    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    goto :goto_17

    .line 411
    :cond_17
    invoke-virtual {v12}, Lw/d;->w()Z

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    if-eqz v14, :cond_18

    .line 416
    .line 417
    if-eqz v0, :cond_18

    .line 418
    .line 419
    goto :goto_16

    .line 420
    :cond_18
    invoke-virtual {v12}, Lw/d;->v()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_16

    .line 425
    .line 426
    invoke-virtual {v12}, Lw/d;->w()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_19

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_19
    add-int/lit8 v15, v15, 0x1

    .line 434
    .line 435
    move-object/from16 v0, p0

    .line 436
    .line 437
    const/16 v12, 0x40

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :cond_1a
    const/high16 v0, 0x40000000    # 2.0f

    .line 441
    .line 442
    :goto_17
    if-ne v3, v0, :cond_1b

    .line 443
    .line 444
    if-eq v5, v0, :cond_1c

    .line 445
    .line 446
    :cond_1b
    if-eqz v11, :cond_1d

    .line 447
    .line 448
    :cond_1c
    const/4 v0, 0x1

    .line 449
    goto :goto_18

    .line 450
    :cond_1d
    const/4 v0, 0x0

    .line 451
    :goto_18
    and-int/2addr v0, v2

    .line 452
    if-eqz v0, :cond_3c

    .line 453
    .line 454
    const/4 v12, 0x0

    .line 455
    aget v14, v8, v12

    .line 456
    .line 457
    move/from16 v12, v20

    .line 458
    .line 459
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    const/4 v14, 0x1

    .line 464
    aget v8, v8, v14

    .line 465
    .line 466
    move/from16 v15, v19

    .line 467
    .line 468
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    const/high16 v15, 0x40000000    # 2.0f

    .line 473
    .line 474
    if-ne v3, v15, :cond_1e

    .line 475
    .line 476
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 477
    .line 478
    .line 479
    move-result v13

    .line 480
    if-eq v13, v12, :cond_1e

    .line 481
    .line 482
    invoke-virtual {v1, v12}, Lw/d;->K(I)V

    .line 483
    .line 484
    .line 485
    iget-object v12, v1, Lw/e;->r0:Lx/e;

    .line 486
    .line 487
    iput-boolean v14, v12, Lx/e;->a:Z

    .line 488
    .line 489
    :cond_1e
    if-ne v5, v15, :cond_1f

    .line 490
    .line 491
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 492
    .line 493
    .line 494
    move-result v12

    .line 495
    if-eq v12, v8, :cond_1f

    .line 496
    .line 497
    invoke-virtual {v1, v8}, Lw/d;->H(I)V

    .line 498
    .line 499
    .line 500
    iget-object v8, v1, Lw/e;->r0:Lx/e;

    .line 501
    .line 502
    iput-boolean v14, v8, Lx/e;->a:Z

    .line 503
    .line 504
    :cond_1f
    if-ne v3, v15, :cond_35

    .line 505
    .line 506
    if-ne v5, v15, :cond_35

    .line 507
    .line 508
    and-int/lit8 v8, v11, 0x1

    .line 509
    .line 510
    move-object/from16 v12, v17

    .line 511
    .line 512
    iget-boolean v11, v12, Lx/e;->a:Z

    .line 513
    .line 514
    iget-object v13, v12, Lx/e;->c:Ljava/lang/Object;

    .line 515
    .line 516
    if-nez v11, :cond_21

    .line 517
    .line 518
    iget-boolean v11, v12, Lx/e;->b:Z

    .line 519
    .line 520
    if-eqz v11, :cond_20

    .line 521
    .line 522
    goto :goto_19

    .line 523
    :cond_20
    const/4 v2, 0x0

    .line 524
    goto :goto_1b

    .line 525
    :cond_21
    :goto_19
    move-object v11, v13

    .line 526
    check-cast v11, Lw/e;

    .line 527
    .line 528
    iget-object v14, v11, Lw/j;->p0:Ljava/util/ArrayList;

    .line 529
    .line 530
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 531
    .line 532
    .line 533
    move-result-object v14

    .line 534
    :goto_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 535
    .line 536
    .line 537
    move-result v15

    .line 538
    if-eqz v15, :cond_22

    .line 539
    .line 540
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v15

    .line 544
    check-cast v15, Lw/d;

    .line 545
    .line 546
    invoke-virtual {v15}, Lw/d;->f()V

    .line 547
    .line 548
    .line 549
    const/4 v2, 0x0

    .line 550
    iput-boolean v2, v15, Lw/d;->a:Z

    .line 551
    .line 552
    iget-object v2, v15, Lw/d;->d:Lx/k;

    .line 553
    .line 554
    invoke-virtual {v2}, Lx/k;->n()V

    .line 555
    .line 556
    .line 557
    iget-object v2, v15, Lw/d;->e:Lx/m;

    .line 558
    .line 559
    invoke-virtual {v2}, Lx/m;->m()V

    .line 560
    .line 561
    .line 562
    goto :goto_1a

    .line 563
    :cond_22
    invoke-virtual {v11}, Lw/d;->f()V

    .line 564
    .line 565
    .line 566
    const/4 v2, 0x0

    .line 567
    iput-boolean v2, v11, Lw/d;->a:Z

    .line 568
    .line 569
    iget-object v14, v11, Lw/d;->d:Lx/k;

    .line 570
    .line 571
    invoke-virtual {v14}, Lx/k;->n()V

    .line 572
    .line 573
    .line 574
    iget-object v11, v11, Lw/d;->e:Lx/m;

    .line 575
    .line 576
    invoke-virtual {v11}, Lx/m;->m()V

    .line 577
    .line 578
    .line 579
    iput-boolean v2, v12, Lx/e;->b:Z

    .line 580
    .line 581
    :goto_1b
    iget-object v11, v12, Lx/e;->d:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v11, Lw/e;

    .line 584
    .line 585
    invoke-virtual {v12, v11}, Lx/e;->c(Lw/e;)V

    .line 586
    .line 587
    .line 588
    check-cast v13, Lw/e;

    .line 589
    .line 590
    iput v2, v13, Lw/d;->X:I

    .line 591
    .line 592
    iput v2, v13, Lw/d;->Y:I

    .line 593
    .line 594
    invoke-virtual {v13, v2}, Lw/d;->h(I)I

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    const/4 v2, 0x1

    .line 599
    invoke-virtual {v13, v2}, Lw/d;->h(I)I

    .line 600
    .line 601
    .line 602
    move-result v14

    .line 603
    iget-boolean v2, v12, Lx/e;->a:Z

    .line 604
    .line 605
    if-eqz v2, :cond_23

    .line 606
    .line 607
    invoke-virtual {v12}, Lx/e;->d()V

    .line 608
    .line 609
    .line 610
    :cond_23
    invoke-virtual {v13}, Lw/d;->p()I

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    invoke-virtual {v13}, Lw/d;->q()I

    .line 615
    .line 616
    .line 617
    move-result v15

    .line 618
    move-object/from16 v20, v6

    .line 619
    .line 620
    iget-object v6, v13, Lw/d;->d:Lx/k;

    .line 621
    .line 622
    iget-object v6, v6, Lx/p;->h:Lx/f;

    .line 623
    .line 624
    invoke-virtual {v6, v2}, Lx/f;->d(I)V

    .line 625
    .line 626
    .line 627
    iget-object v6, v13, Lw/d;->e:Lx/m;

    .line 628
    .line 629
    iget-object v6, v6, Lx/p;->h:Lx/f;

    .line 630
    .line 631
    invoke-virtual {v6, v15}, Lx/f;->d(I)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v12}, Lx/e;->i()V

    .line 635
    .line 636
    .line 637
    iget-object v6, v12, Lx/e;->e:Ljava/lang/Object;

    .line 638
    .line 639
    move/from16 v21, v0

    .line 640
    .line 641
    const/4 v0, 0x2

    .line 642
    if-eq v11, v0, :cond_26

    .line 643
    .line 644
    if-ne v14, v0, :cond_24

    .line 645
    .line 646
    goto :goto_1c

    .line 647
    :cond_24
    move/from16 v22, v9

    .line 648
    .line 649
    :cond_25
    const/4 v0, 0x1

    .line 650
    goto :goto_1e

    .line 651
    :cond_26
    :goto_1c
    if-eqz v8, :cond_28

    .line 652
    .line 653
    move-object v0, v6

    .line 654
    check-cast v0, Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 661
    .line 662
    .line 663
    move-result v22

    .line 664
    if-eqz v22, :cond_28

    .line 665
    .line 666
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v22

    .line 670
    check-cast v22, Lx/p;

    .line 671
    .line 672
    invoke-virtual/range {v22 .. v22}, Lx/p;->k()Z

    .line 673
    .line 674
    .line 675
    move-result v22

    .line 676
    if-nez v22, :cond_27

    .line 677
    .line 678
    const/4 v8, 0x0

    .line 679
    :cond_28
    if-eqz v8, :cond_29

    .line 680
    .line 681
    const/4 v0, 0x2

    .line 682
    if-ne v11, v0, :cond_29

    .line 683
    .line 684
    const/4 v0, 0x1

    .line 685
    invoke-virtual {v13, v0}, Lw/d;->I(I)V

    .line 686
    .line 687
    .line 688
    move/from16 v22, v9

    .line 689
    .line 690
    const/4 v0, 0x0

    .line 691
    invoke-virtual {v12, v13, v0}, Lx/e;->e(Lw/e;I)I

    .line 692
    .line 693
    .line 694
    move-result v9

    .line 695
    invoke-virtual {v13, v9}, Lw/d;->K(I)V

    .line 696
    .line 697
    .line 698
    iget-object v0, v13, Lw/d;->d:Lx/k;

    .line 699
    .line 700
    iget-object v0, v0, Lx/p;->e:Lx/g;

    .line 701
    .line 702
    invoke-virtual {v13}, Lw/d;->o()I

    .line 703
    .line 704
    .line 705
    move-result v9

    .line 706
    invoke-virtual {v0, v9}, Lx/g;->d(I)V

    .line 707
    .line 708
    .line 709
    goto :goto_1d

    .line 710
    :cond_29
    move/from16 v22, v9

    .line 711
    .line 712
    :goto_1d
    if-eqz v8, :cond_25

    .line 713
    .line 714
    const/4 v0, 0x2

    .line 715
    if-ne v14, v0, :cond_25

    .line 716
    .line 717
    const/4 v0, 0x1

    .line 718
    invoke-virtual {v13, v0}, Lw/d;->J(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v12, v13, v0}, Lx/e;->e(Lw/e;I)I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    invoke-virtual {v13, v8}, Lw/d;->H(I)V

    .line 726
    .line 727
    .line 728
    iget-object v8, v13, Lw/d;->e:Lx/m;

    .line 729
    .line 730
    iget-object v8, v8, Lx/p;->e:Lx/g;

    .line 731
    .line 732
    invoke-virtual {v13}, Lw/d;->i()I

    .line 733
    .line 734
    .line 735
    move-result v9

    .line 736
    invoke-virtual {v8, v9}, Lx/g;->d(I)V

    .line 737
    .line 738
    .line 739
    :goto_1e
    iget-object v8, v13, Lw/d;->o0:[I

    .line 740
    .line 741
    move/from16 v23, v10

    .line 742
    .line 743
    const/4 v9, 0x0

    .line 744
    aget v10, v8, v9

    .line 745
    .line 746
    if-eq v10, v0, :cond_2b

    .line 747
    .line 748
    const/4 v0, 0x4

    .line 749
    if-ne v10, v0, :cond_2a

    .line 750
    .line 751
    goto :goto_1f

    .line 752
    :cond_2a
    const/4 v0, 0x0

    .line 753
    goto :goto_20

    .line 754
    :cond_2b
    :goto_1f
    invoke-virtual {v13}, Lw/d;->o()I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    add-int/2addr v0, v2

    .line 759
    iget-object v9, v13, Lw/d;->d:Lx/k;

    .line 760
    .line 761
    iget-object v9, v9, Lx/p;->i:Lx/f;

    .line 762
    .line 763
    invoke-virtual {v9, v0}, Lx/f;->d(I)V

    .line 764
    .line 765
    .line 766
    iget-object v9, v13, Lw/d;->d:Lx/k;

    .line 767
    .line 768
    iget-object v9, v9, Lx/p;->e:Lx/g;

    .line 769
    .line 770
    sub-int/2addr v0, v2

    .line 771
    invoke-virtual {v9, v0}, Lx/g;->d(I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v12}, Lx/e;->i()V

    .line 775
    .line 776
    .line 777
    const/4 v0, 0x1

    .line 778
    aget v2, v8, v0

    .line 779
    .line 780
    if-eq v2, v0, :cond_2c

    .line 781
    .line 782
    const/4 v0, 0x4

    .line 783
    if-ne v2, v0, :cond_2d

    .line 784
    .line 785
    :cond_2c
    invoke-virtual {v13}, Lw/d;->i()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    add-int/2addr v0, v15

    .line 790
    iget-object v2, v13, Lw/d;->e:Lx/m;

    .line 791
    .line 792
    iget-object v2, v2, Lx/p;->i:Lx/f;

    .line 793
    .line 794
    invoke-virtual {v2, v0}, Lx/f;->d(I)V

    .line 795
    .line 796
    .line 797
    iget-object v2, v13, Lw/d;->e:Lx/m;

    .line 798
    .line 799
    iget-object v2, v2, Lx/p;->e:Lx/g;

    .line 800
    .line 801
    sub-int/2addr v0, v15

    .line 802
    invoke-virtual {v2, v0}, Lx/g;->d(I)V

    .line 803
    .line 804
    .line 805
    :cond_2d
    invoke-virtual {v12}, Lx/e;->i()V

    .line 806
    .line 807
    .line 808
    const/4 v0, 0x1

    .line 809
    :goto_20
    check-cast v6, Ljava/util/ArrayList;

    .line 810
    .line 811
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    if-eqz v8, :cond_2f

    .line 820
    .line 821
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    check-cast v8, Lx/p;

    .line 826
    .line 827
    iget-object v9, v8, Lx/p;->b:Lw/d;

    .line 828
    .line 829
    if-ne v9, v13, :cond_2e

    .line 830
    .line 831
    iget-boolean v9, v8, Lx/p;->g:Z

    .line 832
    .line 833
    if-nez v9, :cond_2e

    .line 834
    .line 835
    goto :goto_21

    .line 836
    :cond_2e
    invoke-virtual {v8}, Lx/p;->e()V

    .line 837
    .line 838
    .line 839
    goto :goto_21

    .line 840
    :cond_2f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    :cond_30
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    if-eqz v6, :cond_34

    .line 849
    .line 850
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v6

    .line 854
    check-cast v6, Lx/p;

    .line 855
    .line 856
    if-nez v0, :cond_31

    .line 857
    .line 858
    iget-object v8, v6, Lx/p;->b:Lw/d;

    .line 859
    .line 860
    if-ne v8, v13, :cond_31

    .line 861
    .line 862
    goto :goto_22

    .line 863
    :cond_31
    iget-object v8, v6, Lx/p;->h:Lx/f;

    .line 864
    .line 865
    iget-boolean v8, v8, Lx/f;->j:Z

    .line 866
    .line 867
    if-nez v8, :cond_32

    .line 868
    .line 869
    :goto_23
    const/4 v0, 0x0

    .line 870
    goto :goto_24

    .line 871
    :cond_32
    iget-object v8, v6, Lx/p;->i:Lx/f;

    .line 872
    .line 873
    iget-boolean v8, v8, Lx/f;->j:Z

    .line 874
    .line 875
    if-nez v8, :cond_33

    .line 876
    .line 877
    instance-of v8, v6, Lx/i;

    .line 878
    .line 879
    if-nez v8, :cond_33

    .line 880
    .line 881
    goto :goto_23

    .line 882
    :cond_33
    iget-object v8, v6, Lx/p;->e:Lx/g;

    .line 883
    .line 884
    iget-boolean v8, v8, Lx/f;->j:Z

    .line 885
    .line 886
    if-nez v8, :cond_30

    .line 887
    .line 888
    instance-of v8, v6, Lx/c;

    .line 889
    .line 890
    if-nez v8, :cond_30

    .line 891
    .line 892
    instance-of v6, v6, Lx/i;

    .line 893
    .line 894
    if-nez v6, :cond_30

    .line 895
    .line 896
    goto :goto_23

    .line 897
    :cond_34
    const/4 v0, 0x1

    .line 898
    :goto_24
    invoke-virtual {v13, v11}, Lw/d;->I(I)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v13, v14}, Lw/d;->J(I)V

    .line 902
    .line 903
    .line 904
    move v6, v0

    .line 905
    const/high16 v0, 0x40000000    # 2.0f

    .line 906
    .line 907
    const/4 v2, 0x2

    .line 908
    goto/16 :goto_28

    .line 909
    .line 910
    :cond_35
    move/from16 v21, v0

    .line 911
    .line 912
    move-object/from16 v20, v6

    .line 913
    .line 914
    move/from16 v22, v9

    .line 915
    .line 916
    move/from16 v23, v10

    .line 917
    .line 918
    move-object/from16 v12, v17

    .line 919
    .line 920
    iget-boolean v0, v12, Lx/e;->a:Z

    .line 921
    .line 922
    iget-object v2, v12, Lx/e;->c:Ljava/lang/Object;

    .line 923
    .line 924
    if-eqz v0, :cond_37

    .line 925
    .line 926
    move-object v0, v2

    .line 927
    check-cast v0, Lw/e;

    .line 928
    .line 929
    iget-object v6, v0, Lw/j;->p0:Ljava/util/ArrayList;

    .line 930
    .line 931
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 932
    .line 933
    .line 934
    move-result-object v6

    .line 935
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 936
    .line 937
    .line 938
    move-result v8

    .line 939
    if-eqz v8, :cond_36

    .line 940
    .line 941
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    check-cast v8, Lw/d;

    .line 946
    .line 947
    invoke-virtual {v8}, Lw/d;->f()V

    .line 948
    .line 949
    .line 950
    const/4 v9, 0x0

    .line 951
    iput-boolean v9, v8, Lw/d;->a:Z

    .line 952
    .line 953
    iget-object v10, v8, Lw/d;->d:Lx/k;

    .line 954
    .line 955
    iget-object v13, v10, Lx/p;->e:Lx/g;

    .line 956
    .line 957
    iput-boolean v9, v13, Lx/f;->j:Z

    .line 958
    .line 959
    iput-boolean v9, v10, Lx/p;->g:Z

    .line 960
    .line 961
    invoke-virtual {v10}, Lx/k;->n()V

    .line 962
    .line 963
    .line 964
    iget-object v8, v8, Lw/d;->e:Lx/m;

    .line 965
    .line 966
    iget-object v10, v8, Lx/p;->e:Lx/g;

    .line 967
    .line 968
    iput-boolean v9, v10, Lx/f;->j:Z

    .line 969
    .line 970
    iput-boolean v9, v8, Lx/p;->g:Z

    .line 971
    .line 972
    invoke-virtual {v8}, Lx/m;->m()V

    .line 973
    .line 974
    .line 975
    goto :goto_25

    .line 976
    :cond_36
    const/4 v9, 0x0

    .line 977
    invoke-virtual {v0}, Lw/d;->f()V

    .line 978
    .line 979
    .line 980
    iput-boolean v9, v0, Lw/d;->a:Z

    .line 981
    .line 982
    iget-object v6, v0, Lw/d;->d:Lx/k;

    .line 983
    .line 984
    iget-object v8, v6, Lx/p;->e:Lx/g;

    .line 985
    .line 986
    iput-boolean v9, v8, Lx/f;->j:Z

    .line 987
    .line 988
    iput-boolean v9, v6, Lx/p;->g:Z

    .line 989
    .line 990
    invoke-virtual {v6}, Lx/k;->n()V

    .line 991
    .line 992
    .line 993
    iget-object v0, v0, Lw/d;->e:Lx/m;

    .line 994
    .line 995
    iget-object v6, v0, Lx/p;->e:Lx/g;

    .line 996
    .line 997
    iput-boolean v9, v6, Lx/f;->j:Z

    .line 998
    .line 999
    iput-boolean v9, v0, Lx/p;->g:Z

    .line 1000
    .line 1001
    invoke-virtual {v0}, Lx/m;->m()V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v12}, Lx/e;->d()V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_26

    .line 1008
    :cond_37
    const/4 v9, 0x0

    .line 1009
    :goto_26
    iget-object v0, v12, Lx/e;->d:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast v0, Lw/e;

    .line 1012
    .line 1013
    invoke-virtual {v12, v0}, Lx/e;->c(Lw/e;)V

    .line 1014
    .line 1015
    .line 1016
    check-cast v2, Lw/e;

    .line 1017
    .line 1018
    iput v9, v2, Lw/d;->X:I

    .line 1019
    .line 1020
    iput v9, v2, Lw/d;->Y:I

    .line 1021
    .line 1022
    iget-object v0, v2, Lw/d;->d:Lx/k;

    .line 1023
    .line 1024
    iget-object v0, v0, Lx/p;->h:Lx/f;

    .line 1025
    .line 1026
    invoke-virtual {v0, v9}, Lx/f;->d(I)V

    .line 1027
    .line 1028
    .line 1029
    iget-object v0, v2, Lw/d;->e:Lx/m;

    .line 1030
    .line 1031
    iget-object v0, v0, Lx/p;->h:Lx/f;

    .line 1032
    .line 1033
    invoke-virtual {v0, v9}, Lx/f;->d(I)V

    .line 1034
    .line 1035
    .line 1036
    const/high16 v0, 0x40000000    # 2.0f

    .line 1037
    .line 1038
    if-ne v3, v0, :cond_38

    .line 1039
    .line 1040
    invoke-virtual {v1, v9, v11}, Lw/e;->Q(IZ)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    const/4 v6, 0x1

    .line 1045
    and-int/2addr v2, v6

    .line 1046
    move v8, v2

    .line 1047
    const/4 v2, 0x1

    .line 1048
    goto :goto_27

    .line 1049
    :cond_38
    const/4 v6, 0x1

    .line 1050
    const/4 v2, 0x0

    .line 1051
    const/4 v8, 0x1

    .line 1052
    :goto_27
    if-ne v5, v0, :cond_39

    .line 1053
    .line 1054
    invoke-virtual {v1, v6, v11}, Lw/e;->Q(IZ)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v9

    .line 1058
    and-int v6, v8, v9

    .line 1059
    .line 1060
    add-int/lit8 v2, v2, 0x1

    .line 1061
    .line 1062
    goto :goto_28

    .line 1063
    :cond_39
    move v6, v8

    .line 1064
    :goto_28
    if-eqz v6, :cond_3d

    .line 1065
    .line 1066
    if-ne v3, v0, :cond_3a

    .line 1067
    .line 1068
    const/4 v3, 0x1

    .line 1069
    goto :goto_29

    .line 1070
    :cond_3a
    const/4 v3, 0x0

    .line 1071
    :goto_29
    if-ne v5, v0, :cond_3b

    .line 1072
    .line 1073
    const/4 v0, 0x1

    .line 1074
    goto :goto_2a

    .line 1075
    :cond_3b
    const/4 v0, 0x0

    .line 1076
    :goto_2a
    invoke-virtual {v1, v3, v0}, Lw/e;->L(ZZ)V

    .line 1077
    .line 1078
    .line 1079
    goto :goto_2b

    .line 1080
    :cond_3c
    move/from16 v21, v0

    .line 1081
    .line 1082
    move-object/from16 v20, v6

    .line 1083
    .line 1084
    move/from16 v22, v9

    .line 1085
    .line 1086
    move/from16 v23, v10

    .line 1087
    .line 1088
    const/4 v2, 0x0

    .line 1089
    const/4 v6, 0x0

    .line 1090
    :cond_3d
    :goto_2b
    if-eqz v6, :cond_3e

    .line 1091
    .line 1092
    const/4 v0, 0x2

    .line 1093
    if-eq v2, v0, :cond_5e

    .line 1094
    .line 1095
    :cond_3e
    iget v0, v1, Lw/e;->C0:I

    .line 1096
    .line 1097
    if-lez v7, :cond_4c

    .line 1098
    .line 1099
    iget-object v2, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 1100
    .line 1101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1102
    .line 1103
    .line 1104
    move-result v2

    .line 1105
    const/16 v3, 0x40

    .line 1106
    .line 1107
    invoke-virtual {v1, v3}, Lw/e;->S(I)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v3

    .line 1111
    iget-object v5, v1, Lw/e;->t0:Lz/f;

    .line 1112
    .line 1113
    const/4 v15, 0x0

    .line 1114
    :goto_2c
    if-ge v15, v2, :cond_4a

    .line 1115
    .line 1116
    iget-object v6, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 1117
    .line 1118
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v6

    .line 1122
    check-cast v6, Lw/d;

    .line 1123
    .line 1124
    instance-of v8, v6, Lw/f;

    .line 1125
    .line 1126
    if-eqz v8, :cond_3f

    .line 1127
    .line 1128
    :goto_2d
    const/4 v8, 0x3

    .line 1129
    const/4 v10, 0x0

    .line 1130
    goto/16 :goto_32

    .line 1131
    .line 1132
    :cond_3f
    instance-of v8, v6, Lw/a;

    .line 1133
    .line 1134
    if-eqz v8, :cond_40

    .line 1135
    .line 1136
    goto :goto_2d

    .line 1137
    :cond_40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    if-eqz v3, :cond_41

    .line 1141
    .line 1142
    iget-object v8, v6, Lw/d;->d:Lx/k;

    .line 1143
    .line 1144
    if-eqz v8, :cond_41

    .line 1145
    .line 1146
    iget-object v9, v6, Lw/d;->e:Lx/m;

    .line 1147
    .line 1148
    if-eqz v9, :cond_41

    .line 1149
    .line 1150
    iget-object v8, v8, Lx/p;->e:Lx/g;

    .line 1151
    .line 1152
    iget-boolean v8, v8, Lx/f;->j:Z

    .line 1153
    .line 1154
    if-eqz v8, :cond_41

    .line 1155
    .line 1156
    iget-object v8, v9, Lx/p;->e:Lx/g;

    .line 1157
    .line 1158
    iget-boolean v8, v8, Lx/f;->j:Z

    .line 1159
    .line 1160
    if-eqz v8, :cond_41

    .line 1161
    .line 1162
    goto :goto_2d

    .line 1163
    :cond_41
    const/4 v8, 0x0

    .line 1164
    invoke-virtual {v6, v8}, Lw/d;->h(I)I

    .line 1165
    .line 1166
    .line 1167
    move-result v9

    .line 1168
    const/4 v8, 0x1

    .line 1169
    invoke-virtual {v6, v8}, Lw/d;->h(I)I

    .line 1170
    .line 1171
    .line 1172
    move-result v10

    .line 1173
    const/4 v11, 0x3

    .line 1174
    if-ne v9, v11, :cond_42

    .line 1175
    .line 1176
    iget v12, v6, Lw/d;->r:I

    .line 1177
    .line 1178
    if-eq v12, v8, :cond_42

    .line 1179
    .line 1180
    if-ne v10, v11, :cond_42

    .line 1181
    .line 1182
    iget v11, v6, Lw/d;->s:I

    .line 1183
    .line 1184
    if-eq v11, v8, :cond_42

    .line 1185
    .line 1186
    const/4 v11, 0x1

    .line 1187
    goto :goto_2e

    .line 1188
    :cond_42
    const/4 v11, 0x0

    .line 1189
    :goto_2e
    if-nez v11, :cond_47

    .line 1190
    .line 1191
    invoke-virtual {v1, v8}, Lw/e;->S(I)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v12

    .line 1195
    if-eqz v12, :cond_47

    .line 1196
    .line 1197
    const/4 v8, 0x3

    .line 1198
    if-ne v9, v8, :cond_43

    .line 1199
    .line 1200
    iget v12, v6, Lw/d;->r:I

    .line 1201
    .line 1202
    if-nez v12, :cond_43

    .line 1203
    .line 1204
    if-eq v10, v8, :cond_43

    .line 1205
    .line 1206
    invoke-virtual {v6}, Lw/d;->v()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v12

    .line 1210
    if-nez v12, :cond_43

    .line 1211
    .line 1212
    const/4 v11, 0x1

    .line 1213
    :cond_43
    if-ne v10, v8, :cond_44

    .line 1214
    .line 1215
    iget v12, v6, Lw/d;->s:I

    .line 1216
    .line 1217
    if-nez v12, :cond_44

    .line 1218
    .line 1219
    if-eq v9, v8, :cond_44

    .line 1220
    .line 1221
    invoke-virtual {v6}, Lw/d;->v()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v12

    .line 1225
    if-nez v12, :cond_44

    .line 1226
    .line 1227
    const/4 v11, 0x1

    .line 1228
    :cond_44
    if-eq v9, v8, :cond_46

    .line 1229
    .line 1230
    if-ne v10, v8, :cond_45

    .line 1231
    .line 1232
    goto :goto_30

    .line 1233
    :cond_45
    :goto_2f
    const/4 v10, 0x0

    .line 1234
    goto :goto_31

    .line 1235
    :cond_46
    :goto_30
    iget v9, v6, Lw/d;->V:F

    .line 1236
    .line 1237
    const/4 v10, 0x0

    .line 1238
    cmpl-float v9, v9, v10

    .line 1239
    .line 1240
    if-lez v9, :cond_48

    .line 1241
    .line 1242
    goto :goto_32

    .line 1243
    :cond_47
    const/4 v8, 0x3

    .line 1244
    goto :goto_2f

    .line 1245
    :cond_48
    :goto_31
    if-eqz v11, :cond_49

    .line 1246
    .line 1247
    goto :goto_32

    .line 1248
    :cond_49
    const/4 v9, 0x0

    .line 1249
    invoke-virtual {v4, v9, v6, v5}, Lm2/u;->H(ILw/d;Lz/f;)Z

    .line 1250
    .line 1251
    .line 1252
    :goto_32
    add-int/lit8 v15, v15, 0x1

    .line 1253
    .line 1254
    goto/16 :goto_2c

    .line 1255
    .line 1256
    :cond_4a
    iget-object v2, v5, Lz/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1257
    .line 1258
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1259
    .line 1260
    .line 1261
    move-result v3

    .line 1262
    const/4 v15, 0x0

    .line 1263
    :goto_33
    if-ge v15, v3, :cond_4b

    .line 1264
    .line 1265
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1266
    .line 1267
    .line 1268
    add-int/lit8 v15, v15, 0x1

    .line 1269
    .line 1270
    goto :goto_33

    .line 1271
    :cond_4b
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 1272
    .line 1273
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1274
    .line 1275
    .line 1276
    move-result v3

    .line 1277
    if-lez v3, :cond_4c

    .line 1278
    .line 1279
    const/4 v15, 0x0

    .line 1280
    :goto_34
    if-ge v15, v3, :cond_4c

    .line 1281
    .line 1282
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v5

    .line 1286
    check-cast v5, Lz/c;

    .line 1287
    .line 1288
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1289
    .line 1290
    .line 1291
    add-int/lit8 v15, v15, 0x1

    .line 1292
    .line 1293
    goto :goto_34

    .line 1294
    :cond_4c
    invoke-virtual {v4, v1}, Lm2/u;->V(Lw/e;)V

    .line 1295
    .line 1296
    .line 1297
    iget-object v2, v4, Lm2/u;->H:Ljava/lang/Object;

    .line 1298
    .line 1299
    check-cast v2, Ljava/util/ArrayList;

    .line 1300
    .line 1301
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    move/from16 v3, v22

    .line 1306
    .line 1307
    move/from16 v5, v23

    .line 1308
    .line 1309
    const/4 v15, 0x0

    .line 1310
    if-lez v7, :cond_4d

    .line 1311
    .line 1312
    invoke-virtual {v4, v1, v15, v3, v5}, Lm2/u;->T(Lw/e;III)V

    .line 1313
    .line 1314
    .line 1315
    :cond_4d
    if-lez v2, :cond_5d

    .line 1316
    .line 1317
    iget-object v6, v1, Lw/d;->o0:[I

    .line 1318
    .line 1319
    aget v7, v6, v15

    .line 1320
    .line 1321
    const/4 v8, 0x2

    .line 1322
    if-ne v7, v8, :cond_4e

    .line 1323
    .line 1324
    const/4 v7, 0x1

    .line 1325
    :goto_35
    const/4 v9, 0x1

    .line 1326
    goto :goto_36

    .line 1327
    :cond_4e
    const/4 v7, 0x0

    .line 1328
    goto :goto_35

    .line 1329
    :goto_36
    aget v6, v6, v9

    .line 1330
    .line 1331
    if-ne v6, v8, :cond_4f

    .line 1332
    .line 1333
    const/4 v6, 0x1

    .line 1334
    goto :goto_37

    .line 1335
    :cond_4f
    const/4 v6, 0x0

    .line 1336
    :goto_37
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 1337
    .line 1338
    .line 1339
    move-result v8

    .line 1340
    iget-object v9, v4, Lm2/u;->J:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v9, Lw/e;

    .line 1343
    .line 1344
    iget v9, v9, Lw/d;->a0:I

    .line 1345
    .line 1346
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 1347
    .line 1348
    .line 1349
    move-result v8

    .line 1350
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 1351
    .line 1352
    .line 1353
    move-result v9

    .line 1354
    iget-object v10, v4, Lm2/u;->J:Ljava/lang/Object;

    .line 1355
    .line 1356
    check-cast v10, Lw/e;

    .line 1357
    .line 1358
    iget v10, v10, Lw/d;->b0:I

    .line 1359
    .line 1360
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 1361
    .line 1362
    .line 1363
    move-result v9

    .line 1364
    const/4 v10, 0x0

    .line 1365
    :goto_38
    if-ge v10, v2, :cond_50

    .line 1366
    .line 1367
    iget-object v11, v4, Lm2/u;->H:Ljava/lang/Object;

    .line 1368
    .line 1369
    check-cast v11, Ljava/util/ArrayList;

    .line 1370
    .line 1371
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v11

    .line 1375
    check-cast v11, Lw/d;

    .line 1376
    .line 1377
    add-int/lit8 v10, v10, 0x1

    .line 1378
    .line 1379
    goto :goto_38

    .line 1380
    :cond_50
    const/4 v10, 0x2

    .line 1381
    const/4 v11, 0x0

    .line 1382
    :goto_39
    if-ge v11, v10, :cond_5d

    .line 1383
    .line 1384
    const/4 v12, 0x0

    .line 1385
    const/4 v13, 0x0

    .line 1386
    :goto_3a
    if-ge v12, v2, :cond_5b

    .line 1387
    .line 1388
    iget-object v14, v4, Lm2/u;->H:Ljava/lang/Object;

    .line 1389
    .line 1390
    check-cast v14, Ljava/util/ArrayList;

    .line 1391
    .line 1392
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v14

    .line 1396
    check-cast v14, Lw/d;

    .line 1397
    .line 1398
    instance-of v10, v14, Lw/g;

    .line 1399
    .line 1400
    if-eqz v10, :cond_51

    .line 1401
    .line 1402
    goto :goto_3b

    .line 1403
    :cond_51
    instance-of v10, v14, Lw/f;

    .line 1404
    .line 1405
    if-eqz v10, :cond_52

    .line 1406
    .line 1407
    goto :goto_3b

    .line 1408
    :cond_52
    iget v10, v14, Lw/d;->f0:I

    .line 1409
    .line 1410
    const/16 v15, 0x8

    .line 1411
    .line 1412
    if-ne v10, v15, :cond_53

    .line 1413
    .line 1414
    goto :goto_3b

    .line 1415
    :cond_53
    if-eqz v21, :cond_54

    .line 1416
    .line 1417
    iget-object v10, v14, Lw/d;->d:Lx/k;

    .line 1418
    .line 1419
    iget-object v10, v10, Lx/p;->e:Lx/g;

    .line 1420
    .line 1421
    iget-boolean v10, v10, Lx/f;->j:Z

    .line 1422
    .line 1423
    if-eqz v10, :cond_54

    .line 1424
    .line 1425
    iget-object v10, v14, Lw/d;->e:Lx/m;

    .line 1426
    .line 1427
    iget-object v10, v10, Lx/p;->e:Lx/g;

    .line 1428
    .line 1429
    iget-boolean v10, v10, Lx/f;->j:Z

    .line 1430
    .line 1431
    if-eqz v10, :cond_54

    .line 1432
    .line 1433
    :goto_3b
    move/from16 v16, v0

    .line 1434
    .line 1435
    move/from16 p2, v2

    .line 1436
    .line 1437
    move v15, v13

    .line 1438
    move-object/from16 v1, v20

    .line 1439
    .line 1440
    const/4 v13, 0x4

    .line 1441
    goto/16 :goto_3f

    .line 1442
    .line 1443
    :cond_54
    invoke-virtual {v14}, Lw/d;->o()I

    .line 1444
    .line 1445
    .line 1446
    move-result v10

    .line 1447
    invoke-virtual {v14}, Lw/d;->i()I

    .line 1448
    .line 1449
    .line 1450
    move-result v15

    .line 1451
    move/from16 p2, v2

    .line 1452
    .line 1453
    iget v2, v14, Lw/d;->Z:I

    .line 1454
    .line 1455
    move/from16 v16, v0

    .line 1456
    .line 1457
    const/4 v0, 0x1

    .line 1458
    move-object/from16 v1, v20

    .line 1459
    .line 1460
    if-ne v11, v0, :cond_55

    .line 1461
    .line 1462
    const/4 v0, 0x2

    .line 1463
    :cond_55
    invoke-virtual {v4, v0, v14, v1}, Lm2/u;->H(ILw/d;Lz/f;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v0

    .line 1467
    or-int/2addr v0, v13

    .line 1468
    invoke-virtual {v14}, Lw/d;->o()I

    .line 1469
    .line 1470
    .line 1471
    move-result v13

    .line 1472
    move/from16 v19, v0

    .line 1473
    .line 1474
    invoke-virtual {v14}, Lw/d;->i()I

    .line 1475
    .line 1476
    .line 1477
    move-result v0

    .line 1478
    if-eq v13, v10, :cond_57

    .line 1479
    .line 1480
    invoke-virtual {v14, v13}, Lw/d;->K(I)V

    .line 1481
    .line 1482
    .line 1483
    if-eqz v7, :cond_56

    .line 1484
    .line 1485
    invoke-virtual {v14}, Lw/d;->p()I

    .line 1486
    .line 1487
    .line 1488
    move-result v10

    .line 1489
    iget v13, v14, Lw/d;->T:I

    .line 1490
    .line 1491
    add-int/2addr v10, v13

    .line 1492
    if-le v10, v8, :cond_56

    .line 1493
    .line 1494
    invoke-virtual {v14}, Lw/d;->p()I

    .line 1495
    .line 1496
    .line 1497
    move-result v10

    .line 1498
    iget v13, v14, Lw/d;->T:I

    .line 1499
    .line 1500
    add-int/2addr v10, v13

    .line 1501
    const/4 v13, 0x4

    .line 1502
    invoke-virtual {v14, v13}, Lw/d;->g(I)Lw/c;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v17

    .line 1506
    invoke-virtual/range {v17 .. v17}, Lw/c;->d()I

    .line 1507
    .line 1508
    .line 1509
    move-result v17

    .line 1510
    add-int v10, v17, v10

    .line 1511
    .line 1512
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 1513
    .line 1514
    .line 1515
    move-result v8

    .line 1516
    goto :goto_3c

    .line 1517
    :cond_56
    const/4 v13, 0x4

    .line 1518
    :goto_3c
    const/16 v19, 0x1

    .line 1519
    .line 1520
    goto :goto_3d

    .line 1521
    :cond_57
    const/4 v13, 0x4

    .line 1522
    :goto_3d
    if-eq v0, v15, :cond_59

    .line 1523
    .line 1524
    invoke-virtual {v14, v0}, Lw/d;->H(I)V

    .line 1525
    .line 1526
    .line 1527
    if-eqz v6, :cond_58

    .line 1528
    .line 1529
    invoke-virtual {v14}, Lw/d;->q()I

    .line 1530
    .line 1531
    .line 1532
    move-result v0

    .line 1533
    iget v10, v14, Lw/d;->U:I

    .line 1534
    .line 1535
    add-int/2addr v0, v10

    .line 1536
    if-le v0, v9, :cond_58

    .line 1537
    .line 1538
    invoke-virtual {v14}, Lw/d;->q()I

    .line 1539
    .line 1540
    .line 1541
    move-result v0

    .line 1542
    iget v10, v14, Lw/d;->U:I

    .line 1543
    .line 1544
    add-int/2addr v0, v10

    .line 1545
    const/4 v10, 0x5

    .line 1546
    invoke-virtual {v14, v10}, Lw/d;->g(I)Lw/c;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v10

    .line 1550
    invoke-virtual {v10}, Lw/c;->d()I

    .line 1551
    .line 1552
    .line 1553
    move-result v10

    .line 1554
    add-int/2addr v10, v0

    .line 1555
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 1556
    .line 1557
    .line 1558
    move-result v9

    .line 1559
    :cond_58
    const/4 v15, 0x1

    .line 1560
    goto :goto_3e

    .line 1561
    :cond_59
    move/from16 v15, v19

    .line 1562
    .line 1563
    :goto_3e
    iget-boolean v0, v14, Lw/d;->E:Z

    .line 1564
    .line 1565
    if-eqz v0, :cond_5a

    .line 1566
    .line 1567
    iget v0, v14, Lw/d;->Z:I

    .line 1568
    .line 1569
    if-eq v2, v0, :cond_5a

    .line 1570
    .line 1571
    const/4 v15, 0x1

    .line 1572
    :cond_5a
    :goto_3f
    add-int/lit8 v12, v12, 0x1

    .line 1573
    .line 1574
    move/from16 v2, p2

    .line 1575
    .line 1576
    move-object/from16 v20, v1

    .line 1577
    .line 1578
    move v13, v15

    .line 1579
    move/from16 v0, v16

    .line 1580
    .line 1581
    const/4 v10, 0x2

    .line 1582
    const/4 v15, 0x0

    .line 1583
    move-object/from16 v1, p1

    .line 1584
    .line 1585
    goto/16 :goto_3a

    .line 1586
    .line 1587
    :cond_5b
    move/from16 v16, v0

    .line 1588
    .line 1589
    move/from16 p2, v2

    .line 1590
    .line 1591
    move-object/from16 v1, v20

    .line 1592
    .line 1593
    const/4 v0, 0x4

    .line 1594
    if-eqz v13, :cond_5c

    .line 1595
    .line 1596
    add-int/lit8 v11, v11, 0x1

    .line 1597
    .line 1598
    move-object v2, v1

    .line 1599
    move-object/from16 v1, p1

    .line 1600
    .line 1601
    invoke-virtual {v4, v1, v11, v3, v5}, Lm2/u;->T(Lw/e;III)V

    .line 1602
    .line 1603
    .line 1604
    move-object/from16 v20, v2

    .line 1605
    .line 1606
    move/from16 v0, v16

    .line 1607
    .line 1608
    const/4 v10, 0x2

    .line 1609
    const/4 v15, 0x0

    .line 1610
    move/from16 v2, p2

    .line 1611
    .line 1612
    goto/16 :goto_39

    .line 1613
    .line 1614
    :cond_5c
    move-object/from16 v1, p1

    .line 1615
    .line 1616
    move/from16 v0, v16

    .line 1617
    .line 1618
    :cond_5d
    iput v0, v1, Lw/e;->C0:I

    .line 1619
    .line 1620
    const/16 v0, 0x200

    .line 1621
    .line 1622
    invoke-virtual {v1, v0}, Lw/e;->S(I)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v0

    .line 1626
    sput-boolean v0, Lu/d;->q:Z

    .line 1627
    .line 1628
    :cond_5e
    return-void
.end method

.method public final k(Lw/d;Lz/e;Landroid/util/SparseArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lw/d;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Lz/e;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Lz/e;->c0:Z

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    if-ne p5, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lz/e;

    .line 38
    .line 39
    iput-boolean p4, v0, Lz/e;->c0:Z

    .line 40
    .line 41
    iget-object v0, v0, Lz/e;->p0:Lw/d;

    .line 42
    .line 43
    iput-boolean p4, v0, Lw/d;->E:Z

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lw/d;->g(I)Lw/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, p5}, Lw/d;->g(I)Lw/c;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget p5, p2, Lz/e;->D:I

    .line 54
    .line 55
    iget p2, p2, Lz/e;->C:I

    .line 56
    .line 57
    invoke-virtual {v0, p3, p5, p2}, Lw/c;->a(Lw/c;II)V

    .line 58
    .line 59
    .line 60
    iput-boolean p4, p1, Lw/d;->E:Z

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lw/d;->g(I)Lw/c;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lw/c;->g()V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x5

    .line 71
    invoke-virtual {p1, p2}, Lw/d;->g(I)Lw/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lw/c;->g()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 p4, 0x0

    .line 11
    :goto_0
    if-ge p4, p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lz/e;

    .line 22
    .line 23
    iget-object v1, v0, Lz/e;->p0:Lw/d;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Lz/e;->d0:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v0, v0, Lz/e;->e0:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v1}, Lw/d;->p()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v1}, Lw/d;->q()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1}, Lw/d;->o()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v3, v0

    .line 57
    invoke-virtual {v1}, Lw/d;->i()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v2

    .line 62
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-lez p2, :cond_2

    .line 75
    .line 76
    :goto_2
    if-ge p3, p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    check-cast p4, Lz/c;

    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    add-int/lit8 p3, p3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 27

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 v11, 0x1

    .line 11
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 12
    .line 13
    iput-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iput-boolean v11, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/2addr v2, v11

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 48
    .line 49
    const/high16 v2, 0x400000

    .line 50
    .line 51
    and-int/2addr v0, v2

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v11, v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_2
    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 64
    .line 65
    iput-boolean v0, v12, Lw/e;->u0:Z

    .line 66
    .line 67
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 68
    .line 69
    if-eqz v0, :cond_39

    .line 70
    .line 71
    iput-boolean v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x0

    .line 78
    :goto_3
    if-ge v2, v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    goto :goto_4

    .line 92
    :cond_3
    add-int/2addr v2, v11

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/4 v13, 0x0

    .line 95
    :goto_4
    if-eqz v13, :cond_37

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_5
    if-ge v0, v15, :cond_6

    .line 107
    .line 108
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_5
    invoke-virtual {v2}, Lw/d;->A()V

    .line 120
    .line 121
    .line 122
    :goto_6
    add-int/2addr v0, v11

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    const/4 v3, -0x1

    .line 125
    if-eqz v14, :cond_f

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    :goto_7
    if-ge v0, v15, :cond_f

    .line 129
    .line 130
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    instance-of v2, v5, Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->S:Ljava/util/HashMap;

    .line 159
    .line 160
    if-nez v2, :cond_7

    .line 161
    .line 162
    new-instance v2, Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->S:Ljava/util/HashMap;

    .line 168
    .line 169
    :cond_7
    const-string v2, "/"

    .line 170
    .line 171
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eq v2, v3, :cond_8

    .line 176
    .line 177
    add-int/2addr v2, v11

    .line 178
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_8

    .line 183
    :cond_8
    move-object v2, v5

    .line 184
    :goto_8
    iget-object v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->S:Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_9
    const/16 v2, 0x2f

    .line 190
    .line 191
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eq v2, v3, :cond_a

    .line 196
    .line 197
    add-int/2addr v2, v11

    .line 198
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_b

    .line 207
    .line 208
    :goto_9
    move-object v2, v12

    .line 209
    goto :goto_a

    .line 210
    :cond_b
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    check-cast v4, Landroid/view/View;

    .line 215
    .line 216
    if-nez v4, :cond_c

    .line 217
    .line 218
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_c

    .line 223
    .line 224
    if-eq v4, v7, :cond_c

    .line 225
    .line 226
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    if-ne v2, v7, :cond_c

    .line 231
    .line 232
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    if-ne v4, v7, :cond_d

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_d
    if-nez v4, :cond_e

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    goto :goto_a

    .line 242
    :cond_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Lz/e;

    .line 247
    .line 248
    iget-object v2, v2, Lz/e;->p0:Lw/d;

    .line 249
    .line 250
    :goto_a
    iput-object v5, v2, Lw/d;->g0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    :catch_0
    add-int/2addr v0, v11

    .line 253
    const/4 v10, 0x0

    .line 254
    goto :goto_7

    .line 255
    :cond_f
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->R:I

    .line 256
    .line 257
    if-eq v0, v3, :cond_10

    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    :goto_b
    if-ge v0, v15, :cond_10

    .line 261
    .line 262
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 267
    .line 268
    .line 269
    add-int/2addr v0, v11

    .line 270
    goto :goto_b

    .line 271
    :cond_10
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 272
    .line 273
    if-eqz v2, :cond_2a

    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    new-instance v5, Ljava/util/HashSet;

    .line 280
    .line 281
    iget-object v6, v2, Lz/o;->c:Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 288
    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    :goto_c
    if-ge v10, v4, :cond_21

    .line 292
    .line 293
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    const-string v8, "ConstraintSet"

    .line 310
    .line 311
    if-nez v3, :cond_11

    .line 312
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string v3, "id unknown "

    .line 316
    .line 317
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :try_start_1
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    .line 329
    .line 330
    .line 331
    move-result v11

    .line 332
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    goto :goto_d

    .line 337
    :catch_1
    const-string v3, "UNKNOWN"

    .line 338
    .line 339
    :goto_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    :goto_e
    move-object/from16 v23, v1

    .line 350
    .line 351
    move-object/from16 v18, v2

    .line 352
    .line 353
    move/from16 v26, v4

    .line 354
    .line 355
    move-object/from16 v25, v12

    .line 356
    .line 357
    move/from16 v19, v13

    .line 358
    .line 359
    move/from16 v20, v14

    .line 360
    .line 361
    move/from16 v21, v15

    .line 362
    .line 363
    const/4 v1, 0x1

    .line 364
    const/4 v2, -0x1

    .line 365
    goto/16 :goto_1b

    .line 366
    .line 367
    :cond_11
    iget-boolean v3, v2, Lz/o;->b:Z

    .line 368
    .line 369
    if-eqz v3, :cond_13

    .line 370
    .line 371
    const/4 v3, -0x1

    .line 372
    if-eq v0, v3, :cond_12

    .line 373
    .line 374
    goto :goto_f

    .line 375
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 376
    .line 377
    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 378
    .line 379
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_13
    const/4 v3, -0x1

    .line 384
    :goto_f
    if-ne v0, v3, :cond_14

    .line 385
    .line 386
    :goto_10
    goto :goto_e

    .line 387
    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_20

    .line 396
    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    check-cast v3, Lz/j;

    .line 413
    .line 414
    if-nez v3, :cond_15

    .line 415
    .line 416
    goto :goto_10

    .line 417
    :cond_15
    instance-of v8, v11, Lz/a;

    .line 418
    .line 419
    if-eqz v8, :cond_17

    .line 420
    .line 421
    iget-object v8, v3, Lz/j;->d:Lz/k;

    .line 422
    .line 423
    move-object/from16 v18, v2

    .line 424
    .line 425
    const/4 v2, 0x1

    .line 426
    iput v2, v8, Lz/k;->h0:I

    .line 427
    .line 428
    move-object v2, v11

    .line 429
    check-cast v2, Lz/a;

    .line 430
    .line 431
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 432
    .line 433
    .line 434
    iget v0, v8, Lz/k;->f0:I

    .line 435
    .line 436
    invoke-virtual {v2, v0}, Lz/a;->setType(I)V

    .line 437
    .line 438
    .line 439
    iget v0, v8, Lz/k;->g0:I

    .line 440
    .line 441
    invoke-virtual {v2, v0}, Lz/a;->setMargin(I)V

    .line 442
    .line 443
    .line 444
    iget-boolean v0, v8, Lz/k;->n0:Z

    .line 445
    .line 446
    invoke-virtual {v2, v0}, Lz/a;->setAllowsGoneWidget(Z)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v8, Lz/k;->i0:[I

    .line 450
    .line 451
    if-eqz v0, :cond_16

    .line 452
    .line 453
    invoke-virtual {v2, v0}, Lz/c;->setReferencedIds([I)V

    .line 454
    .line 455
    .line 456
    goto :goto_11

    .line 457
    :cond_16
    iget-object v0, v8, Lz/k;->j0:Ljava/lang/String;

    .line 458
    .line 459
    if-eqz v0, :cond_18

    .line 460
    .line 461
    invoke-static {v2, v0}, Lz/o;->b(Lz/a;Ljava/lang/String;)[I

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    iput-object v0, v8, Lz/k;->i0:[I

    .line 466
    .line 467
    invoke-virtual {v2, v0}, Lz/c;->setReferencedIds([I)V

    .line 468
    .line 469
    .line 470
    goto :goto_11

    .line 471
    :cond_17
    move-object/from16 v18, v2

    .line 472
    .line 473
    :cond_18
    :goto_11
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    move-object v2, v0

    .line 478
    check-cast v2, Lz/e;

    .line 479
    .line 480
    invoke-virtual {v2}, Lz/e;->a()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v2}, Lz/j;->a(Lz/e;)V

    .line 484
    .line 485
    .line 486
    iget-object v8, v3, Lz/j;->f:Ljava/util/HashMap;

    .line 487
    .line 488
    const-string v9, "\" not found on "

    .line 489
    .line 490
    move/from16 v19, v13

    .line 491
    .line 492
    const-string v13, " Custom Attribute \""

    .line 493
    .line 494
    move/from16 v20, v14

    .line 495
    .line 496
    const-string v14, "TransitionLayout"

    .line 497
    .line 498
    move/from16 v21, v15

    .line 499
    .line 500
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    move-result-object v15

    .line 504
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v22

    .line 512
    :goto_12
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_1a

    .line 517
    .line 518
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    move-object/from16 v23, v1

    .line 523
    .line 524
    move-object v1, v0

    .line 525
    check-cast v1, Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Lz/b;

    .line 532
    .line 533
    move-object/from16 v24, v8

    .line 534
    .line 535
    iget-boolean v8, v0, Lz/b;->a:Z

    .line 536
    .line 537
    if-nez v8, :cond_19

    .line 538
    .line 539
    const-string v8, "set"

    .line 540
    .line 541
    invoke-static {v8, v1}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    :goto_13
    move-object/from16 v25, v12

    .line 546
    .line 547
    goto :goto_14

    .line 548
    :cond_19
    move-object v8, v1

    .line 549
    goto :goto_13

    .line 550
    :goto_14
    :try_start_2
    iget v12, v0, Lz/b;->b:I

    .line 551
    .line 552
    invoke-static {v12}, Lu/h;->b(I)I

    .line 553
    .line 554
    .line 555
    move-result v12
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    .line 556
    packed-switch v12, :pswitch_data_0

    .line 557
    .line 558
    .line 559
    move/from16 v26, v4

    .line 560
    .line 561
    goto/16 :goto_18

    .line 562
    .line 563
    :pswitch_0
    move/from16 v26, v4

    .line 564
    .line 565
    const/4 v12, 0x1

    .line 566
    :try_start_3
    new-array v4, v12, [Ljava/lang/Class;

    .line 567
    .line 568
    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 569
    .line 570
    const/16 v16, 0x0

    .line 571
    .line 572
    aput-object v17, v4, v16

    .line 573
    .line 574
    invoke-virtual {v15, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    new-array v7, v12, [Ljava/lang/Object;

    .line 579
    .line 580
    iget v0, v0, Lz/b;->c:I

    .line 581
    .line 582
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    aput-object v0, v7, v16

    .line 587
    .line 588
    invoke-virtual {v4, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    goto/16 :goto_18

    .line 592
    .line 593
    :catch_2
    move-exception v0

    .line 594
    goto/16 :goto_15

    .line 595
    .line 596
    :catch_3
    move-exception v0

    .line 597
    goto/16 :goto_16

    .line 598
    .line 599
    :catch_4
    move-exception v0

    .line 600
    goto/16 :goto_17

    .line 601
    .line 602
    :pswitch_1
    move/from16 v26, v4

    .line 603
    .line 604
    const/4 v4, 0x1

    .line 605
    new-array v7, v4, [Ljava/lang/Class;

    .line 606
    .line 607
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 608
    .line 609
    const/16 v16, 0x0

    .line 610
    .line 611
    aput-object v12, v7, v16

    .line 612
    .line 613
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 614
    .line 615
    .line 616
    move-result-object v7

    .line 617
    new-array v12, v4, [Ljava/lang/Object;

    .line 618
    .line 619
    iget v0, v0, Lz/b;->d:F

    .line 620
    .line 621
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    aput-object v0, v12, v16

    .line 626
    .line 627
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    goto/16 :goto_18

    .line 631
    .line 632
    :pswitch_2
    move/from16 v26, v4

    .line 633
    .line 634
    const/4 v4, 0x1

    .line 635
    new-array v7, v4, [Ljava/lang/Class;

    .line 636
    .line 637
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 638
    .line 639
    const/16 v16, 0x0

    .line 640
    .line 641
    aput-object v12, v7, v16

    .line 642
    .line 643
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    new-array v12, v4, [Ljava/lang/Object;

    .line 648
    .line 649
    iget-boolean v0, v0, Lz/b;->f:Z

    .line 650
    .line 651
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    aput-object v0, v12, v16

    .line 656
    .line 657
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    goto/16 :goto_18

    .line 661
    .line 662
    :pswitch_3
    move/from16 v26, v4

    .line 663
    .line 664
    const/4 v4, 0x1

    .line 665
    new-array v7, v4, [Ljava/lang/Class;

    .line 666
    .line 667
    const-class v12, Ljava/lang/CharSequence;

    .line 668
    .line 669
    const/16 v16, 0x0

    .line 670
    .line 671
    aput-object v12, v7, v16

    .line 672
    .line 673
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    new-array v12, v4, [Ljava/lang/Object;

    .line 678
    .line 679
    iget-object v0, v0, Lz/b;->e:Ljava/lang/String;

    .line 680
    .line 681
    aput-object v0, v12, v16

    .line 682
    .line 683
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    goto/16 :goto_18

    .line 687
    .line 688
    :pswitch_4
    move/from16 v26, v4

    .line 689
    .line 690
    const/4 v4, 0x1

    .line 691
    new-array v7, v4, [Ljava/lang/Class;

    .line 692
    .line 693
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 694
    .line 695
    const/4 v12, 0x0

    .line 696
    aput-object v4, v7, v12

    .line 697
    .line 698
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 703
    .line 704
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 705
    .line 706
    .line 707
    iget v0, v0, Lz/b;->g:I

    .line 708
    .line 709
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 710
    .line 711
    .line 712
    const/4 v12, 0x1

    .line 713
    new-array v0, v12, [Ljava/lang/Object;

    .line 714
    .line 715
    const/4 v12, 0x0

    .line 716
    aput-object v7, v0, v12

    .line 717
    .line 718
    invoke-virtual {v4, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    goto/16 :goto_18

    .line 722
    .line 723
    :pswitch_5
    move/from16 v26, v4

    .line 724
    .line 725
    const/4 v4, 0x1

    .line 726
    new-array v7, v4, [Ljava/lang/Class;

    .line 727
    .line 728
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 729
    .line 730
    const/16 v16, 0x0

    .line 731
    .line 732
    aput-object v12, v7, v16

    .line 733
    .line 734
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    new-array v12, v4, [Ljava/lang/Object;

    .line 739
    .line 740
    iget v0, v0, Lz/b;->g:I

    .line 741
    .line 742
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    aput-object v0, v12, v16

    .line 747
    .line 748
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    goto/16 :goto_18

    .line 752
    .line 753
    :pswitch_6
    move/from16 v26, v4

    .line 754
    .line 755
    const/4 v4, 0x1

    .line 756
    new-array v7, v4, [Ljava/lang/Class;

    .line 757
    .line 758
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 759
    .line 760
    const/16 v16, 0x0

    .line 761
    .line 762
    aput-object v12, v7, v16

    .line 763
    .line 764
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 765
    .line 766
    .line 767
    move-result-object v7

    .line 768
    new-array v12, v4, [Ljava/lang/Object;

    .line 769
    .line 770
    iget v0, v0, Lz/b;->d:F

    .line 771
    .line 772
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    aput-object v0, v12, v16

    .line 777
    .line 778
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    goto :goto_18

    .line 782
    :pswitch_7
    move/from16 v26, v4

    .line 783
    .line 784
    const/4 v4, 0x1

    .line 785
    new-array v7, v4, [Ljava/lang/Class;

    .line 786
    .line 787
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 788
    .line 789
    const/16 v16, 0x0

    .line 790
    .line 791
    aput-object v12, v7, v16

    .line 792
    .line 793
    invoke-virtual {v15, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    new-array v12, v4, [Ljava/lang/Object;

    .line 798
    .line 799
    iget v0, v0, Lz/b;->c:I

    .line 800
    .line 801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    aput-object v0, v12, v16

    .line 806
    .line 807
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    .line 808
    .line 809
    .line 810
    goto :goto_18

    .line 811
    :catch_5
    move-exception v0

    .line 812
    move/from16 v26, v4

    .line 813
    .line 814
    goto :goto_15

    .line 815
    :catch_6
    move-exception v0

    .line 816
    move/from16 v26, v4

    .line 817
    .line 818
    goto :goto_16

    .line 819
    :catch_7
    move-exception v0

    .line 820
    move/from16 v26, v4

    .line 821
    .line 822
    goto :goto_17

    .line 823
    :goto_15
    invoke-static {v13, v1, v9}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    .line 840
    .line 841
    goto :goto_18

    .line 842
    :goto_16
    invoke-static {v13, v1, v9}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .line 859
    .line 860
    goto :goto_18

    .line 861
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 862
    .line 863
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v4

    .line 870
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v4, " must have a method "

    .line 874
    .line 875
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 886
    .line 887
    .line 888
    :goto_18
    move-object/from16 v7, p0

    .line 889
    .line 890
    move-object/from16 v1, v23

    .line 891
    .line 892
    move-object/from16 v8, v24

    .line 893
    .line 894
    move-object/from16 v12, v25

    .line 895
    .line 896
    move/from16 v4, v26

    .line 897
    .line 898
    goto/16 :goto_12

    .line 899
    .line 900
    :cond_1a
    move-object/from16 v23, v1

    .line 901
    .line 902
    move/from16 v26, v4

    .line 903
    .line 904
    move-object/from16 v25, v12

    .line 905
    .line 906
    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    .line 908
    .line 909
    iget-object v0, v3, Lz/j;->b:Lz/m;

    .line 910
    .line 911
    iget v1, v0, Lz/m;->b:I

    .line 912
    .line 913
    if-nez v1, :cond_1b

    .line 914
    .line 915
    iget v1, v0, Lz/m;->a:I

    .line 916
    .line 917
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    .line 919
    .line 920
    :cond_1b
    iget v0, v0, Lz/m;->c:F

    .line 921
    .line 922
    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 923
    .line 924
    .line 925
    iget-object v0, v3, Lz/j;->e:Lz/n;

    .line 926
    .line 927
    iget v1, v0, Lz/n;->a:F

    .line 928
    .line 929
    invoke-virtual {v11, v1}, Landroid/view/View;->setRotation(F)V

    .line 930
    .line 931
    .line 932
    iget v1, v0, Lz/n;->b:F

    .line 933
    .line 934
    invoke-virtual {v11, v1}, Landroid/view/View;->setRotationX(F)V

    .line 935
    .line 936
    .line 937
    iget v1, v0, Lz/n;->c:F

    .line 938
    .line 939
    invoke-virtual {v11, v1}, Landroid/view/View;->setRotationY(F)V

    .line 940
    .line 941
    .line 942
    iget v1, v0, Lz/n;->d:F

    .line 943
    .line 944
    invoke-virtual {v11, v1}, Landroid/view/View;->setScaleX(F)V

    .line 945
    .line 946
    .line 947
    iget v1, v0, Lz/n;->e:F

    .line 948
    .line 949
    invoke-virtual {v11, v1}, Landroid/view/View;->setScaleY(F)V

    .line 950
    .line 951
    .line 952
    iget v1, v0, Lz/n;->h:I

    .line 953
    .line 954
    const/4 v2, -0x1

    .line 955
    if-eq v1, v2, :cond_1c

    .line 956
    .line 957
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    check-cast v1, Landroid/view/View;

    .line 962
    .line 963
    iget v3, v0, Lz/n;->h:I

    .line 964
    .line 965
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    if-eqz v1, :cond_1e

    .line 970
    .line 971
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 972
    .line 973
    .line 974
    move-result v3

    .line 975
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 976
    .line 977
    .line 978
    move-result v4

    .line 979
    add-int/2addr v4, v3

    .line 980
    int-to-float v3, v4

    .line 981
    const/high16 v4, 0x40000000    # 2.0f

    .line 982
    .line 983
    div-float/2addr v3, v4

    .line 984
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 985
    .line 986
    .line 987
    move-result v7

    .line 988
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 989
    .line 990
    .line 991
    move-result v1

    .line 992
    add-int/2addr v1, v7

    .line 993
    int-to-float v1, v1

    .line 994
    div-float/2addr v1, v4

    .line 995
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 1000
    .line 1001
    .line 1002
    move-result v7

    .line 1003
    sub-int/2addr v4, v7

    .line 1004
    if-lez v4, :cond_1e

    .line 1005
    .line 1006
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 1007
    .line 1008
    .line 1009
    move-result v4

    .line 1010
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 1011
    .line 1012
    .line 1013
    move-result v7

    .line 1014
    sub-int/2addr v4, v7

    .line 1015
    if-lez v4, :cond_1e

    .line 1016
    .line 1017
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 1018
    .line 1019
    .line 1020
    move-result v4

    .line 1021
    int-to-float v4, v4

    .line 1022
    sub-float/2addr v1, v4

    .line 1023
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    int-to-float v4, v4

    .line 1028
    sub-float/2addr v3, v4

    .line 1029
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v11, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_19

    .line 1036
    :cond_1c
    iget v1, v0, Lz/n;->f:F

    .line 1037
    .line 1038
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v1

    .line 1042
    if-nez v1, :cond_1d

    .line 1043
    .line 1044
    iget v1, v0, Lz/n;->f:F

    .line 1045
    .line 1046
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1047
    .line 1048
    .line 1049
    :cond_1d
    iget v1, v0, Lz/n;->g:F

    .line 1050
    .line 1051
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    if-nez v1, :cond_1e

    .line 1056
    .line 1057
    iget v1, v0, Lz/n;->g:F

    .line 1058
    .line 1059
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1060
    .line 1061
    .line 1062
    :cond_1e
    :goto_19
    iget v1, v0, Lz/n;->i:F

    .line 1063
    .line 1064
    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1065
    .line 1066
    .line 1067
    iget v1, v0, Lz/n;->j:F

    .line 1068
    .line 1069
    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1070
    .line 1071
    .line 1072
    iget v1, v0, Lz/n;->k:F

    .line 1073
    .line 1074
    invoke-virtual {v11, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 1075
    .line 1076
    .line 1077
    iget-boolean v1, v0, Lz/n;->l:Z

    .line 1078
    .line 1079
    if-eqz v1, :cond_1f

    .line 1080
    .line 1081
    iget v0, v0, Lz/n;->m:F

    .line 1082
    .line 1083
    invoke-virtual {v11, v0}, Landroid/view/View;->setElevation(F)V

    .line 1084
    .line 1085
    .line 1086
    :cond_1f
    :goto_1a
    const/4 v1, 0x1

    .line 1087
    goto :goto_1b

    .line 1088
    :cond_20
    move-object/from16 v23, v1

    .line 1089
    .line 1090
    move-object/from16 v18, v2

    .line 1091
    .line 1092
    move/from16 v26, v4

    .line 1093
    .line 1094
    move-object/from16 v25, v12

    .line 1095
    .line 1096
    move/from16 v19, v13

    .line 1097
    .line 1098
    move/from16 v20, v14

    .line 1099
    .line 1100
    move/from16 v21, v15

    .line 1101
    .line 1102
    const/4 v2, -0x1

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    const-string v3, "WARNING NO CONSTRAINTS for view "

    .line 1106
    .line 1107
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    .line 1119
    .line 1120
    goto :goto_1a

    .line 1121
    :goto_1b
    add-int/2addr v10, v1

    .line 1122
    move-object/from16 v7, p0

    .line 1123
    .line 1124
    move/from16 v8, p1

    .line 1125
    .line 1126
    move/from16 v9, p2

    .line 1127
    .line 1128
    move-object/from16 v2, v18

    .line 1129
    .line 1130
    move/from16 v13, v19

    .line 1131
    .line 1132
    move/from16 v14, v20

    .line 1133
    .line 1134
    move/from16 v15, v21

    .line 1135
    .line 1136
    move-object/from16 v1, v23

    .line 1137
    .line 1138
    move-object/from16 v12, v25

    .line 1139
    .line 1140
    move/from16 v4, v26

    .line 1141
    .line 1142
    const/4 v3, -0x1

    .line 1143
    const/4 v11, 0x1

    .line 1144
    goto/16 :goto_c

    .line 1145
    .line 1146
    :cond_21
    move-object/from16 v23, v1

    .line 1147
    .line 1148
    move/from16 v26, v4

    .line 1149
    .line 1150
    move-object/from16 v25, v12

    .line 1151
    .line 1152
    move/from16 v19, v13

    .line 1153
    .line 1154
    move/from16 v20, v14

    .line 1155
    .line 1156
    move/from16 v21, v15

    .line 1157
    .line 1158
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    :cond_22
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    if-eqz v1, :cond_27

    .line 1167
    .line 1168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    check-cast v1, Ljava/lang/Integer;

    .line 1173
    .line 1174
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    check-cast v2, Lz/j;

    .line 1179
    .line 1180
    if-nez v2, :cond_23

    .line 1181
    .line 1182
    goto :goto_1c

    .line 1183
    :cond_23
    iget-object v3, v2, Lz/j;->d:Lz/k;

    .line 1184
    .line 1185
    iget v4, v3, Lz/k;->h0:I

    .line 1186
    .line 1187
    const/4 v5, 0x1

    .line 1188
    if-ne v4, v5, :cond_26

    .line 1189
    .line 1190
    new-instance v4, Lz/a;

    .line 1191
    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v5

    .line 1196
    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1197
    .line 1198
    .line 1199
    const/16 v7, 0x20

    .line 1200
    .line 1201
    new-array v7, v7, [I

    .line 1202
    .line 1203
    iput-object v7, v4, Lz/c;->G:[I

    .line 1204
    .line 1205
    new-instance v7, Ljava/util/HashMap;

    .line 1206
    .line 1207
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1208
    .line 1209
    .line 1210
    iput-object v7, v4, Lz/c;->M:Ljava/util/HashMap;

    .line 1211
    .line 1212
    iput-object v5, v4, Lz/c;->I:Landroid/content/Context;

    .line 1213
    .line 1214
    new-instance v5, Lw/a;

    .line 1215
    .line 1216
    invoke-direct {v5}, Lw/d;-><init>()V

    .line 1217
    .line 1218
    .line 1219
    const/4 v7, 0x4

    .line 1220
    new-array v7, v7, [Lw/d;

    .line 1221
    .line 1222
    iput-object v7, v5, Lw/h;->p0:[Lw/d;

    .line 1223
    .line 1224
    const/4 v7, 0x0

    .line 1225
    iput v7, v5, Lw/h;->q0:I

    .line 1226
    .line 1227
    iput v7, v5, Lw/a;->r0:I

    .line 1228
    .line 1229
    const/4 v8, 0x1

    .line 1230
    iput-boolean v8, v5, Lw/a;->s0:Z

    .line 1231
    .line 1232
    iput v7, v5, Lw/a;->t0:I

    .line 1233
    .line 1234
    iput-boolean v7, v5, Lw/a;->u0:Z

    .line 1235
    .line 1236
    iput-object v5, v4, Lz/a;->P:Lw/a;

    .line 1237
    .line 1238
    iput-object v5, v4, Lz/c;->J:Lw/a;

    .line 1239
    .line 1240
    invoke-virtual {v4}, Lz/c;->e()V

    .line 1241
    .line 1242
    .line 1243
    const/16 v5, 0x8

    .line 1244
    .line 1245
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1249
    .line 1250
    .line 1251
    move-result v5

    .line 1252
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 1253
    .line 1254
    .line 1255
    iget-object v5, v3, Lz/k;->i0:[I

    .line 1256
    .line 1257
    if-eqz v5, :cond_24

    .line 1258
    .line 1259
    invoke-virtual {v4, v5}, Lz/c;->setReferencedIds([I)V

    .line 1260
    .line 1261
    .line 1262
    goto :goto_1d

    .line 1263
    :cond_24
    iget-object v5, v3, Lz/k;->j0:Ljava/lang/String;

    .line 1264
    .line 1265
    if-eqz v5, :cond_25

    .line 1266
    .line 1267
    invoke-static {v4, v5}, Lz/o;->b(Lz/a;Ljava/lang/String;)[I

    .line 1268
    .line 1269
    .line 1270
    move-result-object v5

    .line 1271
    iput-object v5, v3, Lz/k;->i0:[I

    .line 1272
    .line 1273
    invoke-virtual {v4, v5}, Lz/c;->setReferencedIds([I)V

    .line 1274
    .line 1275
    .line 1276
    :cond_25
    :goto_1d
    iget v5, v3, Lz/k;->f0:I

    .line 1277
    .line 1278
    invoke-virtual {v4, v5}, Lz/a;->setType(I)V

    .line 1279
    .line 1280
    .line 1281
    iget v5, v3, Lz/k;->g0:I

    .line 1282
    .line 1283
    invoke-virtual {v4, v5}, Lz/a;->setMargin(I)V

    .line 1284
    .line 1285
    .line 1286
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()Lz/e;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v5

    .line 1290
    invoke-virtual {v4}, Lz/c;->e()V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v2, v5}, Lz/j;->a(Lz/e;)V

    .line 1294
    .line 1295
    .line 1296
    move-object/from16 v7, p0

    .line 1297
    .line 1298
    invoke-virtual {v7, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_1e

    .line 1302
    :cond_26
    move-object/from16 v7, p0

    .line 1303
    .line 1304
    :goto_1e
    iget-boolean v3, v3, Lz/k;->a:Z

    .line 1305
    .line 1306
    if-eqz v3, :cond_22

    .line 1307
    .line 1308
    new-instance v3, Landroidx/constraintlayout/widget/Guideline;

    .line 1309
    .line 1310
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v4

    .line 1314
    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1318
    .line 1319
    .line 1320
    move-result v1

    .line 1321
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 1322
    .line 1323
    .line 1324
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()Lz/e;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    invoke-virtual {v2, v1}, Lz/j;->a(Lz/e;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v7, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    .line 1333
    .line 1334
    goto/16 :goto_1c

    .line 1335
    .line 1336
    :cond_27
    move-object/from16 v7, p0

    .line 1337
    .line 1338
    move/from16 v1, v26

    .line 1339
    .line 1340
    const/4 v0, 0x0

    .line 1341
    :goto_1f
    if-ge v0, v1, :cond_29

    .line 1342
    .line 1343
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v2

    .line 1347
    instance-of v3, v2, Lz/c;

    .line 1348
    .line 1349
    if-eqz v3, :cond_28

    .line 1350
    .line 1351
    check-cast v2, Lz/c;

    .line 1352
    .line 1353
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1354
    .line 1355
    .line 1356
    :cond_28
    const/4 v2, 0x1

    .line 1357
    add-int/2addr v0, v2

    .line 1358
    goto :goto_1f

    .line 1359
    :cond_29
    move-object/from16 v8, v25

    .line 1360
    .line 1361
    goto :goto_20

    .line 1362
    :cond_2a
    move-object/from16 v23, v1

    .line 1363
    .line 1364
    move/from16 v19, v13

    .line 1365
    .line 1366
    move/from16 v20, v14

    .line 1367
    .line 1368
    move/from16 v21, v15

    .line 1369
    .line 1370
    move-object v8, v12

    .line 1371
    :goto_20
    iget-object v0, v8, Lw/j;->p0:Ljava/util/ArrayList;

    .line 1372
    .line 1373
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1374
    .line 1375
    .line 1376
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 1377
    .line 1378
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1379
    .line 1380
    .line 1381
    move-result v1

    .line 1382
    if-lez v1, :cond_32

    .line 1383
    .line 1384
    const/4 v2, 0x0

    .line 1385
    :goto_21
    if-ge v2, v1, :cond_32

    .line 1386
    .line 1387
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v3

    .line 1391
    check-cast v3, Lz/c;

    .line 1392
    .line 1393
    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v4

    .line 1397
    if-eqz v4, :cond_2b

    .line 1398
    .line 1399
    iget-object v4, v3, Lz/c;->K:Ljava/lang/String;

    .line 1400
    .line 1401
    invoke-virtual {v3, v4}, Lz/c;->setIds(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    :cond_2b
    iget-object v4, v3, Lz/c;->J:Lw/a;

    .line 1405
    .line 1406
    if-nez v4, :cond_2c

    .line 1407
    .line 1408
    move-object/from16 v9, v23

    .line 1409
    .line 1410
    const/4 v5, 0x0

    .line 1411
    const/4 v10, 0x1

    .line 1412
    goto/16 :goto_25

    .line 1413
    .line 1414
    :cond_2c
    const/4 v5, 0x0

    .line 1415
    iput v5, v4, Lw/h;->q0:I

    .line 1416
    .line 1417
    iget-object v4, v4, Lw/h;->p0:[Lw/d;

    .line 1418
    .line 1419
    const/4 v5, 0x0

    .line 1420
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1421
    .line 1422
    .line 1423
    const/4 v4, 0x0

    .line 1424
    :goto_22
    iget v6, v3, Lz/c;->H:I

    .line 1425
    .line 1426
    if-ge v4, v6, :cond_31

    .line 1427
    .line 1428
    iget-object v6, v3, Lz/c;->G:[I

    .line 1429
    .line 1430
    aget v6, v6, v4

    .line 1431
    .line 1432
    move-object/from16 v9, v23

    .line 1433
    .line 1434
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v10

    .line 1438
    check-cast v10, Landroid/view/View;

    .line 1439
    .line 1440
    if-nez v10, :cond_2d

    .line 1441
    .line 1442
    iget-object v11, v3, Lz/c;->M:Ljava/util/HashMap;

    .line 1443
    .line 1444
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v6

    .line 1448
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v6

    .line 1452
    check-cast v6, Ljava/lang/String;

    .line 1453
    .line 1454
    invoke-virtual {v3, v7, v6}, Lz/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 1455
    .line 1456
    .line 1457
    move-result v12

    .line 1458
    if-eqz v12, :cond_2d

    .line 1459
    .line 1460
    iget-object v10, v3, Lz/c;->G:[I

    .line 1461
    .line 1462
    aput v12, v10, v4

    .line 1463
    .line 1464
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v10

    .line 1468
    invoke-virtual {v11, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v6

    .line 1475
    move-object v10, v6

    .line 1476
    check-cast v10, Landroid/view/View;

    .line 1477
    .line 1478
    :cond_2d
    if-eqz v10, :cond_30

    .line 1479
    .line 1480
    iget-object v6, v3, Lz/c;->J:Lw/a;

    .line 1481
    .line 1482
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v10

    .line 1486
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1487
    .line 1488
    .line 1489
    if-eq v10, v6, :cond_30

    .line 1490
    .line 1491
    if-nez v10, :cond_2e

    .line 1492
    .line 1493
    goto :goto_23

    .line 1494
    :cond_2e
    iget v11, v6, Lw/h;->q0:I

    .line 1495
    .line 1496
    const/4 v12, 0x1

    .line 1497
    add-int/2addr v11, v12

    .line 1498
    iget-object v12, v6, Lw/h;->p0:[Lw/d;

    .line 1499
    .line 1500
    array-length v13, v12

    .line 1501
    if-le v11, v13, :cond_2f

    .line 1502
    .line 1503
    array-length v11, v12

    .line 1504
    mul-int/lit8 v11, v11, 0x2

    .line 1505
    .line 1506
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v11

    .line 1510
    check-cast v11, [Lw/d;

    .line 1511
    .line 1512
    iput-object v11, v6, Lw/h;->p0:[Lw/d;

    .line 1513
    .line 1514
    :cond_2f
    iget-object v11, v6, Lw/h;->p0:[Lw/d;

    .line 1515
    .line 1516
    iget v12, v6, Lw/h;->q0:I

    .line 1517
    .line 1518
    aput-object v10, v11, v12

    .line 1519
    .line 1520
    const/4 v10, 0x1

    .line 1521
    add-int/2addr v12, v10

    .line 1522
    iput v12, v6, Lw/h;->q0:I

    .line 1523
    .line 1524
    goto :goto_24

    .line 1525
    :cond_30
    :goto_23
    const/4 v10, 0x1

    .line 1526
    :goto_24
    add-int/2addr v4, v10

    .line 1527
    move-object/from16 v23, v9

    .line 1528
    .line 1529
    goto :goto_22

    .line 1530
    :cond_31
    move-object/from16 v9, v23

    .line 1531
    .line 1532
    const/4 v10, 0x1

    .line 1533
    iget-object v3, v3, Lz/c;->J:Lw/a;

    .line 1534
    .line 1535
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1536
    .line 1537
    .line 1538
    :goto_25
    add-int/2addr v2, v10

    .line 1539
    move-object/from16 v23, v9

    .line 1540
    .line 1541
    goto/16 :goto_21

    .line 1542
    .line 1543
    :cond_32
    const/4 v10, 0x1

    .line 1544
    move/from16 v9, v21

    .line 1545
    .line 1546
    const/4 v0, 0x0

    .line 1547
    :goto_26
    if-ge v0, v9, :cond_33

    .line 1548
    .line 1549
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1550
    .line 1551
    .line 1552
    add-int/2addr v0, v10

    .line 1553
    goto :goto_26

    .line 1554
    :cond_33
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->T:Landroid/util/SparseArray;

    .line 1555
    .line 1556
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1557
    .line 1558
    .line 1559
    const/4 v1, 0x0

    .line 1560
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 1564
    .line 1565
    .line 1566
    move-result v1

    .line 1567
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1568
    .line 1569
    .line 1570
    const/4 v1, 0x0

    .line 1571
    :goto_27
    if-ge v1, v9, :cond_34

    .line 1572
    .line 1573
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v2

    .line 1577
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v3

    .line 1581
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 1582
    .line 1583
    .line 1584
    move-result v2

    .line 1585
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1586
    .line 1587
    .line 1588
    const/4 v2, 0x1

    .line 1589
    add-int/2addr v1, v2

    .line 1590
    goto :goto_27

    .line 1591
    :cond_34
    const/4 v10, 0x0

    .line 1592
    :goto_28
    if-ge v10, v9, :cond_38

    .line 1593
    .line 1594
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v3

    .line 1598
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v4

    .line 1602
    if-nez v4, :cond_35

    .line 1603
    .line 1604
    :goto_29
    const/4 v1, 0x1

    .line 1605
    goto :goto_2a

    .line 1606
    :cond_35
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v1

    .line 1610
    move-object v5, v1

    .line 1611
    check-cast v5, Lz/e;

    .line 1612
    .line 1613
    iget-object v1, v8, Lw/j;->p0:Ljava/util/ArrayList;

    .line 1614
    .line 1615
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    .line 1617
    .line 1618
    iget-object v1, v4, Lw/d;->S:Lw/d;

    .line 1619
    .line 1620
    if-eqz v1, :cond_36

    .line 1621
    .line 1622
    check-cast v1, Lw/j;

    .line 1623
    .line 1624
    iget-object v1, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 1625
    .line 1626
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v4}, Lw/d;->A()V

    .line 1630
    .line 1631
    .line 1632
    :cond_36
    iput-object v8, v4, Lw/d;->S:Lw/d;

    .line 1633
    .line 1634
    move-object/from16 v1, p0

    .line 1635
    .line 1636
    move/from16 v2, v20

    .line 1637
    .line 1638
    move-object v6, v0

    .line 1639
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ZLandroid/view/View;Lw/d;Lz/e;Landroid/util/SparseArray;)V

    .line 1640
    .line 1641
    .line 1642
    goto :goto_29

    .line 1643
    :goto_2a
    add-int/2addr v10, v1

    .line 1644
    goto :goto_28

    .line 1645
    :cond_37
    move-object v8, v12

    .line 1646
    move/from16 v19, v13

    .line 1647
    .line 1648
    :cond_38
    if-eqz v19, :cond_3a

    .line 1649
    .line 1650
    iget-object v0, v8, Lw/e;->q0:Lm2/u;

    .line 1651
    .line 1652
    invoke-virtual {v0, v8}, Lm2/u;->V(Lw/e;)V

    .line 1653
    .line 1654
    .line 1655
    goto :goto_2b

    .line 1656
    :cond_39
    move-object v8, v12

    .line 1657
    :cond_3a
    :goto_2b
    iget-object v0, v8, Lw/e;->v0:Lu/d;

    .line 1658
    .line 1659
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    .line 1661
    .line 1662
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 1663
    .line 1664
    move/from16 v1, p1

    .line 1665
    .line 1666
    move/from16 v2, p2

    .line 1667
    .line 1668
    invoke-virtual {v7, v8, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->j(Lw/e;III)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v8}, Lw/d;->o()I

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    invoke-virtual {v8}, Lw/d;->i()I

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    iget-boolean v4, v8, Lw/e;->D0:Z

    .line 1680
    .line 1681
    iget-boolean v5, v8, Lw/e;->E0:Z

    .line 1682
    .line 1683
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->U:Lz/f;

    .line 1684
    .line 1685
    iget v8, v6, Lz/f;->e:I

    .line 1686
    .line 1687
    iget v6, v6, Lz/f;->d:I

    .line 1688
    .line 1689
    add-int/2addr v0, v6

    .line 1690
    add-int/2addr v3, v8

    .line 1691
    const/4 v6, 0x0

    .line 1692
    invoke-static {v0, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1693
    .line 1694
    .line 1695
    move-result v0

    .line 1696
    invoke-static {v3, v2, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1697
    .line 1698
    .line 1699
    move-result v1

    .line 1700
    const v2, 0xffffff

    .line 1701
    .line 1702
    .line 1703
    and-int/2addr v0, v2

    .line 1704
    and-int/2addr v1, v2

    .line 1705
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 1706
    .line 1707
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 1708
    .line 1709
    .line 1710
    move-result v0

    .line 1711
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 1712
    .line 1713
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 1714
    .line 1715
    .line 1716
    move-result v1

    .line 1717
    const/high16 v2, 0x1000000

    .line 1718
    .line 1719
    if-eqz v4, :cond_3b

    .line 1720
    .line 1721
    or-int/2addr v0, v2

    .line 1722
    :cond_3b
    if-eqz v5, :cond_3c

    .line 1723
    .line 1724
    or-int/2addr v1, v2

    .line 1725
    :cond_3c
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1726
    .line 1727
    .line 1728
    return-void

    .line 1729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Lw/f;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lz/e;

    .line 22
    .line 23
    new-instance v1, Lw/f;

    .line 24
    .line 25
    invoke-direct {v1}, Lw/f;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lz/e;->p0:Lw/d;

    .line 29
    .line 30
    iput-boolean v2, v0, Lz/e;->d0:Z

    .line 31
    .line 32
    iget v0, v0, Lz/e;->V:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lw/f;->O(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Lz/c;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lz/c;

    .line 43
    .line 44
    invoke-virtual {v0}, Lz/c;->e()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lz/e;

    .line 52
    .line 53
    iput-boolean v2, v1, Lz/e;->e0:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 76
    .line 77
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(Landroid/view/View;)Lw/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 18
    .line 19
    iget-object v1, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lw/d;->A()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->H:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 34
    .line 35
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->N:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Lz/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->P:Lz/o;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->G:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->M:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->L:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->K:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->J:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lz/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->Q:Lz/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lz/h;->f:Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->O:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->I:Lw/e;

    .line 4
    .line 5
    iput p1, v0, Lw/e;->C0:I

    .line 6
    .line 7
    const/16 p1, 0x200

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lw/e;->S(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Lu/d;->q:Z

    .line 14
    .line 15
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
