.class public final synthetic Lcom/google/android/gms/internal/ads/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/u2;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/u2;->G:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/nA;->a:Lcom/google/android/gms/internal/ads/lA;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/u2;->G:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/KO;

    .line 12
    .line 13
    check-cast p2, Lcom/google/android/gms/internal/ads/KO;

    .line 14
    .line 15
    iget p1, p1, Lcom/google/android/gms/internal/ads/KO;->c:F

    .line 16
    .line 17
    iget p2, p2, Lcom/google/android/gms/internal/ads/KO;->c:F

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/KO;

    .line 25
    .line 26
    check-cast p2, Lcom/google/android/gms/internal/ads/KO;

    .line 27
    .line 28
    iget p1, p1, Lcom/google/android/gms/internal/ads/KO;->a:I

    .line 29
    .line 30
    iget p2, p2, Lcom/google/android/gms/internal/ads/KO;->a:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    return p1

    .line 34
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/rO;

    .line 35
    .line 36
    check-cast p2, Lcom/google/android/gms/internal/ads/rO;

    .line 37
    .line 38
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->K:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->N:Z

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/google/android/gms/internal/ads/XA;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/XA;-><init>(Lcom/google/android/gms/internal/ads/kA;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/rO;->L:Lcom/google/android/gms/internal/ads/lO;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget v2, p1, Lcom/google/android/gms/internal/ads/rO;->Q:I

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v3, p2, Lcom/google/android/gms/internal/ads/rO;->Q:I

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/lA;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/nA;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget p1, p1, Lcom/google/android/gms/internal/ads/rO;->P:I

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget p2, p2, Lcom/google/android/gms/internal/ads/rO;->P:I

    .line 88
    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/nA;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/nA;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nA;->a()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/rO;

    .line 103
    .line 104
    check-cast p2, Lcom/google/android/gms/internal/ads/rO;

    .line 105
    .line 106
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->N:Z

    .line 107
    .line 108
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->N:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/lA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget v1, p1, Lcom/google/android/gms/internal/ads/rO;->S:I

    .line 115
    .line 116
    iget v2, p2, Lcom/google/android/gms/internal/ads/rO;->S:I

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->b(II)Lcom/google/android/gms/internal/ads/nA;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->T:Z

    .line 123
    .line 124
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->T:Z

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->O:Z

    .line 131
    .line 132
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->O:Z

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->K:Z

    .line 139
    .line 140
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->K:Z

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->M:Z

    .line 147
    .line 148
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->M:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget v1, p1, Lcom/google/android/gms/internal/ads/rO;->R:I

    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget v2, p2, Lcom/google/android/gms/internal/ads/rO;->R:I

    .line 161
    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    sget-object v3, Lcom/google/android/gms/internal/ads/NA;->G:Lcom/google/android/gms/internal/ads/NA;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    sget-object v3, Lcom/google/android/gms/internal/ads/WA;->G:Lcom/google/android/gms/internal/ads/WA;

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/nA;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/nA;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/rO;->V:Z

    .line 178
    .line 179
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/rO;->V:Z

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/rO;->W:Z

    .line 186
    .line 187
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/rO;->W:Z

    .line 188
    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/nA;->d(ZZ)Lcom/google/android/gms/internal/ads/nA;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v1, :cond_1

    .line 194
    .line 195
    if-eqz v2, :cond_1

    .line 196
    .line 197
    iget p1, p1, Lcom/google/android/gms/internal/ads/rO;->X:I

    .line 198
    .line 199
    iget p2, p2, Lcom/google/android/gms/internal/ads/rO;->X:I

    .line 200
    .line 201
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/nA;->b(II)Lcom/google/android/gms/internal/ads/nA;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nA;->a()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    return p1

    .line 210
    :pswitch_3
    check-cast p1, Ljava/util/List;

    .line 211
    .line 212
    check-cast p2, Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/google/android/gms/internal/ads/oO;

    .line 219
    .line 220
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Lcom/google/android/gms/internal/ads/oO;

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/oO;->c(Lcom/google/android/gms/internal/ads/oO;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    return p1

    .line 231
    :pswitch_4
    check-cast p1, Ljava/util/List;

    .line 232
    .line 233
    check-cast p2, Ljava/util/List;

    .line 234
    .line 235
    new-instance v0, Lcom/google/android/gms/internal/ads/u2;

    .line 236
    .line 237
    const/16 v1, 0xb

    .line 238
    .line 239
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    check-cast v0, Lcom/google/android/gms/internal/ads/rO;

    .line 247
    .line 248
    new-instance v2, Lcom/google/android/gms/internal/ads/u2;

    .line 249
    .line 250
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 251
    .line 252
    .line 253
    invoke-static {p2, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    check-cast v2, Lcom/google/android/gms/internal/ads/rO;

    .line 258
    .line 259
    new-instance v3, Lcom/google/android/gms/internal/ads/u2;

    .line 260
    .line 261
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/u2;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lA;->f(I)Lcom/google/android/gms/internal/ads/nA;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nA;->b(II)Lcom/google/android/gms/internal/ads/nA;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v1, Lcom/google/android/gms/internal/ads/u2;

    .line 285
    .line 286
    const/16 v2, 0xc

    .line 287
    .line 288
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Lcom/google/android/gms/internal/ads/rO;

    .line 296
    .line 297
    new-instance v1, Lcom/google/android/gms/internal/ads/u2;

    .line 298
    .line 299
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 300
    .line 301
    .line 302
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    check-cast p2, Lcom/google/android/gms/internal/ads/rO;

    .line 307
    .line 308
    new-instance v1, Lcom/google/android/gms/internal/ads/u2;

    .line 309
    .line 310
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u2;-><init>(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/nA;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/nA;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nA;->a()I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    return p1

    .line 322
    :pswitch_5
    check-cast p1, Ljava/util/List;

    .line 323
    .line 324
    check-cast p2, Ljava/util/List;

    .line 325
    .line 326
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Lcom/google/android/gms/internal/ads/hO;

    .line 331
    .line 332
    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    check-cast p2, Lcom/google/android/gms/internal/ads/hO;

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hO;->c(Lcom/google/android/gms/internal/ads/hO;)I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    return p1

    .line 343
    :pswitch_6
    check-cast p1, Ljava/util/List;

    .line 344
    .line 345
    check-cast p2, Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Lcom/google/android/gms/internal/ads/iO;

    .line 352
    .line 353
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    check-cast p2, Lcom/google/android/gms/internal/ads/iO;

    .line 358
    .line 359
    iget p1, p1, Lcom/google/android/gms/internal/ads/iO;->L:I

    .line 360
    .line 361
    iget p2, p2, Lcom/google/android/gms/internal/ads/iO;->L:I

    .line 362
    .line 363
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    return p1

    .line 368
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 369
    .line 370
    check-cast p2, Ljava/lang/Integer;

    .line 371
    .line 372
    sget-object v0, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-ne v0, v3, :cond_2

    .line 379
    .line 380
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-ne p1, v3, :cond_4

    .line 385
    .line 386
    const/4 v2, 0x0

    .line 387
    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-ne v0, v3, :cond_3

    .line 393
    .line 394
    :goto_1
    move v3, v2

    .line 395
    goto :goto_2

    .line 396
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 401
    .line 402
    .line 403
    move-result p2

    .line 404
    sub-int v3, p1, p2

    .line 405
    .line 406
    :cond_4
    :goto_2
    return v3

    .line 407
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/p0;

    .line 408
    .line 409
    check-cast p2, Lcom/google/android/gms/internal/ads/p0;

    .line 410
    .line 411
    iget p2, p2, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 412
    .line 413
    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 414
    .line 415
    sub-int/2addr p2, p1

    .line 416
    return p2

    .line 417
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/ads/R5;

    .line 418
    .line 419
    check-cast p2, Lcom/google/android/gms/internal/ads/R5;

    .line 420
    .line 421
    iget v0, p1, Lcom/google/android/gms/internal/ads/R5;->b:F

    .line 422
    .line 423
    iget v1, p2, Lcom/google/android/gms/internal/ads/R5;->b:F

    .line 424
    .line 425
    cmpg-float v5, v0, v1

    .line 426
    .line 427
    if-gez v5, :cond_5

    .line 428
    .line 429
    :goto_3
    const/4 v2, -0x1

    .line 430
    goto :goto_4

    .line 431
    :cond_5
    cmpl-float v5, v0, v1

    .line 432
    .line 433
    if-lez v5, :cond_6

    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_6
    iget v5, p1, Lcom/google/android/gms/internal/ads/R5;->a:F

    .line 437
    .line 438
    iget v6, p2, Lcom/google/android/gms/internal/ads/R5;->a:F

    .line 439
    .line 440
    cmpg-float v7, v5, v6

    .line 441
    .line 442
    if-gez v7, :cond_7

    .line 443
    .line 444
    goto :goto_3

    .line 445
    :cond_7
    cmpl-float v7, v5, v6

    .line 446
    .line 447
    if-lez v7, :cond_8

    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_8
    iget v7, p1, Lcom/google/android/gms/internal/ads/R5;->d:F

    .line 451
    .line 452
    sub-float/2addr v7, v0

    .line 453
    iget p1, p1, Lcom/google/android/gms/internal/ads/R5;->c:F

    .line 454
    .line 455
    sub-float/2addr p1, v5

    .line 456
    iget v0, p2, Lcom/google/android/gms/internal/ads/R5;->d:F

    .line 457
    .line 458
    sub-float/2addr v0, v1

    .line 459
    iget p2, p2, Lcom/google/android/gms/internal/ads/R5;->c:F

    .line 460
    .line 461
    sub-float/2addr p2, v6

    .line 462
    mul-float v7, v7, p1

    .line 463
    .line 464
    mul-float v0, v0, p2

    .line 465
    .line 466
    cmpl-float p1, v7, v0

    .line 467
    .line 468
    if-lez p1, :cond_9

    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_9
    cmpg-float p1, v7, v0

    .line 472
    .line 473
    if-gez p1, :cond_a

    .line 474
    .line 475
    :goto_4
    move v4, v2

    .line 476
    :cond_a
    return v4

    .line 477
    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/ads/V5;

    .line 478
    .line 479
    check-cast p2, Lcom/google/android/gms/internal/ads/V5;

    .line 480
    .line 481
    iget v0, p1, Lcom/google/android/gms/internal/ads/V5;->c:I

    .line 482
    .line 483
    iget v1, p2, Lcom/google/android/gms/internal/ads/V5;->c:I

    .line 484
    .line 485
    sub-int/2addr v0, v1

    .line 486
    if-eqz v0, :cond_b

    .line 487
    .line 488
    goto :goto_5

    .line 489
    :cond_b
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/V5;->a:J

    .line 490
    .line 491
    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/V5;->a:J

    .line 492
    .line 493
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    :goto_5
    return v0

    .line 498
    :pswitch_b
    check-cast p1, [B

    .line 499
    .line 500
    check-cast p2, [B

    .line 501
    .line 502
    array-length p1, p1

    .line 503
    array-length p2, p2

    .line 504
    sub-int/2addr p1, p2

    .line 505
    return p1

    .line 506
    :pswitch_c
    check-cast p1, Lcom/google/android/gms/internal/ads/t2;

    .line 507
    .line 508
    check-cast p2, Lcom/google/android/gms/internal/ads/t2;

    .line 509
    .line 510
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/t2;->b:J

    .line 511
    .line 512
    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/t2;->b:J

    .line 513
    .line 514
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    return p1

    .line 519
    :pswitch_d
    check-cast p1, Lcom/google/android/gms/internal/ads/v2;

    .line 520
    .line 521
    check-cast p2, Lcom/google/android/gms/internal/ads/v2;

    .line 522
    .line 523
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/v2;->a:Lcom/google/android/gms/internal/ads/w2;

    .line 524
    .line 525
    iget p1, p1, Lcom/google/android/gms/internal/ads/w2;->b:I

    .line 526
    .line 527
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/v2;->a:Lcom/google/android/gms/internal/ads/w2;

    .line 528
    .line 529
    iget p2, p2, Lcom/google/android/gms/internal/ads/w2;->b:I

    .line 530
    .line 531
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    return p1

    .line 536
    nop

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
