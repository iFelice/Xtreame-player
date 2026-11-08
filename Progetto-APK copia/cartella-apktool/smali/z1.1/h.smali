.class public abstract Lz1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lz1/h;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "(\\S+?):(\\S+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lz1/h;->b:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xff

    .line 23
    .line 24
    const-string v2, "white"

    .line 25
    .line 26
    invoke-static {v1, v1, v1, v0, v2}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "lime"

    .line 31
    .line 32
    invoke-static {v2, v1, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "cyan"

    .line 36
    .line 37
    invoke-static {v2, v1, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "red"

    .line 41
    .line 42
    invoke-static {v1, v2, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v3, "yellow"

    .line 46
    .line 47
    invoke-static {v1, v1, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v3, "magenta"

    .line 51
    .line 52
    invoke-static {v1, v2, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "blue"

    .line 56
    .line 57
    invoke-static {v2, v2, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v3, "black"

    .line 61
    .line 62
    invoke-static {v2, v2, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lz1/h;->c:Ljava/util/Map;

    .line 70
    .line 71
    new-instance v0, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "bg_white"

    .line 77
    .line 78
    invoke-static {v1, v1, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v3, "bg_lime"

    .line 82
    .line 83
    invoke-static {v2, v1, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v3, "bg_cyan"

    .line 87
    .line 88
    invoke-static {v2, v1, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v3, "bg_red"

    .line 92
    .line 93
    invoke-static {v1, v2, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v3, "bg_yellow"

    .line 97
    .line 98
    invoke-static {v1, v1, v2, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v3, "bg_magenta"

    .line 102
    .line 103
    invoke-static {v1, v2, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v3, "bg_blue"

    .line 107
    .line 108
    invoke-static {v2, v2, v1, v0, v3}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "bg_black"

    .line 112
    .line 113
    invoke-static {v2, v2, v2, v0, v1}, Lt/a;->e(IIILjava/util/HashMap;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lz1/h;->d:Ljava/util/Map;

    .line 121
    .line 122
    return-void
.end method

.method public static a(Landroid/text/SpannableStringBuilder;Lz1/e;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v4, v1, Lz1/e;->b:I

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v6, v1, Lz1/e;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v9, 0x2

    .line 25
    const/4 v12, -0x1

    .line 26
    if-eqz v7, :cond_e

    .line 27
    .line 28
    const/16 v13, 0x69

    .line 29
    .line 30
    if-eq v7, v13, :cond_c

    .line 31
    .line 32
    const v13, 0x3291ee

    .line 33
    .line 34
    .line 35
    if-eq v7, v13, :cond_a

    .line 36
    .line 37
    const v13, 0x3595da

    .line 38
    .line 39
    .line 40
    if-eq v7, v13, :cond_8

    .line 41
    .line 42
    const/16 v13, 0x62

    .line 43
    .line 44
    if-eq v7, v13, :cond_6

    .line 45
    .line 46
    const/16 v13, 0x63

    .line 47
    .line 48
    if-eq v7, v13, :cond_4

    .line 49
    .line 50
    const/16 v13, 0x75

    .line 51
    .line 52
    if-eq v7, v13, :cond_2

    .line 53
    .line 54
    const/16 v13, 0x76

    .line 55
    .line 56
    if-eq v7, v13, :cond_0

    .line 57
    .line 58
    :goto_0
    const/4 v6, -0x1

    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_0
    const-string v7, "v"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v6, 0x5

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v7, "u"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 v6, 0x4

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const-string v7, "c"

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const/4 v6, 0x2

    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const-string v7, "b"

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_7

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    const/4 v6, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_8
    const-string v7, "ruby"

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_9

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    const/4 v6, 0x7

    .line 115
    goto :goto_1

    .line 116
    :cond_a
    const-string v7, "lang"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-nez v6, :cond_b

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_b
    const/4 v6, 0x6

    .line 126
    goto :goto_1

    .line 127
    :cond_c
    const-string v7, "i"

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-nez v6, :cond_d

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_d
    const/4 v6, 0x3

    .line 137
    goto :goto_1

    .line 138
    :cond_e
    const-string v7, ""

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_f

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_f
    const/4 v6, 0x0

    .line 148
    :goto_1
    const/16 v7, 0x21

    .line 149
    .line 150
    packed-switch v6, :pswitch_data_0

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_0
    invoke-static {v3, v2, v1}, Lz1/h;->c(Ljava/util/List;Ljava/lang/String;Lz1/e;)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    new-instance v13, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .line 166
    .line 167
    move-object/from16 v14, p3

    .line 168
    .line 169
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    .line 172
    sget-object v14, Lz1/d;->c:LK/b;

    .line 173
    .line 174
    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 175
    .line 176
    .line 177
    iget v14, v1, Lz1/e;->b:I

    .line 178
    .line 179
    const/4 v15, 0x0

    .line 180
    const/16 v16, 0x0

    .line 181
    .line 182
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-ge v15, v10, :cond_15

    .line 187
    .line 188
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Lz1/d;

    .line 193
    .line 194
    iget-object v10, v10, Lz1/d;->a:Lz1/e;

    .line 195
    .line 196
    iget-object v10, v10, Lz1/e;->a:Ljava/lang/String;

    .line 197
    .line 198
    const-string v8, "rt"

    .line 199
    .line 200
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-nez v8, :cond_10

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_10
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    check-cast v8, Lz1/d;

    .line 212
    .line 213
    iget-object v10, v8, Lz1/d;->a:Lz1/e;

    .line 214
    .line 215
    invoke-static {v3, v2, v10}, Lz1/h;->c(Ljava/util/List;Ljava/lang/String;Lz1/e;)I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-eq v10, v12, :cond_11

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_11
    if-eq v6, v12, :cond_12

    .line 223
    .line 224
    move v10, v6

    .line 225
    goto :goto_3

    .line 226
    :cond_12
    const/4 v10, 0x1

    .line 227
    :goto_3
    iget-object v12, v8, Lz1/d;->a:Lz1/e;

    .line 228
    .line 229
    iget v12, v12, Lz1/e;->b:I

    .line 230
    .line 231
    sub-int v12, v12, v16

    .line 232
    .line 233
    iget v8, v8, Lz1/d;->b:I

    .line 234
    .line 235
    sub-int v8, v8, v16

    .line 236
    .line 237
    invoke-virtual {v0, v12, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 238
    .line 239
    .line 240
    move-result-object v17

    .line 241
    invoke-virtual {v0, v12, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 242
    .line 243
    .line 244
    new-instance v8, Lo0/g;

    .line 245
    .line 246
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-direct {v8, v11, v10}, Lo0/g;-><init>(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v8, v14, v12, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    .line 255
    .line 256
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    add-int v16, v8, v16

    .line 261
    .line 262
    move v14, v12

    .line 263
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 264
    .line 265
    const/4 v12, -0x1

    .line 266
    goto :goto_2

    .line 267
    :pswitch_1
    new-instance v6, Lo0/i;

    .line 268
    .line 269
    iget-object v8, v1, Lz1/e;->c:Ljava/lang/String;

    .line 270
    .line 271
    invoke-direct {v6, v8}, Lo0/i;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :pswitch_2
    new-instance v6, Landroid/text/style/UnderlineSpan;

    .line 279
    .line 280
    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 284
    .line 285
    .line 286
    goto :goto_6

    .line 287
    :pswitch_3
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 288
    .line 289
    invoke-direct {v6, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :pswitch_4
    iget-object v6, v1, Lz1/e;->d:Ljava/util/Set;

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    :cond_13
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-eqz v8, :cond_15

    .line 307
    .line 308
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    check-cast v8, Ljava/lang/String;

    .line 313
    .line 314
    sget-object v10, Lz1/h;->c:Ljava/util/Map;

    .line 315
    .line 316
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    if-eqz v11, :cond_14

    .line 321
    .line 322
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    check-cast v8, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v8

    .line 332
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    .line 333
    .line 334
    invoke-direct {v10, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v10, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_14
    sget-object v10, Lz1/h;->d:Ljava/util/Map;

    .line 342
    .line 343
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    if-eqz v11, :cond_13

    .line 348
    .line 349
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    check-cast v8, Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    .line 360
    .line 361
    invoke-direct {v10, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v10, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :pswitch_5
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 369
    .line 370
    const/4 v8, 0x1

    .line 371
    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 375
    .line 376
    .line 377
    :cond_15
    :goto_6
    :pswitch_6
    invoke-static {v3, v2, v1}, Lz1/h;->b(Ljava/util/List;Ljava/lang/String;Lz1/e;)Ljava/util/ArrayList;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const/4 v2, 0x0

    .line 382
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-ge v2, v3, :cond_29

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Lz1/f;

    .line 393
    .line 394
    iget-object v3, v3, Lz1/f;->H:Lz1/b;

    .line 395
    .line 396
    if-nez v3, :cond_16

    .line 397
    .line 398
    const/4 v8, -0x1

    .line 399
    const/4 v10, 0x3

    .line 400
    const/4 v12, 0x1

    .line 401
    goto/16 :goto_12

    .line 402
    .line 403
    :cond_16
    iget v6, v3, Lz1/b;->l:I

    .line 404
    .line 405
    const/4 v8, -0x1

    .line 406
    if-ne v6, v8, :cond_18

    .line 407
    .line 408
    iget v10, v3, Lz1/b;->m:I

    .line 409
    .line 410
    if-ne v10, v8, :cond_18

    .line 411
    .line 412
    :cond_17
    const/4 v11, 0x1

    .line 413
    goto :goto_d

    .line 414
    :cond_18
    const/4 v8, 0x1

    .line 415
    if-ne v6, v8, :cond_19

    .line 416
    .line 417
    const/4 v6, 0x1

    .line 418
    goto :goto_8

    .line 419
    :cond_19
    const/4 v6, 0x0

    .line 420
    :goto_8
    iget v10, v3, Lz1/b;->m:I

    .line 421
    .line 422
    if-ne v10, v8, :cond_1a

    .line 423
    .line 424
    const/4 v8, 0x2

    .line 425
    goto :goto_9

    .line 426
    :cond_1a
    const/4 v8, 0x0

    .line 427
    :goto_9
    or-int/2addr v6, v8

    .line 428
    const/4 v8, -0x1

    .line 429
    if-eq v6, v8, :cond_17

    .line 430
    .line 431
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 432
    .line 433
    iget v10, v3, Lz1/b;->l:I

    .line 434
    .line 435
    if-ne v10, v8, :cond_1b

    .line 436
    .line 437
    iget v11, v3, Lz1/b;->m:I

    .line 438
    .line 439
    if-ne v11, v8, :cond_1b

    .line 440
    .line 441
    const/4 v10, -0x1

    .line 442
    const/4 v11, 0x1

    .line 443
    goto :goto_c

    .line 444
    :cond_1b
    const/4 v11, 0x1

    .line 445
    if-ne v10, v11, :cond_1c

    .line 446
    .line 447
    const/16 v18, 0x1

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_1c
    const/16 v18, 0x0

    .line 451
    .line 452
    :goto_a
    iget v10, v3, Lz1/b;->m:I

    .line 453
    .line 454
    if-ne v10, v11, :cond_1d

    .line 455
    .line 456
    const/4 v10, 0x2

    .line 457
    goto :goto_b

    .line 458
    :cond_1d
    const/4 v10, 0x0

    .line 459
    :goto_b
    or-int v10, v18, v10

    .line 460
    .line 461
    :goto_c
    invoke-direct {v6, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 462
    .line 463
    .line 464
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 465
    .line 466
    .line 467
    :goto_d
    iget v6, v3, Lz1/b;->j:I

    .line 468
    .line 469
    if-ne v6, v11, :cond_1e

    .line 470
    .line 471
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    .line 472
    .line 473
    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 477
    .line 478
    .line 479
    :cond_1e
    iget v6, v3, Lz1/b;->k:I

    .line 480
    .line 481
    if-ne v6, v11, :cond_1f

    .line 482
    .line 483
    new-instance v6, Landroid/text/style/UnderlineSpan;

    .line 484
    .line 485
    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 489
    .line 490
    .line 491
    :cond_1f
    iget-boolean v6, v3, Lz1/b;->g:Z

    .line 492
    .line 493
    if-eqz v6, :cond_21

    .line 494
    .line 495
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 496
    .line 497
    iget-boolean v10, v3, Lz1/b;->g:Z

    .line 498
    .line 499
    if-eqz v10, :cond_20

    .line 500
    .line 501
    iget v10, v3, Lz1/b;->f:I

    .line 502
    .line 503
    invoke-direct {v6, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 504
    .line 505
    .line 506
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 507
    .line 508
    .line 509
    goto :goto_e

    .line 510
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 511
    .line 512
    const-string v1, "Font color not defined"

    .line 513
    .line 514
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    throw v0

    .line 518
    :cond_21
    :goto_e
    iget-boolean v6, v3, Lz1/b;->i:Z

    .line 519
    .line 520
    if-eqz v6, :cond_23

    .line 521
    .line 522
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    .line 523
    .line 524
    iget-boolean v10, v3, Lz1/b;->i:Z

    .line 525
    .line 526
    if-eqz v10, :cond_22

    .line 527
    .line 528
    iget v10, v3, Lz1/b;->h:I

    .line 529
    .line 530
    invoke-direct {v6, v10}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 531
    .line 532
    .line 533
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 534
    .line 535
    .line 536
    goto :goto_f

    .line 537
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 538
    .line 539
    const-string v1, "Background color not defined."

    .line 540
    .line 541
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    throw v0

    .line 545
    :cond_23
    :goto_f
    iget-object v6, v3, Lz1/b;->e:Ljava/lang/String;

    .line 546
    .line 547
    if-eqz v6, :cond_24

    .line 548
    .line 549
    new-instance v6, Landroid/text/style/TypefaceSpan;

    .line 550
    .line 551
    iget-object v10, v3, Lz1/b;->e:Ljava/lang/String;

    .line 552
    .line 553
    invoke-direct {v6, v10}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 557
    .line 558
    .line 559
    :cond_24
    iget v6, v3, Lz1/b;->n:I

    .line 560
    .line 561
    const/4 v10, 0x1

    .line 562
    if-eq v6, v10, :cond_27

    .line 563
    .line 564
    if-eq v6, v9, :cond_26

    .line 565
    .line 566
    const/4 v10, 0x3

    .line 567
    if-eq v6, v10, :cond_25

    .line 568
    .line 569
    :goto_10
    const/4 v12, 0x1

    .line 570
    goto :goto_11

    .line 571
    :cond_25
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    .line 572
    .line 573
    iget v11, v3, Lz1/b;->o:F

    .line 574
    .line 575
    const/high16 v12, 0x42c80000    # 100.0f

    .line 576
    .line 577
    div-float/2addr v11, v12

    .line 578
    invoke-direct {v6, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 579
    .line 580
    .line 581
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 582
    .line 583
    .line 584
    goto :goto_10

    .line 585
    :cond_26
    const/4 v10, 0x3

    .line 586
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    .line 587
    .line 588
    iget v11, v3, Lz1/b;->o:F

    .line 589
    .line 590
    invoke-direct {v6, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 591
    .line 592
    .line 593
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 594
    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_27
    const/4 v10, 0x3

    .line 598
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    .line 599
    .line 600
    iget v11, v3, Lz1/b;->o:F

    .line 601
    .line 602
    float-to-int v11, v11

    .line 603
    const/4 v12, 0x1

    .line 604
    invoke-direct {v6, v11, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 605
    .line 606
    .line 607
    invoke-static {v0, v6, v4, v5}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 608
    .line 609
    .line 610
    :goto_11
    iget-boolean v3, v3, Lz1/b;->q:Z

    .line 611
    .line 612
    if-eqz v3, :cond_28

    .line 613
    .line 614
    new-instance v3, Lo0/e;

    .line 615
    .line 616
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 620
    .line 621
    .line 622
    :cond_28
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 623
    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :cond_29
    return-void

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/util/List;Ljava/lang/String;Lz1/e;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_4

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lz1/b;

    .line 19
    .line 20
    iget-object v4, p2, Lz1/e;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, v3, Lz1/b;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    iget-object v5, v3, Lz1/b;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-object v5, v3, Lz1/b;->c:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    iget-object v5, v3, Lz1/b;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    iget-object v5, v3, Lz1/b;->a:Ljava/lang/String;

    .line 60
    .line 61
    const/high16 v6, 0x40000000    # 2.0f

    .line 62
    .line 63
    invoke-static {v1, v6, v5, p1}, Lz1/b;->a(IILjava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-object v6, v3, Lz1/b;->b:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v7, 0x2

    .line 70
    invoke-static {v5, v7, v6, v4}, Lz1/b;->a(IILjava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v5, v3, Lz1/b;->d:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v6, p2, Lz1/e;->c:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    invoke-static {v4, v7, v5, v6}, Lz1/b;->a(IILjava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v5, -0x1

    .line 84
    if-eq v4, v5, :cond_2

    .line 85
    .line 86
    iget-object v5, v3, Lz1/b;->c:Ljava/util/Set;

    .line 87
    .line 88
    iget-object v6, p2, Lz1/e;->d:Ljava/util/Set;

    .line 89
    .line 90
    invoke-interface {v6, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget-object v5, v3, Lz1/b;->c:Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    mul-int/lit8 v5, v5, 0x4

    .line 104
    .line 105
    add-int/2addr v4, v5

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 108
    :goto_2
    if-lez v4, :cond_3

    .line 109
    .line 110
    new-instance v5, Lz1/f;

    .line 111
    .line 112
    invoke-direct {v5, v4, v3}, Lz1/f;-><init>(ILz1/b;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method

.method public static c(Ljava/util/List;Ljava/lang/String;Lz1/e;)I
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lz1/h;->b(Ljava/util/List;Ljava/lang/String;Lz1/e;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ge p1, p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lz1/f;

    .line 18
    .line 19
    iget-object p2, p2, Lz1/f;->H:Lz1/b;

    .line 20
    .line 21
    iget p2, p2, Lz1/b;->p:I

    .line 22
    .line 23
    if-eq p2, v0, :cond_0

    .line 24
    .line 25
    return p2

    .line 26
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/regex/Matcher;Lp0/E;Ljava/util/ArrayList;)Lz1/c;
    .locals 7

    .line 1
    new-instance v0, Lz1/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lz1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lz1/i;->c(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lz1/g;->a:J

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lz1/i;->c(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lz1/g;->b:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lz1/h;->e(Ljava/lang/String;Lz1/g;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-lez v2, :cond_0

    .line 67
    .line 68
    const-string v2, "\n"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-virtual {p2, v1}, Lp0/E;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1, p3}, Lz1/h;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, v0, Lz1/g;->c:Ljava/lang/CharSequence;

    .line 96
    .line 97
    new-instance p0, Lz1/c;

    .line 98
    .line 99
    invoke-virtual {v0}, Lz1/g;->a()Lo0/a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lo0/a;->a()Lo0/b;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-wide v3, v0, Lz1/g;->a:J

    .line 108
    .line 109
    iget-wide v5, v0, Lz1/g;->b:J

    .line 110
    .line 111
    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v6}, Lz1/c;-><init>(Lo0/b;JJ)V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string p2, "Skipping cue with bad header: "

    .line 119
    .line 120
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string p1, "WebvttCueParser"

    .line 135
    .line 136
    invoke-static {p1, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lz1/g;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "WebvttCueParser"

    .line 4
    .line 5
    sget-object v2, Lz1/h;->b:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_14

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-string v7, "line"

    .line 36
    .line 37
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-static {v6, v0}, Lz1/h;->g(Ljava/lang/String;Lz1/g;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v7, "align"

    .line 48
    .line 49
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const-string v8, "start"

    .line 54
    .line 55
    const-string v9, "end"

    .line 56
    .line 57
    const-string v10, "middle"

    .line 58
    .line 59
    const-string v11, "center"

    .line 60
    .line 61
    const/4 v12, 0x5

    .line 62
    const/4 v13, 0x4

    .line 63
    const/4 v14, 0x3

    .line 64
    const/4 v15, -0x1

    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v7, :cond_7

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sparse-switch v4, :sswitch_data_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v15, 0x5

    .line 84
    goto :goto_1

    .line 85
    :sswitch_1
    const-string v3, "right"

    .line 86
    .line 87
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v15, 0x4

    .line 95
    goto :goto_1

    .line 96
    :sswitch_2
    const-string v3, "left"

    .line 97
    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const/4 v15, 0x3

    .line 106
    goto :goto_1

    .line 107
    :sswitch_3
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const/4 v15, 0x2

    .line 115
    goto :goto_1

    .line 116
    :sswitch_4
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const/4 v15, 0x1

    .line 124
    goto :goto_1

    .line 125
    :sswitch_5
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_6

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const/4 v15, 0x0

    .line 133
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    :try_start_1
    const-string v3, "Invalid alignment value: "

    .line 137
    .line 138
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v1, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :pswitch_0
    const/4 v3, 0x2

    .line 146
    goto :goto_2

    .line 147
    :pswitch_1
    const/4 v3, 0x1

    .line 148
    goto :goto_2

    .line 149
    :pswitch_2
    const/4 v3, 0x5

    .line 150
    goto :goto_2

    .line 151
    :pswitch_3
    const/4 v3, 0x4

    .line 152
    goto :goto_2

    .line 153
    :pswitch_4
    const/4 v3, 0x3

    .line 154
    :goto_2
    iput v3, v0, Lz1/g;->d:I

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_7
    const-string v7, "position"

    .line 159
    .line 160
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    const/high16 v16, -0x80000000

    .line 165
    .line 166
    if-eqz v7, :cond_f

    .line 167
    .line 168
    const/16 v4, 0x2c

    .line 169
    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eq v4, v15, :cond_e

    .line 175
    .line 176
    add-int/lit8 v7, v4, 0x1

    .line 177
    .line 178
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v17

    .line 189
    sparse-switch v17, :sswitch_data_1

    .line 190
    .line 191
    .line 192
    :goto_3
    const/4 v12, -0x1

    .line 193
    goto :goto_4

    .line 194
    :sswitch_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-nez v8, :cond_d

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :sswitch_7
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-nez v8, :cond_8

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    const/4 v12, 0x4

    .line 209
    goto :goto_4

    .line 210
    :sswitch_8
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_9

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    const/4 v12, 0x3

    .line 218
    goto :goto_4

    .line 219
    :sswitch_9
    const-string v8, "line-right"

    .line 220
    .line 221
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-nez v8, :cond_a

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_a
    const/4 v12, 0x2

    .line 229
    goto :goto_4

    .line 230
    :sswitch_a
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-nez v8, :cond_b

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_b
    const/4 v12, 0x1

    .line 238
    goto :goto_4

    .line 239
    :sswitch_b
    const-string v8, "line-left"

    .line 240
    .line 241
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-nez v8, :cond_c

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_c
    const/4 v12, 0x0

    .line 249
    :cond_d
    :goto_4
    packed-switch v12, :pswitch_data_1

    .line 250
    .line 251
    .line 252
    :try_start_2
    const-string v5, "Invalid anchor value: "

    .line 253
    .line 254
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v1, v5}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const/high16 v5, -0x80000000

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :pswitch_5
    const/4 v5, 0x1

    .line 265
    goto :goto_5

    .line 266
    :pswitch_6
    const/4 v5, 0x0

    .line 267
    :goto_5
    :pswitch_7
    iput v5, v0, Lz1/g;->i:I

    .line 268
    .line 269
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    :cond_e
    invoke-static {v6}, Lz1/i;->b(Ljava/lang/String;)F

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    iput v3, v0, Lz1/g;->h:F

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_f
    const-string v3, "size"

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_10

    .line 288
    .line 289
    invoke-static {v6}, Lz1/i;->b(Ljava/lang/String;)F

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    iput v3, v0, Lz1/g;->j:F

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_10
    const-string v3, "vertical"

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_13

    .line 304
    .line 305
    const-string v3, "lr"

    .line 306
    .line 307
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_12

    .line 312
    .line 313
    const-string v3, "rl"

    .line 314
    .line 315
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_11

    .line 320
    .line 321
    const-string v3, "Invalid \'vertical\' value: "

    .line 322
    .line 323
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static {v1, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const/high16 v3, -0x80000000

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_11
    const/4 v3, 0x1

    .line 334
    goto :goto_6

    .line 335
    :cond_12
    const/4 v3, 0x2

    .line 336
    :goto_6
    iput v3, v0, Lz1/g;->k:I

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v5, "Unknown cue setting "

    .line 346
    .line 347
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v4, ":"

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-static {v1, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    const-string v4, "Skipping bad cue setting: "

    .line 373
    .line 374
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v1, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_14
    return-void

    .line 394
    nop

    .line 395
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :sswitch_data_1
    .sparse-switch
        -0x6dd215c0 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x4c1a40fd -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const-string v9, ""

    .line 28
    .line 29
    if-ge v7, v8, :cond_20

    .line 30
    .line 31
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/4 v11, -0x1

    .line 36
    const/4 v12, 0x2

    .line 37
    const/4 v13, 0x1

    .line 38
    const-string v14, " "

    .line 39
    .line 40
    const/16 v15, 0x3e

    .line 41
    .line 42
    const/16 v10, 0x3c

    .line 43
    .line 44
    const/16 v6, 0x26

    .line 45
    .line 46
    if-eq v8, v6, :cond_17

    .line 47
    .line 48
    if-eq v8, v10, :cond_0

    .line 49
    .line 50
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-lt v6, v8, :cond_1

    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    const/16 v10, 0x2f

    .line 71
    .line 72
    if-ne v8, v10, :cond_2

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v8, 0x0

    .line 77
    :goto_1
    invoke-virtual {v1, v15, v6}, Ljava/lang/String;->indexOf(II)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ne v6, v11, :cond_3

    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 89
    .line 90
    :goto_2
    add-int/lit8 v15, v6, -0x2

    .line 91
    .line 92
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-ne v11, v10, :cond_4

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    const/4 v10, 0x0

    .line 101
    :goto_3
    if-eqz v8, :cond_5

    .line 102
    .line 103
    const/4 v11, 0x2

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/4 v11, 0x1

    .line 106
    :goto_4
    add-int/2addr v7, v11

    .line 107
    if-eqz v10, :cond_6

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    add-int/lit8 v15, v6, -0x1

    .line 111
    .line 112
    :goto_5
    invoke-virtual {v1, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-eqz v11, :cond_7

    .line 125
    .line 126
    goto/16 :goto_8

    .line 127
    .line 128
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    xor-int/2addr v15, v13

    .line 137
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 138
    .line 139
    .line 140
    sget-object v15, Lp0/M;->a:Ljava/lang/String;

    .line 141
    .line 142
    const-string v15, "[ \\.]"

    .line 143
    .line 144
    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    const/4 v15, 0x0

    .line 149
    aget-object v11, v11, v15

    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    sparse-switch v15, :sswitch_data_0

    .line 159
    .line 160
    .line 161
    :goto_6
    const/4 v12, -0x1

    .line 162
    goto :goto_7

    .line 163
    :sswitch_0
    const-string v12, "ruby"

    .line 164
    .line 165
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-nez v12, :cond_8

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    const/4 v12, 0x7

    .line 173
    goto :goto_7

    .line 174
    :sswitch_1
    const-string v12, "lang"

    .line 175
    .line 176
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-nez v12, :cond_9

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_9
    const/4 v12, 0x6

    .line 184
    goto :goto_7

    .line 185
    :sswitch_2
    const-string v12, "rt"

    .line 186
    .line 187
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-nez v12, :cond_a

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_a
    const/4 v12, 0x5

    .line 195
    goto :goto_7

    .line 196
    :sswitch_3
    const-string v12, "v"

    .line 197
    .line 198
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-nez v12, :cond_b

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_b
    const/4 v12, 0x4

    .line 206
    goto :goto_7

    .line 207
    :sswitch_4
    const-string v12, "u"

    .line 208
    .line 209
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    if-nez v12, :cond_c

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_c
    const/4 v12, 0x3

    .line 217
    goto :goto_7

    .line 218
    :sswitch_5
    const-string v15, "i"

    .line 219
    .line 220
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    if-nez v15, :cond_f

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :sswitch_6
    const-string v12, "c"

    .line 228
    .line 229
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    if-nez v12, :cond_d

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_d
    const/4 v12, 0x1

    .line 237
    goto :goto_7

    .line 238
    :sswitch_7
    const-string v12, "b"

    .line 239
    .line 240
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    if-nez v12, :cond_e

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_e
    const/4 v12, 0x0

    .line 248
    :cond_f
    :goto_7
    packed-switch v12, :pswitch_data_0

    .line 249
    .line 250
    .line 251
    :cond_10
    :goto_8
    move v7, v6

    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :pswitch_0
    if-eqz v8, :cond_14

    .line 255
    .line 256
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_12

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    check-cast v7, Lz1/e;

    .line 268
    .line 269
    invoke-static {v3, v7, v0, v5, v2}, Lz1/h;->a(Landroid/text/SpannableStringBuilder;Lz1/e;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-nez v8, :cond_13

    .line 277
    .line 278
    new-instance v8, Lz1/d;

    .line 279
    .line 280
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    invoke-direct {v8, v7, v9}, Lz1/d;-><init>(Lz1/e;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    .line 293
    .line 294
    :goto_9
    iget-object v7, v7, Lz1/e;->a:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_11

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_14
    if-nez v10, :cond_10

    .line 304
    .line 305
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    xor-int/2addr v10, v13

    .line 318
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    const/4 v11, -0x1

    .line 326
    if-ne v10, v11, :cond_15

    .line 327
    .line 328
    const/4 v12, 0x0

    .line 329
    goto :goto_a

    .line 330
    :cond_15
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    const/4 v12, 0x0

    .line 339
    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    :goto_a
    const-string v10, "\\."

    .line 344
    .line 345
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    aget-object v10, v7, v12

    .line 350
    .line 351
    new-instance v11, Ljava/util/HashSet;

    .line 352
    .line 353
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 354
    .line 355
    .line 356
    :goto_b
    array-length v12, v7

    .line 357
    if-ge v13, v12, :cond_16

    .line 358
    .line 359
    aget-object v12, v7, v13

    .line 360
    .line 361
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    add-int/lit8 v13, v13, 0x1

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_16
    new-instance v7, Lz1/e;

    .line 368
    .line 369
    invoke-direct {v7, v10, v8, v9, v11}, Lz1/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 377
    .line 378
    const/16 v9, 0x3b

    .line 379
    .line 380
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    const/16 v11, 0x20

    .line 385
    .line 386
    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->indexOf(II)I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    const/4 v13, -0x1

    .line 391
    if-ne v9, v13, :cond_18

    .line 392
    .line 393
    move v9, v12

    .line 394
    goto :goto_c

    .line 395
    :cond_18
    if-ne v12, v13, :cond_19

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_19
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    :goto_c
    if-eq v9, v13, :cond_1f

    .line 403
    .line 404
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    sparse-switch v8, :sswitch_data_1

    .line 416
    .line 417
    .line 418
    goto :goto_d

    .line 419
    :sswitch_8
    const-string v8, "nbsp"

    .line 420
    .line 421
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    if-nez v8, :cond_1a

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_1a
    const/4 v13, 0x3

    .line 429
    goto :goto_d

    .line 430
    :sswitch_9
    const-string v8, "amp"

    .line 431
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-nez v8, :cond_1b

    .line 437
    .line 438
    goto :goto_d

    .line 439
    :cond_1b
    const/4 v13, 0x2

    .line 440
    goto :goto_d

    .line 441
    :sswitch_a
    const-string v8, "lt"

    .line 442
    .line 443
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-nez v8, :cond_1c

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_1c
    const/4 v13, 0x1

    .line 451
    goto :goto_d

    .line 452
    :sswitch_b
    const-string v8, "gt"

    .line 453
    .line 454
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v8

    .line 458
    if-nez v8, :cond_1d

    .line 459
    .line 460
    goto :goto_d

    .line 461
    :cond_1d
    const/4 v13, 0x0

    .line 462
    :goto_d
    packed-switch v13, :pswitch_data_1

    .line 463
    .line 464
    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    const-string v8, "ignoring unsupported entity: \'&"

    .line 468
    .line 469
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v7, ";\'"

    .line 476
    .line 477
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    const-string v7, "WebvttCueParser"

    .line 485
    .line 486
    invoke-static {v7, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto :goto_e

    .line 490
    :pswitch_1
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 491
    .line 492
    .line 493
    goto :goto_e

    .line 494
    :pswitch_2
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 495
    .line 496
    .line 497
    goto :goto_e

    .line 498
    :pswitch_3
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 499
    .line 500
    .line 501
    goto :goto_e

    .line 502
    :pswitch_4
    invoke-virtual {v3, v15}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 503
    .line 504
    .line 505
    :goto_e
    if-ne v9, v12, :cond_1e

    .line 506
    .line 507
    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 508
    .line 509
    .line 510
    :cond_1e
    add-int/lit8 v9, v9, 0x1

    .line 511
    .line 512
    move v7, v9

    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_1f
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 516
    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_20
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-nez v1, :cond_21

    .line 525
    .line 526
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    check-cast v1, Lz1/e;

    .line 531
    .line 532
    invoke-static {v3, v1, v0, v5, v2}, Lz1/h;->a(Landroid/text/SpannableStringBuilder;Lz1/e;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 533
    .line 534
    .line 535
    goto :goto_f

    .line 536
    :cond_21
    new-instance v1, Lz1/e;

    .line 537
    .line 538
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    const/4 v5, 0x0

    .line 543
    invoke-direct {v1, v9, v5, v9, v4}, Lz1/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 544
    .line 545
    .line 546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-static {v3, v1, v0, v4, v2}, Lz1/h;->a(Landroid/text/SpannableStringBuilder;Lz1/e;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    return-object v0

    .line 558
    nop

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :sswitch_data_1
    .sparse-switch
        0xced -> :sswitch_b
        0xd88 -> :sswitch_a
        0x179c4 -> :sswitch_9
        0x337f11 -> :sswitch_8
    .end sparse-switch

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;Lz1/g;)V
    .locals 7

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v0, v3, :cond_4

    .line 11
    .line 12
    add-int/lit8 v4, v0, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x2

    .line 26
    sparse-switch v5, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_0
    const-string v5, "start"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_1
    const-string v5, "end"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x2

    .line 51
    goto :goto_0

    .line 52
    :sswitch_2
    const-string v5, "middle"

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    :sswitch_3
    const-string v5, "center"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v3, 0x0

    .line 73
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    const-string v3, "Invalid anchor value: "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "WebvttCueParser"

    .line 83
    .line 84
    invoke-static {v4, v3}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/high16 v6, -0x80000000

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_0
    const/4 v6, 0x0

    .line 91
    goto :goto_1

    .line 92
    :pswitch_1
    const/4 v6, 0x1

    .line 93
    :goto_1
    :pswitch_2
    iput v6, p1, Lz1/g;->g:I

    .line 94
    .line 95
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_4
    const-string v0, "%"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    invoke-static {p0}, Lz1/i;->b(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    iput p0, p1, Lz1/g;->e:F

    .line 112
    .line 113
    iput v1, p1, Lz1/g;->f:I

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    int-to-float p0, p0

    .line 121
    iput p0, p1, Lz1/g;->e:F

    .line 122
    .line 123
    iput v2, p1, Lz1/g;->f:I

    .line 124
    .line 125
    :goto_2
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
