.class public final LA1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LA1/g;->a:I

    .line 5
    .line 6
    iput-object p2, p0, LA1/g;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LA1/H;)Lm2/o;
    .locals 3

    .line 1
    new-instance v0, Lm2/o;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LA1/g;->c(LA1/H;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v1, "video/mp2t"

    .line 13
    .line 14
    iput-object v1, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    new-array p1, p1, [LW0/L;

    .line 21
    .line 22
    iput-object p1, v0, Lm2/o;->I:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance p1, Ll/s;

    .line 25
    .line 26
    new-instance v1, LB0/x;

    .line 27
    .line 28
    const/16 v2, 0x19

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v1}, Ll/s;-><init>(LB0/x;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 37
    .line 38
    return-object v0
.end method

.method public final b(ILA1/H;)LA1/J;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "video/mp2t"

    .line 3
    .line 4
    if-eq p1, v0, :cond_e

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq p1, v2, :cond_d

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_d

    .line 11
    .line 12
    const/16 v3, 0x15

    .line 13
    .line 14
    if-eq p1, v3, :cond_c

    .line 15
    .line 16
    const/16 v3, 0x1b

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq p1, v3, :cond_a

    .line 20
    .line 21
    const/16 v2, 0x24

    .line 22
    .line 23
    if-eq p1, v2, :cond_9

    .line 24
    .line 25
    const/16 v2, 0x2d

    .line 26
    .line 27
    if-eq p1, v2, :cond_8

    .line 28
    .line 29
    const/16 v2, 0x59

    .line 30
    .line 31
    if-eq p1, v2, :cond_7

    .line 32
    .line 33
    const/16 v2, 0xac

    .line 34
    .line 35
    if-eq p1, v2, :cond_6

    .line 36
    .line 37
    const/16 v2, 0x101

    .line 38
    .line 39
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    const/16 v2, 0x8a

    .line 42
    .line 43
    if-eq p1, v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x8b

    .line 46
    .line 47
    if-eq p1, v2, :cond_3

    .line 48
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    packed-switch p1, :pswitch_data_1

    .line 53
    .line 54
    .line 55
    packed-switch p1, :pswitch_data_2

    .line 56
    .line 57
    .line 58
    return-object v4

    .line 59
    :pswitch_0
    const/16 p1, 0x10

    .line 60
    .line 61
    invoke-virtual {p0, p1}, LA1/g;->d(I)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v4, LA1/C;

    .line 69
    .line 70
    new-instance p1, Lm2/u;

    .line 71
    .line 72
    const-string p2, "application/x-scte35"

    .line 73
    .line 74
    invoke-direct {p1, p2}, Lm2/u;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, p1}, LA1/C;-><init>(LA1/B;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-object v4

    .line 81
    :pswitch_1
    const/16 p1, 0x40

    .line 82
    .line 83
    invoke-virtual {p0, p1}, LA1/g;->d(I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    return-object v4

    .line 90
    :pswitch_2
    new-instance p1, LA1/y;

    .line 91
    .line 92
    new-instance v0, LA1/b;

    .line 93
    .line 94
    iget-object v2, p2, LA1/H;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p2}, LA1/H;->b()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-direct {v0, v2, p2, v1}, LA1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 106
    .line 107
    .line 108
    return-object p1

    .line 109
    :pswitch_3
    invoke-virtual {p0, v0}, LA1/g;->d(I)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    new-instance v4, LA1/y;

    .line 117
    .line 118
    new-instance p1, LA1/u;

    .line 119
    .line 120
    iget-object v0, p2, LA1/H;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p2}, LA1/H;->b()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-direct {p1, v0, p2}, LA1/u;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v4, p1}, LA1/y;-><init>(LA1/j;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-object v4

    .line 135
    :pswitch_4
    new-instance p1, LA1/y;

    .line 136
    .line 137
    new-instance v0, LA1/o;

    .line 138
    .line 139
    new-instance v1, LA1/K;

    .line 140
    .line 141
    invoke-virtual {p0, p2}, LA1/g;->c(LA1/H;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {v1, p2}, LA1/K;-><init>(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, LA1/o;-><init>(LA1/K;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 152
    .line 153
    .line 154
    return-object p1

    .line 155
    :pswitch_5
    invoke-virtual {p0, v0}, LA1/g;->d(I)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_2

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    new-instance v4, LA1/y;

    .line 163
    .line 164
    new-instance p1, LA1/f;

    .line 165
    .line 166
    iget-object v0, p2, LA1/H;->e:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p2}, LA1/H;->b()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-direct {p1, v0, p2, v1, v2}, LA1/f;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v4, p1}, LA1/y;-><init>(LA1/j;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-object v4

    .line 182
    :cond_3
    new-instance p1, LA1/y;

    .line 183
    .line 184
    new-instance v0, LA1/h;

    .line 185
    .line 186
    iget-object v1, p2, LA1/H;->e:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v1, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p2}, LA1/H;->b()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    const/16 v2, 0x1520

    .line 195
    .line 196
    invoke-direct {v0, p2, v2, v1}, LA1/h;-><init>(IILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_4
    :pswitch_6
    new-instance p1, LA1/y;

    .line 204
    .line 205
    new-instance v0, LA1/h;

    .line 206
    .line 207
    iget-object v1, p2, LA1/H;->e:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p2}, LA1/H;->b()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    const/16 v2, 0x1000

    .line 216
    .line 217
    invoke-direct {v0, p2, v2, v1}, LA1/h;-><init>(IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_5
    new-instance p1, LA1/C;

    .line 225
    .line 226
    new-instance p2, Lm2/u;

    .line 227
    .line 228
    const-string v0, "application/vnd.dvb.ait"

    .line 229
    .line 230
    invoke-direct {p2, v0}, Lm2/u;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p1, p2}, LA1/C;-><init>(LA1/B;)V

    .line 234
    .line 235
    .line 236
    return-object p1

    .line 237
    :cond_6
    new-instance p1, LA1/y;

    .line 238
    .line 239
    new-instance v0, LA1/d;

    .line 240
    .line 241
    iget-object v2, p2, LA1/H;->e:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p2}, LA1/H;->b()I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    invoke-direct {v0, v2, p2, v1}, LA1/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 253
    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_7
    new-instance p1, LA1/y;

    .line 257
    .line 258
    new-instance v0, LA1/i;

    .line 259
    .line 260
    iget-object p2, p2, LA1/H;->b:Ljava/util/List;

    .line 261
    .line 262
    invoke-direct {v0, p2}, LA1/i;-><init>(Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 266
    .line 267
    .line 268
    return-object p1

    .line 269
    :cond_8
    new-instance p1, LA1/y;

    .line 270
    .line 271
    new-instance p2, LA1/w;

    .line 272
    .line 273
    invoke-direct {p2}, LA1/w;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, p2}, LA1/y;-><init>(LA1/j;)V

    .line 277
    .line 278
    .line 279
    return-object p1

    .line 280
    :cond_9
    new-instance p1, LA1/y;

    .line 281
    .line 282
    new-instance v0, LA1/t;

    .line 283
    .line 284
    invoke-virtual {p0, p2}, LA1/g;->a(LA1/H;)Lm2/o;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-direct {v0, p2}, LA1/t;-><init>(Lm2/o;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 292
    .line 293
    .line 294
    return-object p1

    .line 295
    :cond_a
    invoke-virtual {p0, v2}, LA1/g;->d(I)Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-eqz p1, :cond_b

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_b
    new-instance v4, LA1/y;

    .line 303
    .line 304
    new-instance p1, LA1/r;

    .line 305
    .line 306
    invoke-virtual {p0, p2}, LA1/g;->a(LA1/H;)Lm2/o;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const/4 v0, 0x1

    .line 311
    invoke-virtual {p0, v0}, LA1/g;->d(I)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    const/16 v1, 0x8

    .line 316
    .line 317
    invoke-virtual {p0, v1}, LA1/g;->d(I)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-direct {p1, p2, v0, v1}, LA1/r;-><init>(Lm2/o;ZZ)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v4, p1}, LA1/y;-><init>(LA1/j;)V

    .line 325
    .line 326
    .line 327
    :goto_3
    return-object v4

    .line 328
    :cond_c
    new-instance p1, LA1/y;

    .line 329
    .line 330
    new-instance p2, LA1/i;

    .line 331
    .line 332
    invoke-direct {p2}, LA1/i;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-direct {p1, p2}, LA1/y;-><init>(LA1/j;)V

    .line 336
    .line 337
    .line 338
    return-object p1

    .line 339
    :cond_d
    new-instance p1, LA1/y;

    .line 340
    .line 341
    new-instance v0, LA1/v;

    .line 342
    .line 343
    iget-object v2, p2, LA1/H;->e:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v2, Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {p2}, LA1/H;->b()I

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    invoke-direct {v0, v2, p2, v1}, LA1/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 355
    .line 356
    .line 357
    return-object p1

    .line 358
    :cond_e
    :pswitch_7
    new-instance p1, LA1/y;

    .line 359
    .line 360
    new-instance v0, LA1/l;

    .line 361
    .line 362
    new-instance v2, LA1/K;

    .line 363
    .line 364
    invoke-virtual {p0, p2}, LA1/g;->c(LA1/H;)Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-direct {v2, p2}, LA1/K;-><init>(Ljava/util/List;)V

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, v2, v1}, LA1/l;-><init>(LA1/K;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-direct {p1, v0}, LA1/y;-><init>(LA1/j;)V

    .line 375
    .line 376
    .line 377
    return-object p1

    .line 378
    nop

    .line 379
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_2
    .packed-switch 0x86
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public final c(LA1/H;)Ljava/util/List;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    invoke-virtual {p0, v2}, LA1/g;->d(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, LA1/g;->b:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    new-instance v2, Lp0/E;

    .line 15
    .line 16
    iget-object p1, p1, LA1/H;->d:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast p1, [B

    .line 19
    .line 20
    invoke-direct {v2, p1}, Lp0/E;-><init>([B)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v2}, Lp0/E;->a()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_8

    .line 28
    .line 29
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, v2, Lp0/E;->b:I

    .line 38
    .line 39
    add-int/2addr v5, v4

    .line 40
    const/16 v4, 0x86

    .line 41
    .line 42
    if-ne p1, v4, :cond_7

    .line 43
    .line 44
    new-instance p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    and-int/lit8 v3, v3, 0x1f

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_1
    if-ge v4, v3, :cond_6

    .line 57
    .line 58
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    const/4 v7, 0x3

    .line 61
    invoke-virtual {v2, v7, v6}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    and-int/lit16 v8, v7, 0x80

    .line 70
    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    const/4 v8, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/4 v8, 0x0

    .line 76
    :goto_2
    if-eqz v8, :cond_2

    .line 77
    .line 78
    and-int/lit8 v7, v7, 0x3f

    .line 79
    .line 80
    const-string v9, "application/cea-708"

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const-string v9, "application/cea-608"

    .line 84
    .line 85
    const/4 v7, 0x1

    .line 86
    :goto_3
    invoke-virtual {v2}, Lp0/E;->z()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    int-to-byte v10, v10

    .line 91
    invoke-virtual {v2, v1}, Lp0/E;->M(I)V

    .line 92
    .line 93
    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    and-int/lit8 v8, v10, 0x40

    .line 97
    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    const/4 v8, 0x1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    const/4 v8, 0x0

    .line 103
    :goto_4
    sget-object v10, Lp0/g;->a:[B

    .line 104
    .line 105
    if-eqz v8, :cond_4

    .line 106
    .line 107
    new-array v8, v1, [B

    .line 108
    .line 109
    aput-byte v1, v8, v0

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_4
    new-array v8, v1, [B

    .line 113
    .line 114
    aput-byte v0, v8, v0

    .line 115
    .line 116
    :goto_5
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    goto :goto_6

    .line 121
    :cond_5
    const/4 v8, 0x0

    .line 122
    :goto_6
    new-instance v10, Lm0/s;

    .line 123
    .line 124
    invoke-direct {v10}, Lm0/s;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {v9}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    iput-object v9, v10, Lm0/s;->n:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v6, v10, Lm0/s;->d:Ljava/lang/String;

    .line 134
    .line 135
    iput v7, v10, Lm0/s;->K:I

    .line 136
    .line 137
    iput-object v8, v10, Lm0/s;->q:Ljava/util/List;

    .line 138
    .line 139
    new-instance v6, Lm0/t;

    .line 140
    .line 141
    invoke-direct {v6, v10}, Lm0/t;-><init>(Lm0/s;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    add-int/2addr v4, v1

    .line 148
    goto :goto_1

    .line 149
    :cond_6
    move-object v3, p1

    .line 150
    :cond_7
    invoke-virtual {v2, v5}, Lp0/E;->L(I)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_8
    return-object v3
.end method

.method public final d(I)Z
    .locals 1

    .line 1
    iget v0, p0, LA1/g;->a:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method
