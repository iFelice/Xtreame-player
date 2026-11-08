.class public abstract Lp0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lp0/g;->a:[B

    .line 8
    .line 9
    const-string v0, "B"

    .line 10
    .line 11
    const-string v1, "C"

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    const-string v3, "A"

    .line 16
    .line 17
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lp0/g;->b:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "^\\D?(\\d+)$"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lp0/g;->c:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(IZII[II)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v2, Lp0/g;->b:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object p0, v2, p0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p0, v1, v2

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p2, 0x1

    .line 18
    aput-object p0, v1, p2

    .line 19
    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 p3, 0x2

    .line 25
    aput-object p0, v1, p3

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/16 p0, 0x48

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 p0, 0x4c

    .line 33
    .line 34
    :goto_0
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p1, 0x3

    .line 39
    aput-object p0, v1, p1

    .line 40
    .line 41
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 p1, 0x4

    .line 46
    aput-object p0, v1, p1

    .line 47
    .line 48
    sget-object p0, Lp0/M;->a:Ljava/lang/String;

    .line 49
    .line 50
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const-string p1, "hvc1.%s%d.%X.%c%d"

    .line 53
    .line 54
    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    array-length p0, p4

    .line 62
    :goto_1
    if-lez p0, :cond_1

    .line 63
    .line 64
    add-int/lit8 p1, p0, -0x1

    .line 65
    .line 66
    aget p1, p4, p1

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    add-int/lit8 p0, p0, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    :goto_2
    if-ge p1, p0, :cond_2

    .line 75
    .line 76
    aget p3, p4, p1

    .line 77
    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    new-array p5, p2, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p3, p5, v2

    .line 85
    .line 86
    const-string p3, ".%02X"

    .line 87
    .line 88
    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    add-int/2addr p1, p2

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public static b(Lm0/t;)Landroid/util/Pair;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm0/t;->k:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const-string v3, "\\."

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "video/dolby-vision"

    .line 16
    .line 17
    iget-object v4, v0, Lm0/t;->o:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v5, 0x400

    .line 24
    .line 25
    const/16 v9, 0x20

    .line 26
    .line 27
    const/16 v10, 0x40

    .line 28
    .line 29
    const/16 v11, 0x80

    .line 30
    .line 31
    const/16 v12, 0x100

    .line 32
    .line 33
    const/16 v13, 0x200

    .line 34
    .line 35
    const/16 v15, 0x10

    .line 36
    .line 37
    const-string v8, "CodecSpecificDataUtil"

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    const/4 v14, 0x4

    .line 42
    const/4 v7, 0x1

    .line 43
    const/4 v4, 0x3

    .line 44
    iget-object v2, v0, Lm0/t;->k:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v3, :cond_1f

    .line 47
    .line 48
    array-length v0, v1

    .line 49
    const-string v3, "Ignoring malformed Dolby Vision codec string: "

    .line 50
    .line 51
    if-ge v0, v4, :cond_1

    .line 52
    .line 53
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    const/4 v2, 0x0

    .line 57
    goto/16 :goto_8

    .line 58
    .line 59
    :cond_1
    sget-object v0, Lp0/g;->c:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    aget-object v4, v1, v7

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    :goto_1
    const/4 v2, 0x2

    .line 84
    const/4 v3, 0x0

    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    const/4 v2, -0x1

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sparse-switch v3, :sswitch_data_0

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :sswitch_0
    const-string v3, "10"

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    const/16 v2, 0xa

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_1
    const-string v3, "09"

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_5
    const/16 v2, 0x9

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :sswitch_2
    const-string v3, "08"

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_6

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_6
    const/16 v2, 0x8

    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :sswitch_3
    const-string v3, "07"

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const/4 v2, 0x7

    .line 152
    goto :goto_2

    .line 153
    :sswitch_4
    const-string v3, "06"

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    const/4 v2, 0x6

    .line 163
    goto :goto_2

    .line 164
    :sswitch_5
    const-string v3, "05"

    .line 165
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-nez v3, :cond_9

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    const/4 v2, 0x5

    .line 174
    goto :goto_2

    .line 175
    :sswitch_6
    const-string v3, "04"

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_a

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    const/4 v2, 0x4

    .line 185
    goto :goto_2

    .line 186
    :sswitch_7
    const-string v3, "03"

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_b

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_b
    const/4 v2, 0x3

    .line 196
    goto :goto_2

    .line 197
    :sswitch_8
    const-string v3, "02"

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_c

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_c
    const/4 v2, 0x2

    .line 207
    goto :goto_2

    .line 208
    :sswitch_9
    const-string v3, "01"

    .line 209
    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_d

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_d
    const/4 v2, 0x1

    .line 218
    goto :goto_2

    .line 219
    :sswitch_a
    const-string v3, "00"

    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-nez v3, :cond_e

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_e
    const/4 v2, 0x0

    .line 229
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :goto_3
    move-object v3, v2

    .line 239
    const/4 v2, 0x2

    .line 240
    goto :goto_4

    .line 241
    :pswitch_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    goto :goto_3

    .line 246
    :pswitch_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    goto :goto_3

    .line 251
    :pswitch_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    goto :goto_3

    .line 256
    :pswitch_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    goto :goto_3

    .line 261
    :pswitch_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    goto :goto_3

    .line 266
    :pswitch_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    goto :goto_3

    .line 271
    :pswitch_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    goto :goto_3

    .line 276
    :pswitch_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    goto :goto_3

    .line 281
    :pswitch_9
    const/4 v2, 0x2

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    goto :goto_4

    .line 287
    :pswitch_a
    const/4 v2, 0x2

    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    :goto_4
    if-nez v3, :cond_f

    .line 293
    .line 294
    const-string v1, "Unknown Dolby Vision profile string: "

    .line 295
    .line 296
    invoke-static {v1, v0, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_f
    aget-object v0, v1, v2

    .line 302
    .line 303
    if-nez v0, :cond_10

    .line 304
    .line 305
    :goto_5
    const/4 v1, 0x0

    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 309
    .line 310
    .line 311
    const/4 v1, -0x1

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    sparse-switch v2, :sswitch_data_1

    .line 317
    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :sswitch_b
    const-string v2, "13"

    .line 322
    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-nez v2, :cond_11

    .line 328
    .line 329
    goto/16 :goto_6

    .line 330
    .line 331
    :cond_11
    const/16 v1, 0xc

    .line 332
    .line 333
    goto/16 :goto_6

    .line 334
    .line 335
    :sswitch_c
    const-string v2, "12"

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-nez v2, :cond_12

    .line 342
    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_12
    const/16 v1, 0xb

    .line 346
    .line 347
    goto/16 :goto_6

    .line 348
    .line 349
    :sswitch_d
    const-string v2, "11"

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_13

    .line 356
    .line 357
    goto/16 :goto_6

    .line 358
    .line 359
    :cond_13
    const/16 v1, 0xa

    .line 360
    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :sswitch_e
    const-string v2, "10"

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_14

    .line 370
    .line 371
    goto/16 :goto_6

    .line 372
    .line 373
    :cond_14
    const/16 v1, 0x9

    .line 374
    .line 375
    goto/16 :goto_6

    .line 376
    .line 377
    :sswitch_f
    const-string v2, "09"

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_15

    .line 384
    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :cond_15
    const/16 v1, 0x8

    .line 388
    .line 389
    goto/16 :goto_6

    .line 390
    .line 391
    :sswitch_10
    const-string v2, "08"

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-nez v2, :cond_16

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_16
    const/4 v1, 0x7

    .line 401
    goto :goto_6

    .line 402
    :sswitch_11
    const-string v2, "07"

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-nez v2, :cond_17

    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_17
    const/4 v1, 0x6

    .line 412
    goto :goto_6

    .line 413
    :sswitch_12
    const-string v2, "06"

    .line 414
    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_18

    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_18
    const/4 v1, 0x5

    .line 423
    goto :goto_6

    .line 424
    :sswitch_13
    const-string v2, "05"

    .line 425
    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-nez v2, :cond_19

    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_19
    const/4 v1, 0x4

    .line 434
    goto :goto_6

    .line 435
    :sswitch_14
    const-string v2, "04"

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_1a

    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_1a
    const/4 v1, 0x3

    .line 445
    goto :goto_6

    .line 446
    :sswitch_15
    const-string v2, "03"

    .line 447
    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-nez v2, :cond_1b

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_1b
    const/4 v1, 0x2

    .line 456
    goto :goto_6

    .line 457
    :sswitch_16
    const-string v2, "02"

    .line 458
    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-nez v2, :cond_1c

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_1c
    const/4 v1, 0x1

    .line 467
    goto :goto_6

    .line 468
    :sswitch_17
    const-string v2, "01"

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-nez v2, :cond_1d

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_1d
    const/4 v1, 0x0

    .line 478
    :goto_6
    packed-switch v1, :pswitch_data_1

    .line 479
    .line 480
    .line 481
    goto/16 :goto_5

    .line 482
    .line 483
    :pswitch_b
    const/16 v16, 0x1000

    .line 484
    .line 485
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    goto :goto_7

    .line 490
    :pswitch_c
    const/16 v1, 0x800

    .line 491
    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    goto :goto_7

    .line 497
    :pswitch_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    goto :goto_7

    .line 502
    :pswitch_e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    goto :goto_7

    .line 507
    :pswitch_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    goto :goto_7

    .line 512
    :pswitch_10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    goto :goto_7

    .line 517
    :pswitch_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    goto :goto_7

    .line 522
    :pswitch_12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    goto :goto_7

    .line 527
    :pswitch_13
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    goto :goto_7

    .line 532
    :pswitch_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    goto :goto_7

    .line 537
    :pswitch_15
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    goto :goto_7

    .line 542
    :pswitch_16
    const/4 v1, 0x2

    .line 543
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    goto :goto_7

    .line 548
    :pswitch_17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    :goto_7
    if-nez v1, :cond_1e

    .line 553
    .line 554
    const-string v1, "Unknown Dolby Vision level string: "

    .line 555
    .line 556
    invoke-static {v1, v0, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_1e
    new-instance v2, Landroid/util/Pair;

    .line 562
    .line 563
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    :goto_8
    return-object v2

    .line 567
    :cond_1f
    const/4 v3, 0x0

    .line 568
    const/16 v16, 0x1000

    .line 569
    .line 570
    aget-object v5, v1, v3

    .line 571
    .line 572
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 579
    .line 580
    .line 581
    move-result v17

    .line 582
    sparse-switch v17, :sswitch_data_2

    .line 583
    .line 584
    .line 585
    :goto_9
    const/4 v3, -0x1

    .line 586
    goto/16 :goto_a

    .line 587
    .line 588
    :sswitch_18
    const-string v3, "vp09"

    .line 589
    .line 590
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-nez v3, :cond_20

    .line 595
    .line 596
    goto :goto_9

    .line 597
    :cond_20
    const/16 v3, 0x9

    .line 598
    .line 599
    goto/16 :goto_a

    .line 600
    .line 601
    :sswitch_19
    const-string v3, "s263"

    .line 602
    .line 603
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-nez v3, :cond_21

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_21
    const/16 v3, 0x8

    .line 611
    .line 612
    goto/16 :goto_a

    .line 613
    .line 614
    :sswitch_1a
    const-string v3, "mp4a"

    .line 615
    .line 616
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-nez v3, :cond_22

    .line 621
    .line 622
    goto :goto_9

    .line 623
    :cond_22
    const/4 v3, 0x7

    .line 624
    goto :goto_a

    .line 625
    :sswitch_1b
    const-string v3, "iamf"

    .line 626
    .line 627
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    if-nez v3, :cond_23

    .line 632
    .line 633
    goto :goto_9

    .line 634
    :cond_23
    const/4 v3, 0x6

    .line 635
    goto :goto_a

    .line 636
    :sswitch_1c
    const-string v3, "hvc1"

    .line 637
    .line 638
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-nez v3, :cond_24

    .line 643
    .line 644
    goto :goto_9

    .line 645
    :cond_24
    const/4 v3, 0x5

    .line 646
    goto :goto_a

    .line 647
    :sswitch_1d
    const-string v3, "hev1"

    .line 648
    .line 649
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-nez v3, :cond_25

    .line 654
    .line 655
    goto :goto_9

    .line 656
    :cond_25
    const/4 v3, 0x4

    .line 657
    goto :goto_a

    .line 658
    :sswitch_1e
    const-string v3, "avc2"

    .line 659
    .line 660
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-nez v3, :cond_26

    .line 665
    .line 666
    goto :goto_9

    .line 667
    :cond_26
    const/4 v3, 0x3

    .line 668
    goto :goto_a

    .line 669
    :sswitch_1f
    const-string v3, "avc1"

    .line 670
    .line 671
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-nez v3, :cond_27

    .line 676
    .line 677
    goto :goto_9

    .line 678
    :cond_27
    const/4 v3, 0x2

    .line 679
    goto :goto_a

    .line 680
    :sswitch_20
    const-string v3, "av01"

    .line 681
    .line 682
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-nez v3, :cond_28

    .line 687
    .line 688
    goto :goto_9

    .line 689
    :cond_28
    const/4 v3, 0x1

    .line 690
    goto :goto_a

    .line 691
    :sswitch_21
    const-string v3, "ac-4"

    .line 692
    .line 693
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-nez v3, :cond_29

    .line 698
    .line 699
    goto :goto_9

    .line 700
    :cond_29
    const/4 v3, 0x0

    .line 701
    :goto_a
    packed-switch v3, :pswitch_data_2

    .line 702
    .line 703
    .line 704
    const/4 v3, 0x0

    .line 705
    return-object v3

    .line 706
    :pswitch_18
    const/4 v3, 0x0

    .line 707
    array-length v0, v1

    .line 708
    const-string v5, "Ignoring malformed VP9 codec string: "

    .line 709
    .line 710
    if-ge v0, v4, :cond_2a

    .line 711
    .line 712
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    move-object v2, v3

    .line 716
    goto/16 :goto_10

    .line 717
    .line 718
    :cond_2a
    :try_start_0
    aget-object v0, v1, v7

    .line 719
    .line 720
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    const/4 v3, 0x2

    .line 725
    aget-object v1, v1, v3

    .line 726
    .line 727
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    if-eqz v0, :cond_2e

    .line 732
    .line 733
    if-eq v0, v7, :cond_2d

    .line 734
    .line 735
    if-eq v0, v3, :cond_2c

    .line 736
    .line 737
    if-eq v0, v4, :cond_2b

    .line 738
    .line 739
    const/4 v2, -0x1

    .line 740
    :goto_b
    const/4 v3, -0x1

    .line 741
    goto :goto_c

    .line 742
    :cond_2b
    const/16 v2, 0x8

    .line 743
    .line 744
    goto :goto_b

    .line 745
    :cond_2c
    const/4 v2, 0x4

    .line 746
    goto :goto_b

    .line 747
    :cond_2d
    const/4 v2, 0x2

    .line 748
    goto :goto_b

    .line 749
    :cond_2e
    const/4 v2, 0x1

    .line 750
    goto :goto_b

    .line 751
    :goto_c
    if-ne v2, v3, :cond_2f

    .line 752
    .line 753
    const-string v1, "Unknown VP9 profile: "

    .line 754
    .line 755
    invoke-static {v1, v0, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 756
    .line 757
    .line 758
    :goto_d
    const/4 v2, 0x0

    .line 759
    goto/16 :goto_10

    .line 760
    .line 761
    :cond_2f
    const/16 v0, 0xa

    .line 762
    .line 763
    if-eq v1, v0, :cond_39

    .line 764
    .line 765
    const/16 v0, 0xb

    .line 766
    .line 767
    if-eq v1, v0, :cond_38

    .line 768
    .line 769
    const/16 v0, 0x14

    .line 770
    .line 771
    if-eq v1, v0, :cond_37

    .line 772
    .line 773
    const/16 v0, 0x15

    .line 774
    .line 775
    if-eq v1, v0, :cond_36

    .line 776
    .line 777
    const/16 v0, 0x1e

    .line 778
    .line 779
    if-eq v1, v0, :cond_35

    .line 780
    .line 781
    const/16 v0, 0x1f

    .line 782
    .line 783
    if-eq v1, v0, :cond_34

    .line 784
    .line 785
    const/16 v0, 0x28

    .line 786
    .line 787
    if-eq v1, v0, :cond_33

    .line 788
    .line 789
    const/16 v0, 0x29

    .line 790
    .line 791
    if-eq v1, v0, :cond_32

    .line 792
    .line 793
    const/16 v0, 0x32

    .line 794
    .line 795
    if-eq v1, v0, :cond_31

    .line 796
    .line 797
    const/16 v0, 0x33

    .line 798
    .line 799
    if-eq v1, v0, :cond_30

    .line 800
    .line 801
    packed-switch v1, :pswitch_data_3

    .line 802
    .line 803
    .line 804
    const/4 v0, -0x1

    .line 805
    const/4 v4, -0x1

    .line 806
    goto :goto_f

    .line 807
    :pswitch_19
    const/16 v4, 0x2000

    .line 808
    .line 809
    :goto_e
    const/4 v0, -0x1

    .line 810
    goto :goto_f

    .line 811
    :pswitch_1a
    const/4 v0, -0x1

    .line 812
    const/16 v4, 0x1000

    .line 813
    .line 814
    goto :goto_f

    .line 815
    :pswitch_1b
    const/16 v4, 0x800

    .line 816
    .line 817
    goto :goto_e

    .line 818
    :cond_30
    const/4 v0, -0x1

    .line 819
    const/16 v4, 0x200

    .line 820
    .line 821
    goto :goto_f

    .line 822
    :cond_31
    const/4 v0, -0x1

    .line 823
    const/16 v4, 0x100

    .line 824
    .line 825
    goto :goto_f

    .line 826
    :cond_32
    const/4 v0, -0x1

    .line 827
    const/16 v4, 0x80

    .line 828
    .line 829
    goto :goto_f

    .line 830
    :cond_33
    const/4 v0, -0x1

    .line 831
    const/16 v4, 0x40

    .line 832
    .line 833
    goto :goto_f

    .line 834
    :cond_34
    const/4 v0, -0x1

    .line 835
    const/16 v4, 0x20

    .line 836
    .line 837
    goto :goto_f

    .line 838
    :cond_35
    const/4 v0, -0x1

    .line 839
    const/16 v4, 0x10

    .line 840
    .line 841
    goto :goto_f

    .line 842
    :cond_36
    const/4 v0, -0x1

    .line 843
    const/16 v4, 0x8

    .line 844
    .line 845
    goto :goto_f

    .line 846
    :cond_37
    const/4 v0, -0x1

    .line 847
    const/4 v4, 0x4

    .line 848
    goto :goto_f

    .line 849
    :cond_38
    const/4 v0, -0x1

    .line 850
    const/4 v4, 0x2

    .line 851
    goto :goto_f

    .line 852
    :cond_39
    const/4 v0, -0x1

    .line 853
    const/4 v4, 0x1

    .line 854
    :goto_f
    if-ne v4, v0, :cond_3a

    .line 855
    .line 856
    const-string v0, "Unknown VP9 level: "

    .line 857
    .line 858
    invoke-static {v0, v1, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    .line 860
    .line 861
    goto :goto_d

    .line 862
    :cond_3a
    new-instance v0, Landroid/util/Pair;

    .line 863
    .line 864
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 873
    .line 874
    .line 875
    move-object v2, v0

    .line 876
    goto :goto_10

    .line 877
    :catch_0
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    goto :goto_d

    .line 881
    :goto_10
    return-object v2

    .line 882
    :pswitch_1c
    new-instance v0, Landroid/util/Pair;

    .line 883
    .line 884
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-direct {v0, v3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    array-length v3, v1

    .line 892
    const-string v5, "Ignoring malformed H263 codec string: "

    .line 893
    .line 894
    if-ge v3, v4, :cond_3b

    .line 895
    .line 896
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    goto :goto_11

    .line 900
    :cond_3b
    :try_start_1
    aget-object v3, v1, v7

    .line 901
    .line 902
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    const/4 v4, 0x2

    .line 907
    aget-object v1, v1, v4

    .line 908
    .line 909
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    move-result v1

    .line 913
    new-instance v4, Landroid/util/Pair;

    .line 914
    .line 915
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 924
    .line 925
    .line 926
    move-object v0, v4

    .line 927
    goto :goto_11

    .line 928
    :catch_1
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    :goto_11
    return-object v0

    .line 932
    :pswitch_1d
    array-length v0, v1

    .line 933
    const-string v3, "Ignoring malformed MP4A codec string: "

    .line 934
    .line 935
    if-eq v0, v4, :cond_3d

    .line 936
    .line 937
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    :cond_3c
    :goto_12
    const/4 v2, 0x0

    .line 941
    goto :goto_14

    .line 942
    :cond_3d
    :try_start_2
    aget-object v0, v1, v7

    .line 943
    .line 944
    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 945
    .line 946
    .line 947
    move-result v0

    .line 948
    invoke-static {v0}, Lm0/O;->f(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    const-string v5, "audio/mp4a-latm"

    .line 953
    .line 954
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    if-eqz v0, :cond_3c

    .line 959
    .line 960
    const/4 v0, 0x2

    .line 961
    aget-object v1, v1, v0

    .line 962
    .line 963
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    const/16 v1, 0x11

    .line 968
    .line 969
    if-eq v0, v1, :cond_3e

    .line 970
    .line 971
    const/16 v1, 0x14

    .line 972
    .line 973
    if-eq v0, v1, :cond_3e

    .line 974
    .line 975
    const/16 v1, 0x17

    .line 976
    .line 977
    if-eq v0, v1, :cond_3e

    .line 978
    .line 979
    const/16 v1, 0x1d

    .line 980
    .line 981
    if-eq v0, v1, :cond_3e

    .line 982
    .line 983
    const/16 v1, 0x27

    .line 984
    .line 985
    if-eq v0, v1, :cond_3e

    .line 986
    .line 987
    const/16 v1, 0x2a

    .line 988
    .line 989
    if-eq v0, v1, :cond_3e

    .line 990
    .line 991
    packed-switch v0, :pswitch_data_4

    .line 992
    .line 993
    .line 994
    const/4 v0, -0x1

    .line 995
    const/4 v1, -0x1

    .line 996
    goto :goto_13

    .line 997
    :pswitch_1e
    const/4 v0, -0x1

    .line 998
    const/4 v1, 0x6

    .line 999
    goto :goto_13

    .line 1000
    :pswitch_1f
    const/4 v0, -0x1

    .line 1001
    const/4 v1, 0x5

    .line 1002
    goto :goto_13

    .line 1003
    :pswitch_20
    const/4 v0, -0x1

    .line 1004
    const/4 v1, 0x4

    .line 1005
    goto :goto_13

    .line 1006
    :pswitch_21
    const/4 v0, -0x1

    .line 1007
    const/4 v1, 0x3

    .line 1008
    goto :goto_13

    .line 1009
    :pswitch_22
    const/4 v0, -0x1

    .line 1010
    const/4 v1, 0x2

    .line 1011
    goto :goto_13

    .line 1012
    :pswitch_23
    const/4 v0, -0x1

    .line 1013
    const/4 v1, 0x1

    .line 1014
    goto :goto_13

    .line 1015
    :cond_3e
    const/4 v0, -0x1

    .line 1016
    :goto_13
    if-eq v1, v0, :cond_3c

    .line 1017
    .line 1018
    new-instance v0, Landroid/util/Pair;

    .line 1019
    .line 1020
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    const/4 v4, 0x0

    .line 1025
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v4

    .line 1029
    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1030
    .line 1031
    .line 1032
    move-object v2, v0

    .line 1033
    goto :goto_14

    .line 1034
    :catch_2
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    goto :goto_12

    .line 1038
    :goto_14
    return-object v2

    .line 1039
    :pswitch_24
    array-length v0, v1

    .line 1040
    if-ge v0, v14, :cond_3f

    .line 1041
    .line 1042
    const-string v0, "Ignoring malformed IAMF codec string: "

    .line 1043
    .line 1044
    invoke-static {v0, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    :goto_15
    const/4 v2, 0x0

    .line 1048
    goto/16 :goto_18

    .line 1049
    .line 1050
    :cond_3f
    :try_start_3
    aget-object v0, v1, v7

    .line 1051
    .line 1052
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1056
    add-int/2addr v0, v15

    .line 1057
    shl-int v0, v7, v0

    .line 1058
    .line 1059
    aget-object v2, v1, v4

    .line 1060
    .line 1061
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1065
    .line 1066
    .line 1067
    const/4 v3, -0x1

    .line 1068
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 1069
    .line 1070
    .line 1071
    move-result v5

    .line 1072
    sparse-switch v5, :sswitch_data_3

    .line 1073
    .line 1074
    .line 1075
    goto :goto_16

    .line 1076
    :sswitch_22
    const-string v5, "mp4a"

    .line 1077
    .line 1078
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v2

    .line 1082
    if-nez v2, :cond_40

    .line 1083
    .line 1084
    goto :goto_16

    .line 1085
    :cond_40
    const/4 v3, 0x3

    .line 1086
    goto :goto_16

    .line 1087
    :sswitch_23
    const-string v5, "ipcm"

    .line 1088
    .line 1089
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    if-nez v2, :cond_41

    .line 1094
    .line 1095
    goto :goto_16

    .line 1096
    :cond_41
    const/4 v3, 0x2

    .line 1097
    goto :goto_16

    .line 1098
    :sswitch_24
    const-string v5, "fLaC"

    .line 1099
    .line 1100
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    if-nez v2, :cond_42

    .line 1105
    .line 1106
    goto :goto_16

    .line 1107
    :cond_42
    const/4 v3, 0x1

    .line 1108
    goto :goto_16

    .line 1109
    :sswitch_25
    const-string v5, "Opus"

    .line 1110
    .line 1111
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v2

    .line 1115
    if-nez v2, :cond_43

    .line 1116
    .line 1117
    goto :goto_16

    .line 1118
    :cond_43
    const/4 v3, 0x0

    .line 1119
    :goto_16
    packed-switch v3, :pswitch_data_5

    .line 1120
    .line 1121
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    const-string v2, "Ignoring unknown codec identifier for IAMF auxiliary profile: "

    .line 1125
    .line 1126
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    aget-object v1, v1, v4

    .line 1130
    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-static {v8, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    goto :goto_15

    .line 1142
    :pswitch_25
    const/4 v6, 0x2

    .line 1143
    goto :goto_17

    .line 1144
    :pswitch_26
    const/4 v6, 0x4

    .line 1145
    goto :goto_17

    .line 1146
    :pswitch_27
    const/4 v6, 0x1

    .line 1147
    :goto_17
    :pswitch_28
    new-instance v2, Landroid/util/Pair;

    .line 1148
    .line 1149
    const/high16 v1, 0x1000000

    .line 1150
    .line 1151
    or-int/2addr v0, v1

    .line 1152
    or-int/2addr v0, v6

    .line 1153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    const/4 v1, 0x0

    .line 1158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    goto :goto_18

    .line 1166
    :catch_3
    move-exception v0

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    const-string v3, "Ignoring malformed primary profile in IAMF codec string: "

    .line 1170
    .line 1171
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    aget-object v1, v1, v7

    .line 1175
    .line 1176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    invoke-static {v8, v1, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1184
    .line 1185
    .line 1186
    goto/16 :goto_15

    .line 1187
    .line 1188
    :goto_18
    return-object v2

    .line 1189
    :pswitch_29
    iget-object v0, v0, Lm0/t;->E:Lm0/i;

    .line 1190
    .line 1191
    invoke-static {v2, v1, v0}, Lp0/g;->c(Ljava/lang/String;[Ljava/lang/String;Lm0/i;)Landroid/util/Pair;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    return-object v0

    .line 1196
    :pswitch_2a
    array-length v0, v1

    .line 1197
    const-string v3, "Ignoring malformed AVC codec string: "

    .line 1198
    .line 1199
    const/4 v5, 0x2

    .line 1200
    if-ge v0, v5, :cond_44

    .line 1201
    .line 1202
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    :goto_19
    const/4 v2, 0x0

    .line 1206
    goto/16 :goto_1f

    .line 1207
    .line 1208
    :cond_44
    :try_start_4
    aget-object v0, v1, v7

    .line 1209
    .line 1210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    const/4 v9, 0x6

    .line 1215
    if-ne v0, v9, :cond_45

    .line 1216
    .line 1217
    aget-object v0, v1, v7

    .line 1218
    .line 1219
    const/4 v4, 0x0

    .line 1220
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1225
    .line 1226
    .line 1227
    move-result v0

    .line 1228
    aget-object v1, v1, v7

    .line 1229
    .line 1230
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v1

    .line 1234
    invoke-static {v1, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 1235
    .line 1236
    .line 1237
    move-result v1

    .line 1238
    goto :goto_1a

    .line 1239
    :cond_45
    array-length v0, v1

    .line 1240
    if-lt v0, v4, :cond_4f

    .line 1241
    .line 1242
    aget-object v0, v1, v7

    .line 1243
    .line 1244
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    const/4 v4, 0x2

    .line 1249
    aget-object v1, v1, v4

    .line 1250
    .line 1251
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    move-result v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1255
    :goto_1a
    const/16 v2, 0x42

    .line 1256
    .line 1257
    if-eq v0, v2, :cond_4c

    .line 1258
    .line 1259
    const/16 v2, 0x4d

    .line 1260
    .line 1261
    if-eq v0, v2, :cond_4b

    .line 1262
    .line 1263
    const/16 v2, 0x58

    .line 1264
    .line 1265
    if-eq v0, v2, :cond_4a

    .line 1266
    .line 1267
    const/16 v2, 0x64

    .line 1268
    .line 1269
    if-eq v0, v2, :cond_49

    .line 1270
    .line 1271
    const/16 v2, 0x6e

    .line 1272
    .line 1273
    if-eq v0, v2, :cond_48

    .line 1274
    .line 1275
    const/16 v2, 0x7a

    .line 1276
    .line 1277
    if-eq v0, v2, :cond_47

    .line 1278
    .line 1279
    const/16 v2, 0xf4

    .line 1280
    .line 1281
    if-eq v0, v2, :cond_46

    .line 1282
    .line 1283
    const/4 v2, -0x1

    .line 1284
    :goto_1b
    const/4 v3, -0x1

    .line 1285
    goto :goto_1c

    .line 1286
    :cond_46
    const/16 v2, 0x40

    .line 1287
    .line 1288
    goto :goto_1b

    .line 1289
    :cond_47
    const/16 v2, 0x20

    .line 1290
    .line 1291
    goto :goto_1b

    .line 1292
    :cond_48
    const/16 v2, 0x10

    .line 1293
    .line 1294
    goto :goto_1b

    .line 1295
    :cond_49
    const/16 v2, 0x8

    .line 1296
    .line 1297
    goto :goto_1b

    .line 1298
    :cond_4a
    const/4 v2, 0x4

    .line 1299
    goto :goto_1b

    .line 1300
    :cond_4b
    const/4 v2, 0x2

    .line 1301
    goto :goto_1b

    .line 1302
    :cond_4c
    const/4 v2, 0x1

    .line 1303
    goto :goto_1b

    .line 1304
    :goto_1c
    if-ne v2, v3, :cond_4d

    .line 1305
    .line 1306
    const-string v1, "Unknown AVC profile: "

    .line 1307
    .line 1308
    invoke-static {v1, v0, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_19

    .line 1312
    :cond_4d
    packed-switch v1, :pswitch_data_6

    .line 1313
    .line 1314
    .line 1315
    packed-switch v1, :pswitch_data_7

    .line 1316
    .line 1317
    .line 1318
    packed-switch v1, :pswitch_data_8

    .line 1319
    .line 1320
    .line 1321
    packed-switch v1, :pswitch_data_9

    .line 1322
    .line 1323
    .line 1324
    packed-switch v1, :pswitch_data_a

    .line 1325
    .line 1326
    .line 1327
    const/4 v0, -0x1

    .line 1328
    const/4 v4, -0x1

    .line 1329
    goto :goto_1e

    .line 1330
    :pswitch_2b
    const/high16 v4, 0x10000

    .line 1331
    .line 1332
    :goto_1d
    const/4 v0, -0x1

    .line 1333
    goto :goto_1e

    .line 1334
    :pswitch_2c
    const v4, 0x8000

    .line 1335
    .line 1336
    .line 1337
    goto :goto_1d

    .line 1338
    :pswitch_2d
    const/16 v4, 0x4000

    .line 1339
    .line 1340
    goto :goto_1d

    .line 1341
    :pswitch_2e
    const/16 v4, 0x2000

    .line 1342
    .line 1343
    goto :goto_1d

    .line 1344
    :pswitch_2f
    const/4 v0, -0x1

    .line 1345
    const/16 v4, 0x1000

    .line 1346
    .line 1347
    goto :goto_1e

    .line 1348
    :pswitch_30
    const/16 v4, 0x800

    .line 1349
    .line 1350
    goto :goto_1d

    .line 1351
    :pswitch_31
    const/4 v0, -0x1

    .line 1352
    const/16 v4, 0x400

    .line 1353
    .line 1354
    goto :goto_1e

    .line 1355
    :pswitch_32
    const/4 v0, -0x1

    .line 1356
    const/16 v4, 0x200

    .line 1357
    .line 1358
    goto :goto_1e

    .line 1359
    :pswitch_33
    const/4 v0, -0x1

    .line 1360
    const/16 v4, 0x100

    .line 1361
    .line 1362
    goto :goto_1e

    .line 1363
    :pswitch_34
    const/4 v0, -0x1

    .line 1364
    const/16 v4, 0x80

    .line 1365
    .line 1366
    goto :goto_1e

    .line 1367
    :pswitch_35
    const/4 v0, -0x1

    .line 1368
    const/16 v4, 0x40

    .line 1369
    .line 1370
    goto :goto_1e

    .line 1371
    :pswitch_36
    const/4 v0, -0x1

    .line 1372
    const/16 v4, 0x20

    .line 1373
    .line 1374
    goto :goto_1e

    .line 1375
    :pswitch_37
    const/4 v0, -0x1

    .line 1376
    const/16 v4, 0x10

    .line 1377
    .line 1378
    goto :goto_1e

    .line 1379
    :pswitch_38
    const/4 v0, -0x1

    .line 1380
    const/16 v4, 0x8

    .line 1381
    .line 1382
    goto :goto_1e

    .line 1383
    :pswitch_39
    const/4 v0, -0x1

    .line 1384
    const/4 v4, 0x4

    .line 1385
    goto :goto_1e

    .line 1386
    :pswitch_3a
    const/4 v0, -0x1

    .line 1387
    const/4 v4, 0x1

    .line 1388
    :goto_1e
    if-ne v4, v0, :cond_4e

    .line 1389
    .line 1390
    const-string v0, "Unknown AVC level: "

    .line 1391
    .line 1392
    invoke-static {v0, v1, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1393
    .line 1394
    .line 1395
    goto/16 :goto_19

    .line 1396
    .line 1397
    :cond_4e
    new-instance v0, Landroid/util/Pair;

    .line 1398
    .line 1399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v1

    .line 1403
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1408
    .line 1409
    .line 1410
    move-object v2, v0

    .line 1411
    goto :goto_1f

    .line 1412
    :cond_4f
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-static {v8, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1425
    .line 1426
    .line 1427
    goto/16 :goto_19

    .line 1428
    .line 1429
    :catch_4
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    goto/16 :goto_19

    .line 1433
    .line 1434
    :goto_1f
    return-object v2

    .line 1435
    :pswitch_3b
    array-length v3, v1

    .line 1436
    const-string v5, "Ignoring malformed AV1 codec string: "

    .line 1437
    .line 1438
    if-ge v3, v14, :cond_50

    .line 1439
    .line 1440
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    :goto_20
    const/4 v2, 0x0

    .line 1444
    goto/16 :goto_24

    .line 1445
    .line 1446
    :cond_50
    :try_start_6
    aget-object v3, v1, v7

    .line 1447
    .line 1448
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1449
    .line 1450
    .line 1451
    move-result v3

    .line 1452
    const/4 v9, 0x2

    .line 1453
    aget-object v10, v1, v9

    .line 1454
    .line 1455
    const/4 v11, 0x0

    .line 1456
    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v10

    .line 1460
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1461
    .line 1462
    .line 1463
    move-result v9

    .line 1464
    aget-object v1, v1, v4

    .line 1465
    .line 1466
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1467
    .line 1468
    .line 1469
    move-result v1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1470
    if-eqz v3, :cond_51

    .line 1471
    .line 1472
    const-string v0, "Unknown AV1 profile: "

    .line 1473
    .line 1474
    invoke-static {v0, v3, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    goto :goto_20

    .line 1478
    :cond_51
    if-eq v1, v6, :cond_52

    .line 1479
    .line 1480
    const/16 v2, 0xa

    .line 1481
    .line 1482
    if-eq v1, v2, :cond_52

    .line 1483
    .line 1484
    const-string v0, "Unknown AV1 bit depth: "

    .line 1485
    .line 1486
    invoke-static {v0, v1, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    goto :goto_20

    .line 1490
    :cond_52
    if-ne v1, v6, :cond_53

    .line 1491
    .line 1492
    const/4 v0, 0x1

    .line 1493
    goto :goto_21

    .line 1494
    :cond_53
    iget-object v0, v0, Lm0/t;->E:Lm0/i;

    .line 1495
    .line 1496
    if-eqz v0, :cond_55

    .line 1497
    .line 1498
    iget-object v1, v0, Lm0/i;->d:[B

    .line 1499
    .line 1500
    if-nez v1, :cond_54

    .line 1501
    .line 1502
    iget v0, v0, Lm0/i;->c:I

    .line 1503
    .line 1504
    const/4 v1, 0x7

    .line 1505
    if-eq v0, v1, :cond_54

    .line 1506
    .line 1507
    const/4 v1, 0x6

    .line 1508
    if-ne v0, v1, :cond_55

    .line 1509
    .line 1510
    :cond_54
    const/16 v0, 0x1000

    .line 1511
    .line 1512
    goto :goto_21

    .line 1513
    :cond_55
    const/4 v0, 0x2

    .line 1514
    :goto_21
    packed-switch v9, :pswitch_data_b

    .line 1515
    .line 1516
    .line 1517
    const/4 v1, -0x1

    .line 1518
    const/4 v4, -0x1

    .line 1519
    goto/16 :goto_23

    .line 1520
    .line 1521
    :pswitch_3c
    const/high16 v4, 0x800000

    .line 1522
    .line 1523
    :goto_22
    const/4 v1, -0x1

    .line 1524
    goto :goto_23

    .line 1525
    :pswitch_3d
    const/high16 v4, 0x400000

    .line 1526
    .line 1527
    goto :goto_22

    .line 1528
    :pswitch_3e
    const/high16 v4, 0x200000

    .line 1529
    .line 1530
    goto :goto_22

    .line 1531
    :pswitch_3f
    const/high16 v4, 0x100000

    .line 1532
    .line 1533
    goto :goto_22

    .line 1534
    :pswitch_40
    const/high16 v4, 0x80000

    .line 1535
    .line 1536
    goto :goto_22

    .line 1537
    :pswitch_41
    const/high16 v4, 0x40000

    .line 1538
    .line 1539
    goto :goto_22

    .line 1540
    :pswitch_42
    const/high16 v4, 0x20000

    .line 1541
    .line 1542
    goto :goto_22

    .line 1543
    :pswitch_43
    const/high16 v4, 0x10000

    .line 1544
    .line 1545
    goto :goto_22

    .line 1546
    :pswitch_44
    const v4, 0x8000

    .line 1547
    .line 1548
    .line 1549
    goto :goto_22

    .line 1550
    :pswitch_45
    const/16 v4, 0x4000

    .line 1551
    .line 1552
    goto :goto_22

    .line 1553
    :pswitch_46
    const/16 v4, 0x2000

    .line 1554
    .line 1555
    goto :goto_22

    .line 1556
    :pswitch_47
    const/4 v1, -0x1

    .line 1557
    const/16 v4, 0x1000

    .line 1558
    .line 1559
    goto :goto_23

    .line 1560
    :pswitch_48
    const/16 v4, 0x800

    .line 1561
    .line 1562
    goto :goto_22

    .line 1563
    :pswitch_49
    const/4 v1, -0x1

    .line 1564
    const/16 v4, 0x400

    .line 1565
    .line 1566
    goto :goto_23

    .line 1567
    :pswitch_4a
    const/4 v1, -0x1

    .line 1568
    const/16 v4, 0x200

    .line 1569
    .line 1570
    goto :goto_23

    .line 1571
    :pswitch_4b
    const/4 v1, -0x1

    .line 1572
    const/16 v4, 0x100

    .line 1573
    .line 1574
    goto :goto_23

    .line 1575
    :pswitch_4c
    const/4 v1, -0x1

    .line 1576
    const/16 v4, 0x80

    .line 1577
    .line 1578
    goto :goto_23

    .line 1579
    :pswitch_4d
    const/4 v1, -0x1

    .line 1580
    const/16 v4, 0x40

    .line 1581
    .line 1582
    goto :goto_23

    .line 1583
    :pswitch_4e
    const/4 v1, -0x1

    .line 1584
    const/16 v4, 0x20

    .line 1585
    .line 1586
    goto :goto_23

    .line 1587
    :pswitch_4f
    const/4 v1, -0x1

    .line 1588
    const/16 v4, 0x10

    .line 1589
    .line 1590
    goto :goto_23

    .line 1591
    :pswitch_50
    const/4 v1, -0x1

    .line 1592
    const/16 v4, 0x8

    .line 1593
    .line 1594
    goto :goto_23

    .line 1595
    :pswitch_51
    const/4 v1, -0x1

    .line 1596
    const/4 v4, 0x4

    .line 1597
    goto :goto_23

    .line 1598
    :pswitch_52
    const/4 v1, -0x1

    .line 1599
    const/4 v4, 0x2

    .line 1600
    goto :goto_23

    .line 1601
    :pswitch_53
    const/4 v1, -0x1

    .line 1602
    const/4 v4, 0x1

    .line 1603
    :goto_23
    if-ne v4, v1, :cond_56

    .line 1604
    .line 1605
    const-string v0, "Unknown AV1 level: "

    .line 1606
    .line 1607
    invoke-static {v0, v9, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    goto/16 :goto_20

    .line 1611
    .line 1612
    :cond_56
    new-instance v2, Landroid/util/Pair;

    .line 1613
    .line 1614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v0

    .line 1618
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1623
    .line 1624
    .line 1625
    goto :goto_24

    .line 1626
    :catch_5
    invoke-static {v5, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    goto/16 :goto_20

    .line 1630
    .line 1631
    :goto_24
    return-object v2

    .line 1632
    :pswitch_54
    array-length v0, v1

    .line 1633
    const-string v3, "Ignoring malformed AC-4 codec string: "

    .line 1634
    .line 1635
    if-eq v0, v14, :cond_57

    .line 1636
    .line 1637
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    .line 1639
    .line 1640
    :goto_25
    const/4 v2, 0x0

    .line 1641
    goto/16 :goto_29

    .line 1642
    .line 1643
    :cond_57
    :try_start_7
    aget-object v0, v1, v7

    .line 1644
    .line 1645
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1646
    .line 1647
    .line 1648
    move-result v0

    .line 1649
    const/4 v5, 0x2

    .line 1650
    aget-object v9, v1, v5

    .line 1651
    .line 1652
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1653
    .line 1654
    .line 1655
    move-result v9

    .line 1656
    aget-object v1, v1, v4

    .line 1657
    .line 1658
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1659
    .line 1660
    .line 1661
    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1662
    if-eqz v0, :cond_5c

    .line 1663
    .line 1664
    if-eq v0, v7, :cond_5a

    .line 1665
    .line 1666
    if-eq v0, v5, :cond_58

    .line 1667
    .line 1668
    goto :goto_26

    .line 1669
    :cond_58
    if-ne v9, v7, :cond_59

    .line 1670
    .line 1671
    const/16 v2, 0x402

    .line 1672
    .line 1673
    const/4 v2, -0x1

    .line 1674
    const/16 v3, 0x402

    .line 1675
    .line 1676
    goto :goto_27

    .line 1677
    :cond_59
    if-ne v9, v5, :cond_5d

    .line 1678
    .line 1679
    const/16 v2, 0x404

    .line 1680
    .line 1681
    const/4 v2, -0x1

    .line 1682
    const/16 v3, 0x404

    .line 1683
    .line 1684
    goto :goto_27

    .line 1685
    :cond_5a
    if-nez v9, :cond_5b

    .line 1686
    .line 1687
    const/16 v2, 0x201

    .line 1688
    .line 1689
    const/4 v2, -0x1

    .line 1690
    const/16 v3, 0x201

    .line 1691
    .line 1692
    goto :goto_27

    .line 1693
    :cond_5b
    if-ne v9, v7, :cond_5d

    .line 1694
    .line 1695
    const/16 v2, 0x202

    .line 1696
    .line 1697
    const/4 v2, -0x1

    .line 1698
    const/16 v3, 0x202

    .line 1699
    .line 1700
    goto :goto_27

    .line 1701
    :cond_5c
    if-nez v9, :cond_5d

    .line 1702
    .line 1703
    const/16 v2, 0x101

    .line 1704
    .line 1705
    const/4 v2, -0x1

    .line 1706
    const/16 v3, 0x101

    .line 1707
    .line 1708
    goto :goto_27

    .line 1709
    :cond_5d
    :goto_26
    const/4 v2, -0x1

    .line 1710
    const/4 v3, -0x1

    .line 1711
    :goto_27
    if-ne v3, v2, :cond_5e

    .line 1712
    .line 1713
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1714
    .line 1715
    const-string v2, "Unknown AC-4 profile: "

    .line 1716
    .line 1717
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1718
    .line 1719
    .line 1720
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1721
    .line 1722
    .line 1723
    const-string v0, "."

    .line 1724
    .line 1725
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v0

    .line 1735
    invoke-static {v8, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_25

    .line 1739
    :cond_5e
    if-eqz v1, :cond_63

    .line 1740
    .line 1741
    if-eq v1, v7, :cond_62

    .line 1742
    .line 1743
    const/4 v0, 0x2

    .line 1744
    if-eq v1, v0, :cond_61

    .line 1745
    .line 1746
    if-eq v1, v4, :cond_60

    .line 1747
    .line 1748
    if-eq v1, v14, :cond_5f

    .line 1749
    .line 1750
    const/4 v0, -0x1

    .line 1751
    const/4 v15, -0x1

    .line 1752
    goto :goto_28

    .line 1753
    :cond_5f
    const/4 v0, -0x1

    .line 1754
    goto :goto_28

    .line 1755
    :cond_60
    const/4 v0, -0x1

    .line 1756
    const/16 v15, 0x8

    .line 1757
    .line 1758
    goto :goto_28

    .line 1759
    :cond_61
    const/4 v0, -0x1

    .line 1760
    const/4 v15, 0x4

    .line 1761
    goto :goto_28

    .line 1762
    :cond_62
    const/4 v0, 0x2

    .line 1763
    const/4 v0, -0x1

    .line 1764
    const/4 v15, 0x2

    .line 1765
    goto :goto_28

    .line 1766
    :cond_63
    const/4 v0, -0x1

    .line 1767
    const/4 v15, 0x1

    .line 1768
    :goto_28
    if-ne v15, v0, :cond_64

    .line 1769
    .line 1770
    const-string v0, "Unknown AC-4 level: "

    .line 1771
    .line 1772
    invoke-static {v0, v1, v8}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 1773
    .line 1774
    .line 1775
    goto/16 :goto_25

    .line 1776
    .line 1777
    :cond_64
    new-instance v2, Landroid/util/Pair;

    .line 1778
    .line 1779
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v1

    .line 1787
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1788
    .line 1789
    .line 1790
    goto :goto_29

    .line 1791
    :catch_6
    invoke-static {v3, v2, v8}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    .line 1793
    .line 1794
    goto/16 :goto_25

    .line 1795
    .line 1796
    :goto_29
    return-object v2

    .line 1797
    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_a
        0x601 -> :sswitch_9
        0x602 -> :sswitch_8
        0x603 -> :sswitch_7
        0x604 -> :sswitch_6
        0x605 -> :sswitch_5
        0x606 -> :sswitch_4
        0x607 -> :sswitch_3
        0x608 -> :sswitch_2
        0x609 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    :sswitch_data_1
    .sparse-switch
        0x601 -> :sswitch_17
        0x602 -> :sswitch_16
        0x603 -> :sswitch_15
        0x604 -> :sswitch_14
        0x605 -> :sswitch_13
        0x606 -> :sswitch_12
        0x607 -> :sswitch_11
        0x608 -> :sswitch_10
        0x609 -> :sswitch_f
        0x61f -> :sswitch_e
        0x620 -> :sswitch_d
        0x621 -> :sswitch_c
        0x622 -> :sswitch_b
    .end sparse-switch

    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    :sswitch_data_2
    .sparse-switch
        0x2d9149 -> :sswitch_21
        0x2dd8f6 -> :sswitch_20
        0x2ddf23 -> :sswitch_1f
        0x2ddf24 -> :sswitch_1e
        0x30d038 -> :sswitch_1d
        0x310dbc -> :sswitch_1c
        0x3134b1 -> :sswitch_1b
        0x333790 -> :sswitch_1a
        0x35091c -> :sswitch_19
        0x374e43 -> :sswitch_18
    .end sparse-switch

    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_54
        :pswitch_3b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_24
        :pswitch_1d
        :pswitch_1c
        :pswitch_18
    .end packed-switch

    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    :sswitch_data_3
    .sparse-switch
        0x259c5f -> :sswitch_25
        0x2f8728 -> :sswitch_24
        0x316bd1 -> :sswitch_23
        0x333790 -> :sswitch_22
    .end sparse-switch

    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_28
        :pswitch_25
    .end packed-switch

    .line 2064
    :pswitch_data_6
    .packed-switch 0xa
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x14
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1e
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x32
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;Lm0/i;)Landroid/util/Pair;
    .locals 9

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, "Ignoring malformed HEVC codec string: "

    .line 3
    .line 4
    const-string v2, "CodecSpecificDataUtil"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x4

    .line 8
    if-ge v0, v4, :cond_0

    .line 9
    .line 10
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    sget-object v0, Lp0/g;->c:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    aget-object v6, p1, v5

    .line 18
    .line 19
    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    invoke-static {v1, p0, v2}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "1"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x1000

    .line 44
    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, 0x6

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v7, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "2"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget p0, p2, Lm0/i;->c:I

    .line 62
    .line 63
    if-ne p0, v7, :cond_3

    .line 64
    .line 65
    const/16 v7, 0x1000

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v7, 0x2

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const-string p2, "6"

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_21

    .line 77
    .line 78
    :goto_0
    const/4 p0, 0x3

    .line 79
    aget-object p0, p1, p0

    .line 80
    .line 81
    if-nez p0, :cond_5

    .line 82
    .line 83
    :goto_1
    move-object p1, v3

    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    const/16 p1, 0x8

    .line 90
    .line 91
    const/16 p2, 0x10

    .line 92
    .line 93
    const/4 v0, -0x1

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    sparse-switch v8, :sswitch_data_0

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :sswitch_0
    const-string v8, "L186"

    .line 104
    .line 105
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_6

    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_6
    const/16 v0, 0x19

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :sswitch_1
    const-string v8, "L183"

    .line 118
    .line 119
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-nez v8, :cond_7

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_7
    const/16 v0, 0x18

    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :sswitch_2
    const-string v8, "L180"

    .line 132
    .line 133
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_8

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_8
    const/16 v0, 0x17

    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :sswitch_3
    const-string v8, "L156"

    .line 146
    .line 147
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-nez v8, :cond_9

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_9
    const/16 v0, 0x16

    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :sswitch_4
    const-string v8, "L153"

    .line 160
    .line 161
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_a

    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_a
    const/16 v0, 0x15

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :sswitch_5
    const-string v8, "L150"

    .line 174
    .line 175
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-nez v8, :cond_b

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_b
    const/16 v0, 0x14

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :sswitch_6
    const-string v8, "L123"

    .line 188
    .line 189
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-nez v8, :cond_c

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_c
    const/16 v0, 0x13

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :sswitch_7
    const-string v8, "L120"

    .line 202
    .line 203
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_d

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_d
    const/16 v0, 0x12

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :sswitch_8
    const-string v8, "H186"

    .line 216
    .line 217
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-nez v8, :cond_e

    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_e
    const/16 v0, 0x11

    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :sswitch_9
    const-string v8, "H183"

    .line 230
    .line 231
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_f

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_f
    const/16 v0, 0x10

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :sswitch_a
    const-string v8, "H180"

    .line 244
    .line 245
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-nez v8, :cond_10

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_10
    const/16 v0, 0xf

    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :sswitch_b
    const-string v8, "H156"

    .line 258
    .line 259
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-nez v8, :cond_11

    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_11
    const/16 v0, 0xe

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :sswitch_c
    const-string v8, "H153"

    .line 272
    .line 273
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-nez v8, :cond_12

    .line 278
    .line 279
    goto/16 :goto_2

    .line 280
    .line 281
    :cond_12
    const/16 v0, 0xd

    .line 282
    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :sswitch_d
    const-string v8, "H150"

    .line 286
    .line 287
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-nez v8, :cond_13

    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_13
    const/16 v0, 0xc

    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :sswitch_e
    const-string v8, "H123"

    .line 300
    .line 301
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-nez v8, :cond_14

    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :cond_14
    const/16 v0, 0xb

    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :sswitch_f
    const-string v8, "H120"

    .line 314
    .line 315
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-nez v8, :cond_15

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_15
    const/16 v0, 0xa

    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :sswitch_10
    const-string v8, "L93"

    .line 328
    .line 329
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-nez v8, :cond_16

    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_16
    const/16 v0, 0x9

    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :sswitch_11
    const-string v8, "L90"

    .line 342
    .line 343
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-nez v8, :cond_17

    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_17
    const/16 v0, 0x8

    .line 352
    .line 353
    goto/16 :goto_2

    .line 354
    .line 355
    :sswitch_12
    const-string v8, "L63"

    .line 356
    .line 357
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    if-nez v8, :cond_18

    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_18
    const/4 v0, 0x7

    .line 365
    goto :goto_2

    .line 366
    :sswitch_13
    const-string v8, "L60"

    .line 367
    .line 368
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v8

    .line 372
    if-nez v8, :cond_19

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_19
    const/4 v0, 0x6

    .line 376
    goto :goto_2

    .line 377
    :sswitch_14
    const-string v8, "L30"

    .line 378
    .line 379
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    if-nez v8, :cond_1a

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_1a
    const/4 v0, 0x5

    .line 387
    goto :goto_2

    .line 388
    :sswitch_15
    const-string v8, "H93"

    .line 389
    .line 390
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-nez v8, :cond_1b

    .line 395
    .line 396
    goto :goto_2

    .line 397
    :cond_1b
    const/4 v0, 0x4

    .line 398
    goto :goto_2

    .line 399
    :sswitch_16
    const-string v8, "H90"

    .line 400
    .line 401
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    if-nez v8, :cond_1c

    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_1c
    const/4 v0, 0x3

    .line 409
    goto :goto_2

    .line 410
    :sswitch_17
    const-string v8, "H63"

    .line 411
    .line 412
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-nez v8, :cond_1d

    .line 417
    .line 418
    goto :goto_2

    .line 419
    :cond_1d
    const/4 v0, 0x2

    .line 420
    goto :goto_2

    .line 421
    :sswitch_18
    const-string v8, "H60"

    .line 422
    .line 423
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-nez v8, :cond_1e

    .line 428
    .line 429
    goto :goto_2

    .line 430
    :cond_1e
    const/4 v0, 0x1

    .line 431
    goto :goto_2

    .line 432
    :sswitch_19
    const-string v8, "H30"

    .line 433
    .line 434
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-nez v8, :cond_1f

    .line 439
    .line 440
    goto :goto_2

    .line 441
    :cond_1f
    const/4 v0, 0x0

    .line 442
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 443
    .line 444
    .line 445
    goto/16 :goto_1

    .line 446
    .line 447
    :pswitch_0
    const/high16 p1, 0x1000000

    .line 448
    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    goto/16 :goto_3

    .line 454
    .line 455
    :pswitch_1
    const/high16 p1, 0x400000

    .line 456
    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    goto/16 :goto_3

    .line 462
    .line 463
    :pswitch_2
    const/high16 p1, 0x100000

    .line 464
    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    goto/16 :goto_3

    .line 470
    .line 471
    :pswitch_3
    const/high16 p1, 0x40000

    .line 472
    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :pswitch_4
    const/high16 p1, 0x10000

    .line 480
    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    goto/16 :goto_3

    .line 486
    .line 487
    :pswitch_5
    const/16 p1, 0x4000

    .line 488
    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    goto/16 :goto_3

    .line 494
    .line 495
    :pswitch_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    goto/16 :goto_3

    .line 500
    .line 501
    :pswitch_7
    const/16 p1, 0x400

    .line 502
    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :pswitch_8
    const/high16 p1, 0x2000000

    .line 510
    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    goto/16 :goto_3

    .line 516
    .line 517
    :pswitch_9
    const/high16 p1, 0x800000

    .line 518
    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    goto/16 :goto_3

    .line 524
    .line 525
    :pswitch_a
    const/high16 p1, 0x200000

    .line 526
    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    goto :goto_3

    .line 532
    :pswitch_b
    const/high16 p1, 0x80000

    .line 533
    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    goto :goto_3

    .line 539
    :pswitch_c
    const/high16 p1, 0x20000

    .line 540
    .line 541
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    goto :goto_3

    .line 546
    :pswitch_d
    const p1, 0x8000

    .line 547
    .line 548
    .line 549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    goto :goto_3

    .line 554
    :pswitch_e
    const/16 p1, 0x2000

    .line 555
    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    goto :goto_3

    .line 561
    :pswitch_f
    const/16 p1, 0x800

    .line 562
    .line 563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    goto :goto_3

    .line 568
    :pswitch_10
    const/16 p1, 0x100

    .line 569
    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    goto :goto_3

    .line 575
    :pswitch_11
    const/16 p1, 0x40

    .line 576
    .line 577
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    goto :goto_3

    .line 582
    :pswitch_12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    goto :goto_3

    .line 587
    :pswitch_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    goto :goto_3

    .line 592
    :pswitch_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    goto :goto_3

    .line 597
    :pswitch_15
    const/16 p1, 0x200

    .line 598
    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    goto :goto_3

    .line 604
    :pswitch_16
    const/16 p1, 0x80

    .line 605
    .line 606
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    goto :goto_3

    .line 611
    :pswitch_17
    const/16 p1, 0x20

    .line 612
    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    goto :goto_3

    .line 618
    :pswitch_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    goto :goto_3

    .line 623
    :pswitch_19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    :goto_3
    if-nez p1, :cond_20

    .line 628
    .line 629
    const-string p1, "Unknown HEVC level string: "

    .line 630
    .line 631
    invoke-static {p1, p0, v2}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    return-object v3

    .line 635
    :cond_20
    new-instance p0, Landroid/util/Pair;

    .line 636
    .line 637
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object p2

    .line 641
    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    return-object p0

    .line 645
    :cond_21
    const-string p1, "Unknown HEVC profile string: "

    .line 646
    .line 647
    invoke-static {p1, p0, v2}, Lcom/google/protobuf/U2;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    return-object v3

    .line 651
    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
