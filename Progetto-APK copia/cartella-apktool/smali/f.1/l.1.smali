.class public final Lf/l;
.super Lf/M;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final L:Lf/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lf/l;->i(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Lf/M;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lf/j;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, p0, v0}, Lf/j;-><init>(Landroid/content/Context;Lf/M;Landroid/view/Window;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lf/l;->L:Lf/j;

    .line 22
    .line 23
    return-void
.end method

.method public static i(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f040030

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    invoke-super/range {p0 .. p1}, Lf/M;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Lf/l;->L:Lf/j;

    .line 7
    .line 8
    iget-object v2, v1, Lf/j;->b:Lf/M;

    .line 9
    .line 10
    iget v3, v1, Lf/j;->E:I

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lf/M;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lf/j;->c:Landroid/view/Window;

    .line 16
    .line 17
    const v3, 0x7f0b03b9

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f0b04f2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const v6, 0x7f0b0183

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const v8, 0x7f0b0144

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const v10, 0x7f0b0194

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/view/ViewGroup;

    .line 53
    .line 54
    iget-object v10, v1, Lf/j;->g:Landroid/view/View;

    .line 55
    .line 56
    const/4 v11, 0x0

    .line 57
    iget-object v12, v1, Lf/j;->a:Landroid/content/Context;

    .line 58
    .line 59
    if-eqz v10, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget v10, v1, Lf/j;->h:I

    .line 63
    .line 64
    if-eqz v10, :cond_1

    .line 65
    .line 66
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    iget v14, v1, Lf/j;->h:I

    .line 71
    .line 72
    invoke-virtual {v10, v14, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v10, 0x0

    .line 78
    :goto_0
    if-eqz v10, :cond_2

    .line 79
    .line 80
    const/4 v15, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v15, 0x0

    .line 83
    :goto_1
    if-eqz v15, :cond_3

    .line 84
    .line 85
    invoke-static {v10}, Lf/j;->a(Landroid/view/View;)Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-nez v16, :cond_4

    .line 90
    .line 91
    :cond_3
    const/high16 v14, 0x20000

    .line 92
    .line 93
    invoke-virtual {v2, v14, v14}, Landroid/view/Window;->setFlags(II)V

    .line 94
    .line 95
    .line 96
    :cond_4
    const/4 v14, -0x1

    .line 97
    const/16 v13, 0x8

    .line 98
    .line 99
    if-eqz v15, :cond_6

    .line 100
    .line 101
    const v15, 0x7f0b0193

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v15

    .line 108
    check-cast v15, Landroid/widget/FrameLayout;

    .line 109
    .line 110
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    invoke-direct {v8, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    iget-boolean v8, v1, Lf/j;->i:Z

    .line 119
    .line 120
    if-eqz v8, :cond_5

    .line 121
    .line 122
    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object v8, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 126
    .line 127
    if-eqz v8, :cond_7

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Ll/D0;

    .line 134
    .line 135
    const/4 v10, 0x0

    .line 136
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const v8, 0x7f0b0144

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-static {v4, v5}, Lf/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-static {v6, v7}, Lf/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v8, v9}, Lf/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const v7, 0x7f0b0439

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Landroidx/core/widget/NestedScrollView;

    .line 177
    .line 178
    iput-object v7, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 179
    .line 180
    invoke-virtual {v7, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 181
    .line 182
    .line 183
    iget-object v7, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 184
    .line 185
    invoke-virtual {v7, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 186
    .line 187
    .line 188
    const v7, 0x102000b

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    check-cast v7, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v7, v1, Lf/j;->A:Landroid/widget/TextView;

    .line 198
    .line 199
    if-nez v7, :cond_8

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v7, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 206
    .line 207
    iget-object v8, v1, Lf/j;->A:Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    iget-object v7, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 213
    .line 214
    if-eqz v7, :cond_9

    .line 215
    .line 216
    iget-object v7, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 217
    .line 218
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Landroid/view/ViewGroup;

    .line 223
    .line 224
    iget-object v8, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 225
    .line 226
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 231
    .line 232
    .line 233
    iget-object v9, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 234
    .line 235
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    invoke-direct {v10, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    :goto_3
    const v7, 0x1020019

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Landroid/widget/Button;

    .line 255
    .line 256
    iput-object v7, v1, Lf/j;->j:Landroid/widget/Button;

    .line 257
    .line 258
    iget-object v8, v1, Lf/j;->K:Lf/c;

    .line 259
    .line 260
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v7, v1, Lf/j;->k:Ljava/lang/CharSequence;

    .line 264
    .line 265
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    iget v9, v1, Lf/j;->d:I

    .line 270
    .line 271
    if-eqz v7, :cond_a

    .line 272
    .line 273
    iget-object v7, v1, Lf/j;->m:Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    if-nez v7, :cond_a

    .line 276
    .line 277
    iget-object v7, v1, Lf/j;->j:Landroid/widget/Button;

    .line 278
    .line 279
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    const/4 v7, 0x0

    .line 283
    goto :goto_4

    .line 284
    :cond_a
    iget-object v7, v1, Lf/j;->j:Landroid/widget/Button;

    .line 285
    .line 286
    iget-object v10, v1, Lf/j;->k:Ljava/lang/CharSequence;

    .line 287
    .line 288
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    iget-object v7, v1, Lf/j;->m:Landroid/graphics/drawable/Drawable;

    .line 292
    .line 293
    if-eqz v7, :cond_b

    .line 294
    .line 295
    invoke-virtual {v7, v11, v11, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 296
    .line 297
    .line 298
    iget-object v7, v1, Lf/j;->j:Landroid/widget/Button;

    .line 299
    .line 300
    iget-object v10, v1, Lf/j;->m:Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    const/4 v15, 0x0

    .line 303
    invoke-virtual {v7, v10, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 304
    .line 305
    .line 306
    :cond_b
    iget-object v7, v1, Lf/j;->j:Landroid/widget/Button;

    .line 307
    .line 308
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    const/4 v7, 0x1

    .line 312
    :goto_4
    const v10, 0x102001a

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    check-cast v10, Landroid/widget/Button;

    .line 320
    .line 321
    iput-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 322
    .line 323
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    iget-object v10, v1, Lf/j;->o:Ljava/lang/CharSequence;

    .line 327
    .line 328
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_c

    .line 333
    .line 334
    iget-object v10, v1, Lf/j;->q:Landroid/graphics/drawable/Drawable;

    .line 335
    .line 336
    if-nez v10, :cond_c

    .line 337
    .line 338
    iget-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 339
    .line 340
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_c
    iget-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 345
    .line 346
    iget-object v15, v1, Lf/j;->o:Ljava/lang/CharSequence;

    .line 347
    .line 348
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    iget-object v10, v1, Lf/j;->q:Landroid/graphics/drawable/Drawable;

    .line 352
    .line 353
    if-eqz v10, :cond_d

    .line 354
    .line 355
    invoke-virtual {v10, v11, v11, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 356
    .line 357
    .line 358
    iget-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 359
    .line 360
    iget-object v15, v1, Lf/j;->q:Landroid/graphics/drawable/Drawable;

    .line 361
    .line 362
    const/4 v14, 0x0

    .line 363
    invoke-virtual {v10, v15, v14, v14, v14}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 364
    .line 365
    .line 366
    :cond_d
    iget-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 367
    .line 368
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    or-int/lit8 v7, v7, 0x2

    .line 372
    .line 373
    :goto_5
    const v10, 0x102001b

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    check-cast v10, Landroid/widget/Button;

    .line 381
    .line 382
    iput-object v10, v1, Lf/j;->r:Landroid/widget/Button;

    .line 383
    .line 384
    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    .line 386
    .line 387
    iget-object v8, v1, Lf/j;->s:Ljava/lang/CharSequence;

    .line 388
    .line 389
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    if-eqz v8, :cond_e

    .line 394
    .line 395
    iget-object v8, v1, Lf/j;->u:Landroid/graphics/drawable/Drawable;

    .line 396
    .line 397
    if-nez v8, :cond_e

    .line 398
    .line 399
    iget-object v8, v1, Lf/j;->r:Landroid/widget/Button;

    .line 400
    .line 401
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    const/4 v15, 0x0

    .line 405
    goto :goto_7

    .line 406
    :cond_e
    iget-object v8, v1, Lf/j;->r:Landroid/widget/Button;

    .line 407
    .line 408
    iget-object v10, v1, Lf/j;->s:Ljava/lang/CharSequence;

    .line 409
    .line 410
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    iget-object v8, v1, Lf/j;->u:Landroid/graphics/drawable/Drawable;

    .line 414
    .line 415
    if-eqz v8, :cond_f

    .line 416
    .line 417
    invoke-virtual {v8, v11, v11, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    .line 419
    .line 420
    iget-object v8, v1, Lf/j;->r:Landroid/widget/Button;

    .line 421
    .line 422
    iget-object v9, v1, Lf/j;->u:Landroid/graphics/drawable/Drawable;

    .line 423
    .line 424
    const/4 v15, 0x0

    .line 425
    invoke-virtual {v8, v9, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_f
    const/4 v15, 0x0

    .line 430
    :goto_6
    iget-object v8, v1, Lf/j;->r:Landroid/widget/Button;

    .line 431
    .line 432
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    or-int/lit8 v7, v7, 0x4

    .line 436
    .line 437
    :goto_7
    new-instance v8, Landroid/util/TypedValue;

    .line 438
    .line 439
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    const v10, 0x7f04002e

    .line 447
    .line 448
    .line 449
    const/4 v12, 0x1

    .line 450
    invoke-virtual {v9, v10, v8, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 451
    .line 452
    .line 453
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 454
    .line 455
    const/4 v9, 0x2

    .line 456
    if-eqz v8, :cond_12

    .line 457
    .line 458
    const/high16 v8, 0x3f000000    # 0.5f

    .line 459
    .line 460
    if-ne v7, v12, :cond_10

    .line 461
    .line 462
    iget-object v10, v1, Lf/j;->j:Landroid/widget/Button;

    .line 463
    .line 464
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 465
    .line 466
    .line 467
    move-result-object v14

    .line 468
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 469
    .line 470
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 471
    .line 472
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 473
    .line 474
    invoke-virtual {v10, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_10
    if-ne v7, v9, :cond_11

    .line 479
    .line 480
    iget-object v10, v1, Lf/j;->n:Landroid/widget/Button;

    .line 481
    .line 482
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 483
    .line 484
    .line 485
    move-result-object v14

    .line 486
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 487
    .line 488
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 489
    .line 490
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 491
    .line 492
    invoke-virtual {v10, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_11
    const/4 v10, 0x4

    .line 497
    if-ne v7, v10, :cond_12

    .line 498
    .line 499
    iget-object v10, v1, Lf/j;->r:Landroid/widget/Button;

    .line 500
    .line 501
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 502
    .line 503
    .line 504
    move-result-object v14

    .line 505
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 506
    .line 507
    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 508
    .line 509
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 510
    .line 511
    invoke-virtual {v10, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .line 513
    .line 514
    :cond_12
    :goto_8
    if-eqz v7, :cond_13

    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_13
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 518
    .line 519
    .line 520
    :goto_9
    iget-object v7, v1, Lf/j;->B:Landroid/view/View;

    .line 521
    .line 522
    const v8, 0x7f0b04ea

    .line 523
    .line 524
    .line 525
    if-eqz v7, :cond_14

    .line 526
    .line 527
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 528
    .line 529
    const/4 v10, -0x2

    .line 530
    const/4 v12, -0x1

    .line 531
    invoke-direct {v7, v12, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 532
    .line 533
    .line 534
    iget-object v10, v1, Lf/j;->B:Landroid/view/View;

    .line 535
    .line 536
    invoke-virtual {v4, v10, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    goto :goto_a

    .line 547
    :cond_14
    const v7, 0x1020006

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    check-cast v7, Landroid/widget/ImageView;

    .line 555
    .line 556
    iput-object v7, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 557
    .line 558
    iget-object v7, v1, Lf/j;->e:Ljava/lang/CharSequence;

    .line 559
    .line 560
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    const/4 v10, 0x1

    .line 565
    xor-int/2addr v7, v10

    .line 566
    if-eqz v7, :cond_17

    .line 567
    .line 568
    iget-boolean v7, v1, Lf/j;->I:Z

    .line 569
    .line 570
    if-eqz v7, :cond_17

    .line 571
    .line 572
    const v7, 0x7f0b005b

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    check-cast v7, Landroid/widget/TextView;

    .line 580
    .line 581
    iput-object v7, v1, Lf/j;->z:Landroid/widget/TextView;

    .line 582
    .line 583
    iget-object v8, v1, Lf/j;->e:Ljava/lang/CharSequence;

    .line 584
    .line 585
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    .line 587
    .line 588
    iget v7, v1, Lf/j;->w:I

    .line 589
    .line 590
    if-eqz v7, :cond_15

    .line 591
    .line 592
    iget-object v8, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 593
    .line 594
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_15
    iget-object v7, v1, Lf/j;->x:Landroid/graphics/drawable/Drawable;

    .line 599
    .line 600
    if-eqz v7, :cond_16

    .line 601
    .line 602
    iget-object v8, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 603
    .line 604
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    .line 606
    .line 607
    goto :goto_a

    .line 608
    :cond_16
    iget-object v7, v1, Lf/j;->z:Landroid/widget/TextView;

    .line 609
    .line 610
    iget-object v8, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 611
    .line 612
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 613
    .line 614
    .line 615
    move-result v8

    .line 616
    iget-object v10, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 617
    .line 618
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    .line 619
    .line 620
    .line 621
    move-result v10

    .line 622
    iget-object v12, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 623
    .line 624
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    iget-object v14, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 629
    .line 630
    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    .line 631
    .line 632
    .line 633
    move-result v14

    .line 634
    invoke-virtual {v7, v8, v10, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 635
    .line 636
    .line 637
    iget-object v7, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 638
    .line 639
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    .line 641
    .line 642
    goto :goto_a

    .line 643
    :cond_17
    invoke-virtual {v2, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 648
    .line 649
    .line 650
    iget-object v7, v1, Lf/j;->y:Landroid/widget/ImageView;

    .line 651
    .line 652
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 656
    .line 657
    .line 658
    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    if-eq v3, v13, :cond_18

    .line 663
    .line 664
    const/4 v3, 0x1

    .line 665
    goto :goto_b

    .line 666
    :cond_18
    const/4 v3, 0x0

    .line 667
    :goto_b
    if-eqz v4, :cond_19

    .line 668
    .line 669
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    if-eq v7, v13, :cond_19

    .line 674
    .line 675
    const/4 v7, 0x1

    .line 676
    goto :goto_c

    .line 677
    :cond_19
    const/4 v7, 0x0

    .line 678
    :goto_c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    if-eq v6, v13, :cond_1a

    .line 683
    .line 684
    const/4 v6, 0x1

    .line 685
    goto :goto_d

    .line 686
    :cond_1a
    const/4 v6, 0x0

    .line 687
    :goto_d
    if-nez v6, :cond_1b

    .line 688
    .line 689
    const v8, 0x7f0b049e

    .line 690
    .line 691
    .line 692
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    if-eqz v8, :cond_1b

    .line 697
    .line 698
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 699
    .line 700
    .line 701
    :cond_1b
    if-eqz v7, :cond_1e

    .line 702
    .line 703
    iget-object v8, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 704
    .line 705
    if-eqz v8, :cond_1c

    .line 706
    .line 707
    const/4 v10, 0x1

    .line 708
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 709
    .line 710
    .line 711
    :cond_1c
    iget-object v8, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 712
    .line 713
    if-eqz v8, :cond_1d

    .line 714
    .line 715
    const v8, 0x7f0b04e7

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    goto :goto_e

    .line 723
    :cond_1d
    move-object v4, v15

    .line 724
    :goto_e
    if-eqz v4, :cond_1f

    .line 725
    .line 726
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 727
    .line 728
    .line 729
    goto :goto_f

    .line 730
    :cond_1e
    const v4, 0x7f0b049f

    .line 731
    .line 732
    .line 733
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    if-eqz v4, :cond_1f

    .line 738
    .line 739
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 740
    .line 741
    .line 742
    :cond_1f
    :goto_f
    iget-object v4, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 743
    .line 744
    instance-of v8, v4, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 745
    .line 746
    if-eqz v8, :cond_23

    .line 747
    .line 748
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    if-eqz v6, :cond_20

    .line 752
    .line 753
    if-nez v7, :cond_23

    .line 754
    .line 755
    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 756
    .line 757
    .line 758
    move-result v8

    .line 759
    if-eqz v7, :cond_21

    .line 760
    .line 761
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 762
    .line 763
    .line 764
    move-result v10

    .line 765
    goto :goto_10

    .line 766
    :cond_21
    iget v10, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->G:I

    .line 767
    .line 768
    :goto_10
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 769
    .line 770
    .line 771
    move-result v12

    .line 772
    if-eqz v6, :cond_22

    .line 773
    .line 774
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 775
    .line 776
    .line 777
    move-result v13

    .line 778
    goto :goto_11

    .line 779
    :cond_22
    iget v13, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->H:I

    .line 780
    .line 781
    :goto_11
    invoke-virtual {v4, v8, v10, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 782
    .line 783
    .line 784
    :cond_23
    if-nez v3, :cond_2e

    .line 785
    .line 786
    iget-object v3, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 787
    .line 788
    if-eqz v3, :cond_24

    .line 789
    .line 790
    goto :goto_12

    .line 791
    :cond_24
    iget-object v3, v1, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 792
    .line 793
    :goto_12
    if-eqz v3, :cond_2e

    .line 794
    .line 795
    if-eqz v6, :cond_25

    .line 796
    .line 797
    const/4 v11, 0x2

    .line 798
    :cond_25
    or-int v4, v7, v11

    .line 799
    .line 800
    const v6, 0x7f0b0438

    .line 801
    .line 802
    .line 803
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 804
    .line 805
    .line 806
    move-result-object v6

    .line 807
    const v7, 0x7f0b0437

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 815
    .line 816
    const/16 v8, 0x17

    .line 817
    .line 818
    if-lt v7, v8, :cond_28

    .line 819
    .line 820
    sget-object v9, LN/N;->a:Ljava/util/WeakHashMap;

    .line 821
    .line 822
    if-lt v7, v8, :cond_26

    .line 823
    .line 824
    const/4 v7, 0x3

    .line 825
    invoke-static {v3, v4, v7}, LN/F;->b(Landroid/view/View;II)V

    .line 826
    .line 827
    .line 828
    :cond_26
    if-eqz v6, :cond_27

    .line 829
    .line 830
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    :cond_27
    if-eqz v2, :cond_2e

    .line 834
    .line 835
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 836
    .line 837
    .line 838
    goto :goto_14

    .line 839
    :cond_28
    if-eqz v6, :cond_29

    .line 840
    .line 841
    and-int/lit8 v3, v4, 0x1

    .line 842
    .line 843
    if-nez v3, :cond_29

    .line 844
    .line 845
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 846
    .line 847
    .line 848
    move-object v6, v15

    .line 849
    :cond_29
    if-eqz v2, :cond_2a

    .line 850
    .line 851
    and-int/lit8 v3, v4, 0x2

    .line 852
    .line 853
    if-nez v3, :cond_2a

    .line 854
    .line 855
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 856
    .line 857
    .line 858
    move-object v13, v15

    .line 859
    goto :goto_13

    .line 860
    :cond_2a
    move-object v13, v2

    .line 861
    :goto_13
    if-nez v6, :cond_2b

    .line 862
    .line 863
    if-eqz v13, :cond_2e

    .line 864
    .line 865
    :cond_2b
    iget-object v2, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 866
    .line 867
    if-eqz v2, :cond_2c

    .line 868
    .line 869
    new-instance v3, Lf/e;

    .line 870
    .line 871
    invoke-direct {v3, v6, v13}, Lf/e;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 875
    .line 876
    .line 877
    iget-object v2, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 878
    .line 879
    new-instance v3, Lf/d;

    .line 880
    .line 881
    const/4 v4, 0x1

    .line 882
    invoke-direct {v3, v1, v6, v13, v4}, Lf/d;-><init>(Lf/j;Landroid/view/View;Landroid/view/View;I)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 886
    .line 887
    .line 888
    goto :goto_14

    .line 889
    :cond_2c
    if-eqz v6, :cond_2d

    .line 890
    .line 891
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 892
    .line 893
    .line 894
    :cond_2d
    if-eqz v13, :cond_2e

    .line 895
    .line 896
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 897
    .line 898
    .line 899
    :cond_2e
    :goto_14
    iget-object v2, v1, Lf/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 900
    .line 901
    if-eqz v2, :cond_2f

    .line 902
    .line 903
    iget-object v3, v1, Lf/j;->C:Landroid/widget/ListAdapter;

    .line 904
    .line 905
    if-eqz v3, :cond_2f

    .line 906
    .line 907
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 908
    .line 909
    .line 910
    iget v1, v1, Lf/j;->D:I

    .line 911
    .line 912
    const/4 v3, -0x1

    .line 913
    if-le v1, v3, :cond_2f

    .line 914
    .line 915
    const/4 v3, 0x1

    .line 916
    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 920
    .line 921
    .line 922
    :cond_2f
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/l;->L:Lf/j;

    .line 2
    .line 3
    iget-object v0, v0, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/l;->L:Lf/j;

    .line 2
    .line 3
    iget-object v0, v0, Lf/j;->v:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf/M;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf/l;->L:Lf/j;

    .line 5
    .line 6
    iput-object p1, v0, Lf/j;->e:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, v0, Lf/j;->z:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
