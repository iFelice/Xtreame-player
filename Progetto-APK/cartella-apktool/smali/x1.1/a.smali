.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/m;
.implements Lcom/google/android/gms/internal/ads/W1;


# instance fields
.field public final G:Z

.field public final H:I

.field public final I:I

.field public final J:Ljava/lang/String;

.field public final K:F

.field public final L:I

.field public final M:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v8, "serif"

    .line 6
    .line 7
    const-string v9, "Serif"

    .line 8
    .line 9
    const/16 v10, 0x2b

    .line 10
    .line 11
    const/16 v11, 0x1d

    .line 12
    .line 13
    const/16 v12, 0x1c

    .line 14
    .line 15
    const/16 v13, 0x1b

    .line 16
    .line 17
    const/16 v14, 0x1a

    .line 18
    .line 19
    const/16 v15, 0x18

    .line 20
    .line 21
    const/16 v2, 0x35

    .line 22
    .line 23
    const/16 v3, 0x30

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const-string v5, "sans-serif"

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    move/from16 v7, p1

    .line 30
    .line 31
    if-eq v7, v6, :cond_5

    .line 32
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lp0/E;

    .line 37
    .line 38
    invoke-direct {v7}, Lp0/E;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v7, v0, Lx1/a;->M:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-ne v7, v6, :cond_0

    .line 48
    .line 49
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, [B

    .line 54
    .line 55
    array-length v7, v7

    .line 56
    if-eq v7, v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, [B

    .line 63
    .line 64
    array-length v3, v3

    .line 65
    if-ne v3, v2, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const v1, 0x3f59999a    # 0.85f

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [B

    .line 77
    .line 78
    aget-byte v2, v1, v15

    .line 79
    .line 80
    iput v2, v0, Lx1/a;->H:I

    .line 81
    .line 82
    aget-byte v2, v1, v14

    .line 83
    .line 84
    and-int/lit16 v2, v2, 0xff

    .line 85
    .line 86
    shl-int/2addr v2, v15

    .line 87
    aget-byte v3, v1, v13

    .line 88
    .line 89
    and-int/lit16 v3, v3, 0xff

    .line 90
    .line 91
    shl-int/lit8 v3, v3, 0x10

    .line 92
    .line 93
    or-int/2addr v2, v3

    .line 94
    aget-byte v3, v1, v12

    .line 95
    .line 96
    and-int/lit16 v3, v3, 0xff

    .line 97
    .line 98
    shl-int/lit8 v3, v3, 0x8

    .line 99
    .line 100
    or-int/2addr v2, v3

    .line 101
    aget-byte v3, v1, v11

    .line 102
    .line 103
    and-int/lit16 v3, v3, 0xff

    .line 104
    .line 105
    or-int/2addr v2, v3

    .line 106
    iput v2, v0, Lx1/a;->I:I

    .line 107
    .line 108
    array-length v2, v1

    .line 109
    sub-int/2addr v2, v10

    .line 110
    new-instance v3, Ljava/lang/String;

    .line 111
    .line 112
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-direct {v3, v1, v10, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-object v8, v5

    .line 125
    :goto_1
    iput-object v8, v0, Lx1/a;->J:Ljava/lang/String;

    .line 126
    .line 127
    const/16 v2, 0x19

    .line 128
    .line 129
    aget-byte v2, v1, v2

    .line 130
    .line 131
    mul-int/lit8 v2, v2, 0x14

    .line 132
    .line 133
    iput v2, v0, Lx1/a;->L:I

    .line 134
    .line 135
    aget-byte v3, v1, v4

    .line 136
    .line 137
    and-int/lit8 v3, v3, 0x20

    .line 138
    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    const/4 v4, 0x1

    .line 142
    :cond_3
    iput-boolean v4, v0, Lx1/a;->G:Z

    .line 143
    .line 144
    if-eqz v4, :cond_4

    .line 145
    .line 146
    const/16 v3, 0xa

    .line 147
    .line 148
    aget-byte v3, v1, v3

    .line 149
    .line 150
    and-int/lit16 v3, v3, 0xff

    .line 151
    .line 152
    shl-int/lit8 v3, v3, 0x8

    .line 153
    .line 154
    const/16 v4, 0xb

    .line 155
    .line 156
    aget-byte v1, v1, v4

    .line 157
    .line 158
    and-int/lit16 v1, v1, 0xff

    .line 159
    .line 160
    or-int/2addr v1, v3

    .line 161
    int-to-float v1, v1

    .line 162
    int-to-float v2, v2

    .line 163
    div-float/2addr v1, v2

    .line 164
    const v2, 0x3f733333    # 0.95f

    .line 165
    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-static {v1, v3, v2}, Lp0/M;->h(FFF)F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    iput v1, v0, Lx1/a;->K:F

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    const v1, 0x3f59999a    # 0.85f

    .line 176
    .line 177
    .line 178
    iput v1, v0, Lx1/a;->K:F

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :goto_2
    iput v4, v0, Lx1/a;->H:I

    .line 182
    .line 183
    const/4 v2, -0x1

    .line 184
    iput v2, v0, Lx1/a;->I:I

    .line 185
    .line 186
    iput-object v5, v0, Lx1/a;->J:Ljava/lang/String;

    .line 187
    .line 188
    iput-boolean v4, v0, Lx1/a;->G:Z

    .line 189
    .line 190
    iput v1, v0, Lx1/a;->K:F

    .line 191
    .line 192
    iput v2, v0, Lx1/a;->L:I

    .line 193
    .line 194
    :goto_3
    return-void

    .line 195
    :cond_5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v7, Lcom/google/android/gms/internal/ads/jr;

    .line 199
    .line 200
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 201
    .line 202
    .line 203
    iput-object v7, v0, Lx1/a;->M:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-ne v7, v6, :cond_6

    .line 210
    .line 211
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, [B

    .line 216
    .line 217
    array-length v7, v7

    .line 218
    if-eq v7, v3, :cond_7

    .line 219
    .line 220
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, [B

    .line 225
    .line 226
    array-length v3, v3

    .line 227
    if-ne v3, v2, :cond_6

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    const v1, 0x3f59999a    # 0.85f

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_7
    :goto_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, [B

    .line 239
    .line 240
    aget-byte v2, v1, v15

    .line 241
    .line 242
    iput v2, v0, Lx1/a;->H:I

    .line 243
    .line 244
    aget-byte v2, v1, v14

    .line 245
    .line 246
    and-int/lit16 v2, v2, 0xff

    .line 247
    .line 248
    aget-byte v3, v1, v13

    .line 249
    .line 250
    and-int/lit16 v3, v3, 0xff

    .line 251
    .line 252
    aget-byte v7, v1, v12

    .line 253
    .line 254
    and-int/lit16 v7, v7, 0xff

    .line 255
    .line 256
    aget-byte v11, v1, v11

    .line 257
    .line 258
    and-int/lit16 v11, v11, 0xff

    .line 259
    .line 260
    shl-int/2addr v2, v15

    .line 261
    shl-int/lit8 v3, v3, 0x10

    .line 262
    .line 263
    or-int/2addr v2, v3

    .line 264
    shl-int/lit8 v3, v7, 0x8

    .line 265
    .line 266
    or-int/2addr v2, v3

    .line 267
    or-int/2addr v2, v11

    .line 268
    iput v2, v0, Lx1/a;->I:I

    .line 269
    .line 270
    array-length v2, v1

    .line 271
    add-int/lit8 v2, v2, -0x2b

    .line 272
    .line 273
    new-instance v3, Ljava/lang/String;

    .line 274
    .line 275
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 276
    .line 277
    invoke-direct {v3, v1, v10, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eq v6, v2, :cond_8

    .line 285
    .line 286
    move-object v8, v5

    .line 287
    :cond_8
    iput-object v8, v0, Lx1/a;->J:Ljava/lang/String;

    .line 288
    .line 289
    const/16 v2, 0x19

    .line 290
    .line 291
    aget-byte v2, v1, v2

    .line 292
    .line 293
    mul-int/lit8 v2, v2, 0x14

    .line 294
    .line 295
    iput v2, v0, Lx1/a;->L:I

    .line 296
    .line 297
    aget-byte v3, v1, v4

    .line 298
    .line 299
    and-int/lit8 v3, v3, 0x20

    .line 300
    .line 301
    if-eqz v3, :cond_9

    .line 302
    .line 303
    const/4 v4, 0x1

    .line 304
    :cond_9
    iput-boolean v4, v0, Lx1/a;->G:Z

    .line 305
    .line 306
    if-eqz v4, :cond_a

    .line 307
    .line 308
    const/16 v3, 0xa

    .line 309
    .line 310
    aget-byte v3, v1, v3

    .line 311
    .line 312
    and-int/lit16 v3, v3, 0xff

    .line 313
    .line 314
    shl-int/lit8 v3, v3, 0x8

    .line 315
    .line 316
    const/16 v4, 0xb

    .line 317
    .line 318
    aget-byte v1, v1, v4

    .line 319
    .line 320
    and-int/lit16 v1, v1, 0xff

    .line 321
    .line 322
    int-to-float v2, v2

    .line 323
    or-int/2addr v1, v3

    .line 324
    int-to-float v1, v1

    .line 325
    div-float/2addr v1, v2

    .line 326
    const v2, 0x3f733333    # 0.95f

    .line 327
    .line 328
    .line 329
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    const/4 v2, 0x0

    .line 334
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    :goto_5
    iput v1, v0, Lx1/a;->K:F

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_a
    const v1, 0x3f59999a    # 0.85f

    .line 342
    .line 343
    .line 344
    goto :goto_5

    .line 345
    :goto_6
    iput v4, v0, Lx1/a;->H:I

    .line 346
    .line 347
    const/4 v2, -0x1

    .line 348
    iput v2, v0, Lx1/a;->I:I

    .line 349
    .line 350
    iput-object v5, v0, Lx1/a;->J:Ljava/lang/String;

    .line 351
    .line 352
    iput-boolean v4, v0, Lx1/a;->G:Z

    .line 353
    .line 354
    iput v1, v0, Lx1/a;->K:F

    .line 355
    .line 356
    iput v2, v0, Lx1/a;->L:I

    .line 357
    .line 358
    :goto_7
    return-void
.end method

.method public static e(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    .line 1
    if-eq p1, p2, :cond_0

    .line 2
    .line 3
    and-int/lit16 p2, p1, 0xff

    .line 4
    .line 5
    shl-int/lit8 p2, p2, 0x18

    .line 6
    .line 7
    ushr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    or-int/2addr p1, p2

    .line 10
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 13
    .line 14
    .line 15
    or-int/lit8 p1, p5, 0x21

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static f(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    .line 1
    if-eq p1, p2, :cond_7

    .line 2
    .line 3
    or-int/lit8 p2, p5, 0x21

    .line 4
    .line 5
    and-int/lit8 p5, p1, 0x1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    const/4 p5, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p5, 0x0

    .line 14
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_1
    if-eqz p5, :cond_3

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    if-eqz v2, :cond_4

    .line 45
    .line 46
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    const/4 v0, 0x0

    .line 61
    :goto_3
    if-eqz v0, :cond_6

    .line 62
    .line 63
    new-instance p1, Landroid/text/style/UnderlineSpan;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    .line 70
    .line 71
    :cond_6
    if-nez v0, :cond_7

    .line 72
    .line 73
    if-nez p5, :cond_7

    .line 74
    .line 75
    if-nez v2, :cond_7

    .line 76
    .line 77
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 78
    .line 79
    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    .line 84
    .line 85
    :cond_7
    return-void
.end method

.method public static h(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 1

    .line 1
    if-eq p1, p2, :cond_0

    .line 2
    .line 3
    and-int/lit16 p2, p1, 0xff

    .line 4
    .line 5
    shl-int/lit8 p2, p2, 0x18

    .line 6
    .line 7
    ushr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 10
    .line 11
    or-int/2addr p1, p2

    .line 12
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 13
    .line 14
    .line 15
    or-int/lit8 p1, p5, 0x21

    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static i(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 4

    .line 1
    if-eq p1, p2, :cond_4

    .line 2
    .line 3
    or-int/lit8 p2, p5, 0x21

    .line 4
    .line 5
    and-int/lit8 p5, p1, 0x1

    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p5, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    if-nez p5, :cond_4

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p1, Landroid/text/style/UnderlineSpan;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    iget-object v3, v0, Lx1/a;->M:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lp0/E;

    .line 10
    .line 11
    add-int v4, v1, p3

    .line 12
    .line 13
    move-object/from16 v5, p1

    .line 14
    .line 15
    invoke-virtual {v3, v4, v5}, Lp0/E;->J(I[B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Lp0/E;->L(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x0

    .line 28
    if-lt v1, v5, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget v7, v3, Lp0/E;->b:I

    .line 46
    .line 47
    invoke-virtual {v3}, Lp0/E;->H()Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget v9, v3, Lp0/E;->b:I

    .line 52
    .line 53
    sub-int/2addr v9, v7

    .line 54
    sub-int/2addr v1, v9

    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v3, v1, v8}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    new-instance v1, Lq1/a;

    .line 71
    .line 72
    sget-object v3, Lz4/H;->H:Lz4/F;

    .line 73
    .line 74
    sget-object v9, Lz4/d0;->K:Lz4/d0;

    .line 75
    .line 76
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    move-object v8, v1

    .line 87
    invoke-direct/range {v8 .. v13}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 95
    .line 96
    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 100
    .line 101
    .line 102
    move-result v18

    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    iget v15, v0, Lx1/a;->H:I

    .line 108
    .line 109
    const/high16 v19, 0xff0000

    .line 110
    .line 111
    move-object v14, v7

    .line 112
    invoke-static/range {v14 .. v19}, Lx1/a;->f(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 116
    .line 117
    .line 118
    move-result v18

    .line 119
    const/16 v16, -0x1

    .line 120
    .line 121
    iget v15, v0, Lx1/a;->I:I

    .line 122
    .line 123
    invoke-static/range {v14 .. v19}, Lx1/a;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const-string v8, "sans-serif"

    .line 131
    .line 132
    iget-object v9, v0, Lx1/a;->J:Ljava/lang/String;

    .line 133
    .line 134
    if-eq v9, v8, :cond_4

    .line 135
    .line 136
    new-instance v8, Landroid/text/style/TypefaceSpan;

    .line 137
    .line 138
    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const v9, 0xff0021

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v8, v6, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    .line 146
    .line 147
    :cond_4
    iget v1, v0, Lx1/a;->K:F

    .line 148
    .line 149
    :goto_3
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    const/16 v9, 0x8

    .line 154
    .line 155
    if-lt v8, v9, :cond_c

    .line 156
    .line 157
    iget v8, v3, Lp0/E;->b:I

    .line 158
    .line 159
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    const v11, 0x7374796c

    .line 168
    .line 169
    .line 170
    if-ne v10, v11, :cond_a

    .line 171
    .line 172
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    if-lt v10, v5, :cond_5

    .line 177
    .line 178
    const/4 v10, 0x1

    .line 179
    goto :goto_4

    .line 180
    :cond_5
    const/4 v10, 0x0

    .line 181
    :goto_4
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    const/4 v11, 0x0

    .line 189
    :goto_5
    if-ge v11, v10, :cond_9

    .line 190
    .line 191
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    const/16 v13, 0xc

    .line 196
    .line 197
    if-lt v12, v13, :cond_6

    .line 198
    .line 199
    const/4 v12, 0x1

    .line 200
    goto :goto_6

    .line 201
    :cond_6
    const/4 v12, 0x0

    .line 202
    :goto_6
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    invoke-virtual {v3, v5}, Lp0/E;->M(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Lp0/E;->z()I

    .line 217
    .line 218
    .line 219
    move-result v15

    .line 220
    invoke-virtual {v3, v4}, Lp0/E;->M(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lp0/E;->l()I

    .line 224
    .line 225
    .line 226
    move-result v20

    .line 227
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    const-string v4, ")."

    .line 232
    .line 233
    const-string v6, "Tx3gParser"

    .line 234
    .line 235
    if-le v13, v14, :cond_7

    .line 236
    .line 237
    const-string v14, "Truncating styl end ("

    .line 238
    .line 239
    const-string v5, ") to cueText.length() ("

    .line 240
    .line 241
    invoke-static {v14, v13, v5}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-static {v6, v5}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    move v13, v5

    .line 267
    :cond_7
    if-lt v12, v13, :cond_8

    .line 268
    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v14, "Ignoring styl with start ("

    .line 272
    .line 273
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v12, ") >= end ("

    .line 280
    .line 281
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v6, v4}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_8
    iget v4, v0, Lx1/a;->H:I

    .line 299
    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    move-object v14, v7

    .line 303
    move/from16 v16, v4

    .line 304
    .line 305
    move/from16 v17, v12

    .line 306
    .line 307
    move/from16 v18, v13

    .line 308
    .line 309
    invoke-static/range {v14 .. v19}, Lx1/a;->f(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 310
    .line 311
    .line 312
    iget v4, v0, Lx1/a;->I:I

    .line 313
    .line 314
    move/from16 v15, v20

    .line 315
    .line 316
    move/from16 v16, v4

    .line 317
    .line 318
    invoke-static/range {v14 .. v19}, Lx1/a;->e(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 319
    .line 320
    .line 321
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 322
    .line 323
    const/4 v4, 0x1

    .line 324
    const/4 v5, 0x2

    .line 325
    const/4 v6, 0x0

    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_9
    const/4 v4, 0x2

    .line 329
    goto :goto_9

    .line 330
    :cond_a
    const v4, 0x74626f78

    .line 331
    .line 332
    .line 333
    if-ne v10, v4, :cond_9

    .line 334
    .line 335
    iget-boolean v4, v0, Lx1/a;->G:Z

    .line 336
    .line 337
    if-eqz v4, :cond_9

    .line 338
    .line 339
    invoke-virtual {v3}, Lp0/E;->a()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const/4 v4, 0x2

    .line 344
    if-lt v1, v4, :cond_b

    .line 345
    .line 346
    const/4 v1, 0x1

    .line 347
    goto :goto_8

    .line 348
    :cond_b
    const/4 v1, 0x0

    .line 349
    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Lp0/E;->F()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    int-to-float v1, v1

    .line 357
    iget v5, v0, Lx1/a;->L:I

    .line 358
    .line 359
    int-to-float v5, v5

    .line 360
    div-float/2addr v1, v5

    .line 361
    const/4 v5, 0x0

    .line 362
    const v6, 0x3f733333    # 0.95f

    .line 363
    .line 364
    .line 365
    invoke-static {v1, v5, v6}, Lp0/M;->h(FFF)F

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    :goto_9
    add-int/2addr v8, v9

    .line 370
    invoke-virtual {v3, v8}, Lp0/E;->L(I)V

    .line 371
    .line 372
    .line 373
    const/4 v4, 0x1

    .line 374
    const/4 v5, 0x2

    .line 375
    const/4 v6, 0x0

    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :cond_c
    new-instance v3, Lo0/b;

    .line 379
    .line 380
    move-object v14, v3

    .line 381
    const/16 v31, 0x0

    .line 382
    .line 383
    const/16 v32, 0x0

    .line 384
    .line 385
    const/16 v17, 0x0

    .line 386
    .line 387
    move-object/from16 v16, v17

    .line 388
    .line 389
    const/16 v18, 0x0

    .line 390
    .line 391
    const/16 v20, 0x0

    .line 392
    .line 393
    const/16 v21, 0x0

    .line 394
    .line 395
    const v22, -0x800001

    .line 396
    .line 397
    .line 398
    move/from16 v25, v22

    .line 399
    .line 400
    move/from16 v26, v22

    .line 401
    .line 402
    move/from16 v27, v22

    .line 403
    .line 404
    const/high16 v23, -0x80000000

    .line 405
    .line 406
    move/from16 v24, v23

    .line 407
    .line 408
    move/from16 v30, v23

    .line 409
    .line 410
    const/16 v28, 0x0

    .line 411
    .line 412
    const/high16 v29, -0x1000000

    .line 413
    .line 414
    move-object v15, v7

    .line 415
    move/from16 v19, v1

    .line 416
    .line 417
    invoke-direct/range {v14 .. v32}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Lq1/a;

    .line 421
    .line 422
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    move-object v8, v1

    .line 437
    invoke-direct/range {v8 .. v13}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v2, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    return-void
.end method

.method public final synthetic c(I[BI)Lq1/d;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/google/protobuf/U2;->b(Lq1/m;[BII)Lq1/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d([BIILt0/d;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    add-int v3, v1, p3

    .line 8
    .line 9
    iget-object v4, v0, Lx1/a;->M:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    move-object/from16 v5, p1

    .line 14
    .line 15
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x2

    .line 28
    if-lt v1, v6, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-static {v1}, Lo3/r;->J(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget v7, v4, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->c()Ljava/nio/charset/Charset;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    iget v9, v4, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 52
    .line 53
    sub-int/2addr v9, v7

    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v8, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    :goto_1
    sub-int/2addr v1, v9

    .line 60
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    new-instance v1, Lcom/google/android/gms/internal/ads/S1;

    .line 71
    .line 72
    sget-object v3, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 73
    .line 74
    sget-object v9, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 75
    .line 76
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    move-object v8, v1

    .line 82
    move-wide v10, v12

    .line 83
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 91
    .line 92
    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 96
    .line 97
    .line 98
    move-result v18

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    iget v15, v0, Lx1/a;->H:I

    .line 104
    .line 105
    const/high16 v19, 0xff0000

    .line 106
    .line 107
    move-object v14, v7

    .line 108
    invoke-static/range {v14 .. v19}, Lx1/a;->i(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 112
    .line 113
    .line 114
    move-result v18

    .line 115
    const/16 v16, -0x1

    .line 116
    .line 117
    iget v15, v0, Lx1/a;->I:I

    .line 118
    .line 119
    invoke-static/range {v14 .. v19}, Lx1/a;->h(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const-string v8, "sans-serif"

    .line 127
    .line 128
    iget-object v9, v0, Lx1/a;->J:Ljava/lang/String;

    .line 129
    .line 130
    if-eq v9, v8, :cond_4

    .line 131
    .line 132
    new-instance v8, Landroid/text/style/TypefaceSpan;

    .line 133
    .line 134
    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const v9, 0xff0021

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v8, v3, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget v1, v0, Lx1/a;->K:F

    .line 144
    .line 145
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    const/16 v9, 0x8

    .line 150
    .line 151
    if-lt v8, v9, :cond_c

    .line 152
    .line 153
    iget v8, v4, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    const v11, 0x7374796c

    .line 164
    .line 165
    .line 166
    if-ne v10, v11, :cond_a

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-lt v10, v6, :cond_5

    .line 173
    .line 174
    const/4 v10, 0x1

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const/4 v10, 0x0

    .line 177
    :goto_4
    invoke-static {v10}, Lo3/r;->J(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    const/4 v11, 0x0

    .line 185
    :goto_5
    if-ge v11, v10, :cond_9

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    const/16 v13, 0xc

    .line 192
    .line 193
    if-lt v12, v13, :cond_6

    .line 194
    .line 195
    const/4 v12, 0x1

    .line 196
    goto :goto_6

    .line 197
    :cond_6
    const/4 v12, 0x0

    .line 198
    :goto_6
    invoke-static {v12}, Lo3/r;->J(Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 220
    .line 221
    .line 222
    move-result v20

    .line 223
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    const-string v3, "Tx3gParser"

    .line 228
    .line 229
    const-string v5, ")."

    .line 230
    .line 231
    if-le v13, v14, :cond_7

    .line 232
    .line 233
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    move/from16 v21, v10

    .line 240
    .line 241
    const-string v10, "Truncating styl end ("

    .line 242
    .line 243
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v10, ") to cueText.length() ("

    .line 250
    .line 251
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    move v13, v6

    .line 272
    goto :goto_7

    .line 273
    :cond_7
    move/from16 v21, v10

    .line 274
    .line 275
    :goto_7
    if-lt v12, v13, :cond_8

    .line 276
    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v10, "Ignoring styl with start ("

    .line 280
    .line 281
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v10, ") >= end ("

    .line 288
    .line 289
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_8
    iget v3, v0, Lx1/a;->H:I

    .line 307
    .line 308
    const/16 v19, 0x0

    .line 309
    .line 310
    move-object v14, v7

    .line 311
    move/from16 v16, v3

    .line 312
    .line 313
    move/from16 v17, v12

    .line 314
    .line 315
    move/from16 v18, v13

    .line 316
    .line 317
    invoke-static/range {v14 .. v19}, Lx1/a;->i(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 318
    .line 319
    .line 320
    iget v3, v0, Lx1/a;->I:I

    .line 321
    .line 322
    move/from16 v15, v20

    .line 323
    .line 324
    move/from16 v16, v3

    .line 325
    .line 326
    invoke-static/range {v14 .. v19}, Lx1/a;->h(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 327
    .line 328
    .line 329
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 330
    .line 331
    move/from16 v10, v21

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    const/4 v5, 0x1

    .line 335
    const/4 v6, 0x2

    .line 336
    goto/16 :goto_5

    .line 337
    .line 338
    :cond_9
    const/4 v3, 0x2

    .line 339
    goto :goto_a

    .line 340
    :cond_a
    const v3, 0x74626f78

    .line 341
    .line 342
    .line 343
    if-ne v10, v3, :cond_9

    .line 344
    .line 345
    iget-boolean v3, v0, Lx1/a;->G:Z

    .line 346
    .line 347
    if-eqz v3, :cond_9

    .line 348
    .line 349
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    const/4 v3, 0x2

    .line 354
    if-lt v1, v3, :cond_b

    .line 355
    .line 356
    const/4 v1, 0x1

    .line 357
    goto :goto_9

    .line 358
    :cond_b
    const/4 v1, 0x0

    .line 359
    :goto_9
    invoke-static {v1}, Lo3/r;->J(Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    int-to-float v1, v1

    .line 367
    iget v5, v0, Lx1/a;->L:I

    .line 368
    .line 369
    int-to-float v5, v5

    .line 370
    div-float/2addr v1, v5

    .line 371
    const v5, 0x3f733333    # 0.95f

    .line 372
    .line 373
    .line 374
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    const/4 v5, 0x0

    .line 379
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    :goto_a
    add-int/2addr v8, v9

    .line 384
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 385
    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    const/4 v5, 0x1

    .line 389
    const/4 v6, 0x2

    .line 390
    goto/16 :goto_3

    .line 391
    .line 392
    :cond_c
    new-instance v3, Lcom/google/android/gms/internal/ads/ak;

    .line 393
    .line 394
    const/high16 v28, -0x80000000

    .line 395
    .line 396
    const/16 v29, 0x0

    .line 397
    .line 398
    const/16 v18, 0x0

    .line 399
    .line 400
    const/16 v20, 0x0

    .line 401
    .line 402
    const/16 v21, 0x0

    .line 403
    .line 404
    const v27, -0x800001

    .line 405
    .line 406
    .line 407
    move-object v14, v3

    .line 408
    move-object v15, v7

    .line 409
    move-object/from16 v16, v18

    .line 410
    .line 411
    move-object/from16 v17, v18

    .line 412
    .line 413
    move/from16 v19, v1

    .line 414
    .line 415
    move/from16 v22, v27

    .line 416
    .line 417
    move/from16 v23, v28

    .line 418
    .line 419
    move/from16 v24, v28

    .line 420
    .line 421
    move/from16 v25, v27

    .line 422
    .line 423
    move/from16 v26, v27

    .line 424
    .line 425
    invoke-direct/range {v14 .. v29}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 426
    .line 427
    .line 428
    new-instance v1, Lcom/google/android/gms/internal/ads/S1;

    .line 429
    .line 430
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 431
    .line 432
    .line 433
    move-result-object v9

    .line 434
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    move-object v8, v1

    .line 440
    move-wide v10, v12

    .line 441
    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v1}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
