.class public final LF/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/j;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, LF/d;->G:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr/f;

    .line 3
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    iput v0, p0, LF/d;->H:I

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, LF/d;->H:I

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, LF/d;->H:I

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, v1, [Ljava/lang/Object;

    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    iput v0, p0, LF/d;->H:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0xa

    .line 10
    iput p2, p0, LF/d;->G:I

    .line 11
    iput p1, p0, LF/d;->H:I

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 27
    iput v0, p0, LF/d;->G:I

    .line 28
    iput-object p2, p0, LF/d;->I:Ljava/lang/Object;

    .line 29
    iput p1, p0, LF/d;->H:I

    .line 30
    new-instance p1, LW0/w;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/d;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILv4/a;LZ3/q;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 13
    iput v0, p0, LF/d;->G:I

    .line 14
    iput p1, p0, LF/d;->H:I

    iput-object p2, p0, LF/d;->I:Ljava/lang/Object;

    iput-object p3, p0, LF/d;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ3/k;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 37
    iput v0, p0, LF/d;->G:I

    .line 38
    new-instance v0, LD0/U;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, LD0/U;-><init>(Ljava/lang/Object;I)V

    .line 39
    new-instance v1, LM/d;

    const/16 v2, 0x96

    invoke-direct {v1, v2}, LM/d;-><init>(I)V

    .line 40
    sget-object v2, LQ2/d;->a:LF2/G;

    .line 41
    new-instance v3, Lm2/u;

    const/16 v4, 0x1c

    invoke-direct {v3, v1, v0, v2, v4}, Lm2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    iput-object v3, p0, LF/d;->J:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN/i;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 22
    iput v0, p0, LF/d;->G:I

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, LF/d;->J:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, LF/d;->H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    const/4 v0, 0x2

    iput v0, p0, LF/d;->G:I

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, LF/d;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x2

    .line 32
    iput p2, p0, LF/d;->G:I

    .line 33
    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, LF/d;->J:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, LF/d;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V
    .locals 1

    .line 17
    const/4 v0, 0x5

    iput v0, p0, LF/d;->G:I

    .line 18
    invoke-direct {p0, p2, p1}, LF/d;-><init>(ILandroidx/media3/extractor/FlacStreamMetadata;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, LF/d;->G:I

    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    iput-object p2, p0, LF/d;->J:Ljava/lang/Object;

    iput p3, p0, LF/d;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LF/d;->G:I

    iput-object p4, p0, LF/d;->I:Ljava/lang/Object;

    iput p2, p0, LF/d;->H:I

    iput-object p1, p0, LF/d;->J:Ljava/lang/Object;

    return-void
.end method

.method public static c(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)LF/d;
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    if-eq v4, v6, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne v4, v5, :cond_21

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v7, "gradient"

    .line 36
    .line 37
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    const-string v5, "selector"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-static {v2, v1, v3, v0}, LF/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, LF/d;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-direct {v1, v9, v0, v2, v10}, LF/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ": unsupported complex color tag "

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_20

    .line 106
    .line 107
    sget-object v4, LC/a;->d:[I

    .line 108
    .line 109
    invoke-static {v2, v0, v3, v4}, LZ3/H;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v7, "startX"

    .line 114
    .line 115
    invoke-static {v1, v7}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/4 v8, 0x0

    .line 120
    if-nez v7, :cond_3

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const/16 v7, 0x8

    .line 125
    .line 126
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    move v12, v7

    .line 131
    :goto_1
    const-string v7, "startY"

    .line 132
    .line 133
    invoke-static {v1, v7}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_4

    .line 138
    .line 139
    const/4 v13, 0x0

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const/16 v7, 0x9

    .line 142
    .line 143
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    move v13, v7

    .line 148
    :goto_2
    const-string v7, "endX"

    .line 149
    .line 150
    invoke-static {v1, v7}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_5

    .line 155
    .line 156
    const/4 v14, 0x0

    .line 157
    goto :goto_3

    .line 158
    :cond_5
    const/16 v7, 0xa

    .line 159
    .line 160
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    move v14, v7

    .line 165
    :goto_3
    const-string v7, "endY"

    .line 166
    .line 167
    invoke-static {v1, v7}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-nez v7, :cond_6

    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    goto :goto_4

    .line 175
    :cond_6
    const/16 v7, 0xb

    .line 176
    .line 177
    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    move v15, v7

    .line 182
    :goto_4
    const-string v7, "centerX"

    .line 183
    .line 184
    invoke-static {v1, v7}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    const/4 v11, 0x3

    .line 189
    if-nez v7, :cond_7

    .line 190
    .line 191
    const/4 v7, 0x0

    .line 192
    goto :goto_5

    .line 193
    :cond_7
    invoke-virtual {v4, v11, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    :goto_5
    const-string v9, "centerY"

    .line 198
    .line 199
    invoke-static {v1, v9}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-nez v9, :cond_8

    .line 204
    .line 205
    const/4 v9, 0x0

    .line 206
    goto :goto_6

    .line 207
    :cond_8
    const/4 v9, 0x4

    .line 208
    invoke-virtual {v4, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    :goto_6
    const-string v11, "type"

    .line 213
    .line 214
    invoke-static {v1, v11}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-nez v11, :cond_9

    .line 219
    .line 220
    const/4 v11, 0x0

    .line 221
    goto :goto_7

    .line 222
    :cond_9
    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    :goto_7
    const-string v5, "startColor"

    .line 227
    .line 228
    invoke-static {v1, v5}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-nez v5, :cond_a

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    goto :goto_8

    .line 236
    :cond_a
    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    :goto_8
    const-string v8, "centerColor"

    .line 241
    .line 242
    invoke-static {v1, v8}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v19

    .line 246
    invoke-static {v1, v8}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-nez v8, :cond_b

    .line 251
    .line 252
    const/4 v8, 0x0

    .line 253
    goto :goto_9

    .line 254
    :cond_b
    const/4 v8, 0x7

    .line 255
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    :goto_9
    const-string v6, "endColor"

    .line 260
    .line 261
    invoke-static {v1, v6}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-nez v6, :cond_c

    .line 266
    .line 267
    const/4 v6, 0x0

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    const/4 v6, 0x1

    .line 270
    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 271
    .line 272
    .line 273
    move-result v21

    .line 274
    move/from16 v6, v21

    .line 275
    .line 276
    :goto_a
    const-string v10, "tileMode"

    .line 277
    .line 278
    invoke-static {v1, v10}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_d

    .line 283
    .line 284
    move/from16 v21, v7

    .line 285
    .line 286
    const/4 v7, 0x0

    .line 287
    goto :goto_b

    .line 288
    :cond_d
    const/4 v10, 0x6

    .line 289
    move/from16 v21, v7

    .line 290
    .line 291
    const/4 v7, 0x0

    .line 292
    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    move v7, v10

    .line 297
    :goto_b
    const-string v10, "gradientRadius"

    .line 298
    .line 299
    invoke-static {v1, v10}, LZ3/H;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    if-nez v10, :cond_e

    .line 304
    .line 305
    move/from16 v22, v9

    .line 306
    .line 307
    const/4 v10, 0x0

    .line 308
    goto :goto_c

    .line 309
    :cond_e
    const/4 v10, 0x5

    .line 310
    move/from16 v22, v9

    .line 311
    .line 312
    const/4 v9, 0x0

    .line 313
    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    :goto_c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    const/4 v9, 0x1

    .line 325
    add-int/2addr v4, v9

    .line 326
    new-instance v9, Ljava/util/ArrayList;

    .line 327
    .line 328
    move/from16 v23, v10

    .line 329
    .line 330
    const/16 v10, 0x14

    .line 331
    .line 332
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .line 334
    .line 335
    move/from16 v24, v15

    .line 336
    .line 337
    new-instance v15, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .line 341
    .line 342
    :goto_d
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    move/from16 v25, v14

    .line 347
    .line 348
    const/4 v14, 0x1

    .line 349
    if-eq v10, v14, :cond_14

    .line 350
    .line 351
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    move/from16 v26, v13

    .line 356
    .line 357
    if-ge v14, v4, :cond_f

    .line 358
    .line 359
    const/4 v13, 0x3

    .line 360
    if-eq v10, v13, :cond_15

    .line 361
    .line 362
    :cond_f
    const/4 v13, 0x2

    .line 363
    if-eq v10, v13, :cond_11

    .line 364
    .line 365
    :cond_10
    :goto_e
    move/from16 v14, v25

    .line 366
    .line 367
    move/from16 v13, v26

    .line 368
    .line 369
    goto :goto_d

    .line 370
    :cond_11
    if-gt v14, v4, :cond_10

    .line 371
    .line 372
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    const-string v13, "item"

    .line 377
    .line 378
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-nez v10, :cond_12

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_12
    sget-object v10, LC/a;->e:[I

    .line 386
    .line 387
    invoke-static {v2, v0, v3, v10}, LZ3/H;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    const/4 v13, 0x0

    .line 392
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 393
    .line 394
    .line 395
    move-result v14

    .line 396
    const/4 v13, 0x1

    .line 397
    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 398
    .line 399
    .line 400
    move-result v20

    .line 401
    if-eqz v14, :cond_13

    .line 402
    .line 403
    if-eqz v20, :cond_13

    .line 404
    .line 405
    const/4 v14, 0x0

    .line 406
    invoke-virtual {v10, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 407
    .line 408
    .line 409
    move-result v27

    .line 410
    const/4 v14, 0x0

    .line 411
    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 412
    .line 413
    .line 414
    move-result v28

    .line 415
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    .line 417
    .line 418
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 434
    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 448
    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw v0

    .line 460
    :cond_14
    move/from16 v26, v13

    .line 461
    .line 462
    :cond_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-lez v0, :cond_16

    .line 467
    .line 468
    new-instance v0, LF/i;

    .line 469
    .line 470
    invoke-direct {v0, v15, v9}, LF/i;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 471
    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_16
    const/4 v0, 0x0

    .line 475
    :goto_f
    if-eqz v0, :cond_17

    .line 476
    .line 477
    :goto_10
    const/4 v1, 0x1

    .line 478
    goto :goto_11

    .line 479
    :cond_17
    if-eqz v19, :cond_18

    .line 480
    .line 481
    new-instance v0, LF/i;

    .line 482
    .line 483
    invoke-direct {v0, v5, v8, v6}, LF/i;-><init>(III)V

    .line 484
    .line 485
    .line 486
    goto :goto_10

    .line 487
    :cond_18
    new-instance v0, LF/i;

    .line 488
    .line 489
    invoke-direct {v0, v5, v6}, LF/i;-><init>(II)V

    .line 490
    .line 491
    .line 492
    goto :goto_10

    .line 493
    :goto_11
    if-eq v11, v1, :cond_1c

    .line 494
    .line 495
    const/4 v2, 0x2

    .line 496
    if-eq v11, v2, :cond_1b

    .line 497
    .line 498
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 499
    .line 500
    iget-object v4, v0, LF/i;->H:Ljava/lang/Object;

    .line 501
    .line 502
    move-object/from16 v16, v4

    .line 503
    .line 504
    check-cast v16, [I

    .line 505
    .line 506
    iget-object v0, v0, LF/i;->I:Ljava/lang/Object;

    .line 507
    .line 508
    move-object/from16 v17, v0

    .line 509
    .line 510
    check-cast v17, [F

    .line 511
    .line 512
    if-eq v7, v1, :cond_1a

    .line 513
    .line 514
    if-eq v7, v2, :cond_19

    .line 515
    .line 516
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 517
    .line 518
    :goto_12
    move-object/from16 v18, v0

    .line 519
    .line 520
    goto :goto_13

    .line 521
    :cond_19
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 522
    .line 523
    goto :goto_12

    .line 524
    :cond_1a
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 525
    .line 526
    goto :goto_12

    .line 527
    :goto_13
    move-object v11, v3

    .line 528
    move/from16 v13, v26

    .line 529
    .line 530
    move/from16 v14, v25

    .line 531
    .line 532
    move/from16 v15, v24

    .line 533
    .line 534
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 535
    .line 536
    .line 537
    goto :goto_16

    .line 538
    :cond_1b
    new-instance v3, Landroid/graphics/SweepGradient;

    .line 539
    .line 540
    iget-object v1, v0, LF/i;->H:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v1, [I

    .line 543
    .line 544
    iget-object v0, v0, LF/i;->I:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v0, [F

    .line 547
    .line 548
    move/from16 v8, v21

    .line 549
    .line 550
    move/from16 v9, v22

    .line 551
    .line 552
    invoke-direct {v3, v8, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 553
    .line 554
    .line 555
    goto :goto_16

    .line 556
    :cond_1c
    move/from16 v8, v21

    .line 557
    .line 558
    move/from16 v9, v22

    .line 559
    .line 560
    const/4 v1, 0x0

    .line 561
    cmpg-float v1, v23, v1

    .line 562
    .line 563
    if-lez v1, :cond_1f

    .line 564
    .line 565
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 566
    .line 567
    iget-object v1, v0, LF/i;->H:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v1, [I

    .line 570
    .line 571
    iget-object v0, v0, LF/i;->I:Ljava/lang/Object;

    .line 572
    .line 573
    move-object/from16 v21, v0

    .line 574
    .line 575
    check-cast v21, [F

    .line 576
    .line 577
    const/4 v0, 0x1

    .line 578
    if-eq v7, v0, :cond_1e

    .line 579
    .line 580
    const/4 v0, 0x2

    .line 581
    if-eq v7, v0, :cond_1d

    .line 582
    .line 583
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 584
    .line 585
    :goto_14
    move-object/from16 v22, v0

    .line 586
    .line 587
    goto :goto_15

    .line 588
    :cond_1d
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 589
    .line 590
    goto :goto_14

    .line 591
    :cond_1e
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 592
    .line 593
    goto :goto_14

    .line 594
    :goto_15
    move-object/from16 v16, v3

    .line 595
    .line 596
    move/from16 v17, v8

    .line 597
    .line 598
    move/from16 v18, v9

    .line 599
    .line 600
    move/from16 v19, v23

    .line 601
    .line 602
    move-object/from16 v20, v1

    .line 603
    .line 604
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 605
    .line 606
    .line 607
    :goto_16
    new-instance v0, LF/d;

    .line 608
    .line 609
    const/4 v1, 0x0

    .line 610
    const/4 v2, 0x0

    .line 611
    invoke-direct {v0, v3, v1, v2, v2}, LF/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 612
    .line 613
    .line 614
    return-object v0

    .line 615
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 616
    .line 617
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 618
    .line 619
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 624
    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    .line 626
    .line 627
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v1, ": invalid gradient color tag "

    .line 638
    .line 639
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    throw v0

    .line 653
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 654
    .line 655
    const-string v1, "No start tag found"

    .line 656
    .line 657
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    throw v0
.end method

.method public static i(Ljava/lang/String;)LF/d;
    .locals 8

    .line 1
    const-string v0, "HTTP/1."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lb6/k;->H:Lb6/k;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    const-string v4, "Unexpected status line: "

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v5, 0x9

    .line 21
    .line 22
    if-lt v0, v5, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v3, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x7

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, -0x30

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    sget-object v1, Lb6/k;->I:Lb6/k;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    .line 49
    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 59
    .line 60
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    const-string v0, "ICY "

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    const/4 v5, 0x4

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/lit8 v6, v5, 0x3

    .line 82
    .line 83
    if-lt v0, v6, :cond_6

    .line 84
    .line 85
    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-le v7, v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ne v6, v3, :cond_4

    .line 104
    .line 105
    add-int/2addr v5, v2

    .line 106
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 112
    .line 113
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_5
    const-string p0, ""

    .line 122
    .line 123
    :goto_1
    new-instance v2, LF/d;

    .line 124
    .line 125
    const/16 v3, 0xd

    .line 126
    .line 127
    invoke-direct {v2, p0, v0, v3, v1}, LF/d;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    .line 132
    .line 133
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 142
    .line 143
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 152
    .line 153
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method


# virtual methods
.method public final a(LW0/t;J)LW0/i;
    .locals 14

    .line 1
    invoke-interface {p1}, LW0/t;->r()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    invoke-virtual {p0, p1}, LF/d;->d(LW0/t;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-interface {p1}, LW0/t;->f()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    move-object v6, p0

    .line 14
    iget-object v7, v6, LF/d;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v7, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 17
    .line 18
    iget v7, v7, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 19
    .line 20
    const/4 v8, 0x6

    .line 21
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    move-object v8, p1

    .line 26
    invoke-interface {p1, v7}, LW0/t;->g(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, LF/d;->d(LW0/t;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v10

    .line 33
    invoke-interface {p1}, LW0/t;->f()J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    cmp-long v7, v2, p2

    .line 38
    .line 39
    if-gtz v7, :cond_0

    .line 40
    .line 41
    cmp-long v7, v10, p2

    .line 42
    .line 43
    if-lez v7, :cond_0

    .line 44
    .line 45
    invoke-static {v0, v1}, LW0/i;->a(J)LW0/i;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_0
    cmp-long v0, v10, p2

    .line 51
    .line 52
    if-gtz v0, :cond_1

    .line 53
    .line 54
    new-instance v0, LW0/i;

    .line 55
    .line 56
    const/4 v9, -0x2

    .line 57
    move-object v8, v0

    .line 58
    invoke-direct/range {v8 .. v13}, LW0/i;-><init>(IJJ)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_1
    new-instance v7, LW0/i;

    .line 63
    .line 64
    const/4 v1, -0x1

    .line 65
    move-object v0, v7

    .line 66
    invoke-direct/range {v0 .. v5}, LW0/i;-><init>(IJJ)V

    .line 67
    .line 68
    .line 69
    return-object v7
.end method

.method public final b(ILO0/Q;)V
    .locals 4

    .line 1
    iget v0, p0, LF/d;->H:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 22
    .line 23
    .line 24
    iput v2, p0, LF/d;->H:I

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v3

    .line 45
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lt p1, v0, :cond_2

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 53
    .line 54
    .line 55
    if-ne v0, p1, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, LF/d;->J:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lp0/j;

    .line 60
    .line 61
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sub-int/2addr v2, v3

    .line 70
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final d(LW0/t;)J
    .locals 14

    .line 1
    :goto_0
    invoke-interface {p1}, LW0/t;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, LW0/t;->j()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x6

    .line 10
    .line 11
    sub-long/2addr v2, v4

    .line 12
    cmp-long v6, v0, v2

    .line 13
    .line 14
    if-gez v6, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 19
    .line 20
    iget v1, p0, LF/d;->H:I

    .line 21
    .line 22
    iget-object v2, p0, LF/d;->J:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, LW0/w;

    .line 25
    .line 26
    invoke-interface {p1}, LW0/t;->f()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v8, v3, [B

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-interface {p1, v9, v8, v3}, LW0/t;->c(I[BI)V

    .line 35
    .line 36
    .line 37
    aget-byte v10, v8, v9

    .line 38
    .line 39
    and-int/lit16 v10, v10, 0xff

    .line 40
    .line 41
    shl-int/lit8 v10, v10, 0x8

    .line 42
    .line 43
    const/4 v11, 0x1

    .line 44
    aget-byte v12, v8, v11

    .line 45
    .line 46
    and-int/lit16 v12, v12, 0xff

    .line 47
    .line 48
    or-int/2addr v10, v12

    .line 49
    if-eq v10, v1, :cond_0

    .line 50
    .line 51
    invoke-interface {p1}, LW0/t;->m()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, LW0/t;->r()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    sub-long/2addr v6, v0

    .line 59
    long-to-int v0, v6

    .line 60
    invoke-interface {p1, v0}, LW0/t;->g(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_0
    new-instance v10, Lp0/E;

    .line 65
    .line 66
    const/16 v12, 0x10

    .line 67
    .line 68
    invoke-direct {v10, v12}, Lp0/E;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iget-object v12, v10, Lp0/E;->a:[B

    .line 72
    .line 73
    invoke-static {v8, v9, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    iget-object v8, v10, Lp0/E;->a:[B

    .line 77
    .line 78
    :goto_1
    const/16 v12, 0xe

    .line 79
    .line 80
    if-ge v9, v12, :cond_2

    .line 81
    .line 82
    add-int v12, v3, v9

    .line 83
    .line 84
    rsub-int/lit8 v13, v9, 0xe

    .line 85
    .line 86
    invoke-interface {p1, v12, v8, v13}, LW0/t;->h(I[BI)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, -0x1

    .line 91
    if-ne v12, v13, :cond_1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    add-int/2addr v9, v12

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    invoke-virtual {v10, v9}, Lp0/E;->K(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, LW0/t;->m()V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, LW0/t;->r()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    sub-long/2addr v6, v8

    .line 107
    long-to-int v3, v6

    .line 108
    invoke-interface {p1, v3}, LW0/t;->g(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v10, v0, v1, v2}, LQ3/b;->b(Lp0/E;Landroidx/media3/extractor/FlacStreamMetadata;ILW0/w;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    :goto_3
    invoke-interface {p1, v11}, LW0/t;->g(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-interface {p1}, LW0/t;->f()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    invoke-interface {p1}, LW0/t;->j()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    sub-long/2addr v2, v4

    .line 130
    cmp-long v4, v0, v2

    .line 131
    .line 132
    if-ltz v4, :cond_4

    .line 133
    .line 134
    invoke-interface {p1}, LW0/t;->j()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-interface {p1}, LW0/t;->f()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    sub-long/2addr v0, v2

    .line 143
    long-to-int v1, v0

    .line 144
    invoke-interface {p1, v1}, LW0/t;->g(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, LF/d;->I:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 150
    .line 151
    iget-wide v0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 152
    .line 153
    return-wide v0

    .line 154
    :cond_4
    iget-object p1, p0, LF/d;->J:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, LW0/w;

    .line 157
    .line 158
    iget-wide v0, p1, LW0/w;->a:J

    .line 159
    .line 160
    return-wide v0
.end method

.method public final synthetic e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LF/d;->H:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LF/d;->H:I

    .line 8
    .line 9
    :cond_0
    :goto_0
    iget v0, p0, LF/d;->H:I

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, LF/d;->H:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    iput v0, p0, LF/d;->H:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget v0, p0, LF/d;->H:I

    .line 31
    .line 32
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    if-ge v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    iget v1, p0, LF/d;->H:I

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lt p1, v0, :cond_2

    .line 57
    .line 58
    iget v0, p0, LF/d;->H:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p0, LF/d;->H:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, LF/d;->I:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Landroid/util/SparseArray;

    .line 68
    .line 69
    iget v0, p0, LF/d;->H:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Shader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LF/d;->J:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public final h([I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LF/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LF/d;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, LF/d;->H:I

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    iput p1, p0, LF/d;->H:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public final j(Lm0/t;)I
    .locals 5

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-static {v0}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x4

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, -0x1

    .line 28
    sparse-switch v0, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :sswitch_0
    const-string v0, "image/png"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x6

    .line 42
    goto :goto_0

    .line 43
    :sswitch_1
    const-string v0, "image/bmp"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x5

    .line 53
    goto :goto_0

    .line 54
    :sswitch_2
    const-string v0, "image/webp"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v4, 0x4

    .line 64
    goto :goto_0

    .line 65
    :sswitch_3
    const-string v0, "image/jpeg"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v4, 0x3

    .line 75
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "image/heif"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v4, 0x2

    .line 86
    goto :goto_0

    .line 87
    :sswitch_5
    const-string v0, "image/heic"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 v4, 0x1

    .line 97
    goto :goto_0

    .line 98
    :sswitch_6
    const-string v0, "image/avif"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_7

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    const/4 v4, 0x0

    .line 108
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    const/16 v0, 0x1a

    .line 115
    .line 116
    if-lt p1, v0, :cond_8

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v0, 0x22

    .line 122
    .line 123
    if-lt p1, v0, :cond_8

    .line 124
    .line 125
    :goto_1
    :pswitch_2
    invoke-static {v2, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    goto :goto_3

    .line 130
    :cond_8
    :goto_2
    invoke-static {v3, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    :goto_3
    return p1

    .line 135
    :cond_9
    :goto_4
    invoke-static {v1, v1, v1, v1}, LA0/O;->o(IIII)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    return p1

    .line 140
    nop

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, LF/d;->H:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LF/d;->m(I)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, [Ljava/lang/Object;

    .line 15
    .line 16
    iget v1, p0, LF/d;->H:I

    .line 17
    .line 18
    add-int v2, v1, v1

    .line 19
    .line 20
    aput-object p1, v0, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    aput-object p2, v0, v2

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    iput v1, p0, LF/d;->H:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p2, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "null value in entry: "

    .line 38
    .line 39
    const-string v1, "=null"

    .line 40
    .line 41
    invoke-static {v0, p1, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "null key in entry: null="

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public final l()Lcom/google/android/gms/internal/atv_ads_framework/y;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    iget-object v6, v0, LF/d;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v6, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 10
    .line 11
    if-nez v6, :cond_16

    .line 12
    .line 13
    iget v6, v0, LF/d;->H:I

    .line 14
    .line 15
    iget-object v7, v0, LF/d;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v7, [Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/google/android/gms/internal/atv_ads_framework/y;->N:Lcom/google/android/gms/internal/atv_ads_framework/y;

    .line 22
    .line 23
    goto/16 :goto_e

    .line 24
    .line 25
    :cond_0
    const/4 v8, 0x0

    .line 26
    if-ne v6, v5, :cond_1

    .line 27
    .line 28
    aget-object v1, v7, v4

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    aget-object v1, v7, v5

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/y;

    .line 39
    .line 40
    invoke-direct {v1, v8, v7, v5}, Lcom/google/android/gms/internal/atv_ads_framework/y;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_e

    .line 44
    .line 45
    :cond_1
    array-length v9, v7

    .line 46
    shr-int/2addr v9, v5

    .line 47
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/Cw;->T0(II)V

    .line 48
    .line 49
    .line 50
    invoke-static {v6}, Lcom/google/android/gms/internal/atv_ads_framework/r;->q(I)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-ne v6, v5, :cond_2

    .line 55
    .line 56
    aget-object v1, v7, v4

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    aget-object v1, v7, v5

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :goto_0
    const/4 v1, 0x2

    .line 67
    :goto_1
    const/4 v2, 0x0

    .line 68
    goto/16 :goto_d

    .line 69
    .line 70
    :cond_2
    add-int/lit8 v10, v9, -0x1

    .line 71
    .line 72
    const/16 v11, 0x80

    .line 73
    .line 74
    if-gt v9, v11, :cond_8

    .line 75
    .line 76
    new-array v9, v9, [B

    .line 77
    .line 78
    invoke-static {v9, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v11, 0x0

    .line 83
    :goto_2
    if-ge v1, v6, :cond_6

    .line 84
    .line 85
    add-int v12, v11, v11

    .line 86
    .line 87
    add-int v13, v1, v1

    .line 88
    .line 89
    aget-object v14, v7, v13

    .line 90
    .line 91
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    xor-int/2addr v13, v5

    .line 95
    aget-object v13, v7, v13

    .line 96
    .line 97
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v15

    .line 104
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/Cw;->l0(I)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    :goto_3
    and-int/2addr v15, v10

    .line 109
    aget-byte v3, v9, v15

    .line 110
    .line 111
    const/16 v4, 0xff

    .line 112
    .line 113
    and-int/2addr v3, v4

    .line 114
    if-ne v3, v4, :cond_4

    .line 115
    .line 116
    int-to-byte v3, v12

    .line 117
    aput-byte v3, v9, v15

    .line 118
    .line 119
    if-ge v11, v1, :cond_3

    .line 120
    .line 121
    aput-object v14, v7, v12

    .line 122
    .line 123
    xor-int/lit8 v3, v12, 0x1

    .line 124
    .line 125
    aput-object v13, v7, v3

    .line 126
    .line 127
    :cond_3
    add-int/2addr v11, v5

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    aget-object v4, v7, v3

    .line 130
    .line 131
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    xor-int/2addr v3, v5

    .line 138
    new-instance v4, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 139
    .line 140
    aget-object v8, v7, v3

    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-direct {v4, v14, v13, v8}, Lcom/google/android/gms/internal/atv_ads_framework/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    aput-object v13, v7, v3

    .line 149
    .line 150
    move-object v8, v4

    .line 151
    :goto_4
    add-int/2addr v1, v5

    .line 152
    const/4 v4, 0x0

    .line 153
    goto :goto_2

    .line 154
    :cond_5
    add-int/2addr v15, v5

    .line 155
    const/4 v4, 0x0

    .line 156
    goto :goto_3

    .line 157
    :cond_6
    if-ne v11, v6, :cond_7

    .line 158
    .line 159
    move-object v8, v9

    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    .line 167
    const/4 v3, 0x0

    .line 168
    aput-object v9, v2, v3

    .line 169
    .line 170
    aput-object v1, v2, v5

    .line 171
    .line 172
    const/4 v1, 0x2

    .line 173
    aput-object v8, v2, v1

    .line 174
    .line 175
    :goto_5
    move-object v8, v2

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    const v3, 0x8000

    .line 178
    .line 179
    .line 180
    if-gt v9, v3, :cond_e

    .line 181
    .line 182
    new-array v3, v9, [S

    .line 183
    .line 184
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 185
    .line 186
    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    :goto_6
    if-ge v1, v6, :cond_c

    .line 190
    .line 191
    add-int v9, v4, v4

    .line 192
    .line 193
    add-int v11, v1, v1

    .line 194
    .line 195
    aget-object v12, v7, v11

    .line 196
    .line 197
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    xor-int/2addr v11, v5

    .line 201
    aget-object v11, v7, v11

    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/Cw;->l0(I)I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    :goto_7
    and-int/2addr v13, v10

    .line 215
    aget-short v14, v3, v13

    .line 216
    .line 217
    int-to-char v14, v14

    .line 218
    const v15, 0xffff

    .line 219
    .line 220
    .line 221
    if-ne v14, v15, :cond_a

    .line 222
    .line 223
    int-to-short v14, v9

    .line 224
    aput-short v14, v3, v13

    .line 225
    .line 226
    if-ge v4, v1, :cond_9

    .line 227
    .line 228
    aput-object v12, v7, v9

    .line 229
    .line 230
    xor-int/2addr v9, v5

    .line 231
    aput-object v11, v7, v9

    .line 232
    .line 233
    :cond_9
    add-int/2addr v4, v5

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    aget-object v15, v7, v14

    .line 236
    .line 237
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-eqz v15, :cond_b

    .line 242
    .line 243
    xor-int/lit8 v8, v14, 0x1

    .line 244
    .line 245
    new-instance v9, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 246
    .line 247
    aget-object v13, v7, v8

    .line 248
    .line 249
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/atv_ads_framework/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    aput-object v11, v7, v8

    .line 256
    .line 257
    move-object v8, v9

    .line 258
    :goto_8
    add-int/2addr v1, v5

    .line 259
    goto :goto_6

    .line 260
    :cond_b
    add-int/2addr v13, v5

    .line 261
    goto :goto_7

    .line 262
    :cond_c
    if-ne v4, v6, :cond_d

    .line 263
    .line 264
    :goto_9
    move-object v8, v3

    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-array v2, v2, [Ljava/lang/Object;

    .line 272
    .line 273
    const/4 v4, 0x0

    .line 274
    aput-object v3, v2, v4

    .line 275
    .line 276
    aput-object v1, v2, v5

    .line 277
    .line 278
    const/4 v1, 0x2

    .line 279
    aput-object v8, v2, v1

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_e
    new-array v3, v9, [I

    .line 283
    .line 284
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 285
    .line 286
    .line 287
    move-object v9, v8

    .line 288
    const/4 v4, 0x0

    .line 289
    const/4 v8, 0x0

    .line 290
    :goto_a
    if-ge v4, v6, :cond_12

    .line 291
    .line 292
    add-int v11, v8, v8

    .line 293
    .line 294
    add-int v12, v4, v4

    .line 295
    .line 296
    aget-object v13, v7, v12

    .line 297
    .line 298
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    xor-int/2addr v12, v5

    .line 302
    aget-object v12, v7, v12

    .line 303
    .line 304
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/Cw;->l0(I)I

    .line 312
    .line 313
    .line 314
    move-result v14

    .line 315
    :goto_b
    and-int/2addr v14, v10

    .line 316
    aget v15, v3, v14

    .line 317
    .line 318
    if-ne v15, v1, :cond_10

    .line 319
    .line 320
    aput v11, v3, v14

    .line 321
    .line 322
    if-ge v8, v4, :cond_f

    .line 323
    .line 324
    aput-object v13, v7, v11

    .line 325
    .line 326
    xor-int/2addr v11, v5

    .line 327
    aput-object v12, v7, v11

    .line 328
    .line 329
    :cond_f
    add-int/2addr v8, v5

    .line 330
    goto :goto_c

    .line 331
    :cond_10
    aget-object v1, v7, v15

    .line 332
    .line 333
    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_11

    .line 338
    .line 339
    xor-int/lit8 v1, v15, 0x1

    .line 340
    .line 341
    new-instance v9, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 342
    .line 343
    aget-object v11, v7, v1

    .line 344
    .line 345
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-direct {v9, v13, v12, v11}, Lcom/google/android/gms/internal/atv_ads_framework/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    aput-object v12, v7, v1

    .line 352
    .line 353
    :goto_c
    add-int/2addr v4, v5

    .line 354
    const/4 v1, -0x1

    .line 355
    goto :goto_a

    .line 356
    :cond_11
    add-int/2addr v14, v5

    .line 357
    const/4 v1, -0x1

    .line 358
    goto :goto_b

    .line 359
    :cond_12
    if-ne v8, v6, :cond_13

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    new-array v8, v2, [Ljava/lang/Object;

    .line 367
    .line 368
    const/4 v2, 0x0

    .line 369
    aput-object v3, v8, v2

    .line 370
    .line 371
    aput-object v1, v8, v5

    .line 372
    .line 373
    const/4 v1, 0x2

    .line 374
    aput-object v9, v8, v1

    .line 375
    .line 376
    :goto_d
    instance-of v3, v8, [Ljava/lang/Object;

    .line 377
    .line 378
    if-eqz v3, :cond_14

    .line 379
    .line 380
    check-cast v8, [Ljava/lang/Object;

    .line 381
    .line 382
    aget-object v1, v8, v1

    .line 383
    .line 384
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 385
    .line 386
    iput-object v1, v0, LF/d;->J:Ljava/lang/Object;

    .line 387
    .line 388
    aget-object v1, v8, v2

    .line 389
    .line 390
    aget-object v2, v8, v5

    .line 391
    .line 392
    check-cast v2, Ljava/lang/Integer;

    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    add-int v2, v6, v6

    .line 399
    .line 400
    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    move-object v8, v1

    .line 405
    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/y;

    .line 406
    .line 407
    invoke-direct {v1, v8, v7, v6}, Lcom/google/android/gms/internal/atv_ads_framework/y;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 408
    .line 409
    .line 410
    :goto_e
    iget-object v2, v0, LF/d;->J:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v2, Lcom/google/android/gms/internal/atv_ads_framework/p;

    .line 413
    .line 414
    if-nez v2, :cond_15

    .line 415
    .line 416
    return-object v1

    .line 417
    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/atv_ads_framework/p;->a()Ljava/lang/IllegalArgumentException;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    throw v1

    .line 422
    :cond_16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/atv_ads_framework/p;->a()Ljava/lang/IllegalArgumentException;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    throw v1
.end method

.method public final m(I)V
    .locals 3

    .line 1
    iget-object v0, p0, LF/d;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/2addr p1, p1

    .line 7
    if-le p1, v1, :cond_2

    .line 8
    .line 9
    shr-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-ge v1, p1, :cond_0

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int v1, p1, p1

    .line 23
    .line 24
    :cond_0
    if-gez v1, :cond_1

    .line 25
    .line 26
    const v1, 0x7fffffff

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, LF/d;->I:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, LF/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "://"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, LF/d;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    const/16 v2, 0x3a

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v3, -0x1

    .line 39
    if-eq v1, v3, :cond_0

    .line 40
    .line 41
    const/16 v1, 0x5b

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, LF/d;->J:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x5d

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, LF/d;->J:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :goto_0
    iget v1, p0, LF/d;->H:I

    .line 67
    .line 68
    const/16 v4, 0x1bb

    .line 69
    .line 70
    const-string v5, "https"

    .line 71
    .line 72
    const/16 v6, 0x50

    .line 73
    .line 74
    const-string v7, "http"

    .line 75
    .line 76
    if-eq v1, v3, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_2

    .line 88
    .line 89
    const/16 v1, 0x50

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    const/16 v1, 0x1bb

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const/4 v1, -0x1

    .line 102
    :goto_1
    iget-object v8, p0, LF/d;->I:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v8, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_4

    .line 111
    .line 112
    const/16 v3, 0x50

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    const/16 v3, 0x1bb

    .line 122
    .line 123
    :cond_5
    :goto_2
    if-eq v1, v3, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, LF/d;->I:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lb6/k;

    .line 144
    .line 145
    sget-object v2, Lb6/k;->H:Lb6/k;

    .line 146
    .line 147
    if-ne v1, v2, :cond_7

    .line 148
    .line 149
    const-string v1, "HTTP/1.0"

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    const-string v1, "HTTP/1.1"

    .line 153
    .line 154
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const/16 v1, 0x20

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v2, p0, LF/d;->H:I

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, LF/d;->J:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v2, Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, LF/d;->J:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    return-object v0

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
