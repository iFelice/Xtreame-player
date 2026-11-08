.class public final synthetic LC0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Ly4/h;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LC0/h;->G:I

    return-void
.end method

.method public synthetic constructor <init>(LC0/b;LD0/p;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LC0/h;->G:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LC0/h;->G:I

    .line 4
    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x2

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v7, 0x1

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lq1/a;

    .line 15
    .line 16
    sget-object v2, Lq1/b;->I:Lz4/q;

    .line 17
    .line 18
    iget-wide v1, v1, Lq1/a;->b:J

    .line 19
    .line 20
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v5, v1, v3

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    return-object v1

    .line 36
    :pswitch_1
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Lo0/b;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v8, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v9, v1, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 49
    .line 50
    if-eqz v9, :cond_5

    .line 51
    .line 52
    sget-object v10, Lo0/b;->s:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    instance-of v10, v9, Landroid/text/Spanned;

    .line 58
    .line 59
    if-eqz v10, :cond_5

    .line 60
    .line 61
    check-cast v9, Landroid/text/Spanned;

    .line 62
    .line 63
    sget-object v10, Lo0/d;->a:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v10, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    const-class v12, Lo0/g;

    .line 75
    .line 76
    invoke-interface {v9, v6, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    check-cast v11, [Lo0/g;

    .line 81
    .line 82
    array-length v12, v11

    .line 83
    const/4 v13, 0x0

    .line 84
    :goto_0
    if-ge v13, v12, :cond_1

    .line 85
    .line 86
    aget-object v14, v11, v13

    .line 87
    .line 88
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v15, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v2, Lo0/g;->c:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, v14, Lo0/g;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v15, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v2, Lo0/g;->d:Ljava/lang/String;

    .line 104
    .line 105
    iget v3, v14, Lo0/g;->b:I

    .line 106
    .line 107
    invoke-virtual {v15, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v9, v14, v7, v15}, Lo0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v13, v13, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    const-class v3, Lo0/h;

    .line 125
    .line 126
    invoke-interface {v9, v6, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, [Lo0/h;

    .line 131
    .line 132
    array-length v3, v2

    .line 133
    const/4 v7, 0x0

    .line 134
    :goto_1
    if-ge v7, v3, :cond_2

    .line 135
    .line 136
    aget-object v11, v2, v7

    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v12, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    .line 146
    sget-object v13, Lo0/h;->d:Ljava/lang/String;

    .line 147
    .line 148
    iget v14, v11, Lo0/h;->a:I

    .line 149
    .line 150
    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sget-object v13, Lo0/h;->e:Ljava/lang/String;

    .line 154
    .line 155
    iget v14, v11, Lo0/h;->b:I

    .line 156
    .line 157
    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    sget-object v13, Lo0/h;->f:Ljava/lang/String;

    .line 161
    .line 162
    iget v14, v11, Lo0/h;->c:I

    .line 163
    .line 164
    invoke-virtual {v12, v13, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v9, v11, v5, v12}, Lo0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    add-int/lit8 v7, v7, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const-class v3, Lo0/e;

    .line 182
    .line 183
    invoke-interface {v9, v6, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, [Lo0/e;

    .line 188
    .line 189
    array-length v3, v2

    .line 190
    const/4 v5, 0x0

    .line 191
    :goto_2
    if-ge v5, v3, :cond_3

    .line 192
    .line 193
    aget-object v7, v2, v5

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    invoke-static {v9, v7, v4, v11}, Lo0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    const-class v3, Lo0/i;

    .line 211
    .line 212
    invoke-interface {v9, v6, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, [Lo0/i;

    .line 217
    .line 218
    array-length v3, v2

    .line 219
    const/4 v4, 0x0

    .line 220
    :goto_3
    if-ge v4, v3, :cond_4

    .line 221
    .line 222
    aget-object v5, v2, v4

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance v7, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 230
    .line 231
    .line 232
    sget-object v11, Lo0/i;->b:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v12, v5, Lo0/i;->a:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v7, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/4 v11, 0x4

    .line 240
    invoke-static {v9, v5, v11, v7}, Lo0/d;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    add-int/lit8 v4, v4, 0x1

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_5

    .line 255
    .line 256
    sget-object v2, Lo0/b;->t:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 259
    .line 260
    .line 261
    :cond_5
    sget-object v2, Lo0/b;->u:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v3, v1, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 264
    .line 265
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    .line 267
    .line 268
    sget-object v2, Lo0/b;->v:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v3, v1, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 271
    .line 272
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 273
    .line 274
    .line 275
    sget-object v2, Lo0/b;->y:Ljava/lang/String;

    .line 276
    .line 277
    iget v3, v1, Lo0/b;->e:F

    .line 278
    .line 279
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 280
    .line 281
    .line 282
    sget-object v2, Lo0/b;->z:Ljava/lang/String;

    .line 283
    .line 284
    iget v3, v1, Lo0/b;->f:I

    .line 285
    .line 286
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    sget-object v2, Lo0/b;->A:Ljava/lang/String;

    .line 290
    .line 291
    iget v3, v1, Lo0/b;->g:I

    .line 292
    .line 293
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    sget-object v2, Lo0/b;->B:Ljava/lang/String;

    .line 297
    .line 298
    iget v3, v1, Lo0/b;->h:F

    .line 299
    .line 300
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 301
    .line 302
    .line 303
    sget-object v2, Lo0/b;->C:Ljava/lang/String;

    .line 304
    .line 305
    iget v3, v1, Lo0/b;->i:I

    .line 306
    .line 307
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    sget-object v2, Lo0/b;->D:Ljava/lang/String;

    .line 311
    .line 312
    iget v3, v1, Lo0/b;->n:I

    .line 313
    .line 314
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    sget-object v2, Lo0/b;->E:Ljava/lang/String;

    .line 318
    .line 319
    iget v3, v1, Lo0/b;->o:F

    .line 320
    .line 321
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 322
    .line 323
    .line 324
    sget-object v2, Lo0/b;->F:Ljava/lang/String;

    .line 325
    .line 326
    iget v3, v1, Lo0/b;->j:F

    .line 327
    .line 328
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 329
    .line 330
    .line 331
    sget-object v2, Lo0/b;->G:Ljava/lang/String;

    .line 332
    .line 333
    iget v3, v1, Lo0/b;->k:F

    .line 334
    .line 335
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 336
    .line 337
    .line 338
    sget-object v2, Lo0/b;->I:Ljava/lang/String;

    .line 339
    .line 340
    iget-boolean v3, v1, Lo0/b;->l:Z

    .line 341
    .line 342
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    .line 344
    .line 345
    sget-object v2, Lo0/b;->H:Ljava/lang/String;

    .line 346
    .line 347
    iget v3, v1, Lo0/b;->m:I

    .line 348
    .line 349
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    sget-object v2, Lo0/b;->J:Ljava/lang/String;

    .line 353
    .line 354
    iget v3, v1, Lo0/b;->p:I

    .line 355
    .line 356
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    sget-object v2, Lo0/b;->K:Ljava/lang/String;

    .line 360
    .line 361
    iget v3, v1, Lo0/b;->q:F

    .line 362
    .line 363
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 364
    .line 365
    .line 366
    sget-object v2, Lo0/b;->L:Ljava/lang/String;

    .line 367
    .line 368
    iget v3, v1, Lo0/b;->r:I

    .line 369
    .line 370
    invoke-virtual {v8, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    iget-object v1, v1, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 374
    .line 375
    if-eqz v1, :cond_6

    .line 376
    .line 377
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 378
    .line 379
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 380
    .line 381
    .line 382
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 383
    .line 384
    invoke-virtual {v1, v3, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 389
    .line 390
    .line 391
    sget-object v1, Lo0/b;->x:Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 398
    .line 399
    .line 400
    :cond_6
    return-object v8

    .line 401
    :pswitch_2
    const/4 v11, 0x0

    .line 402
    move-object/from16 v1, p1

    .line 403
    .line 404
    check-cast v1, Landroid/os/Bundle;

    .line 405
    .line 406
    sget-object v2, Lo0/b;->s:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    if-eqz v2, :cond_b

    .line 413
    .line 414
    sget-object v3, Lo0/b;->t:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    if-eqz v3, :cond_c

    .line 421
    .line 422
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    if-eqz v8, :cond_c

    .line 435
    .line 436
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    check-cast v8, Landroid/os/Bundle;

    .line 441
    .line 442
    sget-object v9, Lo0/d;->a:Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    sget-object v10, Lo0/d;->b:Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v10

    .line 454
    sget-object v12, Lo0/d;->c:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v8, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    sget-object v13, Lo0/d;->d:Ljava/lang/String;

    .line 461
    .line 462
    const/4 v14, -0x1

    .line 463
    invoke-virtual {v8, v13, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    sget-object v14, Lo0/d;->e:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    if-eq v13, v7, :cond_a

    .line 474
    .line 475
    if-eq v13, v5, :cond_9

    .line 476
    .line 477
    if-eq v13, v4, :cond_8

    .line 478
    .line 479
    const/4 v14, 0x4

    .line 480
    if-eq v13, v14, :cond_7

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    new-instance v13, Lo0/i;

    .line 487
    .line 488
    sget-object v15, Lo0/i;->b:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v8, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-direct {v13, v8}, Lo0/i;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {v2, v13, v9, v10, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 501
    .line 502
    .line 503
    goto :goto_5

    .line 504
    :cond_8
    const/4 v14, 0x4

    .line 505
    new-instance v8, Lo0/e;

    .line 506
    .line 507
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-interface {v2, v8, v9, v10, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 511
    .line 512
    .line 513
    goto :goto_5

    .line 514
    :cond_9
    const/4 v14, 0x4

    .line 515
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    new-instance v13, Lo0/h;

    .line 519
    .line 520
    sget-object v15, Lo0/h;->d:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v8, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    move-result v15

    .line 526
    sget-object v4, Lo0/h;->e:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v8, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    sget-object v5, Lo0/h;->f:Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    invoke-direct {v13, v15, v4, v5}, Lo0/h;-><init>(III)V

    .line 539
    .line 540
    .line 541
    invoke-interface {v2, v13, v9, v10, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 542
    .line 543
    .line 544
    goto :goto_5

    .line 545
    :cond_a
    const/4 v14, 0x4

    .line 546
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    new-instance v4, Lo0/g;

    .line 550
    .line 551
    sget-object v5, Lo0/g;->c:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    sget-object v13, Lo0/g;->d:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v8, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    invoke-direct {v4, v5, v8}, Lo0/g;-><init>(Ljava/lang/String;I)V

    .line 567
    .line 568
    .line 569
    invoke-interface {v2, v4, v9, v10, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 570
    .line 571
    .line 572
    :goto_5
    const/4 v4, 0x3

    .line 573
    const/4 v5, 0x2

    .line 574
    goto/16 :goto_4

    .line 575
    .line 576
    :cond_b
    move-object v2, v11

    .line 577
    :cond_c
    sget-object v3, Lo0/b;->u:Ljava/lang/String;

    .line 578
    .line 579
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Landroid/text/Layout$Alignment;

    .line 584
    .line 585
    if-eqz v3, :cond_d

    .line 586
    .line 587
    move-object v14, v3

    .line 588
    goto :goto_6

    .line 589
    :cond_d
    move-object v14, v11

    .line 590
    :goto_6
    sget-object v3, Lo0/b;->v:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Landroid/text/Layout$Alignment;

    .line 597
    .line 598
    if-eqz v3, :cond_e

    .line 599
    .line 600
    move-object v15, v3

    .line 601
    goto :goto_7

    .line 602
    :cond_e
    move-object v15, v11

    .line 603
    :goto_7
    sget-object v3, Lo0/b;->w:Ljava/lang/String;

    .line 604
    .line 605
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    check-cast v3, Landroid/graphics/Bitmap;

    .line 610
    .line 611
    if-eqz v3, :cond_f

    .line 612
    .line 613
    move-object/from16 v16, v3

    .line 614
    .line 615
    :goto_8
    move-object v13, v11

    .line 616
    goto :goto_9

    .line 617
    :cond_f
    sget-object v3, Lo0/b;->x:Ljava/lang/String;

    .line 618
    .line 619
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    if-eqz v3, :cond_10

    .line 624
    .line 625
    array-length v2, v3

    .line 626
    invoke-static {v3, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    move-object/from16 v16, v2

    .line 631
    .line 632
    goto :goto_8

    .line 633
    :cond_10
    move-object v13, v2

    .line 634
    move-object/from16 v16, v11

    .line 635
    .line 636
    :goto_9
    sget-object v2, Lo0/b;->y:Ljava/lang/String;

    .line 637
    .line 638
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    const v4, -0x800001

    .line 643
    .line 644
    .line 645
    const/high16 v5, -0x80000000

    .line 646
    .line 647
    if-eqz v3, :cond_11

    .line 648
    .line 649
    sget-object v3, Lo0/b;->z:Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    if-eqz v8, :cond_11

    .line 656
    .line 657
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    move/from16 v17, v2

    .line 666
    .line 667
    move/from16 v18, v3

    .line 668
    .line 669
    goto :goto_a

    .line 670
    :cond_11
    const v17, -0x800001

    .line 671
    .line 672
    .line 673
    const/high16 v18, -0x80000000

    .line 674
    .line 675
    :goto_a
    sget-object v2, Lo0/b;->A:Ljava/lang/String;

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_12

    .line 682
    .line 683
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    move/from16 v19, v2

    .line 688
    .line 689
    goto :goto_b

    .line 690
    :cond_12
    const/high16 v19, -0x80000000

    .line 691
    .line 692
    :goto_b
    sget-object v2, Lo0/b;->B:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    if-eqz v3, :cond_13

    .line 699
    .line 700
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    move/from16 v20, v2

    .line 705
    .line 706
    goto :goto_c

    .line 707
    :cond_13
    const v20, -0x800001

    .line 708
    .line 709
    .line 710
    :goto_c
    sget-object v2, Lo0/b;->C:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_14

    .line 717
    .line 718
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    move/from16 v21, v2

    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_14
    const/high16 v21, -0x80000000

    .line 726
    .line 727
    :goto_d
    sget-object v2, Lo0/b;->E:Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-eqz v3, :cond_15

    .line 734
    .line 735
    sget-object v3, Lo0/b;->D:Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_15

    .line 742
    .line 743
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    move/from16 v23, v2

    .line 752
    .line 753
    move/from16 v22, v3

    .line 754
    .line 755
    goto :goto_e

    .line 756
    :cond_15
    const/high16 v22, -0x80000000

    .line 757
    .line 758
    const v23, -0x800001

    .line 759
    .line 760
    .line 761
    :goto_e
    sget-object v2, Lo0/b;->F:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    if-eqz v3, :cond_16

    .line 768
    .line 769
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 770
    .line 771
    .line 772
    move-result v2

    .line 773
    move/from16 v24, v2

    .line 774
    .line 775
    goto :goto_f

    .line 776
    :cond_16
    const v24, -0x800001

    .line 777
    .line 778
    .line 779
    :goto_f
    sget-object v2, Lo0/b;->G:Ljava/lang/String;

    .line 780
    .line 781
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    if-eqz v3, :cond_17

    .line 786
    .line 787
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    move/from16 v25, v2

    .line 792
    .line 793
    goto :goto_10

    .line 794
    :cond_17
    const v25, -0x800001

    .line 795
    .line 796
    .line 797
    :goto_10
    sget-object v2, Lo0/b;->H:Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    if-eqz v3, :cond_18

    .line 804
    .line 805
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    move/from16 v27, v2

    .line 810
    .line 811
    goto :goto_11

    .line 812
    :cond_18
    const/high16 v2, -0x1000000

    .line 813
    .line 814
    const/4 v7, 0x0

    .line 815
    const/high16 v27, -0x1000000

    .line 816
    .line 817
    :goto_11
    sget-object v2, Lo0/b;->I:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    if-nez v2, :cond_19

    .line 824
    .line 825
    const/16 v26, 0x0

    .line 826
    .line 827
    goto :goto_12

    .line 828
    :cond_19
    move/from16 v26, v7

    .line 829
    .line 830
    :goto_12
    sget-object v2, Lo0/b;->J:Ljava/lang/String;

    .line 831
    .line 832
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    if-eqz v3, :cond_1a

    .line 837
    .line 838
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    move/from16 v28, v2

    .line 843
    .line 844
    goto :goto_13

    .line 845
    :cond_1a
    const/high16 v28, -0x80000000

    .line 846
    .line 847
    :goto_13
    sget-object v2, Lo0/b;->K:Ljava/lang/String;

    .line 848
    .line 849
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    if-eqz v3, :cond_1b

    .line 854
    .line 855
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    move/from16 v29, v2

    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_1b
    const/4 v2, 0x0

    .line 863
    const/16 v29, 0x0

    .line 864
    .line 865
    :goto_14
    sget-object v2, Lo0/b;->L:Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    if-eqz v3, :cond_1c

    .line 872
    .line 873
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 874
    .line 875
    .line 876
    move-result v6

    .line 877
    move/from16 v30, v6

    .line 878
    .line 879
    goto :goto_15

    .line 880
    :cond_1c
    const/16 v30, 0x0

    .line 881
    .line 882
    :goto_15
    new-instance v1, Lo0/b;

    .line 883
    .line 884
    move-object v12, v1

    .line 885
    invoke-direct/range {v12 .. v30}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 886
    .line 887
    .line 888
    return-object v1

    .line 889
    :pswitch_3
    move-object/from16 v1, p1

    .line 890
    .line 891
    check-cast v1, Lo1/p;

    .line 892
    .line 893
    return-object v1

    .line 894
    :pswitch_4
    move-object/from16 v1, p1

    .line 895
    .line 896
    check-cast v1, Lq1/a;

    .line 897
    .line 898
    sget-object v2, LQ0/c;->b:Lz4/y;

    .line 899
    .line 900
    iget-wide v1, v1, Lq1/a;->c:J

    .line 901
    .line 902
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    return-object v1

    .line 907
    :pswitch_5
    move-object/from16 v1, p1

    .line 908
    .line 909
    check-cast v1, Lq1/a;

    .line 910
    .line 911
    sget-object v2, LQ0/c;->b:Lz4/y;

    .line 912
    .line 913
    iget-wide v1, v1, Lq1/a;->b:J

    .line 914
    .line 915
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    return-object v1

    .line 920
    :pswitch_6
    move-object/from16 v1, p1

    .line 921
    .line 922
    check-cast v1, Lm0/g0;

    .line 923
    .line 924
    sget-object v2, LO0/Z;->d:LO0/Z;

    .line 925
    .line 926
    iget v1, v1, Lm0/g0;->c:I

    .line 927
    .line 928
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    return-object v1

    .line 933
    :pswitch_7
    move-object/from16 v1, p1

    .line 934
    .line 935
    check-cast v1, LW0/s;

    .line 936
    .line 937
    invoke-interface {v1}, LW0/s;->b()LW0/s;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    return-object v1

    .line 950
    :pswitch_8
    move-object/from16 v1, p1

    .line 951
    .line 952
    check-cast v1, LH0/t;

    .line 953
    .line 954
    invoke-virtual {v1}, LH0/t;->f()V

    .line 955
    .line 956
    .line 957
    iget-object v1, v1, LH0/t;->o0:LO0/Z;

    .line 958
    .line 959
    iget-object v1, v1, LO0/Z;->b:Lz4/d0;

    .line 960
    .line 961
    new-instance v2, LC0/h;

    .line 962
    .line 963
    const/4 v3, 0x7

    .line 964
    invoke-direct {v2, v3}, LC0/h;-><init>(I)V

    .line 965
    .line 966
    .line 967
    invoke-static {v2, v1}, Lo3/r;->i(LC0/h;Ljava/util/List;)Ljava/util/AbstractList;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-static {v1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    return-object v1

    .line 976
    :pswitch_9
    move-object/from16 v1, p1

    .line 977
    .line 978
    check-cast v1, LP0/m;

    .line 979
    .line 980
    sget-object v2, LE0/d;->g0:Ljava/util/regex/Pattern;

    .line 981
    .line 982
    iget v1, v1, LP0/m;->G:I

    .line 983
    .line 984
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    return-object v1

    .line 993
    :pswitch_a
    new-instance v1, LC0/A;

    .line 994
    .line 995
    move-object/from16 v2, p1

    .line 996
    .line 997
    check-cast v2, Lp0/f;

    .line 998
    .line 999
    invoke-direct {v1, v2}, LC0/A;-><init>(Lp0/f;)V

    .line 1000
    .line 1001
    .line 1002
    return-object v1

    .line 1003
    :pswitch_b
    move-object/from16 v1, p1

    .line 1004
    .line 1005
    check-cast v1, Lo0/b;

    .line 1006
    .line 1007
    sget-object v2, Lo0/c;->b:Lz4/q;

    .line 1008
    .line 1009
    iget v1, v1, Lo0/b;->r:I

    .line 1010
    .line 1011
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    return-object v1

    .line 1016
    :pswitch_c
    move-object/from16 v1, p1

    .line 1017
    .line 1018
    check-cast v1, Lm0/w;

    .line 1019
    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    iget-object v3, v1, Lm0/w;->a:Ljava/lang/String;

    .line 1026
    .line 1027
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    const-string v3, ": "

    .line 1031
    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    iget-object v1, v1, Lm0/w;->b:Ljava/lang/String;

    .line 1036
    .line 1037
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    return-object v1

    .line 1045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LC0/h;->G:I

    .line 2
    .line 3
    check-cast p1, LC0/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
