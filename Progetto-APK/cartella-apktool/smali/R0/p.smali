.class public final LR0/p;
.super LR0/o;
.source "SourceFile"


# instance fields
.field public final K:Z

.field public final L:LR0/k;

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:Z

.field public final W:I

.field public final X:Z

.field public final Y:I

.field public final Z:Z

.field public final a0:Z

.field public final b0:I


# direct methods
.method public constructor <init>(ILm0/g0;ILR0/k;ILjava/lang/String;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p3, p2}, LR0/o;-><init>(IILm0/g0;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, LR0/p;->L:LR0/k;

    .line 5
    .line 6
    iget-boolean p1, p4, LR0/k;->H:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x18

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x10

    .line 14
    .line 15
    :goto_0
    const/4 p2, 0x1

    .line 16
    iget-boolean p3, p4, LR0/k;->G:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    and-int p3, p7, p1

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    const/4 p3, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    :goto_1
    iput-boolean p3, p0, LR0/p;->X:Z

    .line 29
    .line 30
    const/high16 p3, -0x40800000    # -1.0f

    .line 31
    .line 32
    const/4 p7, -0x1

    .line 33
    if-eqz p8, :cond_6

    .line 34
    .line 35
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 36
    .line 37
    iget v2, v1, Lm0/t;->v:I

    .line 38
    .line 39
    if-eq v2, p7, :cond_2

    .line 40
    .line 41
    iget v3, p4, Lm0/k0;->a:I

    .line 42
    .line 43
    if-gt v2, v3, :cond_6

    .line 44
    .line 45
    :cond_2
    iget v2, v1, Lm0/t;->w:I

    .line 46
    .line 47
    if-eq v2, p7, :cond_3

    .line 48
    .line 49
    iget v3, p4, Lm0/k0;->b:I

    .line 50
    .line 51
    if-gt v2, v3, :cond_6

    .line 52
    .line 53
    :cond_3
    iget v2, v1, Lm0/t;->z:F

    .line 54
    .line 55
    cmpl-float v3, v2, p3

    .line 56
    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    iget v3, p4, Lm0/k0;->c:I

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    cmpg-float v2, v2, v3

    .line 63
    .line 64
    if-gtz v2, :cond_6

    .line 65
    .line 66
    :cond_4
    iget v1, v1, Lm0/t;->j:I

    .line 67
    .line 68
    if-eq v1, p7, :cond_5

    .line 69
    .line 70
    iget v2, p4, Lm0/k0;->d:I

    .line 71
    .line 72
    if-gt v1, v2, :cond_6

    .line 73
    .line 74
    :cond_5
    const/4 v1, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_6
    const/4 v1, 0x0

    .line 77
    :goto_2
    iput-boolean v1, p0, LR0/p;->K:Z

    .line 78
    .line 79
    if-eqz p8, :cond_b

    .line 80
    .line 81
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 82
    .line 83
    iget v1, p8, Lm0/t;->v:I

    .line 84
    .line 85
    if-eq v1, p7, :cond_7

    .line 86
    .line 87
    iget v2, p4, Lm0/k0;->e:I

    .line 88
    .line 89
    if-lt v1, v2, :cond_b

    .line 90
    .line 91
    :cond_7
    iget v1, p8, Lm0/t;->w:I

    .line 92
    .line 93
    if-eq v1, p7, :cond_8

    .line 94
    .line 95
    iget v2, p4, Lm0/k0;->f:I

    .line 96
    .line 97
    if-lt v1, v2, :cond_b

    .line 98
    .line 99
    :cond_8
    iget v1, p8, Lm0/t;->z:F

    .line 100
    .line 101
    cmpl-float v2, v1, p3

    .line 102
    .line 103
    if-eqz v2, :cond_9

    .line 104
    .line 105
    iget v2, p4, Lm0/k0;->g:I

    .line 106
    .line 107
    int-to-float v2, v2

    .line 108
    cmpl-float v1, v1, v2

    .line 109
    .line 110
    if-ltz v1, :cond_b

    .line 111
    .line 112
    :cond_9
    iget p8, p8, Lm0/t;->j:I

    .line 113
    .line 114
    if-eq p8, p7, :cond_a

    .line 115
    .line 116
    iget v1, p4, Lm0/k0;->h:I

    .line 117
    .line 118
    if-lt p8, v1, :cond_b

    .line 119
    .line 120
    :cond_a
    const/4 p8, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_b
    const/4 p8, 0x0

    .line 123
    :goto_3
    iput-boolean p8, p0, LR0/p;->M:Z

    .line 124
    .line 125
    invoke-static {p5, v0}, LA0/O;->u(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result p8

    .line 129
    iput-boolean p8, p0, LR0/p;->N:Z

    .line 130
    .line 131
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 132
    .line 133
    iget v1, p8, Lm0/t;->z:F

    .line 134
    .line 135
    cmpl-float p3, v1, p3

    .line 136
    .line 137
    if-eqz p3, :cond_c

    .line 138
    .line 139
    const/high16 p3, 0x41200000    # 10.0f

    .line 140
    .line 141
    cmpl-float p3, v1, p3

    .line 142
    .line 143
    if-ltz p3, :cond_c

    .line 144
    .line 145
    const/4 p3, 0x1

    .line 146
    goto :goto_4

    .line 147
    :cond_c
    const/4 p3, 0x0

    .line 148
    :goto_4
    iput-boolean p3, p0, LR0/p;->O:Z

    .line 149
    .line 150
    iget p3, p8, Lm0/t;->j:I

    .line 151
    .line 152
    iput p3, p0, LR0/p;->P:I

    .line 153
    .line 154
    invoke-virtual {p8}, Lm0/t;->b()I

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    iput p3, p0, LR0/p;->Q:I

    .line 159
    .line 160
    const/4 p3, 0x0

    .line 161
    :goto_5
    iget-object p8, p4, Lm0/k0;->n:Lz4/H;

    .line 162
    .line 163
    invoke-virtual {p8}, Ljava/util/AbstractCollection;->size()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    const v2, 0x7fffffff

    .line 168
    .line 169
    .line 170
    if-ge p3, v1, :cond_e

    .line 171
    .line 172
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 173
    .line 174
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p8

    .line 178
    check-cast p8, Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v1, p8, v0}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 181
    .line 182
    .line 183
    move-result p8

    .line 184
    if-lez p8, :cond_d

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_d
    add-int/lit8 p3, p3, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_e
    const p3, 0x7fffffff

    .line 191
    .line 192
    .line 193
    const/4 p8, 0x0

    .line 194
    :goto_6
    iput p3, p0, LR0/p;->S:I

    .line 195
    .line 196
    iput p8, p0, LR0/p;->T:I

    .line 197
    .line 198
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 199
    .line 200
    iget p3, p3, Lm0/t;->f:I

    .line 201
    .line 202
    iget p8, p4, Lm0/k0;->o:I

    .line 203
    .line 204
    invoke-static {p3, p8}, LR0/q;->c(II)I

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    iput p3, p0, LR0/p;->U:I

    .line 209
    .line 210
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 211
    .line 212
    iget p3, p3, Lm0/t;->f:I

    .line 213
    .line 214
    if-eqz p3, :cond_10

    .line 215
    .line 216
    and-int/2addr p3, p2

    .line 217
    if-eqz p3, :cond_f

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_f
    const/4 p3, 0x0

    .line 221
    goto :goto_8

    .line 222
    :cond_10
    :goto_7
    const/4 p3, 0x1

    .line 223
    :goto_8
    iput-boolean p3, p0, LR0/p;->V:Z

    .line 224
    .line 225
    invoke-static {p6}, LR0/q;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p3

    .line 229
    if-nez p3, :cond_11

    .line 230
    .line 231
    const/4 p3, 0x1

    .line 232
    goto :goto_9

    .line 233
    :cond_11
    const/4 p3, 0x0

    .line 234
    :goto_9
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 235
    .line 236
    invoke-static {p8, p6, p3}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 237
    .line 238
    .line 239
    move-result p3

    .line 240
    iput p3, p0, LR0/p;->W:I

    .line 241
    .line 242
    const/4 p3, 0x0

    .line 243
    :goto_a
    iget-object p6, p4, Lm0/k0;->m:Lz4/H;

    .line 244
    .line 245
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->size()I

    .line 246
    .line 247
    .line 248
    move-result p8

    .line 249
    if-ge p3, p8, :cond_13

    .line 250
    .line 251
    iget-object p8, p0, LR0/o;->J:Lm0/t;

    .line 252
    .line 253
    iget-object p8, p8, Lm0/t;->o:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz p8, :cond_12

    .line 256
    .line 257
    invoke-interface {p6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p6

    .line 261
    invoke-virtual {p8, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p6

    .line 265
    if-eqz p6, :cond_12

    .line 266
    .line 267
    move v2, p3

    .line 268
    goto :goto_b

    .line 269
    :cond_12
    add-int/lit8 p3, p3, 0x1

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_13
    :goto_b
    iput v2, p0, LR0/p;->R:I

    .line 273
    .line 274
    invoke-static {p5}, LA0/O;->p(I)I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    const/16 p4, 0x80

    .line 279
    .line 280
    if-ne p3, p4, :cond_14

    .line 281
    .line 282
    const/4 p3, 0x1

    .line 283
    goto :goto_c

    .line 284
    :cond_14
    const/4 p3, 0x0

    .line 285
    :goto_c
    iput-boolean p3, p0, LR0/p;->Z:Z

    .line 286
    .line 287
    invoke-static {p5}, LA0/O;->q(I)I

    .line 288
    .line 289
    .line 290
    move-result p3

    .line 291
    const/16 p4, 0x40

    .line 292
    .line 293
    if-ne p3, p4, :cond_15

    .line 294
    .line 295
    const/4 p3, 0x1

    .line 296
    goto :goto_d

    .line 297
    :cond_15
    const/4 p3, 0x0

    .line 298
    :goto_d
    iput-boolean p3, p0, LR0/p;->a0:Z

    .line 299
    .line 300
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 301
    .line 302
    iget-object p3, p3, Lm0/t;->o:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {p3}, LR0/q;->d(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result p3

    .line 308
    iput p3, p0, LR0/p;->b0:I

    .line 309
    .line 310
    iget-object p3, p0, LR0/o;->J:Lm0/t;

    .line 311
    .line 312
    iget p4, p3, Lm0/t;->f:I

    .line 313
    .line 314
    and-int/lit16 p4, p4, 0x4000

    .line 315
    .line 316
    if-eqz p4, :cond_16

    .line 317
    .line 318
    goto :goto_e

    .line 319
    :cond_16
    iget-object p4, p0, LR0/p;->L:LR0/k;

    .line 320
    .line 321
    iget-boolean p6, p4, LR0/k;->Q:Z

    .line 322
    .line 323
    invoke-static {p5, p6}, LA0/O;->u(IZ)Z

    .line 324
    .line 325
    .line 326
    move-result p6

    .line 327
    if-nez p6, :cond_17

    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_17
    iget-boolean p6, p0, LR0/p;->K:Z

    .line 331
    .line 332
    if-nez p6, :cond_18

    .line 333
    .line 334
    iget-boolean p8, p4, LR0/k;->F:Z

    .line 335
    .line 336
    if-nez p8, :cond_18

    .line 337
    .line 338
    goto :goto_e

    .line 339
    :cond_18
    invoke-static {p5, v0}, LA0/O;->u(IZ)Z

    .line 340
    .line 341
    .line 342
    move-result p8

    .line 343
    if-eqz p8, :cond_19

    .line 344
    .line 345
    iget-boolean p8, p0, LR0/p;->M:Z

    .line 346
    .line 347
    if-eqz p8, :cond_19

    .line 348
    .line 349
    if-eqz p6, :cond_19

    .line 350
    .line 351
    iget p3, p3, Lm0/t;->j:I

    .line 352
    .line 353
    if-eq p3, p7, :cond_19

    .line 354
    .line 355
    iget-boolean p3, p4, Lm0/k0;->C:Z

    .line 356
    .line 357
    if-nez p3, :cond_19

    .line 358
    .line 359
    iget-boolean p3, p4, Lm0/k0;->B:Z

    .line 360
    .line 361
    if-nez p3, :cond_19

    .line 362
    .line 363
    and-int/2addr p1, p5

    .line 364
    if-eqz p1, :cond_19

    .line 365
    .line 366
    const/4 p2, 0x2

    .line 367
    :cond_19
    move v0, p2

    .line 368
    :goto_e
    iput v0, p0, LR0/p;->Y:I

    .line 369
    .line 370
    return-void
.end method

.method public static c(LR0/p;LR0/p;)I
    .locals 6

    .line 1
    iget-boolean v0, p0, LR0/p;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, LR0/p;->N:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, LR0/q;->k:Lz4/c0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, LR0/q;->k:Lz4/c0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lz4/c0;->a()Lz4/c0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    sget-object v1, Lz4/x;->a:Lz4/v;

    .line 19
    .line 20
    iget-object v2, p0, LR0/p;->L:LR0/k;

    .line 21
    .line 22
    iget-boolean v2, v2, Lm0/k0;->B:Z

    .line 23
    .line 24
    iget v3, p0, LR0/p;->P:I

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v4, p1, LR0/p;->P:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v5, LR0/q;->k:Lz4/c0;

    .line 39
    .line 40
    invoke-virtual {v5}, Lz4/c0;->a()Lz4/c0;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v1, v2, v4, v5}, Lz4/v;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_1
    iget p0, p0, LR0/p;->Q:I

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iget v2, p1, LR0/p;->Q:I

    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, p0, v2, v0}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget p1, p1, LR0/p;->P:I

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, v1, p1, v0}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lz4/x;->e()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public static d(LR0/p;LR0/p;)I
    .locals 4

    .line 1
    sget-object v0, Lz4/x;->a:Lz4/v;

    .line 2
    .line 3
    iget-boolean v1, p0, LR0/p;->N:Z

    .line 4
    .line 5
    iget-boolean v2, p1, LR0/p;->N:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lz4/v;->c(ZZ)Lz4/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, LR0/p;->S:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, LR0/p;->S:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lz4/b0;->G:Lz4/b0;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v3, Lz4/k0;->G:Lz4/k0;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, LR0/p;->T:I

    .line 35
    .line 36
    iget v2, p1, LR0/p;->T:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lz4/x;->a(II)Lz4/x;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, LR0/p;->U:I

    .line 43
    .line 44
    iget v2, p1, LR0/p;->U:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lz4/x;->a(II)Lz4/x;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v1, p0, LR0/p;->V:Z

    .line 51
    .line 52
    iget-boolean v2, p1, LR0/p;->V:Z

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lz4/x;->c(ZZ)Lz4/x;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, LR0/p;->W:I

    .line 59
    .line 60
    iget v2, p1, LR0/p;->W:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lz4/x;->a(II)Lz4/x;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-boolean v1, p0, LR0/p;->O:Z

    .line 67
    .line 68
    iget-boolean v2, p1, LR0/p;->O:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lz4/x;->c(ZZ)Lz4/x;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-boolean v1, p0, LR0/p;->K:Z

    .line 75
    .line 76
    iget-boolean v2, p1, LR0/p;->K:Z

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lz4/x;->c(ZZ)Lz4/x;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-boolean v1, p0, LR0/p;->M:Z

    .line 83
    .line 84
    iget-boolean v2, p1, LR0/p;->M:Z

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lz4/x;->c(ZZ)Lz4/x;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v1, p0, LR0/p;->R:I

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget v2, p1, LR0/p;->R:I

    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-boolean v1, p1, LR0/p;->Z:Z

    .line 107
    .line 108
    iget-boolean v2, p0, LR0/p;->Z:Z

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Lz4/x;->c(ZZ)Lz4/x;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-boolean v1, p1, LR0/p;->a0:Z

    .line 115
    .line 116
    iget-boolean v3, p0, LR0/p;->a0:Z

    .line 117
    .line 118
    invoke-virtual {v0, v3, v1}, Lz4/x;->c(ZZ)Lz4/x;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v2, :cond_0

    .line 123
    .line 124
    if-eqz v3, :cond_0

    .line 125
    .line 126
    iget p0, p0, LR0/p;->b0:I

    .line 127
    .line 128
    iget p1, p1, LR0/p;->b0:I

    .line 129
    .line 130
    invoke-virtual {v0, p0, p1}, Lz4/x;->a(II)Lz4/x;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Lz4/x;->e()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LR0/p;->Y:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(LR0/o;)Z
    .locals 2

    .line 1
    check-cast p1, LR0/p;

    .line 2
    .line 3
    iget-boolean v0, p0, LR0/p;->X:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LR0/o;->J:Lm0/t;

    .line 8
    .line 9
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p1, LR0/o;->J:Lm0/t;

    .line 12
    .line 13
    iget-object v1, v1, Lm0/t;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, LR0/p;->L:LR0/k;

    .line 22
    .line 23
    iget-boolean v0, v0, LR0/k;->I:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p1, LR0/p;->Z:Z

    .line 28
    .line 29
    iget-boolean v1, p0, LR0/p;->Z:Z

    .line 30
    .line 31
    if-ne v1, v0, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p0, LR0/p;->a0:Z

    .line 34
    .line 35
    iget-boolean p1, p1, LR0/p;->a0:Z

    .line 36
    .line 37
    if-ne v0, p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 43
    :goto_1
    return p1
.end method
