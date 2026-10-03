.class public final Lq0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:B

.field public final n:B

.field public final o:B


# direct methods
.method public constructor <init>(Lq0/r;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lq0/r;->a:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lq0/r;->b:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lp0/D;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {p1, v0, v1, v3}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    invoke-virtual {p1, v0}, Lp0/D;->i(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iput v3, p0, Lq0/s;->g:I

    .line 43
    .line 44
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iput-boolean v3, p0, Lq0/s;->a:Z

    .line 52
    .line 53
    const/4 v4, 0x5

    .line 54
    const/4 v5, 0x4

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lp0/D;->i(I)I

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, Lq0/s;->b:Z

    .line 61
    .line 62
    iput-boolean v1, p0, Lq0/s;->h:Z

    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    const/16 v3, 0x40

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lp0/D;->u(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_1
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    .line 90
    const/16 v6, 0x20

    .line 91
    .line 92
    if-ge v3, v6, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v3}, Lp0/D;->u(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iput-boolean v3, p0, Lq0/s;->b:Z

    .line 106
    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    const/16 v3, 0x2f

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lp0/D;->u(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iput-boolean v1, p0, Lq0/s;->b:Z

    .line 116
    .line 117
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    iput-boolean v3, p0, Lq0/s;->h:Z

    .line 122
    .line 123
    invoke-virtual {p1, v4}, Lp0/D;->i(I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/4 v6, 0x0

    .line 128
    :goto_4
    if-gt v6, v3, :cond_b

    .line 129
    .line 130
    const/16 v7, 0xc

    .line 131
    .line 132
    invoke-virtual {p1, v7}, Lp0/D;->u(I)V

    .line 133
    .line 134
    .line 135
    const/4 v7, 0x7

    .line 136
    if-nez v6, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1, v4}, Lp0/D;->i(I)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-le v8, v7, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_6
    invoke-virtual {p1, v4}, Lp0/D;->i(I)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-le v8, v7, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_5
    iget-boolean v7, p0, Lq0/s;->b:Z

    .line 158
    .line 159
    if-eqz v7, :cond_8

    .line 160
    .line 161
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget-boolean v7, p0, Lq0/s;->h:Z

    .line 165
    .line 166
    if-eqz v7, :cond_a

    .line 167
    .line 168
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_a

    .line 173
    .line 174
    if-nez v6, :cond_9

    .line 175
    .line 176
    invoke-virtual {p1, v5}, Lp0/D;->i(I)I

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_9
    invoke-virtual {p1, v5}, Lp0/D;->u(I)V

    .line 181
    .line 182
    .line 183
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_b
    :goto_7
    invoke-virtual {p1, v5}, Lp0/D;->i(I)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {p1, v5}, Lp0/D;->i(I)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    add-int/2addr v3, v2

    .line 195
    invoke-virtual {p1, v3}, Lp0/D;->u(I)V

    .line 196
    .line 197
    .line 198
    add-int/2addr v4, v2

    .line 199
    invoke-virtual {p1, v4}, Lp0/D;->u(I)V

    .line 200
    .line 201
    .line 202
    iget-boolean v3, p0, Lq0/s;->a:Z

    .line 203
    .line 204
    if-nez v3, :cond_c

    .line 205
    .line 206
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    iput-boolean v3, p0, Lq0/s;->c:Z

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_c
    iput-boolean v1, p0, Lq0/s;->c:Z

    .line 214
    .line 215
    :goto_8
    iget-boolean v3, p0, Lq0/s;->c:Z

    .line 216
    .line 217
    if-eqz v3, :cond_d

    .line 218
    .line 219
    invoke-virtual {p1, v5}, Lp0/D;->u(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Lp0/D;->u(I)V

    .line 223
    .line 224
    .line 225
    :cond_d
    invoke-virtual {p1, v0}, Lp0/D;->u(I)V

    .line 226
    .line 227
    .line 228
    iget-boolean v3, p0, Lq0/s;->a:Z

    .line 229
    .line 230
    const/4 v4, 0x2

    .line 231
    if-eqz v3, :cond_e

    .line 232
    .line 233
    iput-boolean v2, p0, Lq0/s;->e:Z

    .line 234
    .line 235
    iput-boolean v2, p0, Lq0/s;->d:Z

    .line 236
    .line 237
    iput v1, p0, Lq0/s;->f:I

    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_e
    invoke-virtual {p1, v5}, Lp0/D;->u(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_f

    .line 248
    .line 249
    invoke-virtual {p1, v4}, Lp0/D;->u(I)V

    .line 250
    .line 251
    .line 252
    :cond_f
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_10

    .line 257
    .line 258
    iput-boolean v2, p0, Lq0/s;->d:Z

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_10
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    iput-boolean v5, p0, Lq0/s;->d:Z

    .line 266
    .line 267
    :goto_9
    iget-boolean v5, p0, Lq0/s;->d:Z

    .line 268
    .line 269
    if-eqz v5, :cond_12

    .line 270
    .line 271
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_11

    .line 276
    .line 277
    iput-boolean v2, p0, Lq0/s;->e:Z

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_11
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    iput-boolean v5, p0, Lq0/s;->e:Z

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_12
    iput-boolean v2, p0, Lq0/s;->e:Z

    .line 288
    .line 289
    :goto_a
    if-eqz v3, :cond_13

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Lp0/D;->i(I)I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    add-int/2addr v3, v2

    .line 296
    iput v3, p0, Lq0/s;->f:I

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_13
    iput v1, p0, Lq0/s;->f:I

    .line 300
    .line 301
    :goto_b
    invoke-virtual {p1, v0}, Lp0/D;->u(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    iget v3, p0, Lq0/s;->g:I

    .line 309
    .line 310
    if-ne v3, v4, :cond_14

    .line 311
    .line 312
    if-eqz v0, :cond_14

    .line 313
    .line 314
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    iput-boolean v0, p0, Lq0/s;->i:Z

    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_14
    iput-boolean v1, p0, Lq0/s;->i:Z

    .line 322
    .line 323
    :goto_c
    iget v0, p0, Lq0/s;->g:I

    .line 324
    .line 325
    if-eq v0, v2, :cond_15

    .line 326
    .line 327
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iput-boolean v0, p0, Lq0/s;->j:Z

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_15
    iput-boolean v1, p0, Lq0/s;->j:Z

    .line 335
    .line 336
    :goto_d
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_16

    .line 341
    .line 342
    const/16 v0, 0x8

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Lp0/D;->i(I)I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    int-to-byte v3, v3

    .line 349
    iput-byte v3, p0, Lq0/s;->m:B

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Lp0/D;->i(I)I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    int-to-byte v3, v3

    .line 356
    iput-byte v3, p0, Lq0/s;->n:B

    .line 357
    .line 358
    invoke-virtual {p1, v0}, Lp0/D;->i(I)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    int-to-byte v0, v0

    .line 363
    iput-byte v0, p0, Lq0/s;->o:B

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_16
    iput-byte v1, p0, Lq0/s;->m:B

    .line 367
    .line 368
    iput-byte v1, p0, Lq0/s;->n:B

    .line 369
    .line 370
    iput-byte v1, p0, Lq0/s;->o:B

    .line 371
    .line 372
    :goto_e
    iget-boolean v0, p0, Lq0/s;->j:Z

    .line 373
    .line 374
    if-eqz v0, :cond_17

    .line 375
    .line 376
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 377
    .line 378
    .line 379
    iput-boolean v1, p0, Lq0/s;->k:Z

    .line 380
    .line 381
    iput-boolean v1, p0, Lq0/s;->l:Z

    .line 382
    .line 383
    goto :goto_10

    .line 384
    :cond_17
    iget-byte v0, p0, Lq0/s;->m:B

    .line 385
    .line 386
    if-ne v0, v2, :cond_18

    .line 387
    .line 388
    iget-byte v0, p0, Lq0/s;->n:B

    .line 389
    .line 390
    const/16 v3, 0xd

    .line 391
    .line 392
    if-ne v0, v3, :cond_18

    .line 393
    .line 394
    iget-byte v0, p0, Lq0/s;->o:B

    .line 395
    .line 396
    if-nez v0, :cond_18

    .line 397
    .line 398
    iput-boolean v1, p0, Lq0/s;->k:Z

    .line 399
    .line 400
    iput-boolean v1, p0, Lq0/s;->l:Z

    .line 401
    .line 402
    goto :goto_10

    .line 403
    :cond_18
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 404
    .line 405
    .line 406
    iget v0, p0, Lq0/s;->g:I

    .line 407
    .line 408
    if-nez v0, :cond_19

    .line 409
    .line 410
    iput-boolean v2, p0, Lq0/s;->k:Z

    .line 411
    .line 412
    iput-boolean v2, p0, Lq0/s;->l:Z

    .line 413
    .line 414
    goto :goto_f

    .line 415
    :cond_19
    if-ne v0, v2, :cond_1a

    .line 416
    .line 417
    iput-boolean v1, p0, Lq0/s;->k:Z

    .line 418
    .line 419
    iput-boolean v1, p0, Lq0/s;->l:Z

    .line 420
    .line 421
    goto :goto_f

    .line 422
    :cond_1a
    iget-boolean v0, p0, Lq0/s;->i:Z

    .line 423
    .line 424
    if-eqz v0, :cond_1c

    .line 425
    .line 426
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    iput-boolean v0, p0, Lq0/s;->k:Z

    .line 431
    .line 432
    if-eqz v0, :cond_1b

    .line 433
    .line 434
    invoke-virtual {p1}, Lp0/D;->h()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    iput-boolean v0, p0, Lq0/s;->l:Z

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_1b
    iput-boolean v1, p0, Lq0/s;->l:Z

    .line 442
    .line 443
    goto :goto_f

    .line 444
    :cond_1c
    iput-boolean v2, p0, Lq0/s;->k:Z

    .line 445
    .line 446
    iput-boolean v1, p0, Lq0/s;->l:Z

    .line 447
    .line 448
    :goto_f
    iget-boolean v0, p0, Lq0/s;->k:Z

    .line 449
    .line 450
    if-eqz v0, :cond_1d

    .line 451
    .line 452
    iget-boolean v0, p0, Lq0/s;->l:Z

    .line 453
    .line 454
    if-eqz v0, :cond_1d

    .line 455
    .line 456
    invoke-virtual {p1, v4}, Lp0/D;->i(I)I

    .line 457
    .line 458
    .line 459
    :cond_1d
    :goto_10
    invoke-virtual {p1}, Lp0/D;->t()V

    .line 460
    .line 461
    .line 462
    return-void
.end method
