.class public final LC5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LC5/k;->c:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, LC5/k;->a:[I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LC5/k;->b:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(ILw5/a;[I)Lq5/m;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, LC5/k;->b:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    .line 15
    .line 16
    iget-object v8, v0, LC5/k;->a:[I

    .line 17
    .line 18
    aput v7, v8, v7

    .line 19
    .line 20
    aput v7, v8, v5

    .line 21
    .line 22
    aput v7, v8, v4

    .line 23
    .line 24
    const/4 v9, 0x3

    .line 25
    aput v7, v8, v9

    .line 26
    .line 27
    iget v10, v1, Lw5/a;->H:I

    .line 28
    .line 29
    aget v11, p3, v5

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    :goto_0
    const/4 v14, 0x5

    .line 34
    const/16 v15, 0x30

    .line 35
    .line 36
    if-ge v12, v14, :cond_3

    .line 37
    .line 38
    if-ge v11, v10, :cond_3

    .line 39
    .line 40
    sget-object v14, LC5/m;->g:[[I

    .line 41
    .line 42
    invoke-static {v1, v8, v11, v14}, LC5/m;->j(Lw5/a;[II[[I)I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    rem-int/lit8 v16, v14, 0xa

    .line 47
    .line 48
    add-int/lit8 v15, v16, 0x30

    .line 49
    .line 50
    int-to-char v15, v15

    .line 51
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    array-length v15, v8

    .line 55
    :goto_1
    if-ge v7, v15, :cond_0

    .line 56
    .line 57
    aget v17, v8, v7

    .line 58
    .line 59
    add-int v11, v11, v17

    .line 60
    .line 61
    add-int/2addr v7, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-lt v14, v3, :cond_1

    .line 64
    .line 65
    rsub-int/lit8 v7, v12, 0x4

    .line 66
    .line 67
    shl-int v7, v5, v7

    .line 68
    .line 69
    or-int/2addr v13, v7

    .line 70
    :cond_1
    if-eq v12, v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1, v11}, Lw5/a;->e(I)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v1, v7}, Lw5/a;->f(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    move v11, v7

    .line 81
    :cond_2
    add-int/2addr v12, v5

    .line 82
    const/4 v7, 0x0

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v1, v14, :cond_13

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_2
    if-ge v1, v3, :cond_12

    .line 92
    .line 93
    sget-object v2, LC5/k;->c:[I

    .line 94
    .line 95
    aget v2, v2, v1

    .line 96
    .line 97
    if-ne v13, v2, :cond_11

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    add-int/lit8 v8, v7, -0x2

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    :goto_3
    if-ltz v8, :cond_4

    .line 111
    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    sub-int/2addr v12, v15

    .line 117
    add-int/2addr v10, v12

    .line 118
    add-int/lit8 v8, v8, -0x2

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    mul-int/lit8 v10, v10, 0x3

    .line 122
    .line 123
    sub-int/2addr v7, v5

    .line 124
    :goto_4
    if-ltz v7, :cond_5

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    sub-int/2addr v8, v15

    .line 131
    add-int/2addr v10, v8

    .line 132
    add-int/lit8 v7, v7, -0x2

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    mul-int/lit8 v10, v10, 0x3

    .line 136
    .line 137
    rem-int/2addr v10, v3

    .line 138
    if-ne v10, v1, :cond_10

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v6, 0x0

    .line 149
    if-eq v2, v14, :cond_6

    .line 150
    .line 151
    :goto_5
    move-object v3, v6

    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_6
    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eq v7, v15, :cond_c

    .line 160
    .line 161
    const/16 v2, 0x35

    .line 162
    .line 163
    if-eq v7, v2, :cond_b

    .line 164
    .line 165
    const/16 v2, 0x39

    .line 166
    .line 167
    const-string v8, ""

    .line 168
    .line 169
    if-eq v7, v2, :cond_7

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    const/4 v7, -0x1

    .line 177
    sparse-switch v2, :sswitch_data_0

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :sswitch_0
    const-string v2, "99991"

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_8

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    const/4 v7, 0x2

    .line 191
    goto :goto_6

    .line 192
    :sswitch_1
    const-string v2, "99990"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_9

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_9
    const/4 v7, 0x1

    .line 202
    goto :goto_6

    .line 203
    :sswitch_2
    const-string v2, "90000"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-nez v2, :cond_a

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_a
    const/4 v7, 0x0

    .line 213
    :goto_6
    packed-switch v7, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :pswitch_0
    const-string v2, "0.00"

    .line 218
    .line 219
    goto :goto_9

    .line 220
    :pswitch_1
    const-string v2, "Used"

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :pswitch_2
    move-object v2, v6

    .line 224
    goto :goto_9

    .line 225
    :cond_b
    const-string v8, "$"

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_c
    const-string v8, "\u00a3"

    .line 229
    .line 230
    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    div-int/lit8 v7, v2, 0x64

    .line 239
    .line 240
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    rem-int/lit8 v2, v2, 0x64

    .line 245
    .line 246
    if-ge v2, v3, :cond_d

    .line 247
    .line 248
    const-string v3, "0"

    .line 249
    .line 250
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    goto :goto_8

    .line 259
    :cond_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const/16 v7, 0x2e

    .line 275
    .line 276
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :goto_9
    if-nez v2, :cond_e

    .line 287
    .line 288
    goto/16 :goto_5

    .line 289
    .line 290
    :cond_e
    new-instance v3, Ljava/util/EnumMap;

    .line 291
    .line 292
    const-class v7, Lq5/n;

    .line 293
    .line 294
    invoke-direct {v3, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 295
    .line 296
    .line 297
    sget-object v7, Lq5/n;->K:Lq5/n;

    .line 298
    .line 299
    invoke-virtual {v3, v7, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    :goto_a
    new-instance v2, Lq5/m;

    .line 303
    .line 304
    new-instance v7, Lq5/o;

    .line 305
    .line 306
    const/4 v8, 0x0

    .line 307
    aget v9, p3, v8

    .line 308
    .line 309
    aget v8, p3, v5

    .line 310
    .line 311
    add-int/2addr v9, v8

    .line 312
    int-to-float v8, v9

    .line 313
    const/high16 v9, 0x40000000    # 2.0f

    .line 314
    .line 315
    div-float/2addr v8, v9

    .line 316
    move/from16 v10, p1

    .line 317
    .line 318
    int-to-float v9, v10

    .line 319
    invoke-direct {v7, v8, v9}, Lq5/o;-><init>(FF)V

    .line 320
    .line 321
    .line 322
    new-instance v8, Lq5/o;

    .line 323
    .line 324
    int-to-float v10, v11

    .line 325
    invoke-direct {v8, v10, v9}, Lq5/o;-><init>(FF)V

    .line 326
    .line 327
    .line 328
    new-array v4, v4, [Lq5/o;

    .line 329
    .line 330
    const/4 v12, 0x0

    .line 331
    aput-object v7, v4, v12

    .line 332
    .line 333
    aput-object v8, v4, v5

    .line 334
    .line 335
    sget-object v5, Lq5/a;->W:Lq5/a;

    .line 336
    .line 337
    invoke-direct {v2, v1, v6, v4, v5}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 338
    .line 339
    .line 340
    if-eqz v3, :cond_f

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Lq5/m;->a(Ljava/util/Map;)V

    .line 343
    .line 344
    .line 345
    :cond_f
    return-object v2

    .line 346
    :cond_10
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 347
    .line 348
    throw v1

    .line 349
    :cond_11
    move/from16 v10, p1

    .line 350
    .line 351
    const/4 v12, 0x0

    .line 352
    add-int/2addr v1, v5

    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :cond_12
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 356
    .line 357
    throw v1

    .line 358
    :cond_13
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 359
    .line 360
    throw v1

    .line 361
    :sswitch_data_0
    .sparse-switch
        0x339c7b9 -> :sswitch_2
        0x33e01f0 -> :sswitch_1
        0x33e01f1 -> :sswitch_0
    .end sparse-switch

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
