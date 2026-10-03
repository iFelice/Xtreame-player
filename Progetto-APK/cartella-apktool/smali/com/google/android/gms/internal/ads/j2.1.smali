.class public final Lcom/google/android/gms/internal/ads/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/W1;


# static fields
.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;


# instance fields
.field public final G:Ljava/lang/StringBuilder;

.field public final H:Ljava/util/ArrayList;

.field public final I:Lcom/google/android/gms/internal/ads/jr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/j2;->J:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/j2;->K:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->G:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->H:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j2;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Ljava/util/regex/Matcher;I)J
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/32 v2, 0x36ee80

    .line 14
    .line 15
    .line 16
    mul-long v0, v0, v2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    const-wide/32 v4, 0xea60

    .line 35
    .line 36
    .line 37
    mul-long v2, v2, v4

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    add-int/lit8 v0, p1, 0x3

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/16 v4, 0x3e8

    .line 54
    .line 55
    mul-long v0, v0, v4

    .line 56
    .line 57
    add-long/2addr v0, v2

    .line 58
    add-int/lit8 p1, p1, 0x4

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    add-long/2addr v0, p0

    .line 71
    :cond_1
    mul-long v0, v0, v4

    .line 72
    .line 73
    return-wide v0
.end method


# virtual methods
.method public final d([BIILt0/d;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "SubripParser"

    .line 6
    .line 7
    add-int v3, v1, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/j2;->I:Lcom/google/android/gms/internal/ads/jr;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->c()Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/uz;->c:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_1c

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1b

    .line 38
    .line 39
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const-string v1, "Unexpected end"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    sget-object v5, Lcom/google/android/gms/internal/ads/j2;->J:Ljava/util/regex/Pattern;

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1a

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/util/regex/Matcher;I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    const/4 v6, 0x6

    .line 72
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/j2;->a(Ljava/util/regex/Matcher;I)J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/j2;->G:Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    .line 81
    .line 82
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/j2;->H:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-nez v13, :cond_4

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-lez v13, :cond_2

    .line 102
    .line 103
    const-string v13, "<br>"

    .line 104
    .line 105
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v14, Lcom/google/android/gms/internal/ads/j2;->K:Ljava/util/regex/Pattern;

    .line 118
    .line 119
    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    const/4 v14, 0x0

    .line 124
    :goto_2
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-eqz v15, :cond_3

    .line 129
    .line 130
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    .line 138
    .line 139
    .line 140
    move-result v16

    .line 141
    sub-int v10, v16, v14

    .line 142
    .line 143
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    add-int v3, v10, v15

    .line 148
    .line 149
    const-string v0, ""

    .line 150
    .line 151
    invoke-virtual {v13, v10, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    add-int/2addr v14, v15

    .line 155
    move-object/from16 v0, p0

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    const/4 v10, 0x0

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/jr;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    move-object/from16 v0, p0

    .line 172
    .line 173
    const/4 v3, 0x1

    .line 174
    const/4 v10, 0x0

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    const/4 v0, 0x0

    .line 185
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-ge v0, v3, :cond_6

    .line 190
    .line 191
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Ljava/lang/String;

    .line 196
    .line 197
    const-string v7, "\\{\\\\an[1-9]\\}"

    .line 198
    .line 199
    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_5

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    const/4 v3, 0x0

    .line 210
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/S1;

    .line 211
    .line 212
    const/16 v27, 0x0

    .line 213
    .line 214
    const/16 v16, 0x0

    .line 215
    .line 216
    const v25, -0x800001

    .line 217
    .line 218
    .line 219
    const/high16 v26, -0x80000000

    .line 220
    .line 221
    if-nez v3, :cond_7

    .line 222
    .line 223
    new-instance v3, Lcom/google/android/gms/internal/ads/ak;

    .line 224
    .line 225
    move-object v12, v3

    .line 226
    move-object/from16 v14, v16

    .line 227
    .line 228
    move-object/from16 v15, v16

    .line 229
    .line 230
    move/from16 v17, v25

    .line 231
    .line 232
    move/from16 v18, v26

    .line 233
    .line 234
    move/from16 v19, v26

    .line 235
    .line 236
    move/from16 v20, v25

    .line 237
    .line 238
    move/from16 v21, v26

    .line 239
    .line 240
    move/from16 v22, v26

    .line 241
    .line 242
    move/from16 v23, v25

    .line 243
    .line 244
    move/from16 v24, v25

    .line 245
    .line 246
    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_d

    .line 250
    .line 251
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    const-string v11, "{\\an9}"

    .line 256
    .line 257
    const-string v14, "{\\an7}"

    .line 258
    .line 259
    const-string v10, "{\\an3}"

    .line 260
    .line 261
    const-string v12, "{\\an1}"

    .line 262
    .line 263
    const/16 v18, -0x1

    .line 264
    .line 265
    const/4 v15, 0x2

    .line 266
    sparse-switch v7, :sswitch_data_0

    .line 267
    .line 268
    .line 269
    :goto_5
    const/4 v7, -0x1

    .line 270
    goto :goto_6

    .line 271
    :sswitch_0
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-nez v7, :cond_8

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_8
    const/4 v7, 0x5

    .line 279
    goto :goto_6

    .line 280
    :sswitch_1
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    if-nez v7, :cond_9

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_9
    const/4 v7, 0x4

    .line 288
    goto :goto_6

    .line 289
    :sswitch_2
    const-string v7, "{\\an6}"

    .line 290
    .line 291
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-nez v7, :cond_a

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_a
    const/4 v7, 0x3

    .line 299
    goto :goto_6

    .line 300
    :sswitch_3
    const-string v7, "{\\an4}"

    .line 301
    .line 302
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-nez v7, :cond_b

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_b
    const/4 v7, 0x2

    .line 310
    goto :goto_6

    .line 311
    :sswitch_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_c

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_c
    const/4 v7, 0x1

    .line 319
    goto :goto_6

    .line 320
    :sswitch_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-nez v7, :cond_d

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_d
    const/4 v7, 0x0

    .line 328
    :goto_6
    packed-switch v7, :pswitch_data_0

    .line 329
    .line 330
    .line 331
    const/4 v7, 0x1

    .line 332
    goto :goto_7

    .line 333
    :pswitch_0
    const/4 v7, 0x2

    .line 334
    goto :goto_7

    .line 335
    :pswitch_1
    const/4 v7, 0x0

    .line 336
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 337
    .line 338
    .line 339
    move-result v20

    .line 340
    sparse-switch v20, :sswitch_data_1

    .line 341
    .line 342
    .line 343
    :goto_8
    const/4 v10, -0x1

    .line 344
    goto :goto_9

    .line 345
    :sswitch_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_e

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_e
    const/4 v10, 0x5

    .line 353
    goto :goto_9

    .line 354
    :sswitch_7
    const-string v10, "{\\an8}"

    .line 355
    .line 356
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-nez v3, :cond_f

    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_f
    const/4 v10, 0x4

    .line 364
    goto :goto_9

    .line 365
    :sswitch_8
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_10

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_10
    const/4 v10, 0x3

    .line 373
    goto :goto_9

    .line 374
    :sswitch_9
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-nez v3, :cond_11

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_11
    const/4 v10, 0x2

    .line 382
    goto :goto_9

    .line 383
    :sswitch_a
    const-string v10, "{\\an2}"

    .line 384
    .line 385
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-nez v3, :cond_12

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_12
    const/4 v10, 0x1

    .line 393
    goto :goto_9

    .line 394
    :sswitch_b
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_13

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_13
    const/4 v10, 0x0

    .line 402
    :goto_9
    packed-switch v10, :pswitch_data_1

    .line 403
    .line 404
    .line 405
    const/4 v3, 0x1

    .line 406
    goto :goto_a

    .line 407
    :pswitch_2
    const/4 v3, 0x0

    .line 408
    goto :goto_a

    .line 409
    :pswitch_3
    const/4 v3, 0x2

    .line 410
    :goto_a
    const v10, 0x3da3d70a    # 0.08f

    .line 411
    .line 412
    .line 413
    const/high16 v11, 0x3f000000    # 0.5f

    .line 414
    .line 415
    const v12, 0x3f6b851f    # 0.92f

    .line 416
    .line 417
    .line 418
    const/4 v14, 0x1

    .line 419
    if-eqz v7, :cond_16

    .line 420
    .line 421
    if-eq v7, v14, :cond_15

    .line 422
    .line 423
    if-ne v7, v15, :cond_14

    .line 424
    .line 425
    const v20, 0x3f6b851f    # 0.92f

    .line 426
    .line 427
    .line 428
    goto :goto_b

    .line 429
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 430
    .line 431
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 432
    .line 433
    .line 434
    throw v0

    .line 435
    :cond_15
    const/high16 v20, 0x3f000000    # 0.5f

    .line 436
    .line 437
    goto :goto_b

    .line 438
    :cond_16
    const v20, 0x3da3d70a    # 0.08f

    .line 439
    .line 440
    .line 441
    :goto_b
    if-eqz v3, :cond_19

    .line 442
    .line 443
    if-eq v3, v14, :cond_18

    .line 444
    .line 445
    if-ne v3, v15, :cond_17

    .line 446
    .line 447
    const v17, 0x3f6b851f    # 0.92f

    .line 448
    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 452
    .line 453
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :cond_18
    const/high16 v17, 0x3f000000    # 0.5f

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_19
    const v17, 0x3da3d70a    # 0.08f

    .line 461
    .line 462
    .line 463
    :goto_c
    new-instance v10, Lcom/google/android/gms/internal/ads/ak;

    .line 464
    .line 465
    const/16 v18, 0x0

    .line 466
    .line 467
    move-object v12, v10

    .line 468
    move-object/from16 v14, v16

    .line 469
    .line 470
    move-object/from16 v15, v16

    .line 471
    .line 472
    move/from16 v19, v3

    .line 473
    .line 474
    move/from16 v21, v7

    .line 475
    .line 476
    move/from16 v22, v26

    .line 477
    .line 478
    move/from16 v23, v25

    .line 479
    .line 480
    move/from16 v24, v25

    .line 481
    .line 482
    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/internal/ads/ak;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFIF)V

    .line 483
    .line 484
    .line 485
    move-object v3, v10

    .line 486
    :goto_d
    sub-long v10, v5, v8

    .line 487
    .line 488
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    move-object v6, v0

    .line 493
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/S1;-><init>(Ljava/util/List;JJ)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v5, p4

    .line 497
    .line 498
    invoke-virtual {v5, v0}, Lt0/d;->zza(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    goto :goto_e

    .line 502
    :cond_1a
    move-object/from16 v5, p4

    .line 503
    .line 504
    const-string v0, "Skipping invalid timing: "

    .line 505
    .line 506
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    goto :goto_e

    .line 514
    :catch_0
    move-object/from16 v5, p4

    .line 515
    .line 516
    const-string v0, "Skipping invalid index: "

    .line 517
    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_1b
    move-object/from16 v5, p4

    .line 527
    .line 528
    :goto_e
    move-object/from16 v0, p0

    .line 529
    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :cond_1c
    return-void

    .line 533
    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_5
        -0x28ddbda8 -> :sswitch_4
        -0x28ddbd89 -> :sswitch_3
        -0x28ddbd4b -> :sswitch_2
        -0x28ddbd2c -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_b
        -0x28ddbdc7 -> :sswitch_a
        -0x28ddbda8 -> :sswitch_9
        -0x28ddbd2c -> :sswitch_8
        -0x28ddbd0d -> :sswitch_7
        -0x28ddbcee -> :sswitch_6
    .end sparse-switch

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
