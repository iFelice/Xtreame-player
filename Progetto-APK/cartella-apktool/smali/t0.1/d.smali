.class public final Lt0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/km;
.implements Lcom/google/android/gms/internal/ads/bo;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:J

.field public J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt0/d;->G:I

    return-void
.end method

.method public synthetic constructor <init>(IJLcom/google/android/gms/internal/ads/dL;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lt0/d;->G:I

    .line 4
    iput-object p4, p0, Lt0/d;->J:Ljava/lang/Object;

    iput p1, p0, Lt0/d;->H:I

    iput-wide p2, p0, Lt0/d;->I:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Y1;JI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lt0/d;->G:I

    .line 7
    iput-object p1, p0, Lt0/d;->J:Ljava/lang/Object;

    iput-wide p2, p0, Lt0/d;->I:J

    iput p4, p0, Lt0/d;->H:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lt0/d;->G:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p1

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/eL;

    .line 11
    .line 12
    iget v2, v0, Lt0/d;->H:I

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/eL;->zzh(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v1, v0, Lt0/d;->J:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/gms/internal/ads/Y1;

    .line 21
    .line 22
    iget-wide v2, v0, Lt0/d;->I:J

    .line 23
    .line 24
    iget v7, v0, Lt0/d;->H:I

    .line 25
    .line 26
    move-object/from16 v4, p1

    .line 27
    .line 28
    check-cast v4, Lcom/google/android/gms/internal/ads/S1;

    .line 29
    .line 30
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Y1;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 31
    .line 32
    invoke-static {v5}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/S1;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 36
    .line 37
    new-instance v6, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/uA;->A(I)Lcom/google/android/gms/internal/ads/sA;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Kz;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_6

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Kz;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Lcom/google/android/gms/internal/ads/ak;

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v11, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v12, v9, Lcom/google/android/gms/internal/ads/ak;->a:Ljava/lang/CharSequence;

    .line 72
    .line 73
    if-eqz v12, :cond_3

    .line 74
    .line 75
    sget-object v13, Lcom/google/android/gms/internal/ads/ak;->p:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    instance-of v13, v12, Landroid/text/Spanned;

    .line 81
    .line 82
    if-eqz v13, :cond_3

    .line 83
    .line 84
    check-cast v12, Landroid/text/Spanned;

    .line 85
    .line 86
    sget-object v13, Lcom/google/android/gms/internal/ads/lk;->a:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v13, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    const-class v15, Lcom/google/android/gms/internal/ads/Bk;

    .line 98
    .line 99
    invoke-interface {v12, v8, v14, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    check-cast v14, [Lcom/google/android/gms/internal/ads/Bk;

    .line 104
    .line 105
    array-length v15, v14

    .line 106
    :goto_1
    if-ge v8, v15, :cond_0

    .line 107
    .line 108
    aget-object v10, v14, v8

    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v0, Landroid/os/Bundle;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .line 117
    .line 118
    move-object/from16 v17, v5

    .line 119
    .line 120
    sget-object v5, Lcom/google/android/gms/internal/ads/Bk;->c:Ljava/lang/String;

    .line 121
    .line 122
    move-object/from16 v18, v14

    .line 123
    .line 124
    iget-object v14, v10, Lcom/google/android/gms/internal/ads/Bk;->a:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v5, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v5, Lcom/google/android/gms/internal/ads/Bk;->d:Ljava/lang/String;

    .line 130
    .line 131
    iget v14, v10, Lcom/google/android/gms/internal/ads/Bk;->b:I

    .line 132
    .line 133
    invoke-virtual {v0, v5, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    const/4 v5, 0x1

    .line 137
    invoke-static {v12, v10, v5, v0}, Lcom/google/android/gms/internal/ads/lk;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    move-object/from16 v0, p0

    .line 147
    .line 148
    move-object/from16 v5, v17

    .line 149
    .line 150
    move-object/from16 v14, v18

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_0
    move-object/from16 v17, v5

    .line 154
    .line 155
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const-class v5, Lcom/google/android/gms/internal/ads/Wk;

    .line 160
    .line 161
    const/4 v8, 0x0

    .line 162
    invoke-interface {v12, v8, v0, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, [Lcom/google/android/gms/internal/ads/Wk;

    .line 167
    .line 168
    array-length v5, v0

    .line 169
    const/4 v8, 0x0

    .line 170
    :goto_2
    if-ge v8, v5, :cond_1

    .line 171
    .line 172
    aget-object v10, v0, v8

    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v14, Landroid/os/Bundle;

    .line 178
    .line 179
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 180
    .line 181
    .line 182
    sget-object v15, Lcom/google/android/gms/internal/ads/Wk;->d:Ljava/lang/String;

    .line 183
    .line 184
    move-object/from16 v16, v0

    .line 185
    .line 186
    iget v0, v10, Lcom/google/android/gms/internal/ads/Wk;->a:I

    .line 187
    .line 188
    invoke-virtual {v14, v15, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lcom/google/android/gms/internal/ads/Wk;->e:Ljava/lang/String;

    .line 192
    .line 193
    iget v15, v10, Lcom/google/android/gms/internal/ads/Wk;->b:I

    .line 194
    .line 195
    invoke-virtual {v14, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lcom/google/android/gms/internal/ads/Wk;->f:Ljava/lang/String;

    .line 199
    .line 200
    iget v15, v10, Lcom/google/android/gms/internal/ads/Wk;->c:I

    .line 201
    .line 202
    invoke-virtual {v14, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const/4 v0, 0x2

    .line 206
    invoke-static {v12, v10, v0, v14}, Lcom/google/android/gms/internal/ads/lk;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    add-int/lit8 v8, v8, 0x1

    .line 214
    .line 215
    move-object/from16 v0, v16

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_1
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    const-class v5, Lcom/google/android/gms/internal/ads/xk;

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    invoke-interface {v12, v8, v0, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, [Lcom/google/android/gms/internal/ads/xk;

    .line 230
    .line 231
    array-length v5, v0

    .line 232
    const/4 v8, 0x0

    .line 233
    :goto_3
    if-ge v8, v5, :cond_2

    .line 234
    .line 235
    aget-object v10, v0, v8

    .line 236
    .line 237
    const/4 v14, 0x3

    .line 238
    const/4 v15, 0x0

    .line 239
    invoke-static {v12, v10, v14, v15}, Lcom/google/android/gms/internal/ads/lk;->a(Landroid/text/Spanned;Ljava/lang/Object;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    add-int/lit8 v8, v8, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_4

    .line 254
    .line 255
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->q:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_3
    move-object/from16 v17, v5

    .line 262
    .line 263
    :cond_4
    :goto_4
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/ak;->b:Landroid/text/Layout$Alignment;

    .line 264
    .line 265
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->r:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/ak;->c:Landroid/text/Layout$Alignment;

    .line 271
    .line 272
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->s:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    .line 276
    .line 277
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->e:F

    .line 278
    .line 279
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->u:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 282
    .line 283
    .line 284
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->f:I

    .line 285
    .line 286
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->v:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->g:I

    .line 292
    .line 293
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->w:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->h:F

    .line 299
    .line 300
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->x:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 303
    .line 304
    .line 305
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->i:I

    .line 306
    .line 307
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->y:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->l:I

    .line 313
    .line 314
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->z:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->m:F

    .line 320
    .line 321
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->A:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 324
    .line 325
    .line 326
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->j:F

    .line 327
    .line 328
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->B:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 331
    .line 332
    .line 333
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->k:F

    .line 334
    .line 335
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->C:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 338
    .line 339
    .line 340
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->E:Ljava/lang/String;

    .line 341
    .line 342
    const/4 v5, 0x0

    .line 343
    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    .line 345
    .line 346
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->D:Ljava/lang/String;

    .line 347
    .line 348
    const/high16 v5, -0x1000000

    .line 349
    .line 350
    invoke-virtual {v11, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 351
    .line 352
    .line 353
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->n:I

    .line 354
    .line 355
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->F:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    iget v0, v9, Lcom/google/android/gms/internal/ads/ak;->o:F

    .line 361
    .line 362
    sget-object v5, Lcom/google/android/gms/internal/ads/ak;->G:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v11, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/ak;->d:Landroid/graphics/Bitmap;

    .line 368
    .line 369
    if-eqz v0, :cond_5

    .line 370
    .line 371
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 372
    .line 373
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    .line 375
    .line 376
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 377
    .line 378
    const/4 v9, 0x0

    .line 379
    invoke-virtual {v0, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 384
    .line 385
    .line 386
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->t:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_5
    const/4 v9, 0x0

    .line 397
    :goto_5
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-object/from16 v0, p0

    .line 401
    .line 402
    move-object/from16 v5, v17

    .line 403
    .line 404
    const/4 v8, 0x0

    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_6
    const/4 v5, 0x1

    .line 408
    const/4 v9, 0x0

    .line 409
    new-instance v0, Landroid/os/Bundle;

    .line 410
    .line 411
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .line 413
    .line 414
    const-string v8, "c"

    .line 415
    .line 416
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 417
    .line 418
    .line 419
    const-string v6, "d"

    .line 420
    .line 421
    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/S1;->c:J

    .line 422
    .line 423
    invoke-virtual {v0, v6, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 424
    .line 425
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 438
    .line 439
    .line 440
    array-length v8, v0

    .line 441
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Y1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 442
    .line 443
    invoke-virtual {v6, v8, v0}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 447
    .line 448
    invoke-interface {v0, v8, v6}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 449
    .line 450
    .line 451
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    const-wide v12, 0x7fffffffffffffffL

    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/S1;->b:J

    .line 462
    .line 463
    cmp-long v0, v14, v10

    .line 464
    .line 465
    if-nez v0, :cond_8

    .line 466
    .line 467
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Y1;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 468
    .line 469
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/p0;->r:J

    .line 470
    .line 471
    cmp-long v0, v10, v12

    .line 472
    .line 473
    if-nez v0, :cond_7

    .line 474
    .line 475
    goto :goto_6

    .line 476
    :cond_7
    const/4 v5, 0x0

    .line 477
    :goto_6
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 478
    .line 479
    .line 480
    :goto_7
    move-wide v5, v2

    .line 481
    goto :goto_8

    .line 482
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Y1;->h:Lcom/google/android/gms/internal/ads/p0;

    .line 483
    .line 484
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/p0;->r:J

    .line 485
    .line 486
    cmp-long v0, v4, v12

    .line 487
    .line 488
    if-nez v0, :cond_9

    .line 489
    .line 490
    add-long/2addr v2, v14

    .line 491
    goto :goto_7

    .line 492
    :cond_9
    add-long v2, v14, v4

    .line 493
    .line 494
    goto :goto_7

    .line 495
    :goto_8
    const/4 v9, 0x0

    .line 496
    const/4 v10, 0x0

    .line 497
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Y1;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 498
    .line 499
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
