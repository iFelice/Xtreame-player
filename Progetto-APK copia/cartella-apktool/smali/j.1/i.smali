.class public final Lj/i;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lj/i;->e:[Ljava/lang/Class;

    .line 10
    .line 11
    sput-object v0, Lj/i;->f:[Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/i;->c:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    iput-object v0, p0, Lj/i;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lj/i;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lj/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lj/h;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Lj/h;-><init>(Lj/i;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-ne v3, v6, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v4, :cond_17

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    const/4 v9, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-nez v9, :cond_16

    .line 60
    .line 61
    if-eq v3, v4, :cond_15

    .line 62
    .line 63
    const-string v12, "item"

    .line 64
    .line 65
    const-string v13, "group"

    .line 66
    .line 67
    const/4 v14, 0x3

    .line 68
    if-eq v3, v6, :cond_8

    .line 69
    .line 70
    if-eq v3, v14, :cond_3

    .line 71
    .line 72
    :cond_2
    :goto_3
    move-object/from16 v8, p1

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    goto/16 :goto_b

    .line 76
    .line 77
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v10, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_4

    .line 88
    .line 89
    move-object/from16 v8, p1

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    goto/16 :goto_b

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_5

    .line 101
    .line 102
    iput v7, v2, Lj/h;->b:I

    .line 103
    .line 104
    iput v7, v2, Lj/h;->c:I

    .line 105
    .line 106
    iput v7, v2, Lj/h;->d:I

    .line 107
    .line 108
    iput v7, v2, Lj/h;->e:I

    .line 109
    .line 110
    iput-boolean v4, v2, Lj/h;->f:Z

    .line 111
    .line 112
    iput-boolean v4, v2, Lj/h;->g:Z

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_7

    .line 120
    .line 121
    iget-boolean v3, v2, Lj/h;->h:Z

    .line 122
    .line 123
    if-nez v3, :cond_2

    .line 124
    .line 125
    iget-object v3, v2, Lj/h;->z:Lk/r;

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    iget-object v3, v3, Lk/r;->b:Landroid/view/ActionProvider;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_6

    .line 136
    .line 137
    iput-boolean v4, v2, Lj/h;->h:Z

    .line 138
    .line 139
    iget v3, v2, Lj/h;->b:I

    .line 140
    .line 141
    iget v12, v2, Lj/h;->i:I

    .line 142
    .line 143
    iget v13, v2, Lj/h;->j:I

    .line 144
    .line 145
    iget-object v14, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 146
    .line 147
    iget-object v15, v2, Lj/h;->a:Landroid/view/Menu;

    .line 148
    .line 149
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    iput-boolean v4, v2, Lj/h;->h:Z

    .line 162
    .line 163
    iget v3, v2, Lj/h;->b:I

    .line 164
    .line 165
    iget v12, v2, Lj/h;->i:I

    .line 166
    .line 167
    iget v13, v2, Lj/h;->j:I

    .line 168
    .line 169
    iget-object v14, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 170
    .line 171
    iget-object v15, v2, Lj/h;->a:Landroid/view/Menu;

    .line 172
    .line 173
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_2

    .line 186
    .line 187
    move-object/from16 v8, p1

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    const/4 v9, 0x1

    .line 191
    goto/16 :goto_b

    .line 192
    .line 193
    :cond_8
    if-eqz v10, :cond_9

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    const/4 v15, 0x5

    .line 205
    const/4 v8, 0x4

    .line 206
    iget-object v6, v2, Lj/h;->E:Lj/i;

    .line 207
    .line 208
    if-eqz v13, :cond_a

    .line 209
    .line 210
    iget-object v3, v6, Lj/i;->c:Landroid/content/Context;

    .line 211
    .line 212
    sget-object v6, Le/a;->p:[I

    .line 213
    .line 214
    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    iput v6, v2, Lj/h;->b:I

    .line 223
    .line 224
    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    iput v6, v2, Lj/h;->c:I

    .line 229
    .line 230
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    iput v6, v2, Lj/h;->d:I

    .line 235
    .line 236
    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    iput v6, v2, Lj/h;->e:I

    .line 241
    .line 242
    const/4 v6, 0x2

    .line 243
    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    iput-boolean v8, v2, Lj/h;->f:Z

    .line 248
    .line 249
    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    iput-boolean v6, v2, Lj/h;->g:Z

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_13

    .line 265
    .line 266
    iget-object v3, v6, Lj/i;->c:Landroid/content/Context;

    .line 267
    .line 268
    sget-object v12, Le/a;->q:[I

    .line 269
    .line 270
    new-instance v13, Lm2/u;

    .line 271
    .line 272
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-direct {v13, v3, v12}, Lm2/u;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 277
    .line 278
    .line 279
    const/4 v12, 0x2

    .line 280
    invoke-virtual {v13, v12, v7}, Lm2/u;->z(II)I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    iput v3, v2, Lj/h;->i:I

    .line 285
    .line 286
    iget v3, v2, Lj/h;->c:I

    .line 287
    .line 288
    invoke-virtual {v13, v15, v3}, Lm2/u;->x(II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    const/4 v15, 0x6

    .line 293
    iget v12, v2, Lj/h;->d:I

    .line 294
    .line 295
    invoke-virtual {v13, v15, v12}, Lm2/u;->x(II)I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    const/high16 v15, -0x10000

    .line 300
    .line 301
    and-int/2addr v3, v15

    .line 302
    const v15, 0xffff

    .line 303
    .line 304
    .line 305
    and-int/2addr v12, v15

    .line 306
    or-int/2addr v3, v12

    .line 307
    iput v3, v2, Lj/h;->j:I

    .line 308
    .line 309
    const/4 v3, 0x7

    .line 310
    invoke-virtual {v13, v3}, Lm2/u;->C(I)Ljava/lang/CharSequence;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iput-object v3, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 315
    .line 316
    const/16 v3, 0x8

    .line 317
    .line 318
    invoke-virtual {v13, v3}, Lm2/u;->C(I)Ljava/lang/CharSequence;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    iput-object v3, v2, Lj/h;->l:Ljava/lang/CharSequence;

    .line 323
    .line 324
    invoke-virtual {v13, v7, v7}, Lm2/u;->z(II)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    iput v3, v2, Lj/h;->m:I

    .line 329
    .line 330
    const/16 v3, 0x9

    .line 331
    .line 332
    invoke-virtual {v13, v3}, Lm2/u;->A(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    if-nez v3, :cond_b

    .line 337
    .line 338
    const/4 v3, 0x0

    .line 339
    goto :goto_4

    .line 340
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    :goto_4
    iput-char v3, v2, Lj/h;->n:C

    .line 345
    .line 346
    const/16 v3, 0x10

    .line 347
    .line 348
    const/16 v12, 0x1000

    .line 349
    .line 350
    invoke-virtual {v13, v3, v12}, Lm2/u;->x(II)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    iput v3, v2, Lj/h;->o:I

    .line 355
    .line 356
    const/16 v3, 0xa

    .line 357
    .line 358
    invoke-virtual {v13, v3}, Lm2/u;->A(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    if-nez v3, :cond_c

    .line 363
    .line 364
    const/4 v3, 0x0

    .line 365
    goto :goto_5

    .line 366
    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    :goto_5
    iput-char v3, v2, Lj/h;->p:C

    .line 371
    .line 372
    const/16 v3, 0x14

    .line 373
    .line 374
    invoke-virtual {v13, v3, v12}, Lm2/u;->x(II)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    iput v3, v2, Lj/h;->q:I

    .line 379
    .line 380
    const/16 v3, 0xb

    .line 381
    .line 382
    invoke-virtual {v13, v3}, Lm2/u;->F(I)Z

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    if-eqz v12, :cond_d

    .line 387
    .line 388
    invoke-virtual {v13, v3, v7}, Lm2/u;->n(IZ)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    iput v3, v2, Lj/h;->r:I

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_d
    iget v3, v2, Lj/h;->e:I

    .line 396
    .line 397
    iput v3, v2, Lj/h;->r:I

    .line 398
    .line 399
    :goto_6
    invoke-virtual {v13, v14, v7}, Lm2/u;->n(IZ)Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    iput-boolean v3, v2, Lj/h;->s:Z

    .line 404
    .line 405
    iget-boolean v3, v2, Lj/h;->f:Z

    .line 406
    .line 407
    invoke-virtual {v13, v8, v3}, Lm2/u;->n(IZ)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    iput-boolean v3, v2, Lj/h;->t:Z

    .line 412
    .line 413
    iget-boolean v3, v2, Lj/h;->g:Z

    .line 414
    .line 415
    invoke-virtual {v13, v4, v3}, Lm2/u;->n(IZ)Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    iput-boolean v3, v2, Lj/h;->u:Z

    .line 420
    .line 421
    const/16 v3, 0x15

    .line 422
    .line 423
    const/4 v8, -0x1

    .line 424
    invoke-virtual {v13, v3, v8}, Lm2/u;->x(II)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    iput v3, v2, Lj/h;->v:I

    .line 429
    .line 430
    const/16 v3, 0xc

    .line 431
    .line 432
    invoke-virtual {v13, v3}, Lm2/u;->A(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    iput-object v3, v2, Lj/h;->y:Ljava/lang/String;

    .line 437
    .line 438
    const/16 v3, 0xd

    .line 439
    .line 440
    invoke-virtual {v13, v3, v7}, Lm2/u;->z(II)I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    iput v3, v2, Lj/h;->w:I

    .line 445
    .line 446
    const/16 v3, 0xf

    .line 447
    .line 448
    invoke-virtual {v13, v3}, Lm2/u;->A(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    iput-object v3, v2, Lj/h;->x:Ljava/lang/String;

    .line 453
    .line 454
    const/16 v3, 0xe

    .line 455
    .line 456
    invoke-virtual {v13, v3}, Lm2/u;->A(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    if-eqz v3, :cond_e

    .line 461
    .line 462
    const/4 v12, 0x1

    .line 463
    goto :goto_7

    .line 464
    :cond_e
    const/4 v12, 0x0

    .line 465
    :goto_7
    if-eqz v12, :cond_f

    .line 466
    .line 467
    iget v14, v2, Lj/h;->w:I

    .line 468
    .line 469
    if-nez v14, :cond_f

    .line 470
    .line 471
    iget-object v14, v2, Lj/h;->x:Ljava/lang/String;

    .line 472
    .line 473
    if-nez v14, :cond_f

    .line 474
    .line 475
    sget-object v12, Lj/i;->f:[Ljava/lang/Class;

    .line 476
    .line 477
    iget-object v6, v6, Lj/i;->b:[Ljava/lang/Object;

    .line 478
    .line 479
    invoke-virtual {v2, v3, v12, v6}, Lj/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    check-cast v3, Lk/r;

    .line 484
    .line 485
    iput-object v3, v2, Lj/h;->z:Lk/r;

    .line 486
    .line 487
    goto :goto_8

    .line 488
    :cond_f
    if-eqz v12, :cond_10

    .line 489
    .line 490
    const-string v3, "SupportMenuInflater"

    .line 491
    .line 492
    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 493
    .line 494
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    :cond_10
    const/4 v3, 0x0

    .line 498
    iput-object v3, v2, Lj/h;->z:Lk/r;

    .line 499
    .line 500
    :goto_8
    const/16 v3, 0x11

    .line 501
    .line 502
    invoke-virtual {v13, v3}, Lm2/u;->C(I)Ljava/lang/CharSequence;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    iput-object v3, v2, Lj/h;->A:Ljava/lang/CharSequence;

    .line 507
    .line 508
    const/16 v3, 0x16

    .line 509
    .line 510
    invoke-virtual {v13, v3}, Lm2/u;->C(I)Ljava/lang/CharSequence;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    iput-object v3, v2, Lj/h;->B:Ljava/lang/CharSequence;

    .line 515
    .line 516
    const/16 v3, 0x13

    .line 517
    .line 518
    invoke-virtual {v13, v3}, Lm2/u;->F(I)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_11

    .line 523
    .line 524
    invoke-virtual {v13, v3, v8}, Lm2/u;->x(II)I

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    iget-object v6, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 529
    .line 530
    invoke-static {v3, v6}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    iput-object v3, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 535
    .line 536
    const/4 v6, 0x0

    .line 537
    goto :goto_9

    .line 538
    :cond_11
    const/4 v6, 0x0

    .line 539
    iput-object v6, v2, Lj/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 540
    .line 541
    :goto_9
    const/16 v3, 0x12

    .line 542
    .line 543
    invoke-virtual {v13, v3}, Lm2/u;->F(I)Z

    .line 544
    .line 545
    .line 546
    move-result v8

    .line 547
    if-eqz v8, :cond_12

    .line 548
    .line 549
    invoke-virtual {v13, v3}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    iput-object v3, v2, Lj/h;->C:Landroid/content/res/ColorStateList;

    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_12
    iput-object v6, v2, Lj/h;->C:Landroid/content/res/ColorStateList;

    .line 557
    .line 558
    :goto_a
    invoke-virtual {v13}, Lm2/u;->P()V

    .line 559
    .line 560
    .line 561
    iput-boolean v7, v2, Lj/h;->h:Z

    .line 562
    .line 563
    move-object/from16 v8, p1

    .line 564
    .line 565
    goto :goto_b

    .line 566
    :cond_13
    const/4 v6, 0x0

    .line 567
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v8

    .line 571
    if-eqz v8, :cond_14

    .line 572
    .line 573
    iput-boolean v4, v2, Lj/h;->h:Z

    .line 574
    .line 575
    iget v3, v2, Lj/h;->b:I

    .line 576
    .line 577
    iget v8, v2, Lj/h;->i:I

    .line 578
    .line 579
    iget v12, v2, Lj/h;->j:I

    .line 580
    .line 581
    iget-object v13, v2, Lj/h;->k:Ljava/lang/CharSequence;

    .line 582
    .line 583
    iget-object v14, v2, Lj/h;->a:Landroid/view/Menu;

    .line 584
    .line 585
    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    invoke-virtual {v2, v8}, Lj/h;->b(Landroid/view/MenuItem;)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v8, p1

    .line 597
    .line 598
    invoke-virtual {v0, v8, v1, v3}, Lj/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 599
    .line 600
    .line 601
    goto :goto_b

    .line 602
    :cond_14
    move-object/from16 v8, p1

    .line 603
    .line 604
    move-object v11, v3

    .line 605
    const/4 v10, 0x1

    .line 606
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    const/4 v6, 0x2

    .line 611
    goto/16 :goto_2

    .line 612
    .line 613
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 614
    .line 615
    const-string v2, "Unexpected end of document"

    .line 616
    .line 617
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    throw v1

    .line 621
    :cond_16
    return-void

    .line 622
    :cond_17
    move-object/from16 v8, p1

    .line 623
    .line 624
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 6

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, LI/a;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Lj/i;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Lk/o;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Lk/o;

    .line 33
    .line 34
    iget-boolean v4, v3, Lk/o;->p:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    xor-int/2addr v4, v5

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Lk/o;->w()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lj/i;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    check-cast p2, Lk/o;

    .line 57
    .line 58
    invoke-virtual {p2}, Lk/o;->v()V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    .line 66
    .line 67
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v3

    .line 71
    :goto_2
    new-instance v3, Landroid/view/InflateException;

    .line 72
    .line 73
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_3
    if-eqz v2, :cond_3

    .line 78
    .line 79
    check-cast p2, Lk/o;

    .line 80
    .line 81
    invoke-virtual {p2}, Lk/o;->v()V

    .line 82
    .line 83
    .line 84
    :cond_3
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    .line 88
    .line 89
    :cond_4
    throw p1
.end method
