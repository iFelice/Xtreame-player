.class public final LN/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:LN/b;


# direct methods
.method public constructor <init>(LN/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN/a;->a:LN/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LN/b;->b(Landroid/view/View;)LO1/J;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, LO1/J;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, LO/f;

    .line 6
    .line 7
    invoke-direct {v2, v1}, LO/f;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    new-instance v3, LN/z;

    .line 13
    .line 14
    const v4, 0x7f0b0494

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-direct {v3, v4, v5}, LN/z;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v0}, LN/B;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 39
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v7, 0x1c

    .line 42
    .line 43
    if-lt v6, v7, :cond_1

    .line 44
    .line 45
    invoke-static {v1, v3}, LN/d0;->u(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v2, v4, v3}, LO/f;->f(IZ)V

    .line 50
    .line 51
    .line 52
    :goto_1
    new-instance v3, LN/z;

    .line 53
    .line 54
    const/4 v8, 0x3

    .line 55
    const v9, 0x7f0b048f

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v9, v8}, LN/z;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, LN/B;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Boolean;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v3, 0x0

    .line 78
    :goto_2
    const/4 v8, 0x2

    .line 79
    if-lt v6, v7, :cond_3

    .line 80
    .line 81
    invoke-static {v1, v3}, LN/d0;->D(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v2, v8, v3}, LO/f;->f(IZ)V

    .line 86
    .line 87
    .line 88
    :goto_3
    new-instance v3, LN/z;

    .line 89
    .line 90
    const v9, 0x7f0b0490

    .line 91
    .line 92
    .line 93
    const/16 v10, 0x8

    .line 94
    .line 95
    invoke-direct {v3, v9, v10, v7, v4}, LN/z;-><init>(IIII)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v0}, LN/B;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/CharSequence;

    .line 103
    .line 104
    if-lt v6, v7, :cond_4

    .line 105
    .line 106
    invoke-static {v1, v3}, LN/d0;->t(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 115
    .line 116
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :goto_4
    new-instance v3, LN/z;

    .line 120
    .line 121
    const v4, 0x7f0b0495

    .line 122
    .line 123
    .line 124
    const/16 v7, 0x40

    .line 125
    .line 126
    const/16 v9, 0x1e

    .line 127
    .line 128
    invoke-direct {v3, v4, v7, v9, v8}, LN/z;-><init>(IIII)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v0}, LN/B;->d(Landroid/view/View;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/CharSequence;

    .line 136
    .line 137
    if-lt v6, v9, :cond_5

    .line 138
    .line 139
    invoke-static {v1, v3}, LH/a;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    :goto_5
    move-object/from16 v3, p0

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 150
    .line 151
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :goto_6
    iget-object v4, v3, LN/a;->a:LN/b;

    .line 156
    .line 157
    invoke-virtual {v4, v0, v2}, LN/b;->d(Landroid/view/View;LO/f;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const/16 v7, 0x1a

    .line 165
    .line 166
    if-ge v6, v7, :cond_d

    .line 167
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    const-string v7, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 182
    .line 183
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 191
    .line 192
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 200
    .line 201
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const v6, 0x7f0b048e

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Landroid/util/SparseArray;

    .line 212
    .line 213
    if-eqz v11, :cond_8

    .line 214
    .line 215
    new-instance v12, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    const/4 v13, 0x0

    .line 221
    :goto_7
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    if-ge v13, v14, :cond_7

    .line 226
    .line 227
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 232
    .line 233
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    if-nez v14, :cond_6

    .line 238
    .line 239
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_7
    const/4 v13, 0x0

    .line 250
    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-ge v13, v14, :cond_8

    .line 255
    .line 256
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    check-cast v14, Ljava/lang/Integer;

    .line 261
    .line 262
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->remove(I)V

    .line 267
    .line 268
    .line 269
    add-int/lit8 v13, v13, 0x1

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_8
    instance-of v11, v4, Landroid/text/Spanned;

    .line 273
    .line 274
    if-eqz v11, :cond_9

    .line 275
    .line 276
    move-object v11, v4

    .line 277
    check-cast v11, Landroid/text/Spanned;

    .line 278
    .line 279
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    const-class v13, Landroid/text/style/ClickableSpan;

    .line 284
    .line 285
    invoke-interface {v11, v5, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    check-cast v11, [Landroid/text/style/ClickableSpan;

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_9
    const/4 v11, 0x0

    .line 293
    :goto_9
    if-eqz v11, :cond_d

    .line 294
    .line 295
    array-length v12, v11

    .line 296
    if-lez v12, :cond_d

    .line 297
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 303
    .line 304
    const v13, 0x7f0b0012

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Landroid/util/SparseArray;

    .line 315
    .line 316
    if-nez v1, :cond_a

    .line 317
    .line 318
    new-instance v1, Landroid/util/SparseArray;

    .line 319
    .line 320
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_a
    const/4 v6, 0x0

    .line 327
    :goto_a
    array-length v12, v11

    .line 328
    if-ge v6, v12, :cond_d

    .line 329
    .line 330
    aget-object v12, v11, v6

    .line 331
    .line 332
    const/4 v13, 0x0

    .line 333
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 334
    .line 335
    .line 336
    move-result v14

    .line 337
    if-ge v13, v14, :cond_c

    .line 338
    .line 339
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v14

    .line 343
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 344
    .line 345
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v14

    .line 349
    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 350
    .line 351
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    if-eqz v14, :cond_b

    .line 356
    .line 357
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    goto :goto_c

    .line 362
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_c
    sget v12, LO/f;->b:I

    .line 366
    .line 367
    add-int/lit8 v13, v12, 0x1

    .line 368
    .line 369
    sput v13, LO/f;->b:I

    .line 370
    .line 371
    :goto_c
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 372
    .line 373
    aget-object v14, v11, v6

    .line 374
    .line 375
    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    aget-object v13, v11, v6

    .line 382
    .line 383
    move-object v14, v4

    .line 384
    check-cast v14, Landroid/text/Spanned;

    .line 385
    .line 386
    invoke-virtual {v2, v7}, LO/f;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 387
    .line 388
    .line 389
    move-result-object v15

    .line 390
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 391
    .line 392
    .line 393
    move-result v16

    .line 394
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v8}, LO/f;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 406
    .line 407
    .line 408
    move-result v15

    .line 409
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v9}, LO/f;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v13

    .line 428
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2, v10}, LO/f;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    add-int/lit8 v6, v6, 0x1

    .line 443
    .line 444
    const/4 v5, 0x0

    .line 445
    goto :goto_a

    .line 446
    :cond_d
    const v1, 0x7f0b048d

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Ljava/util/List;

    .line 454
    .line 455
    if-nez v0, :cond_e

    .line 456
    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    :cond_e
    const/4 v5, 0x0

    .line 462
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-ge v5, v1, :cond_f

    .line 467
    .line 468
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    check-cast v1, LO/d;

    .line 473
    .line 474
    invoke-virtual {v2, v1}, LO/f;->b(LO/d;)V

    .line 475
    .line 476
    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 478
    .line 479
    goto :goto_d

    .line 480
    :cond_f
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN/b;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN/b;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN/b;->h(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN/a;->a:LN/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN/b;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
