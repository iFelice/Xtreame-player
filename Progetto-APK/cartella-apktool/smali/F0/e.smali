.class public final LF0/e;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements LS0/o;


# static fields
.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:[I

.field public static final L:[I


# instance fields
.field public final G:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LF0/e;->H:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "CC([1-4])=.*"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LF0/e;->I:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, LF0/e;->J:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const/16 v0, 0x13

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    sput-object v0, LF0/e;->K:[I

    .line 33
    .line 34
    const/16 v0, 0x15

    .line 35
    .line 36
    new-array v0, v0, [I

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    sput-object v0, LF0/e;->L:[I

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, LF0/e;->G:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public static a(Ljava/util/ArrayList;JJIJ)J
    .locals 2

    .line 1
    if-ltz p5, :cond_0

    .line 2
    .line 3
    add-int/lit8 p5, p5, 0x1

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sub-long/2addr p6, p1

    .line 7
    sget-object p5, Lp0/M;->a:Ljava/lang/String;

    .line 8
    .line 9
    add-long/2addr p6, p3

    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    sub-long/2addr p6, v0

    .line 13
    div-long/2addr p6, p3

    .line 14
    long-to-int p5, p6

    .line 15
    :goto_0
    const/4 p6, 0x0

    .line 16
    :goto_1
    if-ge p6, p5, :cond_1

    .line 17
    .line 18
    new-instance p7, LF0/q;

    .line 19
    .line 20
    invoke-direct {p7, p1, p2, p3, p4}, LF0/q;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-long/2addr p1, p3

    .line 27
    add-int/lit8 p6, p6, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    return-wide p1
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 1
    invoke-static {p0}, LZ3/C;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, LZ3/C;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x3

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return-void
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "schemeIdUri"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v9, 0x5

    .line 25
    const/4 v10, 0x6

    .line 26
    sparse-switch v2, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 v1, -0x1

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x7

    .line 42
    goto :goto_1

    .line 43
    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x6

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x5

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v1, 0x4

    .line 75
    goto :goto_1

    .line 76
    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v1, 0x3

    .line 86
    goto :goto_1

    .line 87
    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const/4 v1, 0x2

    .line 97
    goto :goto_1

    .line 98
    :sswitch_6
    const-string v2, "tag:dolby.com,2015:dash:audio_channel_configuration:2015"

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_7

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    const/4 v1, 0x1

    .line 108
    goto :goto_1

    .line 109
    :sswitch_7
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    const/4 v1, 0x0

    .line 119
    :goto_1
    const/16 v2, 0x10

    .line 120
    .line 121
    const-string v11, "value"

    .line 122
    .line 123
    packed-switch v1, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :pswitch_0
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-nez p1, :cond_9

    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_9
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_a

    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_a
    :goto_2
    move v3, p1

    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :pswitch_1
    invoke-static {p0, v11, v3}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ltz p1, :cond_18

    .line 156
    .line 157
    sget-object v0, LF0/e;->L:[I

    .line 158
    .line 159
    array-length v1, v0

    .line 160
    if-ge p1, v1, :cond_18

    .line 161
    .line 162
    aget v3, v0, p1

    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :pswitch_2
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_b
    invoke-static {p1}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    sparse-switch v0, :sswitch_data_1

    .line 186
    .line 187
    .line 188
    :goto_3
    const/4 v4, -0x1

    .line 189
    goto :goto_4

    .line 190
    :sswitch_8
    const-string v0, "fa01"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_c

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_c
    const/4 v4, 0x4

    .line 200
    goto :goto_4

    .line 201
    :sswitch_9
    const-string v0, "f801"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_d

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_d
    const/4 v4, 0x3

    .line 211
    goto :goto_4

    .line 212
    :sswitch_a
    const-string v0, "f800"

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_e

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_e
    const/4 v4, 0x2

    .line 222
    goto :goto_4

    .line 223
    :sswitch_b
    const-string v0, "a000"

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_f

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_f
    const/4 v4, 0x1

    .line 233
    goto :goto_4

    .line 234
    :sswitch_c
    const-string v0, "4000"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-nez p1, :cond_10

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_10
    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 244
    .line 245
    .line 246
    goto/16 :goto_6

    .line 247
    .line 248
    :pswitch_3
    const/16 v3, 0x8

    .line 249
    .line 250
    goto/16 :goto_6

    .line 251
    .line 252
    :pswitch_4
    const/4 v3, 0x6

    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :pswitch_5
    const/4 v3, 0x5

    .line 256
    goto/16 :goto_6

    .line 257
    .line 258
    :pswitch_6
    const/4 v3, 0x2

    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    :pswitch_7
    const/4 v3, 0x1

    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :pswitch_8
    invoke-static {p0, v11, v3}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    goto/16 :goto_6

    .line 269
    .line 270
    :pswitch_9
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_18

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eq v1, v10, :cond_11

    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_11
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    const/high16 v1, 0x800000

    .line 289
    .line 290
    and-int/2addr v1, v0

    .line 291
    if-eqz v1, :cond_16

    .line 292
    .line 293
    invoke-static {p1}, Lp0/M;->d0(Ljava/lang/String;)[Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    array-length v0, p1

    .line 298
    if-nez v0, :cond_12

    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :cond_12
    const/16 v0, 0x2e

    .line 303
    .line 304
    invoke-static {v0}, Ly4/q;->a(C)Ly4/q;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    aget-object p1, p1, v4

    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {p1}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {v0, p1}, Ly4/q;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-ne v0, v7, :cond_18

    .line 327
    .line 328
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Ljava/lang/String;

    .line 333
    .line 334
    const-string v1, "ac-4"

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_13

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_13
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    check-cast p1, Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const-string v0, "03"

    .line 353
    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_15

    .line 359
    .line 360
    const-string v0, "04"

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_14

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_14
    const/16 v3, 0x15

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_15
    const/16 v3, 0x12

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_16
    const/4 p1, 0x0

    .line 376
    :goto_5
    sget-object v1, LF0/e;->K:[I

    .line 377
    .line 378
    array-length v2, v1

    .line 379
    if-ge v4, v2, :cond_17

    .line 380
    .line 381
    shr-int v2, v0, v4

    .line 382
    .line 383
    and-int/2addr v2, v8

    .line 384
    aget v1, v1, v4

    .line 385
    .line 386
    mul-int v2, v2, v1

    .line 387
    .line 388
    add-int/2addr p1, v2

    .line 389
    add-int/lit8 v4, v4, 0x1

    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_17
    if-nez p1, :cond_a

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :pswitch_a
    invoke-static {p0, v11, v3}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    if-lez p1, :cond_18

    .line 400
    .line 401
    const/16 v0, 0x21

    .line 402
    .line 403
    if-ge p1, v0, :cond_18

    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :cond_18
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 408
    .line 409
    .line 410
    const-string p1, "AudioChannelConfiguration"

    .line 411
    .line 412
    invoke-static {p0, p1}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_18

    .line 417
    .line 418
    return v3

    .line 419
    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_7
        -0x7ad5b1c4 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    .line 420
    .line 421
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_2
    .end packed-switch

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
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_c
        0x2cd22f -> :sswitch_b
        0x2f3612 -> :sswitch_a
        0x2f3613 -> :sswitch_9
        0x2fcffc -> :sswitch_8
    .end sparse-switch

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static d(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "availabilityTimeOffset"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-wide p1

    .line 11
    :cond_0
    const-string p1, "INF"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const-wide p0, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    return-wide p0

    .line 25
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const p1, 0x49742400    # 1000000.0f

    .line 30
    .line 31
    .line 32
    mul-float p0, p0, p1

    .line 33
    .line 34
    float-to-long p0, p0

    .line 35
    return-wide p0
.end method

.method public static e(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "dvb:priority"

    .line 4
    .line 5
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/high16 v2, -0x80000000

    .line 22
    .line 23
    :goto_0
    const-string v4, "dvb:weight"

    .line 24
    .line 25
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v4, 0x1

    .line 37
    :goto_1
    const-string v5, "serviceLocation"

    .line 38
    .line 39
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v5, ""

    .line 44
    .line 45
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v7, 0x4

    .line 53
    if-ne v6, v7, :cond_4

    .line 54
    .line 55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-static {p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    const-string v6, "BaseURL"

    .line 64
    .line 65
    invoke-static {p0, v6}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    if-eqz v5, :cond_6

    .line 72
    .line 73
    invoke-static {v5}, LQ3/b;->m(Ljava/lang/String;)[I

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    aget p0, p0, v0

    .line 78
    .line 79
    const/4 v6, -0x1

    .line 80
    if-eq p0, v6, :cond_6

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    move-object v1, v5

    .line 85
    :cond_5
    new-instance p0, LF0/b;

    .line 86
    .line 87
    invoke-direct {p0, v2, v4, v5, v1}, LF0/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-array p1, v3, [LF0/b;

    .line 91
    .line 92
    aput-object p0, p1, v0

    .line 93
    .line 94
    invoke-static {p1}, Lo3/r;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-ge v0, v6, :cond_9

    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, LF0/b;

    .line 115
    .line 116
    iget-object v7, v6, LF0/b;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v7, v5}, LQ3/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    move-object v8, v7

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    move-object v8, v1

    .line 127
    :goto_4
    if-eqz p2, :cond_8

    .line 128
    .line 129
    iget v2, v6, LF0/b;->c:I

    .line 130
    .line 131
    iget v4, v6, LF0/b;->d:I

    .line 132
    .line 133
    iget-object v8, v6, LF0/b;->b:Ljava/lang/String;

    .line 134
    .line 135
    :cond_8
    new-instance v6, LF0/b;

    .line 136
    .line 137
    invoke-direct {v6, v2, v4, v7, v8}, LF0/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    add-int/2addr v0, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_9
    return-object p0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "schemeIdUri"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/16 v2, 0x3a

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    const-string v4, "MpdParser"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v1, :cond_9

    .line 15
    .line 16
    invoke-static {v1}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sparse-switch v6, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v1, -0x1

    .line 31
    goto :goto_1

    .line 32
    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    .line 33
    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x3

    .line 42
    goto :goto_1

    .line 43
    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x2

    .line 53
    goto :goto_1

    .line 54
    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    .line 55
    .line 56
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v1, 0x1

    .line 64
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v1, 0x0

    .line 75
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :pswitch_0
    const-string v1, "value"

    .line 81
    .line 82
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/4 v7, 0x0

    .line 91
    :goto_2
    if-ge v7, v6, :cond_6

    .line 92
    .line 93
    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-ne v9, v3, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    :goto_3
    const-string v9, "default_KID"

    .line 111
    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_5

    .line 117
    .line 118
    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    move-object v6, v0

    .line 127
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_8

    .line 132
    .line 133
    const-string v7, "00000000-0000-0000-0000-000000000000"

    .line 134
    .line 135
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_8

    .line 140
    .line 141
    const-string v7, "\\s+"

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    array-length v7, v6

    .line 148
    new-array v7, v7, [Ljava/util/UUID;

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    :goto_5
    array-length v9, v6

    .line 152
    if-ge v8, v9, :cond_7

    .line 153
    .line 154
    aget-object v9, v6, v8

    .line 155
    .line 156
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    aput-object v9, v7, v8

    .line 161
    .line 162
    add-int/lit8 v8, v8, 0x1

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    sget-object v6, Lm0/g;->b:Ljava/util/UUID;

    .line 166
    .line 167
    invoke-static {v6, v7, v0}, LE3/f;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    move-object v8, v0

    .line 172
    goto :goto_a

    .line 173
    :cond_8
    const-string v6, "Ignoring <ContentProtection> with schemeIdUri=\"urn:mpeg:dash:mp4protection:2011\" (ClearKey) due to missing required default_KID attribute."

    .line 174
    .line 175
    invoke-static {v4, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v6, v0

    .line 179
    :goto_6
    move-object v7, v6

    .line 180
    :goto_7
    move-object v8, v7

    .line 181
    goto :goto_a

    .line 182
    :pswitch_1
    sget-object v6, Lm0/g;->d:Ljava/util/UUID;

    .line 183
    .line 184
    :goto_8
    move-object v1, v0

    .line 185
    move-object v7, v1

    .line 186
    goto :goto_7

    .line 187
    :pswitch_2
    sget-object v6, Lm0/g;->e:Ljava/util/UUID;

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :pswitch_3
    sget-object v6, Lm0/g;->c:Ljava/util/UUID;

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_9
    :goto_9
    move-object v1, v0

    .line 194
    move-object v6, v1

    .line 195
    goto :goto_6

    .line 196
    :cond_a
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 197
    .line 198
    .line 199
    const-string v9, "clearkey:Laurl"

    .line 200
    .line 201
    invoke-static {p0, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    const/4 v10, 0x4

    .line 206
    if-nez v9, :cond_b

    .line 207
    .line 208
    const-string v9, "dashif:Laurl"

    .line 209
    .line 210
    invoke-static {p0, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-eqz v9, :cond_c

    .line 215
    .line 216
    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-ne v9, v10, :cond_c

    .line 221
    .line 222
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    goto/16 :goto_d

    .line 227
    .line 228
    :cond_c
    const-string v9, "ms:laurl"

    .line 229
    .line 230
    invoke-static {p0, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    if-eqz v9, :cond_d

    .line 235
    .line 236
    const-string v8, "licenseUrl"

    .line 237
    .line 238
    invoke-interface {p0, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    goto/16 :goto_d

    .line 243
    .line 244
    :cond_d
    if-nez v7, :cond_11

    .line 245
    .line 246
    invoke-static {p0}, LZ3/C;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_11

    .line 251
    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-ne v11, v3, :cond_e

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 264
    .line 265
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    :goto_b
    const-string v11, "pssh"

    .line 270
    .line 271
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-eqz v9, :cond_11

    .line 276
    .line 277
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-ne v9, v10, :cond_11

    .line 282
    .line 283
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-static {v6}, LE3/f;->w([B)LB0/w0;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    if-nez v7, :cond_f

    .line 296
    .line 297
    move-object v7, v0

    .line 298
    goto :goto_c

    .line 299
    :cond_f
    iget-object v7, v7, LB0/w0;->I:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v7, Ljava/util/UUID;

    .line 302
    .line 303
    :goto_c
    if-nez v7, :cond_10

    .line 304
    .line 305
    const-string v6, "Skipping malformed cenc:pssh data"

    .line 306
    .line 307
    invoke-static {v4, v6}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    move-object v6, v7

    .line 311
    move-object v7, v0

    .line 312
    goto :goto_d

    .line 313
    :cond_10
    move-object v12, v7

    .line 314
    move-object v7, v6

    .line 315
    move-object v6, v12

    .line 316
    goto :goto_d

    .line 317
    :cond_11
    if-nez v7, :cond_12

    .line 318
    .line 319
    sget-object v9, Lm0/g;->e:Ljava/util/UUID;

    .line 320
    .line 321
    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    if-eqz v11, :cond_12

    .line 326
    .line 327
    const-string v11, "mspr:pro"

    .line 328
    .line 329
    invoke-static {p0, v11}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    if-eqz v11, :cond_12

    .line 334
    .line 335
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    if-ne v11, v10, :cond_12

    .line 340
    .line 341
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-static {v9, v0, v7}, LE3/f;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    goto :goto_d

    .line 354
    :cond_12
    invoke-static {p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 355
    .line 356
    .line 357
    :goto_d
    const-string v9, "ContentProtection"

    .line 358
    .line 359
    invoke-static {p0, v9}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v9

    .line 363
    if-eqz v9, :cond_a

    .line 364
    .line 365
    if-eqz v6, :cond_13

    .line 366
    .line 367
    new-instance v0, Lm0/m;

    .line 368
    .line 369
    const-string p0, "video/mp4"

    .line 370
    .line 371
    invoke-direct {v0, v6, v8, p0, v7}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 372
    .line 373
    .line 374
    :cond_13
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    return-object p0

    .line 379
    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

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
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "contentType"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "audio"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v0, "video"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "text"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "image"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_4

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    :cond_4
    :goto_0
    return v1
.end method

.method public static h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "schemeIdUri"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    :cond_0
    const-string v2, "value"

    .line 13
    .line 14
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    :cond_1
    const-string v3, "id"

    .line 22
    .line 23
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move-object v0, v3

    .line 31
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    new-instance p0, LF0/f;

    .line 41
    .line 42
    invoke-direct {p0, v1, v2, v0}, LF0/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public static i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-wide p2

    .line 9
    :cond_0
    sget-object p1, Lp0/M;->e:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v2, 0x40ac200000000000L    # 3600.0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_7

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    xor-int/2addr p0, p2

    .line 41
    const/4 p2, 0x3

    .line 42
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    mul-double p2, p2, v6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-wide p2, v4

    .line 63
    :goto_0
    const/4 v6, 0x5

    .line 64
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    const-wide v8, 0x4144103580000000L    # 2629739.0

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    mul-double v6, v6, v8

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-wide v6, v4

    .line 83
    :goto_1
    add-double/2addr p2, v6

    .line 84
    const/4 v6, 0x7

    .line 85
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    const-wide v8, 0x40f5180000000000L    # 86400.0

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    mul-double v6, v6, v8

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move-wide v6, v4

    .line 104
    :goto_2
    add-double/2addr p2, v6

    .line 105
    const/16 v6, 0xa

    .line 106
    .line 107
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    mul-double v6, v6, v2

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move-wide v6, v4

    .line 121
    :goto_3
    add-double/2addr p2, v6

    .line 122
    const/16 v2, 0xc

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    .line 135
    .line 136
    mul-double v2, v2, v6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move-wide v2, v4

    .line 140
    :goto_4
    add-double/2addr p2, v2

    .line 141
    const/16 v2, 0xe

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    :cond_6
    add-double/2addr p2, v4

    .line 154
    mul-double p2, p2, v0

    .line 155
    .line 156
    double-to-long p1, p2

    .line 157
    if-eqz p0, :cond_8

    .line 158
    .line 159
    neg-long p1, p1

    .line 160
    goto :goto_5

    .line 161
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 162
    .line 163
    .line 164
    move-result-wide p0

    .line 165
    mul-double p0, p0, v2

    .line 166
    .line 167
    mul-double p0, p0, v0

    .line 168
    .line 169
    double-to-long p1, p0

    .line 170
    :cond_8
    :goto_5
    return-wide p1
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "frameRate"

    .line 3
    .line 4
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    sget-object v0, LF0/e;->H:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    div-float/2addr p1, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    int-to-float p1, p1

    .line 51
    :cond_1
    :goto_0
    return p1
.end method

.method public static k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :goto_0
    return p2
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    :goto_0
    return-wide p2
.end method

.method public static m(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)LF0/c;
    .locals 168

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    const/4 v15, 0x1

    .line 4
    const/4 v12, 0x0

    .line 5
    new-array v0, v12, [Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "profiles"

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    invoke-interface {v13, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, ","

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_1
    if-ge v2, v1, :cond_2

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    const-string v4, "urn:dvb:dash:profile:dvb-dash:"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const/4 v11, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    add-int/2addr v2, v15

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v11, 0x0

    .line 42
    :goto_2
    const-string v0, "availabilityStartTime"

    .line 43
    .line 44
    invoke-interface {v13, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    move-wide/from16 v17, v8

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-static {v0}, Lp0/M;->U(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    move-wide/from16 v17, v0

    .line 63
    .line 64
    :goto_3
    const-string v0, "mediaPresentationDuration"

    .line 65
    .line 66
    invoke-static {v13, v0, v8, v9}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v19

    .line 70
    const-string v0, "minBufferTime"

    .line 71
    .line 72
    invoke-static {v13, v0, v8, v9}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v21

    .line 76
    const-string v0, "type"

    .line 77
    .line 78
    invoke-interface {v13, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "dynamic"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v23

    .line 88
    if-eqz v23, :cond_4

    .line 89
    .line 90
    const-string v0, "minimumUpdatePeriod"

    .line 91
    .line 92
    invoke-static {v13, v0, v8, v9}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    move-wide/from16 v24, v0

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    move-wide/from16 v24, v8

    .line 100
    .line 101
    :goto_4
    if-eqz v23, :cond_5

    .line 102
    .line 103
    const-string v0, "timeShiftBufferDepth"

    .line 104
    .line 105
    invoke-static {v13, v0, v8, v9}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    move-wide/from16 v26, v0

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_5
    move-wide/from16 v26, v8

    .line 113
    .line 114
    :goto_5
    if-eqz v23, :cond_6

    .line 115
    .line 116
    const-string v0, "suggestedPresentationDelay"

    .line 117
    .line 118
    invoke-static {v13, v0, v8, v9}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    move-wide/from16 v28, v0

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_6
    move-wide/from16 v28, v8

    .line 126
    .line 127
    :goto_6
    const-string v0, "publishTime"

    .line 128
    .line 129
    invoke-interface {v13, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    move-wide/from16 v30, v8

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_7
    invoke-static {v0}, Lp0/M;->U(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    move-wide/from16 v30, v0

    .line 143
    .line 144
    :goto_7
    if-eqz v23, :cond_8

    .line 145
    .line 146
    const-wide/16 v0, 0x0

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_8
    move-wide v0, v8

    .line 150
    :goto_8
    new-instance v2, LF0/b;

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    if-eqz v11, :cond_9

    .line 161
    .line 162
    const/4 v5, 0x1

    .line 163
    goto :goto_9

    .line 164
    :cond_9
    const/high16 v5, -0x80000000

    .line 165
    .line 166
    :goto_9
    invoke-direct {v2, v5, v15, v3, v4}, LF0/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-array v3, v15, [LF0/b;

    .line 170
    .line 171
    aput-object v2, v3, v12

    .line 172
    .line 173
    invoke-static {v3}, Lo3/r;->f([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    if-eqz v23, :cond_a

    .line 188
    .line 189
    move-wide/from16 v32, v8

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_a
    const-wide/16 v32, 0x0

    .line 193
    .line 194
    :goto_a
    move-object/from16 v35, v10

    .line 195
    .line 196
    move-object/from16 v36, v35

    .line 197
    .line 198
    move-object/from16 v37, v36

    .line 199
    .line 200
    move-object/from16 v38, v37

    .line 201
    .line 202
    move-wide/from16 v14, v32

    .line 203
    .line 204
    const/16 v33, 0x0

    .line 205
    .line 206
    const/16 v34, 0x0

    .line 207
    .line 208
    :goto_b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 209
    .line 210
    .line 211
    const-string v3, "BaseURL"

    .line 212
    .line 213
    invoke-static {v13, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v39

    .line 217
    if-eqz v39, :cond_c

    .line 218
    .line 219
    if-nez v33, :cond_b

    .line 220
    .line 221
    invoke-static {v13, v0, v1}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v0

    .line 225
    const/16 v33, 0x1

    .line 226
    .line 227
    :cond_b
    invoke-static {v13, v4, v11}, LF0/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    .line 233
    .line 234
    move-object/from16 v69, v2

    .line 235
    .line 236
    move-object/from16 v60, v4

    .line 237
    .line 238
    move-object v3, v5

    .line 239
    move-object v2, v10

    .line 240
    move/from16 v50, v11

    .line 241
    .line 242
    const/16 v16, -0x1

    .line 243
    .line 244
    const/16 v32, 0x1

    .line 245
    .line 246
    const/16 v48, 0x0

    .line 247
    .line 248
    const-wide/16 v63, 0x0

    .line 249
    .line 250
    move-wide/from16 v165, v14

    .line 251
    .line 252
    move-object v15, v13

    .line 253
    move-wide v13, v8

    .line 254
    move-wide/from16 v8, v165

    .line 255
    .line 256
    goto/16 :goto_76

    .line 257
    .line 258
    :cond_c
    const-string v6, "ProgramInformation"

    .line 259
    .line 260
    invoke-static {v13, v6}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    const-string v8, "lang"

    .line 265
    .line 266
    if-eqz v7, :cond_13

    .line 267
    .line 268
    const-string v3, "moreInformationURL"

    .line 269
    .line 270
    invoke-interface {v13, v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-nez v3, :cond_d

    .line 275
    .line 276
    move-object/from16 v47, v10

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_d
    move-object/from16 v47, v3

    .line 280
    .line 281
    :goto_c
    invoke-interface {v13, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    if-nez v3, :cond_e

    .line 286
    .line 287
    move-object/from16 v48, v10

    .line 288
    .line 289
    goto :goto_d

    .line 290
    :cond_e
    move-object/from16 v48, v3

    .line 291
    .line 292
    :goto_d
    move-object v3, v10

    .line 293
    move-object v7, v3

    .line 294
    move-object v8, v7

    .line 295
    :cond_f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 296
    .line 297
    .line 298
    const-string v9, "Title"

    .line 299
    .line 300
    invoke-static {v13, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-eqz v9, :cond_10

    .line 305
    .line 306
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    goto :goto_e

    .line 311
    :cond_10
    const-string v9, "Source"

    .line 312
    .line 313
    invoke-static {v13, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-eqz v9, :cond_11

    .line 318
    .line 319
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    goto :goto_e

    .line 324
    :cond_11
    const-string v9, "Copyright"

    .line 325
    .line 326
    invoke-static {v13, v9}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v9

    .line 330
    if-eqz v9, :cond_12

    .line 331
    .line 332
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    goto :goto_e

    .line 337
    :cond_12
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 338
    .line 339
    .line 340
    :goto_e
    invoke-static {v13, v6}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v9

    .line 344
    if-eqz v9, :cond_f

    .line 345
    .line 346
    new-instance v6, LF0/i;

    .line 347
    .line 348
    move-object/from16 v43, v6

    .line 349
    .line 350
    move-object/from16 v44, v3

    .line 351
    .line 352
    move-object/from16 v45, v7

    .line 353
    .line 354
    move-object/from16 v46, v8

    .line 355
    .line 356
    invoke-direct/range {v43 .. v48}, LF0/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v69, v2

    .line 360
    .line 361
    move-object/from16 v60, v4

    .line 362
    .line 363
    move-object v3, v5

    .line 364
    move-object/from16 v35, v6

    .line 365
    .line 366
    :goto_f
    move-object v2, v10

    .line 367
    move/from16 v50, v11

    .line 368
    .line 369
    move-wide v8, v14

    .line 370
    const/16 v16, -0x1

    .line 371
    .line 372
    const/16 v32, 0x1

    .line 373
    .line 374
    const/16 v48, 0x0

    .line 375
    .line 376
    const-wide/16 v63, 0x0

    .line 377
    .line 378
    :goto_10
    move-object v15, v13

    .line 379
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    goto/16 :goto_76

    .line 385
    .line 386
    :cond_13
    const-string v6, "UTCTiming"

    .line 387
    .line 388
    invoke-static {v13, v6}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    const-string v9, "value"

    .line 393
    .line 394
    const-string v7, "schemeIdUri"

    .line 395
    .line 396
    if-eqz v6, :cond_14

    .line 397
    .line 398
    invoke-interface {v13, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-interface {v13, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    new-instance v7, LF0/v;

    .line 407
    .line 408
    invoke-direct {v7, v3, v6}, LF0/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v69, v2

    .line 412
    .line 413
    move-object/from16 v60, v4

    .line 414
    .line 415
    move-object v3, v5

    .line 416
    move-object/from16 v36, v7

    .line 417
    .line 418
    goto :goto_f

    .line 419
    :cond_14
    const-string v6, "Location"

    .line 420
    .line 421
    invoke-static {v13, v6}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    if-eqz v6, :cond_15

    .line 426
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-static {v3, v6}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    move-object/from16 v69, v2

    .line 440
    .line 441
    move-object/from16 v37, v3

    .line 442
    .line 443
    move-object/from16 v60, v4

    .line 444
    .line 445
    move-object v3, v5

    .line 446
    goto :goto_f

    .line 447
    :cond_15
    const-string v6, "ServiceDescription"

    .line 448
    .line 449
    invoke-static {v13, v6}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v43

    .line 453
    if-eqz v43, :cond_1b

    .line 454
    .line 455
    const v43, -0x800001

    .line 456
    .line 457
    .line 458
    const v3, -0x800001

    .line 459
    .line 460
    .line 461
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    const v9, -0x800001

    .line 467
    .line 468
    .line 469
    const-wide v44, -0x7fffffffffffffffL    # -4.9E-324

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    const-wide v46, -0x7fffffffffffffffL    # -4.9E-324

    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :goto_11
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 480
    .line 481
    .line 482
    const-string v12, "Latency"

    .line 483
    .line 484
    invoke-static {v13, v12}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    const-string v10, "max"

    .line 489
    .line 490
    move-wide/from16 v50, v0

    .line 491
    .line 492
    const-string v0, "min"

    .line 493
    .line 494
    if-eqz v12, :cond_16

    .line 495
    .line 496
    const-string v1, "target"

    .line 497
    .line 498
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    invoke-static {v13, v1, v7, v8}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 504
    .line 505
    .line 506
    move-result-wide v44

    .line 507
    invoke-static {v13, v0, v7, v8}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 508
    .line 509
    .line 510
    move-result-wide v0

    .line 511
    invoke-static {v13, v10, v7, v8}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 512
    .line 513
    .line 514
    move-result-wide v46

    .line 515
    move-object v10, v4

    .line 516
    move-object v12, v5

    .line 517
    move-wide/from16 v7, v44

    .line 518
    .line 519
    :goto_12
    move-wide/from16 v4, v46

    .line 520
    .line 521
    goto :goto_15

    .line 522
    :cond_16
    const-string v1, "PlaybackRate"

    .line 523
    .line 524
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_19

    .line 529
    .line 530
    const/4 v1, 0x0

    .line 531
    invoke-interface {v13, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    if-nez v0, :cond_17

    .line 536
    .line 537
    const v3, -0x800001

    .line 538
    .line 539
    .line 540
    goto :goto_13

    .line 541
    :cond_17
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    move v3, v0

    .line 546
    :goto_13
    invoke-interface {v13, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-nez v0, :cond_18

    .line 551
    .line 552
    const v9, -0x800001

    .line 553
    .line 554
    .line 555
    goto :goto_14

    .line 556
    :cond_18
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    move v9, v0

    .line 561
    :cond_19
    :goto_14
    move-object v10, v4

    .line 562
    move-object v12, v5

    .line 563
    move-wide/from16 v0, v44

    .line 564
    .line 565
    goto :goto_12

    .line 566
    :goto_15
    invoke-static {v13, v6}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 567
    .line 568
    .line 569
    move-result v38

    .line 570
    if-eqz v38, :cond_1a

    .line 571
    .line 572
    new-instance v6, Lm0/C;

    .line 573
    .line 574
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 575
    .line 576
    .line 577
    iput-wide v7, v6, Lm0/C;->a:J

    .line 578
    .line 579
    iput-wide v0, v6, Lm0/C;->b:J

    .line 580
    .line 581
    iput-wide v4, v6, Lm0/C;->c:J

    .line 582
    .line 583
    iput v3, v6, Lm0/C;->d:F

    .line 584
    .line 585
    iput v9, v6, Lm0/C;->e:F

    .line 586
    .line 587
    move-object/from16 v69, v2

    .line 588
    .line 589
    move-object/from16 v38, v6

    .line 590
    .line 591
    move-object/from16 v60, v10

    .line 592
    .line 593
    move-object v3, v12

    .line 594
    move-wide v8, v14

    .line 595
    move-wide/from16 v0, v50

    .line 596
    .line 597
    const/4 v2, 0x0

    .line 598
    const/16 v16, -0x1

    .line 599
    .line 600
    const/16 v32, 0x1

    .line 601
    .line 602
    const/16 v48, 0x0

    .line 603
    .line 604
    const-wide/16 v63, 0x0

    .line 605
    .line 606
    move/from16 v50, v11

    .line 607
    .line 608
    goto/16 :goto_10

    .line 609
    .line 610
    :cond_1a
    move-wide/from16 v44, v0

    .line 611
    .line 612
    move-wide/from16 v46, v4

    .line 613
    .line 614
    move-object v4, v10

    .line 615
    move-object v5, v12

    .line 616
    move-wide/from16 v0, v50

    .line 617
    .line 618
    const/4 v10, 0x0

    .line 619
    const/4 v12, 0x0

    .line 620
    goto/16 :goto_11

    .line 621
    .line 622
    :cond_1b
    move-wide/from16 v50, v0

    .line 623
    .line 624
    move-object v10, v4

    .line 625
    move-object v12, v5

    .line 626
    const-string v6, "Period"

    .line 627
    .line 628
    invoke-static {v13, v6}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    if-eqz v0, :cond_a1

    .line 633
    .line 634
    if-nez v34, :cond_a1

    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-nez v0, :cond_1c

    .line 641
    .line 642
    move-object v4, v2

    .line 643
    goto :goto_16

    .line 644
    :cond_1c
    move-object v4, v10

    .line 645
    :goto_16
    const-string v5, "id"

    .line 646
    .line 647
    const/4 v0, 0x0

    .line 648
    invoke-interface {v13, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v53

    .line 652
    const-string v0, "start"

    .line 653
    .line 654
    invoke-static {v13, v0, v14, v15}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 655
    .line 656
    .line 657
    move-result-wide v54

    .line 658
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    cmp-long v41, v17, v0

    .line 664
    .line 665
    if-eqz v41, :cond_1d

    .line 666
    .line 667
    add-long v41, v17, v54

    .line 668
    .line 669
    :goto_17
    move-wide/from16 v43, v14

    .line 670
    .line 671
    goto :goto_18

    .line 672
    :cond_1d
    move-wide/from16 v41, v0

    .line 673
    .line 674
    goto :goto_17

    .line 675
    :goto_18
    const-string v14, "duration"

    .line 676
    .line 677
    invoke-static {v13, v14, v0, v1}, LF0/e;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 678
    .line 679
    .line 680
    move-result-wide v45

    .line 681
    new-instance v15, Ljava/util/ArrayList;

    .line 682
    .line 683
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .line 685
    .line 686
    move-object/from16 v47, v14

    .line 687
    .line 688
    new-instance v14, Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .line 692
    .line 693
    move-object/from16 v57, v14

    .line 694
    .line 695
    new-instance v14, Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .line 699
    .line 700
    move-wide/from16 v58, v0

    .line 701
    .line 702
    move-object/from16 v61, v9

    .line 703
    .line 704
    move-object/from16 v60, v10

    .line 705
    .line 706
    move-wide/from16 v9, v50

    .line 707
    .line 708
    const/16 v52, 0x0

    .line 709
    .line 710
    const/16 v56, 0x0

    .line 711
    .line 712
    :goto_19
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 713
    .line 714
    .line 715
    invoke-static {v13, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 716
    .line 717
    .line 718
    move-result v62

    .line 719
    if-eqz v62, :cond_1f

    .line 720
    .line 721
    if-nez v56, :cond_1e

    .line 722
    .line 723
    invoke-static {v13, v9, v10}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 724
    .line 725
    .line 726
    move-result-wide v9

    .line 727
    const/16 v56, 0x1

    .line 728
    .line 729
    :cond_1e
    invoke-static {v13, v4, v11}, LF0/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 734
    .line 735
    .line 736
    move-object/from16 v69, v2

    .line 737
    .line 738
    move-object/from16 v101, v3

    .line 739
    .line 740
    move-object/from16 v80, v4

    .line 741
    .line 742
    move-object/from16 v65, v5

    .line 743
    .line 744
    move-object v0, v6

    .line 745
    move-object/from16 v67, v12

    .line 746
    .line 747
    move-object/from16 v79, v14

    .line 748
    .line 749
    move-object/from16 v68, v15

    .line 750
    .line 751
    move-object/from16 v66, v47

    .line 752
    .line 753
    move-wide/from16 v134, v50

    .line 754
    .line 755
    move-object/from16 v49, v61

    .line 756
    .line 757
    const/16 v16, -0x1

    .line 758
    .line 759
    const/16 v32, 0x1

    .line 760
    .line 761
    const/16 v48, 0x0

    .line 762
    .line 763
    const-wide/16 v63, 0x0

    .line 764
    .line 765
    move-object/from16 v51, v7

    .line 766
    .line 767
    move-object/from16 v47, v8

    .line 768
    .line 769
    move/from16 v50, v11

    .line 770
    .line 771
    move-object v15, v13

    .line 772
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    goto/16 :goto_72

    .line 778
    .line 779
    :cond_1f
    const-string v1, "AdaptationSet"

    .line 780
    .line 781
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    const-string v64, ""

    .line 786
    .line 787
    move-object/from16 v65, v15

    .line 788
    .line 789
    const-string v15, "SegmentTemplate"

    .line 790
    .line 791
    move-object/from16 v67, v12

    .line 792
    .line 793
    const-string v12, "SegmentList"

    .line 794
    .line 795
    move-object/from16 v68, v15

    .line 796
    .line 797
    const-string v15, "SegmentBase"

    .line 798
    .line 799
    if-eqz v0, :cond_8e

    .line 800
    .line 801
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    move-object/from16 v70, v1

    .line 806
    .line 807
    move-object/from16 v69, v2

    .line 808
    .line 809
    if-nez v0, :cond_20

    .line 810
    .line 811
    move-object v0, v14

    .line 812
    goto :goto_1a

    .line 813
    :cond_20
    move-object v0, v4

    .line 814
    :goto_1a
    const-wide/16 v1, -0x1

    .line 815
    .line 816
    invoke-static {v13, v5, v1, v2}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 817
    .line 818
    .line 819
    move-result-wide v72

    .line 820
    invoke-static/range {p0 .. p0}, LF0/e;->g(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    const-string v2, "mimeType"

    .line 825
    .line 826
    move/from16 v71, v1

    .line 827
    .line 828
    const/4 v1, 0x0

    .line 829
    invoke-interface {v13, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v74

    .line 833
    move-object/from16 v79, v14

    .line 834
    .line 835
    const-string v14, "codecs"

    .line 836
    .line 837
    move-wide/from16 v75, v9

    .line 838
    .line 839
    invoke-interface {v13, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v10

    .line 843
    const-string v9, "scte214:supplementalCodecs"

    .line 844
    .line 845
    invoke-interface {v13, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v77

    .line 849
    move-object/from16 v78, v6

    .line 850
    .line 851
    const-string v6, "scte214:supplementalProfiles"

    .line 852
    .line 853
    invoke-interface {v13, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    const-string v1, "width"

    .line 857
    .line 858
    move-object/from16 v80, v4

    .line 859
    .line 860
    move-object/from16 v81, v7

    .line 861
    .line 862
    const/4 v4, -0x1

    .line 863
    invoke-static {v13, v1, v4}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 864
    .line 865
    .line 866
    move-result v7

    .line 867
    move-object/from16 v82, v12

    .line 868
    .line 869
    const-string v12, "height"

    .line 870
    .line 871
    move-object/from16 v83, v15

    .line 872
    .line 873
    invoke-static {v13, v12, v4}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 874
    .line 875
    .line 876
    move-result v15

    .line 877
    const/high16 v4, -0x40800000    # -1.0f

    .line 878
    .line 879
    invoke-static {v13, v4}, LF0/e;->j(Lorg/xmlpull/v1/XmlPullParser;F)F

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    move/from16 v84, v4

    .line 884
    .line 885
    const-string v4, "audioSamplingRate"

    .line 886
    .line 887
    move-object/from16 v85, v12

    .line 888
    .line 889
    move/from16 v86, v15

    .line 890
    .line 891
    const/4 v12, -0x1

    .line 892
    invoke-static {v13, v4, v12}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 893
    .line 894
    .line 895
    move-result v15

    .line 896
    const/4 v12, 0x0

    .line 897
    invoke-interface {v13, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v87

    .line 901
    move-object/from16 v88, v4

    .line 902
    .line 903
    const-string v4, "label"

    .line 904
    .line 905
    invoke-interface {v13, v12, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    new-instance v12, Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .line 913
    .line 914
    move-object/from16 v89, v12

    .line 915
    .line 916
    new-instance v12, Ljava/util/ArrayList;

    .line 917
    .line 918
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .line 920
    .line 921
    move-object/from16 v90, v4

    .line 922
    .line 923
    new-instance v4, Ljava/util/ArrayList;

    .line 924
    .line 925
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .line 927
    .line 928
    move-object/from16 v91, v4

    .line 929
    .line 930
    new-instance v4, Ljava/util/ArrayList;

    .line 931
    .line 932
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .line 934
    .line 935
    move/from16 v92, v15

    .line 936
    .line 937
    new-instance v15, Ljava/util/ArrayList;

    .line 938
    .line 939
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .line 941
    .line 942
    move-object/from16 v93, v1

    .line 943
    .line 944
    new-instance v1, Ljava/util/ArrayList;

    .line 945
    .line 946
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .line 948
    .line 949
    move/from16 v94, v7

    .line 950
    .line 951
    new-instance v7, Ljava/util/ArrayList;

    .line 952
    .line 953
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .line 955
    .line 956
    move-object/from16 v95, v6

    .line 957
    .line 958
    new-instance v6, Ljava/util/ArrayList;

    .line 959
    .line 960
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .line 962
    .line 963
    move-object/from16 v96, v6

    .line 964
    .line 965
    new-instance v6, Ljava/util/ArrayList;

    .line 966
    .line 967
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .line 969
    .line 970
    move-object/from16 v101, v1

    .line 971
    .line 972
    move-object/from16 v100, v2

    .line 973
    .line 974
    move-object/from16 v97, v9

    .line 975
    .line 976
    move-object/from16 v98, v14

    .line 977
    .line 978
    move-object/from16 v102, v52

    .line 979
    .line 980
    move-wide/from16 v103, v58

    .line 981
    .line 982
    move/from16 v9, v71

    .line 983
    .line 984
    move-wide/from16 v1, v75

    .line 985
    .line 986
    move-object/from16 v14, v87

    .line 987
    .line 988
    const/16 v71, 0x0

    .line 989
    .line 990
    const/16 v87, -0x1

    .line 991
    .line 992
    const/16 v99, 0x0

    .line 993
    .line 994
    :goto_1b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 995
    .line 996
    .line 997
    invoke-static {v13, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 998
    .line 999
    .line 1000
    move-result v105

    .line 1001
    if-eqz v105, :cond_23

    .line 1002
    .line 1003
    if-nez v99, :cond_21

    .line 1004
    .line 1005
    invoke-static {v13, v1, v2}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v1

    .line 1009
    move-wide/from16 v105, v1

    .line 1010
    .line 1011
    const/16 v99, 0x1

    .line 1012
    .line 1013
    goto :goto_1c

    .line 1014
    :cond_21
    move-wide/from16 v105, v1

    .line 1015
    .line 1016
    :goto_1c
    invoke-static {v13, v0, v11}, LF0/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1021
    .line 1022
    .line 1023
    :cond_22
    :goto_1d
    move-object/from16 v107, v0

    .line 1024
    .line 1025
    :goto_1e
    move-object/from16 v49, v4

    .line 1026
    .line 1027
    move-object/from16 v138, v5

    .line 1028
    .line 1029
    move-object/from16 v153, v12

    .line 1030
    .line 1031
    move-object/from16 v108, v14

    .line 1032
    .line 1033
    move-wide/from16 v134, v50

    .line 1034
    .line 1035
    move-object/from16 v146, v61

    .line 1036
    .line 1037
    move-object/from16 v164, v68

    .line 1038
    .line 1039
    move-object/from16 v0, v70

    .line 1040
    .line 1041
    move-wide/from16 v61, v75

    .line 1042
    .line 1043
    move-object/from16 v142, v78

    .line 1044
    .line 1045
    move-object/from16 v141, v81

    .line 1046
    .line 1047
    move-object/from16 v14, v82

    .line 1048
    .line 1049
    move-object/from16 v51, v85

    .line 1050
    .line 1051
    move-object/from16 v139, v90

    .line 1052
    .line 1053
    move-object/from16 v1, v91

    .line 1054
    .line 1055
    move/from16 v68, v92

    .line 1056
    .line 1057
    move-object/from16 v70, v93

    .line 1058
    .line 1059
    move/from16 v40, v94

    .line 1060
    .line 1061
    move-object/from16 v39, v95

    .line 1062
    .line 1063
    move-object/from16 v143, v96

    .line 1064
    .line 1065
    move-object/from16 v63, v97

    .line 1066
    .line 1067
    move-object/from16 v116, v98

    .line 1068
    .line 1069
    move-object/from16 v113, v100

    .line 1070
    .line 1071
    move-object/from16 v82, v101

    .line 1072
    .line 1073
    const/4 v12, 0x0

    .line 1074
    const/16 v48, 0x0

    .line 1075
    .line 1076
    move-object/from16 v101, v3

    .line 1077
    .line 1078
    move-object/from16 v81, v6

    .line 1079
    .line 1080
    move-object/from16 v78, v7

    .line 1081
    .line 1082
    move-object/from16 v85, v10

    .line 1083
    .line 1084
    move/from16 v50, v11

    .line 1085
    .line 1086
    move-object/from16 v75, v15

    .line 1087
    .line 1088
    move/from16 v90, v84

    .line 1089
    .line 1090
    move-object/from16 v91, v88

    .line 1091
    .line 1092
    move-object/from16 v6, v89

    .line 1093
    .line 1094
    move-object v10, v8

    .line 1095
    move-object v15, v13

    .line 1096
    move-object/from16 v13, v83

    .line 1097
    .line 1098
    goto/16 :goto_56

    .line 1099
    .line 1100
    :cond_23
    move-wide/from16 v105, v1

    .line 1101
    .line 1102
    const-string v2, "ContentProtection"

    .line 1103
    .line 1104
    invoke-static {v13, v2}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v1

    .line 1108
    if-eqz v1, :cond_25

    .line 1109
    .line 1110
    invoke-static/range {p0 .. p0}, LF0/e;->f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1115
    .line 1116
    if-eqz v2, :cond_24

    .line 1117
    .line 1118
    move-object/from16 v71, v2

    .line 1119
    .line 1120
    check-cast v71, Ljava/lang/String;

    .line 1121
    .line 1122
    :cond_24
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1123
    .line 1124
    if-eqz v1, :cond_22

    .line 1125
    .line 1126
    check-cast v1, Lm0/m;

    .line 1127
    .line 1128
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    goto :goto_1d

    .line 1132
    :cond_25
    const-string v1, "ContentComponent"

    .line 1133
    .line 1134
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v1

    .line 1138
    if-eqz v1, :cond_2b

    .line 1139
    .line 1140
    const/4 v1, 0x0

    .line 1141
    invoke-interface {v13, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v2

    .line 1145
    if-nez v14, :cond_26

    .line 1146
    .line 1147
    move-object v14, v2

    .line 1148
    goto :goto_1f

    .line 1149
    :cond_26
    if-nez v2, :cond_27

    .line 1150
    .line 1151
    goto :goto_1f

    .line 1152
    :cond_27
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v1

    .line 1156
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1157
    .line 1158
    .line 1159
    :goto_1f
    invoke-static/range {p0 .. p0}, LF0/e;->g(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    const/4 v2, -0x1

    .line 1164
    if-ne v9, v2, :cond_28

    .line 1165
    .line 1166
    move v9, v1

    .line 1167
    goto/16 :goto_1d

    .line 1168
    .line 1169
    :cond_28
    if-ne v1, v2, :cond_29

    .line 1170
    .line 1171
    goto/16 :goto_1d

    .line 1172
    .line 1173
    :cond_29
    if-ne v9, v1, :cond_2a

    .line 1174
    .line 1175
    const/4 v1, 0x1

    .line 1176
    goto :goto_20

    .line 1177
    :cond_2a
    const/4 v1, 0x0

    .line 1178
    :goto_20
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1179
    .line 1180
    .line 1181
    goto/16 :goto_1d

    .line 1182
    .line 1183
    :cond_2b
    const-string v1, "Role"

    .line 1184
    .line 1185
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v107

    .line 1189
    if-eqz v107, :cond_2c

    .line 1190
    .line 1191
    invoke-static {v13, v1}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-object/from16 v107, v0

    .line 1199
    .line 1200
    :goto_21
    move-object/from16 v49, v4

    .line 1201
    .line 1202
    move-object/from16 v138, v5

    .line 1203
    .line 1204
    move-object/from16 v153, v12

    .line 1205
    .line 1206
    move-object/from16 v108, v14

    .line 1207
    .line 1208
    move-wide/from16 v134, v50

    .line 1209
    .line 1210
    move-object/from16 v146, v61

    .line 1211
    .line 1212
    move-object/from16 v164, v68

    .line 1213
    .line 1214
    move-object/from16 v136, v70

    .line 1215
    .line 1216
    move-wide/from16 v61, v75

    .line 1217
    .line 1218
    move-object/from16 v142, v78

    .line 1219
    .line 1220
    move-object/from16 v141, v81

    .line 1221
    .line 1222
    move-object/from16 v14, v82

    .line 1223
    .line 1224
    move-object/from16 v51, v85

    .line 1225
    .line 1226
    move-object/from16 v139, v90

    .line 1227
    .line 1228
    move-object/from16 v1, v91

    .line 1229
    .line 1230
    move/from16 v68, v92

    .line 1231
    .line 1232
    move-object/from16 v70, v93

    .line 1233
    .line 1234
    move/from16 v40, v94

    .line 1235
    .line 1236
    move-object/from16 v39, v95

    .line 1237
    .line 1238
    move-object/from16 v143, v96

    .line 1239
    .line 1240
    move-object/from16 v63, v97

    .line 1241
    .line 1242
    move-object/from16 v116, v98

    .line 1243
    .line 1244
    move-object/from16 v113, v100

    .line 1245
    .line 1246
    move-object/from16 v82, v101

    .line 1247
    .line 1248
    const/4 v12, 0x0

    .line 1249
    const/16 v48, 0x0

    .line 1250
    .line 1251
    move-object/from16 v101, v3

    .line 1252
    .line 1253
    move-object/from16 v81, v6

    .line 1254
    .line 1255
    move-object/from16 v78, v7

    .line 1256
    .line 1257
    move-object/from16 v85, v10

    .line 1258
    .line 1259
    move/from16 v50, v11

    .line 1260
    .line 1261
    move-object/from16 v75, v15

    .line 1262
    .line 1263
    move/from16 v90, v84

    .line 1264
    .line 1265
    move-object/from16 v91, v88

    .line 1266
    .line 1267
    move-object/from16 v6, v89

    .line 1268
    .line 1269
    move-wide/from16 v3, v103

    .line 1270
    .line 1271
    :goto_22
    move-object v10, v8

    .line 1272
    move/from16 v84, v9

    .line 1273
    .line 1274
    move-object v15, v13

    .line 1275
    move-object/from16 v13, v83

    .line 1276
    .line 1277
    goto/16 :goto_55

    .line 1278
    .line 1279
    :cond_2c
    const-string v1, "AudioChannelConfiguration"

    .line 1280
    .line 1281
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v107

    .line 1285
    if-eqz v107, :cond_2d

    .line 1286
    .line 1287
    invoke-static {v13, v10}, LF0/e;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 1288
    .line 1289
    .line 1290
    move-result v1

    .line 1291
    move-object/from16 v107, v0

    .line 1292
    .line 1293
    move/from16 v87, v1

    .line 1294
    .line 1295
    goto/16 :goto_1e

    .line 1296
    .line 1297
    :cond_2d
    move-object/from16 v107, v0

    .line 1298
    .line 1299
    const-string v0, "Accessibility"

    .line 1300
    .line 1301
    invoke-static {v13, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v108

    .line 1305
    if-eqz v108, :cond_2e

    .line 1306
    .line 1307
    invoke-static {v13, v0}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    .line 1313
    .line 1314
    goto :goto_21

    .line 1315
    :cond_2e
    const-string v0, "EssentialProperty"

    .line 1316
    .line 1317
    invoke-static {v13, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v108

    .line 1321
    if-eqz v108, :cond_2f

    .line 1322
    .line 1323
    invoke-static {v13, v0}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v0

    .line 1327
    move-object/from16 v1, v101

    .line 1328
    .line 1329
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-object/from16 v101, v3

    .line 1333
    .line 1334
    move-object/from16 v49, v4

    .line 1335
    .line 1336
    move-object/from16 v138, v5

    .line 1337
    .line 1338
    move-object/from16 v153, v12

    .line 1339
    .line 1340
    move-object/from16 v108, v14

    .line 1341
    .line 1342
    move-wide/from16 v134, v50

    .line 1343
    .line 1344
    move-object/from16 v146, v61

    .line 1345
    .line 1346
    move-object/from16 v164, v68

    .line 1347
    .line 1348
    move-object/from16 v136, v70

    .line 1349
    .line 1350
    move-wide/from16 v61, v75

    .line 1351
    .line 1352
    move-object/from16 v142, v78

    .line 1353
    .line 1354
    move-object/from16 v141, v81

    .line 1355
    .line 1356
    move-object/from16 v14, v82

    .line 1357
    .line 1358
    move-object/from16 v51, v85

    .line 1359
    .line 1360
    move-object/from16 v139, v90

    .line 1361
    .line 1362
    move/from16 v68, v92

    .line 1363
    .line 1364
    move-object/from16 v70, v93

    .line 1365
    .line 1366
    move/from16 v40, v94

    .line 1367
    .line 1368
    move-object/from16 v39, v95

    .line 1369
    .line 1370
    move-object/from16 v143, v96

    .line 1371
    .line 1372
    move-object/from16 v63, v97

    .line 1373
    .line 1374
    move-object/from16 v116, v98

    .line 1375
    .line 1376
    move-object/from16 v113, v100

    .line 1377
    .line 1378
    move-wide/from16 v3, v103

    .line 1379
    .line 1380
    const/4 v12, 0x0

    .line 1381
    const/16 v48, 0x0

    .line 1382
    .line 1383
    move-object/from16 v82, v1

    .line 1384
    .line 1385
    move-object/from16 v81, v6

    .line 1386
    .line 1387
    move-object/from16 v78, v7

    .line 1388
    .line 1389
    move-object/from16 v85, v10

    .line 1390
    .line 1391
    move/from16 v50, v11

    .line 1392
    .line 1393
    move-object/from16 v75, v15

    .line 1394
    .line 1395
    move/from16 v90, v84

    .line 1396
    .line 1397
    move-object/from16 v6, v89

    .line 1398
    .line 1399
    move-object/from16 v1, v91

    .line 1400
    .line 1401
    move-object v10, v8

    .line 1402
    move/from16 v84, v9

    .line 1403
    .line 1404
    move-object v15, v13

    .line 1405
    move-object/from16 v13, v83

    .line 1406
    .line 1407
    move-object/from16 v91, v88

    .line 1408
    .line 1409
    goto/16 :goto_55

    .line 1410
    .line 1411
    :cond_2f
    move-object/from16 v108, v14

    .line 1412
    .line 1413
    move-object/from16 v165, v101

    .line 1414
    .line 1415
    move-object/from16 v101, v2

    .line 1416
    .line 1417
    move-object/from16 v2, v165

    .line 1418
    .line 1419
    const-string v14, "SupplementalProperty"

    .line 1420
    .line 1421
    invoke-static {v13, v14}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result v109

    .line 1425
    if-eqz v109, :cond_30

    .line 1426
    .line 1427
    invoke-static {v13, v14}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-object/from16 v101, v3

    .line 1435
    .line 1436
    move-object/from16 v49, v4

    .line 1437
    .line 1438
    move-object/from16 v138, v5

    .line 1439
    .line 1440
    move-object/from16 v153, v12

    .line 1441
    .line 1442
    move-wide/from16 v134, v50

    .line 1443
    .line 1444
    move-object/from16 v146, v61

    .line 1445
    .line 1446
    move-object/from16 v164, v68

    .line 1447
    .line 1448
    move-object/from16 v136, v70

    .line 1449
    .line 1450
    move-wide/from16 v61, v75

    .line 1451
    .line 1452
    move-object/from16 v142, v78

    .line 1453
    .line 1454
    move-object/from16 v141, v81

    .line 1455
    .line 1456
    move-object/from16 v14, v82

    .line 1457
    .line 1458
    move-object/from16 v51, v85

    .line 1459
    .line 1460
    move-object/from16 v139, v90

    .line 1461
    .line 1462
    move-object/from16 v1, v91

    .line 1463
    .line 1464
    move/from16 v68, v92

    .line 1465
    .line 1466
    move-object/from16 v70, v93

    .line 1467
    .line 1468
    move/from16 v40, v94

    .line 1469
    .line 1470
    move-object/from16 v39, v95

    .line 1471
    .line 1472
    move-object/from16 v143, v96

    .line 1473
    .line 1474
    move-object/from16 v63, v97

    .line 1475
    .line 1476
    move-object/from16 v116, v98

    .line 1477
    .line 1478
    move-object/from16 v113, v100

    .line 1479
    .line 1480
    move-wide/from16 v3, v103

    .line 1481
    .line 1482
    const/4 v12, 0x0

    .line 1483
    const/16 v48, 0x0

    .line 1484
    .line 1485
    move-object/from16 v82, v2

    .line 1486
    .line 1487
    move-object/from16 v81, v6

    .line 1488
    .line 1489
    move-object/from16 v78, v7

    .line 1490
    .line 1491
    move-object/from16 v85, v10

    .line 1492
    .line 1493
    move/from16 v50, v11

    .line 1494
    .line 1495
    move-object/from16 v75, v15

    .line 1496
    .line 1497
    move/from16 v90, v84

    .line 1498
    .line 1499
    move-object/from16 v91, v88

    .line 1500
    .line 1501
    move-object/from16 v6, v89

    .line 1502
    .line 1503
    goto/16 :goto_22

    .line 1504
    .line 1505
    :cond_30
    move-object/from16 v109, v15

    .line 1506
    .line 1507
    const-string v15, "Representation"

    .line 1508
    .line 1509
    invoke-static {v13, v15}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v110

    .line 1513
    move-object/from16 v111, v15

    .line 1514
    .line 1515
    const-string v15, "InbandEventStream"

    .line 1516
    .line 1517
    if-eqz v110, :cond_74

    .line 1518
    .line 1519
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1520
    .line 1521
    .line 1522
    move-result v110

    .line 1523
    if-nez v110, :cond_31

    .line 1524
    .line 1525
    move-object/from16 v110, v10

    .line 1526
    .line 1527
    move-object/from16 v49, v14

    .line 1528
    .line 1529
    move-object/from16 v112, v15

    .line 1530
    .line 1531
    const/4 v10, 0x0

    .line 1532
    move-object v14, v6

    .line 1533
    goto :goto_23

    .line 1534
    :cond_31
    move-object/from16 v110, v10

    .line 1535
    .line 1536
    move-object/from16 v49, v14

    .line 1537
    .line 1538
    move-object/from16 v112, v15

    .line 1539
    .line 1540
    move-object/from16 v14, v107

    .line 1541
    .line 1542
    const/4 v10, 0x0

    .line 1543
    :goto_23
    invoke-interface {v13, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v15

    .line 1547
    const-string v10, "bandwidth"

    .line 1548
    .line 1549
    move-object/from16 v114, v0

    .line 1550
    .line 1551
    const/4 v0, -0x1

    .line 1552
    invoke-static {v13, v10, v0}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 1553
    .line 1554
    .line 1555
    move-result v10

    .line 1556
    const/4 v0, 0x0

    .line 1557
    move-object/from16 v165, v100

    .line 1558
    .line 1559
    move-object/from16 v100, v4

    .line 1560
    .line 1561
    move-object/from16 v4, v165

    .line 1562
    .line 1563
    invoke-interface {v13, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v113

    .line 1567
    if-nez v113, :cond_32

    .line 1568
    .line 1569
    move-object/from16 v115, v74

    .line 1570
    .line 1571
    :goto_24
    move-object/from16 v165, v98

    .line 1572
    .line 1573
    move-object/from16 v98, v15

    .line 1574
    .line 1575
    move-object/from16 v15, v165

    .line 1576
    .line 1577
    goto :goto_25

    .line 1578
    :cond_32
    move-object/from16 v115, v113

    .line 1579
    .line 1580
    goto :goto_24

    .line 1581
    :goto_25
    invoke-interface {v13, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v113

    .line 1585
    move-object/from16 v116, v15

    .line 1586
    .line 1587
    if-nez v113, :cond_33

    .line 1588
    .line 1589
    move-object/from16 v15, v110

    .line 1590
    .line 1591
    :goto_26
    move-object/from16 v165, v97

    .line 1592
    .line 1593
    move-object/from16 v97, v8

    .line 1594
    .line 1595
    move-object/from16 v8, v165

    .line 1596
    .line 1597
    goto :goto_27

    .line 1598
    :cond_33
    move-object/from16 v15, v113

    .line 1599
    .line 1600
    goto :goto_26

    .line 1601
    :goto_27
    invoke-interface {v13, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v113

    .line 1605
    if-nez v113, :cond_34

    .line 1606
    .line 1607
    move-object/from16 v117, v77

    .line 1608
    .line 1609
    :goto_28
    move-object/from16 v165, v95

    .line 1610
    .line 1611
    move-object/from16 v95, v6

    .line 1612
    .line 1613
    move-object/from16 v6, v165

    .line 1614
    .line 1615
    goto :goto_29

    .line 1616
    :cond_34
    move-object/from16 v117, v113

    .line 1617
    .line 1618
    goto :goto_28

    .line 1619
    :goto_29
    invoke-interface {v13, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1620
    .line 1621
    .line 1622
    move-object/from16 v113, v4

    .line 1623
    .line 1624
    move-object/from16 v4, v93

    .line 1625
    .line 1626
    move-object/from16 v93, v6

    .line 1627
    .line 1628
    move/from16 v6, v94

    .line 1629
    .line 1630
    move-object/from16 v94, v12

    .line 1631
    .line 1632
    invoke-static {v13, v4, v6}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 1633
    .line 1634
    .line 1635
    move-result v12

    .line 1636
    move/from16 v118, v12

    .line 1637
    .line 1638
    move-object/from16 v12, v85

    .line 1639
    .line 1640
    move/from16 v85, v10

    .line 1641
    .line 1642
    move/from16 v10, v86

    .line 1643
    .line 1644
    move-object/from16 v86, v8

    .line 1645
    .line 1646
    invoke-static {v13, v12, v10}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 1647
    .line 1648
    .line 1649
    move-result v8

    .line 1650
    move-object/from16 v119, v4

    .line 1651
    .line 1652
    move/from16 v4, v84

    .line 1653
    .line 1654
    move-object/from16 v84, v12

    .line 1655
    .line 1656
    invoke-static {v13, v4}, LF0/e;->j(Lorg/xmlpull/v1/XmlPullParser;F)F

    .line 1657
    .line 1658
    .line 1659
    move-result v12

    .line 1660
    move/from16 v120, v4

    .line 1661
    .line 1662
    move-object/from16 v4, v88

    .line 1663
    .line 1664
    move/from16 v88, v12

    .line 1665
    .line 1666
    move/from16 v12, v92

    .line 1667
    .line 1668
    move/from16 v92, v10

    .line 1669
    .line 1670
    invoke-static {v13, v4, v12}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 1671
    .line 1672
    .line 1673
    move-result v10

    .line 1674
    move/from16 v121, v12

    .line 1675
    .line 1676
    new-instance v12, Ljava/util/ArrayList;

    .line 1677
    .line 1678
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .line 1680
    .line 1681
    move-object/from16 v122, v12

    .line 1682
    .line 1683
    new-instance v12, Ljava/util/ArrayList;

    .line 1684
    .line 1685
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    .line 1687
    .line 1688
    move-object/from16 v123, v12

    .line 1689
    .line 1690
    new-instance v12, Ljava/util/ArrayList;

    .line 1691
    .line 1692
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1693
    .line 1694
    .line 1695
    move-object/from16 v124, v12

    .line 1696
    .line 1697
    new-instance v12, Ljava/util/ArrayList;

    .line 1698
    .line 1699
    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1700
    .line 1701
    .line 1702
    move-object/from16 v125, v12

    .line 1703
    .line 1704
    new-instance v12, Ljava/util/ArrayList;

    .line 1705
    .line 1706
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .line 1708
    .line 1709
    move-object/from16 v126, v0

    .line 1710
    .line 1711
    move/from16 v129, v8

    .line 1712
    .line 1713
    move/from16 v128, v9

    .line 1714
    .line 1715
    move/from16 v133, v87

    .line 1716
    .line 1717
    move-object/from16 v130, v102

    .line 1718
    .line 1719
    move-wide/from16 v131, v103

    .line 1720
    .line 1721
    move-wide/from16 v8, v105

    .line 1722
    .line 1723
    const/16 v127, 0x0

    .line 1724
    .line 1725
    :goto_2a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1726
    .line 1727
    .line 1728
    invoke-static {v13, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1729
    .line 1730
    .line 1731
    move-result v134

    .line 1732
    if-eqz v134, :cond_36

    .line 1733
    .line 1734
    if-nez v127, :cond_35

    .line 1735
    .line 1736
    invoke-static {v13, v8, v9}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 1737
    .line 1738
    .line 1739
    move-result-wide v8

    .line 1740
    const/16 v127, 0x1

    .line 1741
    .line 1742
    :cond_35
    invoke-static {v13, v14, v11}, LF0/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v0

    .line 1746
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1747
    .line 1748
    .line 1749
    :goto_2b
    move-object/from16 v138, v5

    .line 1750
    .line 1751
    move/from16 v40, v6

    .line 1752
    .line 1753
    move/from16 v149, v10

    .line 1754
    .line 1755
    move-object/from16 v137, v15

    .line 1756
    .line 1757
    move-object/from16 v5, v49

    .line 1758
    .line 1759
    move-wide/from16 v134, v50

    .line 1760
    .line 1761
    move-object/from16 v146, v61

    .line 1762
    .line 1763
    move-object/from16 v150, v68

    .line 1764
    .line 1765
    move-object/from16 v136, v70

    .line 1766
    .line 1767
    move-wide/from16 v61, v75

    .line 1768
    .line 1769
    move-object/from16 v142, v78

    .line 1770
    .line 1771
    move-object/from16 v141, v81

    .line 1772
    .line 1773
    move-object/from16 v151, v82

    .line 1774
    .line 1775
    move-object/from16 v51, v84

    .line 1776
    .line 1777
    move/from16 v148, v85

    .line 1778
    .line 1779
    move-object/from16 v63, v86

    .line 1780
    .line 1781
    move/from16 v155, v88

    .line 1782
    .line 1783
    move-object/from16 v152, v89

    .line 1784
    .line 1785
    move-object/from16 v139, v90

    .line 1786
    .line 1787
    move-object/from16 v140, v91

    .line 1788
    .line 1789
    move/from16 v86, v92

    .line 1790
    .line 1791
    move-object/from16 v39, v93

    .line 1792
    .line 1793
    move-object/from16 v153, v94

    .line 1794
    .line 1795
    move-object/from16 v81, v95

    .line 1796
    .line 1797
    move-object/from16 v143, v96

    .line 1798
    .line 1799
    move-object/from16 v145, v97

    .line 1800
    .line 1801
    move-object/from16 v15, v101

    .line 1802
    .line 1803
    move-object/from16 v85, v110

    .line 1804
    .line 1805
    move/from16 v154, v118

    .line 1806
    .line 1807
    move-object/from16 v70, v119

    .line 1808
    .line 1809
    move/from16 v90, v120

    .line 1810
    .line 1811
    move/from16 v68, v121

    .line 1812
    .line 1813
    move-object/from16 v6, v124

    .line 1814
    .line 1815
    move/from16 v144, v128

    .line 1816
    .line 1817
    move/from16 v147, v129

    .line 1818
    .line 1819
    move/from16 v0, v133

    .line 1820
    .line 1821
    const/16 v48, 0x0

    .line 1822
    .line 1823
    move-object/from16 v119, v1

    .line 1824
    .line 1825
    move-object/from16 v82, v2

    .line 1826
    .line 1827
    move-object/from16 v101, v3

    .line 1828
    .line 1829
    move-object/from16 v91, v4

    .line 1830
    .line 1831
    move-object/from16 v78, v7

    .line 1832
    .line 1833
    move-wide/from16 v75, v8

    .line 1834
    .line 1835
    move/from16 v50, v11

    .line 1836
    .line 1837
    move-object/from16 v88, v12

    .line 1838
    .line 1839
    move-object/from16 v1, v111

    .line 1840
    .line 1841
    move-object/from16 v2, v112

    .line 1842
    .line 1843
    move-object/from16 v3, v114

    .line 1844
    .line 1845
    move-object/from16 v4, v123

    .line 1846
    .line 1847
    move-object/from16 v8, v125

    .line 1848
    .line 1849
    move-object/from16 v114, v83

    .line 1850
    .line 1851
    move-object/from16 v83, v14

    .line 1852
    .line 1853
    move-object/from16 v14, v122

    .line 1854
    .line 1855
    goto/16 :goto_2f

    .line 1856
    .line 1857
    :cond_36
    invoke-static {v13, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1858
    .line 1859
    .line 1860
    move-result v0

    .line 1861
    if-eqz v0, :cond_37

    .line 1862
    .line 1863
    invoke-static {v13, v15}, LF0/e;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 1864
    .line 1865
    .line 1866
    move-result v133

    .line 1867
    goto :goto_2b

    .line 1868
    :cond_37
    move-object/from16 v0, v83

    .line 1869
    .line 1870
    invoke-static {v13, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1871
    .line 1872
    .line 1873
    move-result v83

    .line 1874
    if-eqz v83, :cond_38

    .line 1875
    .line 1876
    move-object/from16 v83, v0

    .line 1877
    .line 1878
    move-object/from16 v0, v130

    .line 1879
    .line 1880
    check-cast v0, LF0/r;

    .line 1881
    .line 1882
    invoke-static {v13, v0}, LF0/e;->q(Lorg/xmlpull/v1/XmlPullParser;LF0/r;)LF0/r;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v130

    .line 1886
    goto/16 :goto_2b

    .line 1887
    .line 1888
    :cond_38
    move-object/from16 v83, v0

    .line 1889
    .line 1890
    move-object/from16 v0, v82

    .line 1891
    .line 1892
    invoke-static {v13, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1893
    .line 1894
    .line 1895
    move-result v82

    .line 1896
    if-eqz v82, :cond_39

    .line 1897
    .line 1898
    move-object/from16 v135, v0

    .line 1899
    .line 1900
    move-object/from16 v82, v1

    .line 1901
    .line 1902
    move-wide/from16 v0, v131

    .line 1903
    .line 1904
    invoke-static {v13, v0, v1}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 1905
    .line 1906
    .line 1907
    move-result-wide v131

    .line 1908
    move-object/from16 v1, v130

    .line 1909
    .line 1910
    check-cast v1, LF0/o;

    .line 1911
    .line 1912
    const-wide v62, -0x7fffffffffffffffL    # -4.9E-324

    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    move-object/from16 v165, v83

    .line 1918
    .line 1919
    move-object/from16 v83, v14

    .line 1920
    .line 1921
    move-object/from16 v14, v114

    .line 1922
    .line 1923
    move-object/from16 v114, v165

    .line 1924
    .line 1925
    move-wide/from16 v166, v50

    .line 1926
    .line 1927
    move-object/from16 v51, v135

    .line 1928
    .line 1929
    move-wide/from16 v134, v166

    .line 1930
    .line 1931
    const/16 v50, 0x0

    .line 1932
    .line 1933
    move-object/from16 v0, p0

    .line 1934
    .line 1935
    move-object/from16 v165, v82

    .line 1936
    .line 1937
    move-object/from16 v82, v2

    .line 1938
    .line 1939
    move-object/from16 v2, v70

    .line 1940
    .line 1941
    move-object/from16 v70, v119

    .line 1942
    .line 1943
    move-object/from16 v119, v165

    .line 1944
    .line 1945
    move-object/from16 v136, v2

    .line 1946
    .line 1947
    move-object/from16 v137, v15

    .line 1948
    .line 1949
    move-object/from16 v15, v101

    .line 1950
    .line 1951
    move-object/from16 v101, v3

    .line 1952
    .line 1953
    move-wide/from16 v2, v41

    .line 1954
    .line 1955
    move-object/from16 v138, v5

    .line 1956
    .line 1957
    move-object/from16 v139, v90

    .line 1958
    .line 1959
    move-object/from16 v140, v91

    .line 1960
    .line 1961
    move/from16 v90, v120

    .line 1962
    .line 1963
    move-object/from16 v91, v4

    .line 1964
    .line 1965
    move-wide/from16 v4, v45

    .line 1966
    .line 1967
    move/from16 v40, v6

    .line 1968
    .line 1969
    move-object/from16 v142, v78

    .line 1970
    .line 1971
    move-object/from16 v141, v81

    .line 1972
    .line 1973
    move-object/from16 v39, v93

    .line 1974
    .line 1975
    move-object/from16 v81, v95

    .line 1976
    .line 1977
    move-object/from16 v143, v96

    .line 1978
    .line 1979
    move-object/from16 v78, v7

    .line 1980
    .line 1981
    move-wide v6, v8

    .line 1982
    move-object/from16 v146, v61

    .line 1983
    .line 1984
    move-wide/from16 v61, v75

    .line 1985
    .line 1986
    move-object/from16 v63, v86

    .line 1987
    .line 1988
    move-object/from16 v145, v97

    .line 1989
    .line 1990
    move/from16 v144, v128

    .line 1991
    .line 1992
    move/from16 v147, v129

    .line 1993
    .line 1994
    move-wide/from16 v75, v8

    .line 1995
    .line 1996
    move-wide/from16 v8, v131

    .line 1997
    .line 1998
    move/from16 v149, v10

    .line 1999
    .line 2000
    move/from16 v50, v11

    .line 2001
    .line 2002
    move/from16 v148, v85

    .line 2003
    .line 2004
    move/from16 v86, v92

    .line 2005
    .line 2006
    move-object/from16 v85, v110

    .line 2007
    .line 2008
    move-wide/from16 v10, v26

    .line 2009
    .line 2010
    invoke-static/range {v0 .. v11}, LF0/e;->r(Lorg/xmlpull/v1/XmlPullParser;LF0/o;JJJJJ)LF0/o;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v130

    .line 2014
    move-object v3, v14

    .line 2015
    move-object/from16 v5, v49

    .line 2016
    .line 2017
    move-object/from16 v151, v51

    .line 2018
    .line 2019
    move-object/from16 v150, v68

    .line 2020
    .line 2021
    move-object/from16 v51, v84

    .line 2022
    .line 2023
    move/from16 v155, v88

    .line 2024
    .line 2025
    move-object/from16 v152, v89

    .line 2026
    .line 2027
    move-object/from16 v153, v94

    .line 2028
    .line 2029
    move-object/from16 v1, v111

    .line 2030
    .line 2031
    move-object/from16 v2, v112

    .line 2032
    .line 2033
    move/from16 v154, v118

    .line 2034
    .line 2035
    move/from16 v68, v121

    .line 2036
    .line 2037
    move-object/from16 v14, v122

    .line 2038
    .line 2039
    move-object/from16 v4, v123

    .line 2040
    .line 2041
    move-object/from16 v6, v124

    .line 2042
    .line 2043
    move-object/from16 v8, v125

    .line 2044
    .line 2045
    move/from16 v0, v133

    .line 2046
    .line 2047
    const/16 v48, 0x0

    .line 2048
    .line 2049
    move-object/from16 v88, v12

    .line 2050
    .line 2051
    goto/16 :goto_2f

    .line 2052
    .line 2053
    :cond_39
    move-object/from16 v82, v2

    .line 2054
    .line 2055
    move-object/from16 v138, v5

    .line 2056
    .line 2057
    move/from16 v40, v6

    .line 2058
    .line 2059
    move/from16 v149, v10

    .line 2060
    .line 2061
    move-object/from16 v137, v15

    .line 2062
    .line 2063
    move-wide/from16 v134, v50

    .line 2064
    .line 2065
    move-object/from16 v146, v61

    .line 2066
    .line 2067
    move-object/from16 v136, v70

    .line 2068
    .line 2069
    move-wide/from16 v61, v75

    .line 2070
    .line 2071
    move-object/from16 v142, v78

    .line 2072
    .line 2073
    move-object/from16 v141, v81

    .line 2074
    .line 2075
    move/from16 v148, v85

    .line 2076
    .line 2077
    move-object/from16 v63, v86

    .line 2078
    .line 2079
    move-object/from16 v139, v90

    .line 2080
    .line 2081
    move-object/from16 v140, v91

    .line 2082
    .line 2083
    move/from16 v86, v92

    .line 2084
    .line 2085
    move-object/from16 v39, v93

    .line 2086
    .line 2087
    move-object/from16 v81, v95

    .line 2088
    .line 2089
    move-object/from16 v143, v96

    .line 2090
    .line 2091
    move-object/from16 v145, v97

    .line 2092
    .line 2093
    move-object/from16 v15, v101

    .line 2094
    .line 2095
    move-object/from16 v85, v110

    .line 2096
    .line 2097
    move-object/from16 v70, v119

    .line 2098
    .line 2099
    move/from16 v90, v120

    .line 2100
    .line 2101
    move/from16 v144, v128

    .line 2102
    .line 2103
    move/from16 v147, v129

    .line 2104
    .line 2105
    move-object/from16 v51, v0

    .line 2106
    .line 2107
    move-object/from16 v119, v1

    .line 2108
    .line 2109
    move-object/from16 v101, v3

    .line 2110
    .line 2111
    move-object/from16 v91, v4

    .line 2112
    .line 2113
    move-object/from16 v78, v7

    .line 2114
    .line 2115
    move-wide/from16 v75, v8

    .line 2116
    .line 2117
    move/from16 v50, v11

    .line 2118
    .line 2119
    move-object/from16 v11, v68

    .line 2120
    .line 2121
    move-wide/from16 v0, v131

    .line 2122
    .line 2123
    move-object/from16 v165, v83

    .line 2124
    .line 2125
    move-object/from16 v83, v14

    .line 2126
    .line 2127
    move-object/from16 v14, v114

    .line 2128
    .line 2129
    move-object/from16 v114, v165

    .line 2130
    .line 2131
    invoke-static {v13, v11}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2132
    .line 2133
    .line 2134
    move-result v2

    .line 2135
    if-eqz v2, :cond_3a

    .line 2136
    .line 2137
    invoke-static {v13, v0, v1}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 2138
    .line 2139
    .line 2140
    move-result-wide v131

    .line 2141
    move-object/from16 v1, v130

    .line 2142
    .line 2143
    check-cast v1, LF0/p;

    .line 2144
    .line 2145
    move-object/from16 v0, p0

    .line 2146
    .line 2147
    move-object/from16 v2, v78

    .line 2148
    .line 2149
    move-wide/from16 v3, v41

    .line 2150
    .line 2151
    move-wide/from16 v5, v45

    .line 2152
    .line 2153
    move-wide/from16 v7, v75

    .line 2154
    .line 2155
    move-wide/from16 v9, v131

    .line 2156
    .line 2157
    move-object/from16 v150, v11

    .line 2158
    .line 2159
    move-object/from16 v151, v51

    .line 2160
    .line 2161
    move-object/from16 v51, v84

    .line 2162
    .line 2163
    move/from16 v155, v88

    .line 2164
    .line 2165
    move-object/from16 v152, v89

    .line 2166
    .line 2167
    move-object/from16 v153, v94

    .line 2168
    .line 2169
    move/from16 v154, v118

    .line 2170
    .line 2171
    move/from16 v68, v121

    .line 2172
    .line 2173
    move-object/from16 v156, v123

    .line 2174
    .line 2175
    move-object/from16 v157, v124

    .line 2176
    .line 2177
    move-object/from16 v158, v125

    .line 2178
    .line 2179
    const/16 v48, 0x0

    .line 2180
    .line 2181
    move-object/from16 v88, v12

    .line 2182
    .line 2183
    move-object/from16 v84, v14

    .line 2184
    .line 2185
    move-object/from16 v14, v122

    .line 2186
    .line 2187
    move-wide/from16 v11, v26

    .line 2188
    .line 2189
    invoke-static/range {v0 .. v12}, LF0/e;->s(Lorg/xmlpull/v1/XmlPullParser;LF0/p;Ljava/util/List;JJJJJ)LF0/p;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v130

    .line 2193
    :goto_2c
    move-object/from16 v5, v49

    .line 2194
    .line 2195
    move-object/from16 v3, v84

    .line 2196
    .line 2197
    move-object/from16 v1, v111

    .line 2198
    .line 2199
    move-object/from16 v2, v112

    .line 2200
    .line 2201
    move/from16 v0, v133

    .line 2202
    .line 2203
    move-object/from16 v4, v156

    .line 2204
    .line 2205
    move-object/from16 v6, v157

    .line 2206
    .line 2207
    move-object/from16 v8, v158

    .line 2208
    .line 2209
    goto/16 :goto_2f

    .line 2210
    .line 2211
    :cond_3a
    move-object/from16 v150, v11

    .line 2212
    .line 2213
    move-object/from16 v151, v51

    .line 2214
    .line 2215
    move-object/from16 v51, v84

    .line 2216
    .line 2217
    move/from16 v155, v88

    .line 2218
    .line 2219
    move-object/from16 v152, v89

    .line 2220
    .line 2221
    move-object/from16 v153, v94

    .line 2222
    .line 2223
    move/from16 v154, v118

    .line 2224
    .line 2225
    move/from16 v68, v121

    .line 2226
    .line 2227
    move-object/from16 v156, v123

    .line 2228
    .line 2229
    move-object/from16 v157, v124

    .line 2230
    .line 2231
    move-object/from16 v158, v125

    .line 2232
    .line 2233
    const/16 v48, 0x0

    .line 2234
    .line 2235
    move-object/from16 v88, v12

    .line 2236
    .line 2237
    move-object/from16 v84, v14

    .line 2238
    .line 2239
    move-object/from16 v14, v122

    .line 2240
    .line 2241
    invoke-static {v13, v15}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v2

    .line 2245
    if-eqz v2, :cond_3d

    .line 2246
    .line 2247
    invoke-static/range {p0 .. p0}, LF0/e;->f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v2

    .line 2251
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2252
    .line 2253
    if-eqz v3, :cond_3b

    .line 2254
    .line 2255
    move-object/from16 v126, v3

    .line 2256
    .line 2257
    check-cast v126, Ljava/lang/String;

    .line 2258
    .line 2259
    :cond_3b
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2260
    .line 2261
    if-eqz v2, :cond_3c

    .line 2262
    .line 2263
    check-cast v2, Lm0/m;

    .line 2264
    .line 2265
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    .line 2267
    .line 2268
    :cond_3c
    move-wide/from16 v131, v0

    .line 2269
    .line 2270
    goto :goto_2c

    .line 2271
    :cond_3d
    move-object/from16 v2, v112

    .line 2272
    .line 2273
    invoke-static {v13, v2}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v3

    .line 2277
    if-eqz v3, :cond_3e

    .line 2278
    .line 2279
    invoke-static {v13, v2}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v3

    .line 2283
    move-object/from16 v4, v156

    .line 2284
    .line 2285
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    .line 2287
    .line 2288
    move-object/from16 v5, v49

    .line 2289
    .line 2290
    move-object/from16 v3, v84

    .line 2291
    .line 2292
    move-object/from16 v6, v157

    .line 2293
    .line 2294
    :goto_2d
    move-object/from16 v8, v158

    .line 2295
    .line 2296
    goto :goto_2e

    .line 2297
    :cond_3e
    move-object/from16 v3, v84

    .line 2298
    .line 2299
    move-object/from16 v4, v156

    .line 2300
    .line 2301
    invoke-static {v13, v3}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2302
    .line 2303
    .line 2304
    move-result v5

    .line 2305
    if-eqz v5, :cond_3f

    .line 2306
    .line 2307
    invoke-static {v13, v3}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v5

    .line 2311
    move-object/from16 v6, v157

    .line 2312
    .line 2313
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    .line 2315
    .line 2316
    move-object/from16 v5, v49

    .line 2317
    .line 2318
    goto :goto_2d

    .line 2319
    :cond_3f
    move-object/from16 v5, v49

    .line 2320
    .line 2321
    move-object/from16 v6, v157

    .line 2322
    .line 2323
    invoke-static {v13, v5}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v7

    .line 2327
    if-eqz v7, :cond_40

    .line 2328
    .line 2329
    invoke-static {v13, v5}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v7

    .line 2333
    move-object/from16 v8, v158

    .line 2334
    .line 2335
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2336
    .line 2337
    .line 2338
    goto :goto_2e

    .line 2339
    :cond_40
    move-object/from16 v8, v158

    .line 2340
    .line 2341
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2342
    .line 2343
    .line 2344
    :goto_2e
    move-wide/from16 v131, v0

    .line 2345
    .line 2346
    move-object/from16 v1, v111

    .line 2347
    .line 2348
    move/from16 v0, v133

    .line 2349
    .line 2350
    :goto_2f
    invoke-static {v13, v1}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 2351
    .line 2352
    .line 2353
    move-result v7

    .line 2354
    if-eqz v7, :cond_73

    .line 2355
    .line 2356
    invoke-static/range {v115 .. v115}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 2357
    .line 2358
    .line 2359
    move-result v1

    .line 2360
    if-eqz v1, :cond_41

    .line 2361
    .line 2362
    invoke-static/range {v137 .. v137}, Lm0/O;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v10

    .line 2366
    :goto_30
    move-object/from16 v7, v115

    .line 2367
    .line 2368
    goto :goto_32

    .line 2369
    :cond_41
    invoke-static/range {v115 .. v115}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 2370
    .line 2371
    .line 2372
    move-result v1

    .line 2373
    if-eqz v1, :cond_42

    .line 2374
    .line 2375
    invoke-static/range {v137 .. v137}, Lm0/O;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v10

    .line 2379
    goto :goto_30

    .line 2380
    :cond_42
    invoke-static/range {v115 .. v115}, Lm0/O;->n(Ljava/lang/String;)Z

    .line 2381
    .line 2382
    .line 2383
    move-result v1

    .line 2384
    if-eqz v1, :cond_43

    .line 2385
    .line 2386
    :goto_31
    move-object/from16 v7, v115

    .line 2387
    .line 2388
    move-object v10, v7

    .line 2389
    goto :goto_32

    .line 2390
    :cond_43
    invoke-static/range {v115 .. v115}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 2391
    .line 2392
    .line 2393
    move-result v1

    .line 2394
    if-eqz v1, :cond_44

    .line 2395
    .line 2396
    goto :goto_31

    .line 2397
    :cond_44
    const-string v1, "application/mp4"

    .line 2398
    .line 2399
    move-object/from16 v7, v115

    .line 2400
    .line 2401
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2402
    .line 2403
    .line 2404
    move-result v1

    .line 2405
    if-eqz v1, :cond_46

    .line 2406
    .line 2407
    invoke-static/range {v137 .. v137}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v1

    .line 2411
    const-string v2, "text/vtt"

    .line 2412
    .line 2413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2414
    .line 2415
    .line 2416
    move-result v2

    .line 2417
    if-eqz v2, :cond_45

    .line 2418
    .line 2419
    const-string v1, "application/x-mp4-vtt"

    .line 2420
    .line 2421
    :cond_45
    move-object v10, v1

    .line 2422
    goto :goto_32

    .line 2423
    :cond_46
    const/4 v10, 0x0

    .line 2424
    :goto_32
    const-string v1, "audio/eac3"

    .line 2425
    .line 2426
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2427
    .line 2428
    .line 2429
    move-result v2

    .line 2430
    if-eqz v2, :cond_4b

    .line 2431
    .line 2432
    const/4 v12, 0x0

    .line 2433
    :goto_33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 2434
    .line 2435
    .line 2436
    move-result v2

    .line 2437
    const-string v3, "audio/eac3-joc"

    .line 2438
    .line 2439
    const-string v5, "ec+3"

    .line 2440
    .line 2441
    if-ge v12, v2, :cond_4a

    .line 2442
    .line 2443
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v2

    .line 2447
    check-cast v2, LF0/f;

    .line 2448
    .line 2449
    iget-object v9, v2, LF0/f;->a:Ljava/lang/String;

    .line 2450
    .line 2451
    const-string v10, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 2452
    .line 2453
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2454
    .line 2455
    .line 2456
    move-result v10

    .line 2457
    iget-object v2, v2, LF0/f;->b:Ljava/lang/String;

    .line 2458
    .line 2459
    if-eqz v10, :cond_47

    .line 2460
    .line 2461
    const-string v10, "JOC"

    .line 2462
    .line 2463
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2464
    .line 2465
    .line 2466
    move-result v10

    .line 2467
    if-nez v10, :cond_48

    .line 2468
    .line 2469
    :cond_47
    const-string v10, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 2470
    .line 2471
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2472
    .line 2473
    .line 2474
    move-result v9

    .line 2475
    if-eqz v9, :cond_49

    .line 2476
    .line 2477
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2478
    .line 2479
    .line 2480
    move-result v2

    .line 2481
    if-eqz v2, :cond_49

    .line 2482
    .line 2483
    :cond_48
    move-object v10, v3

    .line 2484
    goto :goto_34

    .line 2485
    :cond_49
    const/4 v2, 0x1

    .line 2486
    add-int/2addr v12, v2

    .line 2487
    goto :goto_33

    .line 2488
    :cond_4a
    move-object v10, v1

    .line 2489
    :goto_34
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2490
    .line 2491
    .line 2492
    move-result v1

    .line 2493
    if-eqz v1, :cond_4b

    .line 2494
    .line 2495
    move-object v15, v5

    .line 2496
    move-object/from16 v9, v117

    .line 2497
    .line 2498
    goto :goto_35

    .line 2499
    :cond_4b
    move-object/from16 v9, v117

    .line 2500
    .line 2501
    move-object/from16 v15, v137

    .line 2502
    .line 2503
    :goto_35
    invoke-static {v15, v9}, Lm0/O;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v1

    .line 2507
    if-eqz v1, :cond_4d

    .line 2508
    .line 2509
    if-eqz v9, :cond_4c

    .line 2510
    .line 2511
    move-object/from16 v117, v9

    .line 2512
    .line 2513
    goto :goto_36

    .line 2514
    :cond_4c
    move-object/from16 v117, v15

    .line 2515
    .line 2516
    :goto_36
    const-string v10, "video/dolby-vision"

    .line 2517
    .line 2518
    move-object/from16 v15, v117

    .line 2519
    .line 2520
    :cond_4d
    const/4 v1, 0x0

    .line 2521
    const/4 v12, 0x0

    .line 2522
    :goto_37
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    .line 2523
    .line 2524
    .line 2525
    move-result v2

    .line 2526
    const-string v5, "urn:mpeg:dash:role:2011"

    .line 2527
    .line 2528
    if-ge v12, v2, :cond_51

    .line 2529
    .line 2530
    move-object/from16 v11, v109

    .line 2531
    .line 2532
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v2

    .line 2536
    check-cast v2, LF0/f;

    .line 2537
    .line 2538
    iget-object v9, v2, LF0/f;->a:Ljava/lang/String;

    .line 2539
    .line 2540
    invoke-static {v5, v9}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2541
    .line 2542
    .line 2543
    move-result v5

    .line 2544
    if-eqz v5, :cond_50

    .line 2545
    .line 2546
    iget-object v2, v2, LF0/f;->b:Ljava/lang/String;

    .line 2547
    .line 2548
    if-nez v2, :cond_4e

    .line 2549
    .line 2550
    :goto_38
    const/4 v3, 0x0

    .line 2551
    goto :goto_39

    .line 2552
    :cond_4e
    const-string v5, "forced_subtitle"

    .line 2553
    .line 2554
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2555
    .line 2556
    .line 2557
    move-result v5

    .line 2558
    if-nez v5, :cond_4f

    .line 2559
    .line 2560
    const-string v5, "forced-subtitle"

    .line 2561
    .line 2562
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2563
    .line 2564
    .line 2565
    move-result v2

    .line 2566
    if-nez v2, :cond_4f

    .line 2567
    .line 2568
    goto :goto_38

    .line 2569
    :cond_4f
    const/4 v3, 0x2

    .line 2570
    :goto_39
    or-int/2addr v1, v3

    .line 2571
    :cond_50
    const/4 v2, 0x1

    .line 2572
    add-int/2addr v12, v2

    .line 2573
    move-object/from16 v109, v11

    .line 2574
    .line 2575
    goto :goto_37

    .line 2576
    :cond_51
    move-object/from16 v11, v109

    .line 2577
    .line 2578
    const/4 v2, 0x0

    .line 2579
    const/4 v12, 0x0

    .line 2580
    :goto_3a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2581
    .line 2582
    .line 2583
    move-result v9

    .line 2584
    if-ge v12, v9, :cond_53

    .line 2585
    .line 2586
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v9

    .line 2590
    check-cast v9, LF0/f;

    .line 2591
    .line 2592
    iget-object v3, v9, LF0/f;->a:Ljava/lang/String;

    .line 2593
    .line 2594
    invoke-static {v5, v3}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2595
    .line 2596
    .line 2597
    move-result v3

    .line 2598
    if-eqz v3, :cond_52

    .line 2599
    .line 2600
    iget-object v3, v9, LF0/f;->b:Ljava/lang/String;

    .line 2601
    .line 2602
    invoke-static {v3}, LF0/e;->o(Ljava/lang/String;)I

    .line 2603
    .line 2604
    .line 2605
    move-result v3

    .line 2606
    or-int/2addr v2, v3

    .line 2607
    :cond_52
    const/4 v3, 0x1

    .line 2608
    add-int/2addr v12, v3

    .line 2609
    goto :goto_3a

    .line 2610
    :cond_53
    const/4 v3, 0x0

    .line 2611
    const/4 v12, 0x0

    .line 2612
    :goto_3b
    invoke-virtual/range {v100 .. v100}, Ljava/util/ArrayList;->size()I

    .line 2613
    .line 2614
    .line 2615
    move-result v9

    .line 2616
    if-ge v12, v9, :cond_5c

    .line 2617
    .line 2618
    move-object/from16 v9, v100

    .line 2619
    .line 2620
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v75

    .line 2624
    move-object/from16 v109, v11

    .line 2625
    .line 2626
    move-object/from16 v11, v75

    .line 2627
    .line 2628
    check-cast v11, LF0/f;

    .line 2629
    .line 2630
    iget-object v13, v11, LF0/f;->a:Ljava/lang/String;

    .line 2631
    .line 2632
    invoke-static {v5, v13}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2633
    .line 2634
    .line 2635
    move-result v13

    .line 2636
    move-object/from16 v75, v5

    .line 2637
    .line 2638
    iget-object v5, v11, LF0/f;->b:Ljava/lang/String;

    .line 2639
    .line 2640
    if-eqz v13, :cond_55

    .line 2641
    .line 2642
    invoke-static {v5}, LF0/e;->o(Ljava/lang/String;)I

    .line 2643
    .line 2644
    .line 2645
    move-result v5

    .line 2646
    :goto_3c
    or-int/2addr v3, v5

    .line 2647
    :cond_54
    const/4 v5, 0x1

    .line 2648
    goto/16 :goto_40

    .line 2649
    .line 2650
    :cond_55
    const-string v13, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    .line 2651
    .line 2652
    iget-object v11, v11, LF0/f;->a:Ljava/lang/String;

    .line 2653
    .line 2654
    invoke-static {v13, v11}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2655
    .line 2656
    .line 2657
    move-result v11

    .line 2658
    if-eqz v11, :cond_54

    .line 2659
    .line 2660
    if-nez v5, :cond_56

    .line 2661
    .line 2662
    :goto_3d
    const/4 v5, 0x0

    .line 2663
    goto :goto_3c

    .line 2664
    :cond_56
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 2665
    .line 2666
    .line 2667
    move-result v11

    .line 2668
    packed-switch v11, :pswitch_data_0

    .line 2669
    .line 2670
    .line 2671
    :goto_3e
    :pswitch_0
    const/4 v5, -0x1

    .line 2672
    goto :goto_3f

    .line 2673
    :pswitch_1
    const-string v11, "6"

    .line 2674
    .line 2675
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2676
    .line 2677
    .line 2678
    move-result v5

    .line 2679
    if-nez v5, :cond_57

    .line 2680
    .line 2681
    goto :goto_3e

    .line 2682
    :cond_57
    const/4 v5, 0x4

    .line 2683
    goto :goto_3f

    .line 2684
    :pswitch_2
    const-string v11, "4"

    .line 2685
    .line 2686
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2687
    .line 2688
    .line 2689
    move-result v5

    .line 2690
    if-nez v5, :cond_58

    .line 2691
    .line 2692
    goto :goto_3e

    .line 2693
    :cond_58
    const/4 v5, 0x3

    .line 2694
    goto :goto_3f

    .line 2695
    :pswitch_3
    const-string v11, "3"

    .line 2696
    .line 2697
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2698
    .line 2699
    .line 2700
    move-result v5

    .line 2701
    if-nez v5, :cond_59

    .line 2702
    .line 2703
    goto :goto_3e

    .line 2704
    :cond_59
    const/4 v5, 0x2

    .line 2705
    goto :goto_3f

    .line 2706
    :pswitch_4
    const-string v11, "2"

    .line 2707
    .line 2708
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2709
    .line 2710
    .line 2711
    move-result v5

    .line 2712
    if-nez v5, :cond_5a

    .line 2713
    .line 2714
    goto :goto_3e

    .line 2715
    :cond_5a
    const/4 v5, 0x1

    .line 2716
    goto :goto_3f

    .line 2717
    :pswitch_5
    const-string v11, "1"

    .line 2718
    .line 2719
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2720
    .line 2721
    .line 2722
    move-result v5

    .line 2723
    if-nez v5, :cond_5b

    .line 2724
    .line 2725
    goto :goto_3e

    .line 2726
    :cond_5b
    const/4 v5, 0x0

    .line 2727
    :goto_3f
    packed-switch v5, :pswitch_data_1

    .line 2728
    .line 2729
    .line 2730
    goto :goto_3d

    .line 2731
    :pswitch_6
    const/4 v5, 0x1

    .line 2732
    goto :goto_3c

    .line 2733
    :pswitch_7
    const/16 v5, 0x8

    .line 2734
    .line 2735
    goto :goto_3c

    .line 2736
    :pswitch_8
    const/4 v5, 0x4

    .line 2737
    goto :goto_3c

    .line 2738
    :pswitch_9
    const/16 v5, 0x800

    .line 2739
    .line 2740
    goto :goto_3c

    .line 2741
    :pswitch_a
    const/16 v5, 0x200

    .line 2742
    .line 2743
    goto :goto_3c

    .line 2744
    :goto_40
    add-int/2addr v12, v5

    .line 2745
    move-object/from16 v13, p0

    .line 2746
    .line 2747
    move-object/from16 v100, v9

    .line 2748
    .line 2749
    move-object/from16 v5, v75

    .line 2750
    .line 2751
    move-object/from16 v11, v109

    .line 2752
    .line 2753
    goto/16 :goto_3b

    .line 2754
    .line 2755
    :cond_5c
    move-object/from16 v109, v11

    .line 2756
    .line 2757
    move-object/from16 v9, v100

    .line 2758
    .line 2759
    or-int/2addr v2, v3

    .line 2760
    invoke-static {v6}, LF0/e;->p(Ljava/util/ArrayList;)I

    .line 2761
    .line 2762
    .line 2763
    move-result v3

    .line 2764
    or-int/2addr v2, v3

    .line 2765
    invoke-static {v8}, LF0/e;->p(Ljava/util/ArrayList;)I

    .line 2766
    .line 2767
    .line 2768
    move-result v3

    .line 2769
    or-int/2addr v2, v3

    .line 2770
    const/4 v12, 0x0

    .line 2771
    :goto_41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2772
    .line 2773
    .line 2774
    move-result v3

    .line 2775
    if-ge v12, v3, :cond_61

    .line 2776
    .line 2777
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2778
    .line 2779
    .line 2780
    move-result-object v3

    .line 2781
    check-cast v3, LF0/f;

    .line 2782
    .line 2783
    iget-object v5, v3, LF0/f;->a:Ljava/lang/String;

    .line 2784
    .line 2785
    const-string v11, "http://dashif.org/thumbnail_tile"

    .line 2786
    .line 2787
    invoke-static {v11, v5}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2788
    .line 2789
    .line 2790
    move-result v5

    .line 2791
    if-nez v5, :cond_5e

    .line 2792
    .line 2793
    const-string v5, "http://dashif.org/guidelines/thumbnail_tile"

    .line 2794
    .line 2795
    iget-object v11, v3, LF0/f;->a:Ljava/lang/String;

    .line 2796
    .line 2797
    invoke-static {v5, v11}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2798
    .line 2799
    .line 2800
    move-result v5

    .line 2801
    if-eqz v5, :cond_5d

    .line 2802
    .line 2803
    goto :goto_42

    .line 2804
    :cond_5d
    const/4 v3, 0x1

    .line 2805
    const/4 v11, 0x2

    .line 2806
    goto :goto_44

    .line 2807
    :cond_5e
    :goto_42
    iget-object v3, v3, LF0/f;->b:Ljava/lang/String;

    .line 2808
    .line 2809
    if-eqz v3, :cond_60

    .line 2810
    .line 2811
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 2812
    .line 2813
    const-string v5, "x"

    .line 2814
    .line 2815
    const/4 v11, -0x1

    .line 2816
    invoke-virtual {v3, v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v3

    .line 2820
    array-length v5, v3

    .line 2821
    const/4 v11, 0x2

    .line 2822
    if-eq v5, v11, :cond_5f

    .line 2823
    .line 2824
    :catch_0
    :goto_43
    const/4 v3, 0x1

    .line 2825
    goto :goto_44

    .line 2826
    :cond_5f
    :try_start_0
    aget-object v5, v3, v48

    .line 2827
    .line 2828
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2829
    .line 2830
    .line 2831
    move-result v5

    .line 2832
    const/4 v13, 0x1

    .line 2833
    aget-object v3, v3, v13

    .line 2834
    .line 2835
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2836
    .line 2837
    .line 2838
    move-result v3

    .line 2839
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2840
    .line 2841
    .line 2842
    move-result-object v5

    .line 2843
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v3

    .line 2847
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    goto :goto_45

    .line 2852
    :cond_60
    const/4 v11, 0x2

    .line 2853
    goto :goto_43

    .line 2854
    :goto_44
    add-int/2addr v12, v3

    .line 2855
    goto :goto_41

    .line 2856
    :cond_61
    const/4 v3, 0x0

    .line 2857
    :goto_45
    new-instance v5, Lm0/s;

    .line 2858
    .line 2859
    invoke-direct {v5}, Lm0/s;-><init>()V

    .line 2860
    .line 2861
    .line 2862
    move-object/from16 v11, v98

    .line 2863
    .line 2864
    iput-object v11, v5, Lm0/s;->a:Ljava/lang/String;

    .line 2865
    .line 2866
    invoke-static {v7}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 2867
    .line 2868
    .line 2869
    move-result-object v7

    .line 2870
    iput-object v7, v5, Lm0/s;->m:Ljava/lang/String;

    .line 2871
    .line 2872
    invoke-static {v10}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 2873
    .line 2874
    .line 2875
    move-result-object v7

    .line 2876
    iput-object v7, v5, Lm0/s;->n:Ljava/lang/String;

    .line 2877
    .line 2878
    iput-object v15, v5, Lm0/s;->j:Ljava/lang/String;

    .line 2879
    .line 2880
    move/from16 v12, v148

    .line 2881
    .line 2882
    iput v12, v5, Lm0/s;->i:I

    .line 2883
    .line 2884
    iput v1, v5, Lm0/s;->e:I

    .line 2885
    .line 2886
    iput v2, v5, Lm0/s;->f:I

    .line 2887
    .line 2888
    move-object/from16 v13, v108

    .line 2889
    .line 2890
    iput-object v13, v5, Lm0/s;->d:Ljava/lang/String;

    .line 2891
    .line 2892
    if-eqz v3, :cond_62

    .line 2893
    .line 2894
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2895
    .line 2896
    check-cast v1, Ljava/lang/Integer;

    .line 2897
    .line 2898
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2899
    .line 2900
    .line 2901
    move-result v1

    .line 2902
    goto :goto_46

    .line 2903
    :cond_62
    const/4 v1, -0x1

    .line 2904
    :goto_46
    iput v1, v5, Lm0/s;->M:I

    .line 2905
    .line 2906
    if-eqz v3, :cond_63

    .line 2907
    .line 2908
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2909
    .line 2910
    check-cast v1, Ljava/lang/Integer;

    .line 2911
    .line 2912
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2913
    .line 2914
    .line 2915
    move-result v1

    .line 2916
    goto :goto_47

    .line 2917
    :cond_63
    const/4 v1, -0x1

    .line 2918
    :goto_47
    iput v1, v5, Lm0/s;->N:I

    .line 2919
    .line 2920
    invoke-static {v10}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 2921
    .line 2922
    .line 2923
    move-result v1

    .line 2924
    if-eqz v1, :cond_64

    .line 2925
    .line 2926
    move/from16 v1, v154

    .line 2927
    .line 2928
    iput v1, v5, Lm0/s;->u:I

    .line 2929
    .line 2930
    move/from16 v2, v147

    .line 2931
    .line 2932
    iput v2, v5, Lm0/s;->v:I

    .line 2933
    .line 2934
    move/from16 v10, v155

    .line 2935
    .line 2936
    iput v10, v5, Lm0/s;->y:F

    .line 2937
    .line 2938
    goto/16 :goto_4d

    .line 2939
    .line 2940
    :cond_64
    move/from16 v2, v147

    .line 2941
    .line 2942
    move/from16 v1, v154

    .line 2943
    .line 2944
    invoke-static {v10}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 2945
    .line 2946
    .line 2947
    move-result v3

    .line 2948
    if-eqz v3, :cond_65

    .line 2949
    .line 2950
    iput v0, v5, Lm0/s;->F:I

    .line 2951
    .line 2952
    move/from16 v0, v149

    .line 2953
    .line 2954
    iput v0, v5, Lm0/s;->G:I

    .line 2955
    .line 2956
    goto/16 :goto_4d

    .line 2957
    .line 2958
    :cond_65
    invoke-static {v10}, Lm0/O;->n(Ljava/lang/String;)Z

    .line 2959
    .line 2960
    .line 2961
    move-result v0

    .line 2962
    if-eqz v0, :cond_6c

    .line 2963
    .line 2964
    const-string v0, "application/cea-608"

    .line 2965
    .line 2966
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2967
    .line 2968
    .line 2969
    move-result v0

    .line 2970
    const-string v1, "MpdParser"

    .line 2971
    .line 2972
    if-eqz v0, :cond_68

    .line 2973
    .line 2974
    const/4 v12, 0x0

    .line 2975
    :goto_48
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 2976
    .line 2977
    .line 2978
    move-result v0

    .line 2979
    if-ge v12, v0, :cond_6b

    .line 2980
    .line 2981
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v0

    .line 2985
    check-cast v0, LF0/f;

    .line 2986
    .line 2987
    iget-object v2, v0, LF0/f;->a:Ljava/lang/String;

    .line 2988
    .line 2989
    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    .line 2990
    .line 2991
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2992
    .line 2993
    .line 2994
    move-result v2

    .line 2995
    if-eqz v2, :cond_67

    .line 2996
    .line 2997
    iget-object v0, v0, LF0/f;->b:Ljava/lang/String;

    .line 2998
    .line 2999
    if-eqz v0, :cond_67

    .line 3000
    .line 3001
    sget-object v2, LF0/e;->I:Ljava/util/regex/Pattern;

    .line 3002
    .line 3003
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 3004
    .line 3005
    .line 3006
    move-result-object v2

    .line 3007
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 3008
    .line 3009
    .line 3010
    move-result v3

    .line 3011
    if-eqz v3, :cond_66

    .line 3012
    .line 3013
    const/4 v3, 0x1

    .line 3014
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v0

    .line 3018
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3019
    .line 3020
    .line 3021
    move-result v0

    .line 3022
    goto :goto_4c

    .line 3023
    :cond_66
    const/4 v3, 0x1

    .line 3024
    const-string v2, "Unable to parse CEA-608 channel number from: "

    .line 3025
    .line 3026
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3027
    .line 3028
    .line 3029
    move-result-object v0

    .line 3030
    invoke-static {v1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    .line 3032
    .line 3033
    goto :goto_49

    .line 3034
    :cond_67
    const/4 v3, 0x1

    .line 3035
    :goto_49
    add-int/2addr v12, v3

    .line 3036
    goto :goto_48

    .line 3037
    :cond_68
    const-string v0, "application/cea-708"

    .line 3038
    .line 3039
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3040
    .line 3041
    .line 3042
    move-result v0

    .line 3043
    if-eqz v0, :cond_6b

    .line 3044
    .line 3045
    const/4 v12, 0x0

    .line 3046
    :goto_4a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 3047
    .line 3048
    .line 3049
    move-result v0

    .line 3050
    if-ge v12, v0, :cond_6b

    .line 3051
    .line 3052
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3053
    .line 3054
    .line 3055
    move-result-object v0

    .line 3056
    check-cast v0, LF0/f;

    .line 3057
    .line 3058
    iget-object v2, v0, LF0/f;->a:Ljava/lang/String;

    .line 3059
    .line 3060
    const-string v3, "urn:scte:dash:cc:cea-708:2015"

    .line 3061
    .line 3062
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3063
    .line 3064
    .line 3065
    move-result v2

    .line 3066
    if-eqz v2, :cond_6a

    .line 3067
    .line 3068
    iget-object v0, v0, LF0/f;->b:Ljava/lang/String;

    .line 3069
    .line 3070
    if-eqz v0, :cond_6a

    .line 3071
    .line 3072
    sget-object v2, LF0/e;->J:Ljava/util/regex/Pattern;

    .line 3073
    .line 3074
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 3075
    .line 3076
    .line 3077
    move-result-object v2

    .line 3078
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 3079
    .line 3080
    .line 3081
    move-result v3

    .line 3082
    if-eqz v3, :cond_69

    .line 3083
    .line 3084
    const/4 v3, 0x1

    .line 3085
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 3086
    .line 3087
    .line 3088
    move-result-object v0

    .line 3089
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3090
    .line 3091
    .line 3092
    move-result v0

    .line 3093
    goto :goto_4c

    .line 3094
    :cond_69
    const/4 v3, 0x1

    .line 3095
    const-string v2, "Unable to parse CEA-708 service block number from: "

    .line 3096
    .line 3097
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3098
    .line 3099
    .line 3100
    move-result-object v0

    .line 3101
    invoke-static {v1, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    .line 3103
    .line 3104
    goto :goto_4b

    .line 3105
    :cond_6a
    const/4 v3, 0x1

    .line 3106
    :goto_4b
    add-int/2addr v12, v3

    .line 3107
    goto :goto_4a

    .line 3108
    :cond_6b
    const/4 v0, -0x1

    .line 3109
    :goto_4c
    iput v0, v5, Lm0/s;->K:I

    .line 3110
    .line 3111
    goto :goto_4d

    .line 3112
    :cond_6c
    invoke-static {v10}, Lm0/O;->m(Ljava/lang/String;)Z

    .line 3113
    .line 3114
    .line 3115
    move-result v0

    .line 3116
    if-eqz v0, :cond_6d

    .line 3117
    .line 3118
    iput v1, v5, Lm0/s;->u:I

    .line 3119
    .line 3120
    iput v2, v5, Lm0/s;->v:I

    .line 3121
    .line 3122
    :cond_6d
    :goto_4d
    new-instance v0, Lm0/t;

    .line 3123
    .line 3124
    invoke-direct {v0, v5}, Lm0/t;-><init>(Lm0/s;)V

    .line 3125
    .line 3126
    .line 3127
    if-eqz v130, :cond_6e

    .line 3128
    .line 3129
    move-object/from16 v124, v130

    .line 3130
    .line 3131
    goto :goto_4e

    .line 3132
    :cond_6e
    new-instance v1, LF0/r;

    .line 3133
    .line 3134
    const-wide/16 v156, 0x1

    .line 3135
    .line 3136
    const-wide/16 v158, 0x0

    .line 3137
    .line 3138
    const/16 v155, 0x0

    .line 3139
    .line 3140
    const-wide/16 v160, 0x0

    .line 3141
    .line 3142
    const-wide/16 v162, 0x0

    .line 3143
    .line 3144
    move-object/from16 v154, v1

    .line 3145
    .line 3146
    invoke-direct/range {v154 .. v163}, LF0/r;-><init>(LF0/j;JJJJ)V

    .line 3147
    .line 3148
    .line 3149
    move-object/from16 v124, v1

    .line 3150
    .line 3151
    :goto_4e
    new-instance v1, LF0/d;

    .line 3152
    .line 3153
    invoke-virtual/range {v88 .. v88}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3154
    .line 3155
    .line 3156
    move-result v2

    .line 3157
    if-nez v2, :cond_6f

    .line 3158
    .line 3159
    move-object/from16 v123, v88

    .line 3160
    .line 3161
    goto :goto_4f

    .line 3162
    :cond_6f
    move-object/from16 v123, v83

    .line 3163
    .line 3164
    :goto_4f
    move-object/from16 v121, v1

    .line 3165
    .line 3166
    move-object/from16 v122, v0

    .line 3167
    .line 3168
    move-object/from16 v125, v126

    .line 3169
    .line 3170
    move-object/from16 v126, v14

    .line 3171
    .line 3172
    move-object/from16 v127, v4

    .line 3173
    .line 3174
    move-object/from16 v128, v6

    .line 3175
    .line 3176
    move-object/from16 v129, v8

    .line 3177
    .line 3178
    invoke-direct/range {v121 .. v129}, LF0/d;-><init>(Lm0/t;Ljava/util/List;LF0/s;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3179
    .line 3180
    .line 3181
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 3182
    .line 3183
    invoke-static {v0}, Lm0/O;->i(Ljava/lang/String;)I

    .line 3184
    .line 3185
    .line 3186
    move-result v0

    .line 3187
    move/from16 v2, v144

    .line 3188
    .line 3189
    const/4 v3, -0x1

    .line 3190
    if-ne v2, v3, :cond_70

    .line 3191
    .line 3192
    move v2, v0

    .line 3193
    :goto_50
    move-object/from16 v0, v143

    .line 3194
    .line 3195
    goto :goto_52

    .line 3196
    :cond_70
    if-ne v0, v3, :cond_71

    .line 3197
    .line 3198
    goto :goto_50

    .line 3199
    :cond_71
    if-ne v2, v0, :cond_72

    .line 3200
    .line 3201
    const/4 v12, 0x1

    .line 3202
    goto :goto_51

    .line 3203
    :cond_72
    const/4 v12, 0x0

    .line 3204
    :goto_51
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 3205
    .line 3206
    .line 3207
    goto :goto_50

    .line 3208
    :goto_52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3209
    .line 3210
    .line 3211
    move-object/from16 v15, p0

    .line 3212
    .line 3213
    move-object/from16 v143, v0

    .line 3214
    .line 3215
    move-object/from16 v49, v9

    .line 3216
    .line 3217
    move-object/from16 v108, v13

    .line 3218
    .line 3219
    move-object/from16 v75, v109

    .line 3220
    .line 3221
    move-object/from16 v13, v114

    .line 3222
    .line 3223
    move-object/from16 v0, v136

    .line 3224
    .line 3225
    move-object/from16 v1, v140

    .line 3226
    .line 3227
    move-object/from16 v10, v145

    .line 3228
    .line 3229
    move-object/from16 v164, v150

    .line 3230
    .line 3231
    move-object/from16 v14, v151

    .line 3232
    .line 3233
    move-object/from16 v6, v152

    .line 3234
    .line 3235
    const/4 v12, 0x0

    .line 3236
    move v9, v2

    .line 3237
    goto/16 :goto_56

    .line 3238
    .line 3239
    :cond_73
    move-object/from16 v13, p0

    .line 3240
    .line 3241
    move/from16 v133, v0

    .line 3242
    .line 3243
    move-object/from16 v111, v1

    .line 3244
    .line 3245
    move-object/from16 v112, v2

    .line 3246
    .line 3247
    move-object/from16 v123, v4

    .line 3248
    .line 3249
    move-object/from16 v49, v5

    .line 3250
    .line 3251
    move-object/from16 v124, v6

    .line 3252
    .line 3253
    move-object/from16 v125, v8

    .line 3254
    .line 3255
    move-object/from16 v122, v14

    .line 3256
    .line 3257
    move-object/from16 v93, v39

    .line 3258
    .line 3259
    move/from16 v6, v40

    .line 3260
    .line 3261
    move/from16 v11, v50

    .line 3262
    .line 3263
    move-object/from16 v84, v51

    .line 3264
    .line 3265
    move/from16 v121, v68

    .line 3266
    .line 3267
    move-wide/from16 v8, v75

    .line 3268
    .line 3269
    move-object/from16 v7, v78

    .line 3270
    .line 3271
    move-object/from16 v95, v81

    .line 3272
    .line 3273
    move-object/from16 v2, v82

    .line 3274
    .line 3275
    move-object/from16 v14, v83

    .line 3276
    .line 3277
    move-object/from16 v110, v85

    .line 3278
    .line 3279
    move/from16 v92, v86

    .line 3280
    .line 3281
    move-object/from16 v12, v88

    .line 3282
    .line 3283
    move/from16 v120, v90

    .line 3284
    .line 3285
    move-object/from16 v4, v91

    .line 3286
    .line 3287
    move-object/from16 v83, v114

    .line 3288
    .line 3289
    move-object/from16 v1, v119

    .line 3290
    .line 3291
    move-wide/from16 v50, v134

    .line 3292
    .line 3293
    move-object/from16 v5, v138

    .line 3294
    .line 3295
    move-object/from16 v90, v139

    .line 3296
    .line 3297
    move-object/from16 v91, v140

    .line 3298
    .line 3299
    move-object/from16 v81, v141

    .line 3300
    .line 3301
    move-object/from16 v78, v142

    .line 3302
    .line 3303
    move-object/from16 v96, v143

    .line 3304
    .line 3305
    move/from16 v128, v144

    .line 3306
    .line 3307
    move-object/from16 v97, v145

    .line 3308
    .line 3309
    move/from16 v129, v147

    .line 3310
    .line 3311
    move/from16 v85, v148

    .line 3312
    .line 3313
    move/from16 v10, v149

    .line 3314
    .line 3315
    move-object/from16 v68, v150

    .line 3316
    .line 3317
    move-object/from16 v82, v151

    .line 3318
    .line 3319
    move-object/from16 v89, v152

    .line 3320
    .line 3321
    move-object/from16 v94, v153

    .line 3322
    .line 3323
    move/from16 v118, v154

    .line 3324
    .line 3325
    move/from16 v88, v155

    .line 3326
    .line 3327
    const/4 v0, 0x0

    .line 3328
    move-object/from16 v114, v3

    .line 3329
    .line 3330
    move-wide/from16 v75, v61

    .line 3331
    .line 3332
    move-object/from16 v86, v63

    .line 3333
    .line 3334
    move-object/from16 v119, v70

    .line 3335
    .line 3336
    move-object/from16 v3, v101

    .line 3337
    .line 3338
    move-object/from16 v70, v136

    .line 3339
    .line 3340
    move-object/from16 v61, v146

    .line 3341
    .line 3342
    move-object/from16 v101, v15

    .line 3343
    .line 3344
    move-object/from16 v15, v137

    .line 3345
    .line 3346
    goto/16 :goto_2a

    .line 3347
    .line 3348
    :cond_74
    move-object/from16 v101, v3

    .line 3349
    .line 3350
    move-object/from16 v49, v4

    .line 3351
    .line 3352
    move-object/from16 v138, v5

    .line 3353
    .line 3354
    move-object/from16 v145, v8

    .line 3355
    .line 3356
    move-object/from16 v153, v12

    .line 3357
    .line 3358
    move-object v0, v13

    .line 3359
    move-wide/from16 v134, v50

    .line 3360
    .line 3361
    move-object/from16 v146, v61

    .line 3362
    .line 3363
    move-object/from16 v150, v68

    .line 3364
    .line 3365
    move-object/from16 v136, v70

    .line 3366
    .line 3367
    move-wide/from16 v61, v75

    .line 3368
    .line 3369
    move-object/from16 v142, v78

    .line 3370
    .line 3371
    move-object/from16 v141, v81

    .line 3372
    .line 3373
    move-object/from16 v151, v82

    .line 3374
    .line 3375
    move-object/from16 v13, v83

    .line 3376
    .line 3377
    move-object/from16 v51, v85

    .line 3378
    .line 3379
    move-object/from16 v152, v89

    .line 3380
    .line 3381
    move-object/from16 v139, v90

    .line 3382
    .line 3383
    move-object/from16 v140, v91

    .line 3384
    .line 3385
    move/from16 v68, v92

    .line 3386
    .line 3387
    move-object/from16 v70, v93

    .line 3388
    .line 3389
    move/from16 v40, v94

    .line 3390
    .line 3391
    move-object/from16 v39, v95

    .line 3392
    .line 3393
    move-object/from16 v143, v96

    .line 3394
    .line 3395
    move-object/from16 v63, v97

    .line 3396
    .line 3397
    move-object/from16 v116, v98

    .line 3398
    .line 3399
    move-object/from16 v113, v100

    .line 3400
    .line 3401
    const/16 v48, 0x0

    .line 3402
    .line 3403
    move-object/from16 v82, v2

    .line 3404
    .line 3405
    move-object/from16 v81, v6

    .line 3406
    .line 3407
    move-object/from16 v78, v7

    .line 3408
    .line 3409
    move-object/from16 v85, v10

    .line 3410
    .line 3411
    move/from16 v50, v11

    .line 3412
    .line 3413
    move-object v2, v15

    .line 3414
    move/from16 v90, v84

    .line 3415
    .line 3416
    move-object/from16 v91, v88

    .line 3417
    .line 3418
    move/from16 v84, v9

    .line 3419
    .line 3420
    invoke-static {v0, v13}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3421
    .line 3422
    .line 3423
    move-result v1

    .line 3424
    if-eqz v1, :cond_75

    .line 3425
    .line 3426
    move-object/from16 v1, v102

    .line 3427
    .line 3428
    check-cast v1, LF0/r;

    .line 3429
    .line 3430
    invoke-static {v0, v1}, LF0/e;->q(Lorg/xmlpull/v1/XmlPullParser;LF0/r;)LF0/r;

    .line 3431
    .line 3432
    .line 3433
    move-result-object v102

    .line 3434
    move-object v15, v0

    .line 3435
    move/from16 v9, v84

    .line 3436
    .line 3437
    move-object/from16 v75, v109

    .line 3438
    .line 3439
    move-object/from16 v0, v136

    .line 3440
    .line 3441
    move-object/from16 v1, v140

    .line 3442
    .line 3443
    move-object/from16 v10, v145

    .line 3444
    .line 3445
    move-object/from16 v164, v150

    .line 3446
    .line 3447
    move-object/from16 v14, v151

    .line 3448
    .line 3449
    :goto_53
    move-object/from16 v6, v152

    .line 3450
    .line 3451
    const/4 v12, 0x0

    .line 3452
    goto/16 :goto_56

    .line 3453
    .line 3454
    :cond_75
    move-object/from16 v14, v151

    .line 3455
    .line 3456
    invoke-static {v0, v14}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3457
    .line 3458
    .line 3459
    move-result v1

    .line 3460
    if-eqz v1, :cond_76

    .line 3461
    .line 3462
    move-wide/from16 v3, v103

    .line 3463
    .line 3464
    invoke-static {v0, v3, v4}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 3465
    .line 3466
    .line 3467
    move-result-wide v103

    .line 3468
    move-object/from16 v1, v102

    .line 3469
    .line 3470
    check-cast v1, LF0/o;

    .line 3471
    .line 3472
    move-object v15, v0

    .line 3473
    move-object/from16 v0, p0

    .line 3474
    .line 3475
    move-wide/from16 v2, v41

    .line 3476
    .line 3477
    move-wide/from16 v4, v45

    .line 3478
    .line 3479
    move-wide/from16 v6, v105

    .line 3480
    .line 3481
    move-wide/from16 v8, v103

    .line 3482
    .line 3483
    move-object/from16 v75, v109

    .line 3484
    .line 3485
    move-wide/from16 v10, v26

    .line 3486
    .line 3487
    invoke-static/range {v0 .. v11}, LF0/e;->r(Lorg/xmlpull/v1/XmlPullParser;LF0/o;JJJJJ)LF0/o;

    .line 3488
    .line 3489
    .line 3490
    move-result-object v102

    .line 3491
    move/from16 v9, v84

    .line 3492
    .line 3493
    move-object/from16 v0, v136

    .line 3494
    .line 3495
    move-object/from16 v1, v140

    .line 3496
    .line 3497
    move-object/from16 v10, v145

    .line 3498
    .line 3499
    move-object/from16 v164, v150

    .line 3500
    .line 3501
    goto :goto_53

    .line 3502
    :cond_76
    move-object v15, v0

    .line 3503
    move-wide/from16 v3, v103

    .line 3504
    .line 3505
    move-object/from16 v75, v109

    .line 3506
    .line 3507
    move-object/from16 v11, v150

    .line 3508
    .line 3509
    invoke-static {v15, v11}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3510
    .line 3511
    .line 3512
    move-result v0

    .line 3513
    if-eqz v0, :cond_77

    .line 3514
    .line 3515
    invoke-static {v15, v3, v4}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 3516
    .line 3517
    .line 3518
    move-result-wide v103

    .line 3519
    move-object/from16 v1, v102

    .line 3520
    .line 3521
    check-cast v1, LF0/p;

    .line 3522
    .line 3523
    move-object/from16 v0, p0

    .line 3524
    .line 3525
    move-object/from16 v2, v78

    .line 3526
    .line 3527
    move-wide/from16 v3, v41

    .line 3528
    .line 3529
    move-wide/from16 v5, v45

    .line 3530
    .line 3531
    move-wide/from16 v7, v105

    .line 3532
    .line 3533
    move-wide/from16 v9, v103

    .line 3534
    .line 3535
    move-object/from16 v164, v11

    .line 3536
    .line 3537
    move-wide/from16 v11, v26

    .line 3538
    .line 3539
    invoke-static/range {v0 .. v12}, LF0/e;->s(Lorg/xmlpull/v1/XmlPullParser;LF0/p;Ljava/util/List;JJJJJ)LF0/p;

    .line 3540
    .line 3541
    .line 3542
    move-result-object v102

    .line 3543
    move/from16 v9, v84

    .line 3544
    .line 3545
    move-object/from16 v0, v136

    .line 3546
    .line 3547
    move-object/from16 v1, v140

    .line 3548
    .line 3549
    move-object/from16 v10, v145

    .line 3550
    .line 3551
    goto :goto_53

    .line 3552
    :cond_77
    move-object/from16 v164, v11

    .line 3553
    .line 3554
    invoke-static {v15, v2}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3555
    .line 3556
    .line 3557
    move-result v0

    .line 3558
    if-eqz v0, :cond_78

    .line 3559
    .line 3560
    invoke-static {v15, v2}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 3561
    .line 3562
    .line 3563
    move-result-object v0

    .line 3564
    move-object/from16 v1, v140

    .line 3565
    .line 3566
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3567
    .line 3568
    .line 3569
    move-object/from16 v10, v145

    .line 3570
    .line 3571
    move-object/from16 v6, v152

    .line 3572
    .line 3573
    const/4 v12, 0x0

    .line 3574
    goto :goto_55

    .line 3575
    :cond_78
    move-object/from16 v1, v140

    .line 3576
    .line 3577
    const-string v0, "Label"

    .line 3578
    .line 3579
    invoke-static {v15, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3580
    .line 3581
    .line 3582
    move-result v2

    .line 3583
    if-eqz v2, :cond_7b

    .line 3584
    .line 3585
    move-object/from16 v10, v145

    .line 3586
    .line 3587
    const/4 v12, 0x0

    .line 3588
    invoke-interface {v15, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3589
    .line 3590
    .line 3591
    move-result-object v2

    .line 3592
    move-object/from16 v5, v64

    .line 3593
    .line 3594
    :cond_79
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3595
    .line 3596
    .line 3597
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3598
    .line 3599
    .line 3600
    move-result v6

    .line 3601
    const/4 v7, 0x4

    .line 3602
    if-ne v6, v7, :cond_7a

    .line 3603
    .line 3604
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 3605
    .line 3606
    .line 3607
    move-result-object v5

    .line 3608
    goto :goto_54

    .line 3609
    :cond_7a
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3610
    .line 3611
    .line 3612
    :goto_54
    invoke-static {v15, v0}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3613
    .line 3614
    .line 3615
    move-result v6

    .line 3616
    if-eqz v6, :cond_79

    .line 3617
    .line 3618
    new-instance v0, Lm0/w;

    .line 3619
    .line 3620
    invoke-direct {v0, v2, v5}, Lm0/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    .line 3622
    .line 3623
    move-object/from16 v6, v152

    .line 3624
    .line 3625
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3626
    .line 3627
    .line 3628
    goto :goto_55

    .line 3629
    :cond_7b
    move-object/from16 v10, v145

    .line 3630
    .line 3631
    move-object/from16 v6, v152

    .line 3632
    .line 3633
    const/4 v12, 0x0

    .line 3634
    invoke-static/range {p0 .. p0}, LZ3/C;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 3635
    .line 3636
    .line 3637
    move-result v0

    .line 3638
    if-eqz v0, :cond_7c

    .line 3639
    .line 3640
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3641
    .line 3642
    .line 3643
    :cond_7c
    :goto_55
    move-wide/from16 v103, v3

    .line 3644
    .line 3645
    move/from16 v9, v84

    .line 3646
    .line 3647
    move-object/from16 v0, v136

    .line 3648
    .line 3649
    :goto_56
    invoke-static {v15, v0}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 3650
    .line 3651
    .line 3652
    move-result v2

    .line 3653
    if-eqz v2, :cond_8d

    .line 3654
    .line 3655
    new-instance v0, Ljava/util/ArrayList;

    .line 3656
    .line 3657
    invoke-virtual/range {v143 .. v143}, Ljava/util/ArrayList;->size()I

    .line 3658
    .line 3659
    .line 3660
    move-result v2

    .line 3661
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3662
    .line 3663
    .line 3664
    const/4 v2, 0x0

    .line 3665
    :goto_57
    invoke-virtual/range {v143 .. v143}, Ljava/util/ArrayList;->size()I

    .line 3666
    .line 3667
    .line 3668
    move-result v3

    .line 3669
    if-ge v2, v3, :cond_8c

    .line 3670
    .line 3671
    move-object/from16 v3, v143

    .line 3672
    .line 3673
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3674
    .line 3675
    .line 3676
    move-result-object v4

    .line 3677
    check-cast v4, LF0/d;

    .line 3678
    .line 3679
    iget-object v5, v4, LF0/d;->a:Lm0/t;

    .line 3680
    .line 3681
    invoke-virtual {v5}, Lm0/t;->a()Lm0/s;

    .line 3682
    .line 3683
    .line 3684
    move-result-object v5

    .line 3685
    move-object/from16 v7, v139

    .line 3686
    .line 3687
    if-eqz v7, :cond_7d

    .line 3688
    .line 3689
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3690
    .line 3691
    .line 3692
    move-result v8

    .line 3693
    if-eqz v8, :cond_7d

    .line 3694
    .line 3695
    iput-object v7, v5, Lm0/s;->b:Ljava/lang/String;

    .line 3696
    .line 3697
    goto :goto_58

    .line 3698
    :cond_7d
    invoke-static {v6}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 3699
    .line 3700
    .line 3701
    move-result-object v8

    .line 3702
    iput-object v8, v5, Lm0/s;->c:Ljava/util/List;

    .line 3703
    .line 3704
    :goto_58
    iget-object v8, v4, LF0/d;->d:Ljava/lang/String;

    .line 3705
    .line 3706
    if-nez v8, :cond_7e

    .line 3707
    .line 3708
    move-object/from16 v8, v71

    .line 3709
    .line 3710
    :cond_7e
    iget-object v11, v4, LF0/d;->e:Ljava/util/ArrayList;

    .line 3711
    .line 3712
    move-object/from16 v13, v153

    .line 3713
    .line 3714
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3715
    .line 3716
    .line 3717
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 3718
    .line 3719
    .line 3720
    move-result v14

    .line 3721
    if-nez v14, :cond_89

    .line 3722
    .line 3723
    const/4 v14, 0x0

    .line 3724
    :goto_59
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 3725
    .line 3726
    .line 3727
    move-result v12

    .line 3728
    if-ge v14, v12, :cond_80

    .line 3729
    .line 3730
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3731
    .line 3732
    .line 3733
    move-result-object v12

    .line 3734
    check-cast v12, Lm0/m;

    .line 3735
    .line 3736
    move-object/from16 v143, v3

    .line 3737
    .line 3738
    sget-object v3, Lm0/g;->c:Ljava/util/UUID;

    .line 3739
    .line 3740
    move-object/from16 v152, v6

    .line 3741
    .line 3742
    iget-object v6, v12, Lm0/m;->H:Ljava/util/UUID;

    .line 3743
    .line 3744
    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 3745
    .line 3746
    .line 3747
    move-result v3

    .line 3748
    if-eqz v3, :cond_7f

    .line 3749
    .line 3750
    iget-object v3, v12, Lm0/m;->I:Ljava/lang/String;

    .line 3751
    .line 3752
    if-eqz v3, :cond_7f

    .line 3753
    .line 3754
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3755
    .line 3756
    .line 3757
    goto :goto_5a

    .line 3758
    :cond_7f
    const/4 v3, 0x1

    .line 3759
    add-int/2addr v14, v3

    .line 3760
    move-object/from16 v3, v143

    .line 3761
    .line 3762
    move-object/from16 v6, v152

    .line 3763
    .line 3764
    goto :goto_59

    .line 3765
    :cond_80
    move-object/from16 v143, v3

    .line 3766
    .line 3767
    move-object/from16 v152, v6

    .line 3768
    .line 3769
    const/4 v3, 0x0

    .line 3770
    :goto_5a
    if-nez v3, :cond_82

    .line 3771
    .line 3772
    :cond_81
    move-object/from16 v139, v7

    .line 3773
    .line 3774
    move-object/from16 v145, v10

    .line 3775
    .line 3776
    const/4 v6, 0x1

    .line 3777
    goto :goto_5e

    .line 3778
    :cond_82
    const/4 v12, 0x0

    .line 3779
    :goto_5b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 3780
    .line 3781
    .line 3782
    move-result v6

    .line 3783
    if-ge v12, v6, :cond_81

    .line 3784
    .line 3785
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3786
    .line 3787
    .line 3788
    move-result-object v6

    .line 3789
    check-cast v6, Lm0/m;

    .line 3790
    .line 3791
    sget-object v14, Lm0/g;->b:Ljava/util/UUID;

    .line 3792
    .line 3793
    move-object/from16 v139, v7

    .line 3794
    .line 3795
    iget-object v7, v6, Lm0/m;->H:Ljava/util/UUID;

    .line 3796
    .line 3797
    invoke-virtual {v14, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 3798
    .line 3799
    .line 3800
    move-result v7

    .line 3801
    if-eqz v7, :cond_83

    .line 3802
    .line 3803
    iget-object v7, v6, Lm0/m;->I:Ljava/lang/String;

    .line 3804
    .line 3805
    if-nez v7, :cond_83

    .line 3806
    .line 3807
    new-instance v7, Lm0/m;

    .line 3808
    .line 3809
    sget-object v14, Lm0/g;->c:Ljava/util/UUID;

    .line 3810
    .line 3811
    move-object/from16 v145, v10

    .line 3812
    .line 3813
    iget-object v10, v6, Lm0/m;->J:Ljava/lang/String;

    .line 3814
    .line 3815
    iget-object v6, v6, Lm0/m;->K:[B

    .line 3816
    .line 3817
    invoke-direct {v7, v14, v3, v10, v6}, Lm0/m;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 3818
    .line 3819
    .line 3820
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3821
    .line 3822
    .line 3823
    :goto_5c
    const/4 v6, 0x1

    .line 3824
    goto :goto_5d

    .line 3825
    :cond_83
    move-object/from16 v145, v10

    .line 3826
    .line 3827
    goto :goto_5c

    .line 3828
    :goto_5d
    add-int/2addr v12, v6

    .line 3829
    move-object/from16 v7, v139

    .line 3830
    .line 3831
    move-object/from16 v10, v145

    .line 3832
    .line 3833
    goto :goto_5b

    .line 3834
    :goto_5e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 3835
    .line 3836
    .line 3837
    move-result v3

    .line 3838
    sub-int/2addr v3, v6

    .line 3839
    :goto_5f
    if-ltz v3, :cond_88

    .line 3840
    .line 3841
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3842
    .line 3843
    .line 3844
    move-result-object v6

    .line 3845
    check-cast v6, Lm0/m;

    .line 3846
    .line 3847
    iget-object v7, v6, Lm0/m;->K:[B

    .line 3848
    .line 3849
    if-eqz v7, :cond_85

    .line 3850
    .line 3851
    :cond_84
    :goto_60
    const/16 v16, -0x1

    .line 3852
    .line 3853
    goto :goto_63

    .line 3854
    :cond_85
    const/4 v12, 0x0

    .line 3855
    :goto_61
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 3856
    .line 3857
    .line 3858
    move-result v7

    .line 3859
    if-ge v12, v7, :cond_84

    .line 3860
    .line 3861
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3862
    .line 3863
    .line 3864
    move-result-object v7

    .line 3865
    check-cast v7, Lm0/m;

    .line 3866
    .line 3867
    iget-object v10, v7, Lm0/m;->K:[B

    .line 3868
    .line 3869
    if-eqz v10, :cond_86

    .line 3870
    .line 3871
    iget-object v10, v6, Lm0/m;->K:[B

    .line 3872
    .line 3873
    if-eqz v10, :cond_87

    .line 3874
    .line 3875
    :cond_86
    const/4 v7, 0x1

    .line 3876
    goto :goto_62

    .line 3877
    :cond_87
    iget-object v10, v6, Lm0/m;->H:Ljava/util/UUID;

    .line 3878
    .line 3879
    invoke-virtual {v7, v10}, Lm0/m;->a(Ljava/util/UUID;)Z

    .line 3880
    .line 3881
    .line 3882
    move-result v7

    .line 3883
    if-eqz v7, :cond_86

    .line 3884
    .line 3885
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3886
    .line 3887
    .line 3888
    goto :goto_60

    .line 3889
    :goto_62
    add-int/2addr v12, v7

    .line 3890
    goto :goto_61

    .line 3891
    :goto_63
    add-int/lit8 v3, v3, -0x1

    .line 3892
    .line 3893
    goto :goto_5f

    .line 3894
    :cond_88
    const/16 v16, -0x1

    .line 3895
    .line 3896
    new-instance v3, Lm0/n;

    .line 3897
    .line 3898
    invoke-direct {v3, v8, v11}, Lm0/n;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3899
    .line 3900
    .line 3901
    iput-object v3, v5, Lm0/s;->r:Lm0/n;

    .line 3902
    .line 3903
    goto :goto_64

    .line 3904
    :cond_89
    move-object/from16 v143, v3

    .line 3905
    .line 3906
    move-object/from16 v152, v6

    .line 3907
    .line 3908
    move-object/from16 v139, v7

    .line 3909
    .line 3910
    move-object/from16 v145, v10

    .line 3911
    .line 3912
    const/16 v16, -0x1

    .line 3913
    .line 3914
    :goto_64
    iget-object v3, v4, LF0/d;->f:Ljava/util/ArrayList;

    .line 3915
    .line 3916
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3917
    .line 3918
    .line 3919
    new-instance v6, Lm0/t;

    .line 3920
    .line 3921
    invoke-direct {v6, v5}, Lm0/t;-><init>(Lm0/s;)V

    .line 3922
    .line 3923
    .line 3924
    iget-object v5, v4, LF0/d;->c:LF0/s;

    .line 3925
    .line 3926
    instance-of v7, v5, LF0/r;

    .line 3927
    .line 3928
    iget-wide v10, v4, LF0/d;->g:J

    .line 3929
    .line 3930
    iget-object v8, v4, LF0/d;->b:Lz4/H;

    .line 3931
    .line 3932
    iget-object v12, v4, LF0/d;->h:Ljava/util/List;

    .line 3933
    .line 3934
    iget-object v4, v4, LF0/d;->i:Ljava/util/List;

    .line 3935
    .line 3936
    if-eqz v7, :cond_8a

    .line 3937
    .line 3938
    new-instance v7, LF0/l;

    .line 3939
    .line 3940
    move-object/from16 v88, v5

    .line 3941
    .line 3942
    check-cast v88, LF0/r;

    .line 3943
    .line 3944
    move-object/from16 v83, v7

    .line 3945
    .line 3946
    move-wide/from16 v84, v10

    .line 3947
    .line 3948
    move-object/from16 v86, v6

    .line 3949
    .line 3950
    move-object/from16 v87, v8

    .line 3951
    .line 3952
    move-object/from16 v89, v3

    .line 3953
    .line 3954
    move-object/from16 v90, v12

    .line 3955
    .line 3956
    move-object/from16 v91, v4

    .line 3957
    .line 3958
    invoke-direct/range {v83 .. v91}, LF0/l;-><init>(JLm0/t;Lz4/H;LF0/r;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 3959
    .line 3960
    .line 3961
    goto :goto_65

    .line 3962
    :cond_8a
    instance-of v7, v5, LF0/n;

    .line 3963
    .line 3964
    if-eqz v7, :cond_8b

    .line 3965
    .line 3966
    new-instance v7, LF0/k;

    .line 3967
    .line 3968
    move-object/from16 v88, v5

    .line 3969
    .line 3970
    check-cast v88, LF0/n;

    .line 3971
    .line 3972
    move-object/from16 v83, v7

    .line 3973
    .line 3974
    move-wide/from16 v84, v10

    .line 3975
    .line 3976
    move-object/from16 v86, v6

    .line 3977
    .line 3978
    move-object/from16 v87, v8

    .line 3979
    .line 3980
    move-object/from16 v89, v3

    .line 3981
    .line 3982
    move-object/from16 v90, v12

    .line 3983
    .line 3984
    move-object/from16 v91, v4

    .line 3985
    .line 3986
    invoke-direct/range {v83 .. v91}, LF0/k;-><init>(JLm0/t;Lz4/H;LF0/n;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 3987
    .line 3988
    .line 3989
    :goto_65
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3990
    .line 3991
    .line 3992
    const/4 v3, 0x1

    .line 3993
    add-int/2addr v2, v3

    .line 3994
    move-object/from16 v153, v13

    .line 3995
    .line 3996
    move-object/from16 v10, v145

    .line 3997
    .line 3998
    move-object/from16 v6, v152

    .line 3999
    .line 4000
    const/4 v12, 0x0

    .line 4001
    goto/16 :goto_57

    .line 4002
    .line 4003
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4004
    .line 4005
    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    .line 4006
    .line 4007
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4008
    .line 4009
    .line 4010
    throw v0

    .line 4011
    :cond_8c
    move-object/from16 v145, v10

    .line 4012
    .line 4013
    const/16 v16, -0x1

    .line 4014
    .line 4015
    new-instance v1, LF0/a;

    .line 4016
    .line 4017
    move-object/from16 v71, v1

    .line 4018
    .line 4019
    move/from16 v74, v9

    .line 4020
    .line 4021
    move-object/from16 v75, v0

    .line 4022
    .line 4023
    move-object/from16 v76, v49

    .line 4024
    .line 4025
    move-object/from16 v77, v82

    .line 4026
    .line 4027
    invoke-direct/range {v71 .. v78}, LF0/a;-><init>(JILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4028
    .line 4029
    .line 4030
    move-object/from16 v12, v65

    .line 4031
    .line 4032
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4033
    .line 4034
    .line 4035
    move-object/from16 v68, v12

    .line 4036
    .line 4037
    move-object/from16 v66, v47

    .line 4038
    .line 4039
    move-object/from16 v65, v138

    .line 4040
    .line 4041
    move-object/from16 v51, v141

    .line 4042
    .line 4043
    move-object/from16 v47, v145

    .line 4044
    .line 4045
    move-object/from16 v49, v146

    .line 4046
    .line 4047
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 4048
    .line 4049
    .line 4050
    .line 4051
    .line 4052
    const/16 v32, 0x1

    .line 4053
    .line 4054
    :goto_66
    const-wide/16 v63, 0x0

    .line 4055
    .line 4056
    goto/16 :goto_71

    .line 4057
    .line 4058
    :cond_8d
    const/16 v16, -0x1

    .line 4059
    .line 4060
    move-object/from16 v89, v6

    .line 4061
    .line 4062
    move-object v8, v10

    .line 4063
    move-object/from16 v83, v13

    .line 4064
    .line 4065
    move-object v13, v15

    .line 4066
    move-object/from16 v95, v39

    .line 4067
    .line 4068
    move/from16 v94, v40

    .line 4069
    .line 4070
    move-object/from16 v4, v49

    .line 4071
    .line 4072
    move/from16 v11, v50

    .line 4073
    .line 4074
    move-object/from16 v97, v63

    .line 4075
    .line 4076
    move/from16 v92, v68

    .line 4077
    .line 4078
    move-object/from16 v93, v70

    .line 4079
    .line 4080
    move-object/from16 v15, v75

    .line 4081
    .line 4082
    move-object/from16 v7, v78

    .line 4083
    .line 4084
    move-object/from16 v6, v81

    .line 4085
    .line 4086
    move-object/from16 v10, v85

    .line 4087
    .line 4088
    move/from16 v84, v90

    .line 4089
    .line 4090
    move-object/from16 v88, v91

    .line 4091
    .line 4092
    move-object/from16 v3, v101

    .line 4093
    .line 4094
    move-object/from16 v100, v113

    .line 4095
    .line 4096
    move-object/from16 v98, v116

    .line 4097
    .line 4098
    move-object/from16 v5, v138

    .line 4099
    .line 4100
    move-object/from16 v90, v139

    .line 4101
    .line 4102
    move-object/from16 v81, v141

    .line 4103
    .line 4104
    move-object/from16 v78, v142

    .line 4105
    .line 4106
    move-object/from16 v96, v143

    .line 4107
    .line 4108
    move-object/from16 v12, v153

    .line 4109
    .line 4110
    move-object/from16 v68, v164

    .line 4111
    .line 4112
    move-object/from16 v70, v0

    .line 4113
    .line 4114
    move-object/from16 v91, v1

    .line 4115
    .line 4116
    move-object/from16 v85, v51

    .line 4117
    .line 4118
    move-wide/from16 v75, v61

    .line 4119
    .line 4120
    move-object/from16 v101, v82

    .line 4121
    .line 4122
    move-wide/from16 v1, v105

    .line 4123
    .line 4124
    move-object/from16 v0, v107

    .line 4125
    .line 4126
    move-wide/from16 v50, v134

    .line 4127
    .line 4128
    move-object/from16 v61, v146

    .line 4129
    .line 4130
    move-object/from16 v82, v14

    .line 4131
    .line 4132
    move-object/from16 v14, v108

    .line 4133
    .line 4134
    goto/16 :goto_1b

    .line 4135
    .line 4136
    :cond_8e
    move-object/from16 v69, v2

    .line 4137
    .line 4138
    move-object/from16 v101, v3

    .line 4139
    .line 4140
    move-object/from16 v80, v4

    .line 4141
    .line 4142
    move-object/from16 v138, v5

    .line 4143
    .line 4144
    move-object/from16 v142, v6

    .line 4145
    .line 4146
    move-object/from16 v141, v7

    .line 4147
    .line 4148
    move-object/from16 v145, v8

    .line 4149
    .line 4150
    move-object/from16 v79, v14

    .line 4151
    .line 4152
    move-wide/from16 v134, v50

    .line 4153
    .line 4154
    move-object/from16 v146, v61

    .line 4155
    .line 4156
    move-object/from16 v164, v68

    .line 4157
    .line 4158
    const/16 v16, -0x1

    .line 4159
    .line 4160
    const/16 v48, 0x0

    .line 4161
    .line 4162
    move-wide/from16 v61, v9

    .line 4163
    .line 4164
    move/from16 v50, v11

    .line 4165
    .line 4166
    move-object v14, v12

    .line 4167
    move-object/from16 v12, v65

    .line 4168
    .line 4169
    move-object/from16 v165, v15

    .line 4170
    .line 4171
    move-object v15, v13

    .line 4172
    move-object/from16 v13, v165

    .line 4173
    .line 4174
    const-string v0, "EventStream"

    .line 4175
    .line 4176
    invoke-static {v15, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4177
    .line 4178
    .line 4179
    move-result v1

    .line 4180
    if-eqz v1, :cond_98

    .line 4181
    .line 4182
    move-object/from16 v10, v141

    .line 4183
    .line 4184
    const/4 v1, 0x0

    .line 4185
    invoke-interface {v15, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4186
    .line 4187
    .line 4188
    move-result-object v2

    .line 4189
    if-nez v2, :cond_8f

    .line 4190
    .line 4191
    move-object/from16 v2, v64

    .line 4192
    .line 4193
    :cond_8f
    move-object/from16 v11, v146

    .line 4194
    .line 4195
    invoke-interface {v15, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4196
    .line 4197
    .line 4198
    move-result-object v3

    .line 4199
    if-nez v3, :cond_90

    .line 4200
    .line 4201
    move-object/from16 v3, v64

    .line 4202
    .line 4203
    :cond_90
    const-string v1, "timescale"

    .line 4204
    .line 4205
    const-wide/16 v4, 0x1

    .line 4206
    .line 4207
    invoke-static {v15, v1, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 4208
    .line 4209
    .line 4210
    move-result-wide v4

    .line 4211
    const-string v1, "presentationTimeOffset"

    .line 4212
    .line 4213
    const-wide/16 v8, 0x0

    .line 4214
    .line 4215
    invoke-static {v15, v1, v8, v9}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 4216
    .line 4217
    .line 4218
    move-result-wide v6

    .line 4219
    new-instance v1, Ljava/util/ArrayList;

    .line 4220
    .line 4221
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4222
    .line 4223
    .line 4224
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 4225
    .line 4226
    const/16 v14, 0x200

    .line 4227
    .line 4228
    invoke-direct {v13, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4229
    .line 4230
    .line 4231
    :goto_67
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4232
    .line 4233
    .line 4234
    const-string v14, "Event"

    .line 4235
    .line 4236
    invoke-static {v15, v14}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4237
    .line 4238
    .line 4239
    move-result v39

    .line 4240
    if-eqz v39, :cond_95

    .line 4241
    .line 4242
    move-object/from16 v65, v12

    .line 4243
    .line 4244
    move-object/from16 v12, v138

    .line 4245
    .line 4246
    invoke-static {v15, v12, v8, v9}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 4247
    .line 4248
    .line 4249
    move-result-wide v39

    .line 4250
    move-object/from16 v12, v47

    .line 4251
    .line 4252
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 4253
    .line 4254
    .line 4255
    .line 4256
    .line 4257
    invoke-static {v15, v12, v8, v9}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 4258
    .line 4259
    .line 4260
    move-result-wide v70

    .line 4261
    const-string v8, "presentationTime"

    .line 4262
    .line 4263
    move-object/from16 v141, v10

    .line 4264
    .line 4265
    const-wide/16 v9, 0x0

    .line 4266
    .line 4267
    invoke-static {v15, v8, v9, v10}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 4268
    .line 4269
    .line 4270
    move-result-wide v63

    .line 4271
    sget-object v8, Lp0/M;->a:Ljava/lang/String;

    .line 4272
    .line 4273
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 4274
    .line 4275
    const-wide/16 v72, 0x3e8

    .line 4276
    .line 4277
    move-wide/from16 v74, v4

    .line 4278
    .line 4279
    move-object/from16 v76, v8

    .line 4280
    .line 4281
    invoke-static/range {v70 .. v76}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 4282
    .line 4283
    .line 4284
    move-result-wide v77

    .line 4285
    sub-long v70, v63, v6

    .line 4286
    .line 4287
    const-wide/32 v72, 0xf4240

    .line 4288
    .line 4289
    .line 4290
    move-wide/from16 v74, v4

    .line 4291
    .line 4292
    move-object/from16 v76, v8

    .line 4293
    .line 4294
    invoke-static/range {v70 .. v76}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 4295
    .line 4296
    .line 4297
    move-result-wide v63

    .line 4298
    const-string v8, "messageData"

    .line 4299
    .line 4300
    const/4 v9, 0x0

    .line 4301
    invoke-interface {v15, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4302
    .line 4303
    .line 4304
    move-result-object v10

    .line 4305
    if-nez v10, :cond_91

    .line 4306
    .line 4307
    const/4 v10, 0x0

    .line 4308
    :cond_91
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 4309
    .line 4310
    .line 4311
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 4312
    .line 4313
    .line 4314
    move-result-object v8

    .line 4315
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4316
    .line 4317
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4318
    .line 4319
    .line 4320
    move-result-object v9

    .line 4321
    invoke-interface {v8, v13, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4322
    .line 4323
    .line 4324
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 4325
    .line 4326
    .line 4327
    :goto_68
    invoke-static {v15, v14}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4328
    .line 4329
    .line 4330
    move-result v9

    .line 4331
    if-nez v9, :cond_93

    .line 4332
    .line 4333
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4334
    .line 4335
    .line 4336
    move-result v9

    .line 4337
    packed-switch v9, :pswitch_data_2

    .line 4338
    .line 4339
    .line 4340
    :goto_69
    move-wide/from16 v81, v4

    .line 4341
    .line 4342
    :cond_92
    :goto_6a
    move-wide/from16 v83, v6

    .line 4343
    .line 4344
    goto/16 :goto_6c

    .line 4345
    .line 4346
    :pswitch_b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4347
    .line 4348
    .line 4349
    move-result-object v9

    .line 4350
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 4351
    .line 4352
    .line 4353
    goto :goto_69

    .line 4354
    :pswitch_c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4355
    .line 4356
    .line 4357
    move-result-object v9

    .line 4358
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 4359
    .line 4360
    .line 4361
    goto :goto_69

    .line 4362
    :pswitch_d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4363
    .line 4364
    .line 4365
    move-result-object v9

    .line 4366
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 4367
    .line 4368
    .line 4369
    goto :goto_69

    .line 4370
    :pswitch_e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4371
    .line 4372
    .line 4373
    move-result-object v9

    .line 4374
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 4375
    .line 4376
    .line 4377
    goto :goto_69

    .line 4378
    :pswitch_f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4379
    .line 4380
    .line 4381
    move-result-object v9

    .line 4382
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 4383
    .line 4384
    .line 4385
    goto :goto_69

    .line 4386
    :pswitch_10
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4387
    .line 4388
    .line 4389
    move-result-object v9

    .line 4390
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 4391
    .line 4392
    .line 4393
    goto :goto_69

    .line 4394
    :pswitch_11
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4395
    .line 4396
    .line 4397
    move-result-object v9

    .line 4398
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4399
    .line 4400
    .line 4401
    goto :goto_69

    .line 4402
    :pswitch_12
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 4403
    .line 4404
    .line 4405
    move-result-object v9

    .line 4406
    move-wide/from16 v81, v4

    .line 4407
    .line 4408
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4409
    .line 4410
    .line 4411
    move-result-object v4

    .line 4412
    invoke-interface {v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4413
    .line 4414
    .line 4415
    goto :goto_6a

    .line 4416
    :pswitch_13
    move-wide/from16 v81, v4

    .line 4417
    .line 4418
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 4419
    .line 4420
    .line 4421
    move-result-object v4

    .line 4422
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4423
    .line 4424
    .line 4425
    move-result-object v5

    .line 4426
    invoke-interface {v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4427
    .line 4428
    .line 4429
    const/4 v4, 0x0

    .line 4430
    :goto_6b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 4431
    .line 4432
    .line 4433
    move-result v5

    .line 4434
    if-ge v4, v5, :cond_92

    .line 4435
    .line 4436
    invoke-interface {v15, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 4437
    .line 4438
    .line 4439
    move-result-object v5

    .line 4440
    invoke-interface {v15, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 4441
    .line 4442
    .line 4443
    move-result-object v9

    .line 4444
    move-wide/from16 v83, v6

    .line 4445
    .line 4446
    invoke-interface {v15, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 4447
    .line 4448
    .line 4449
    move-result-object v6

    .line 4450
    invoke-interface {v8, v5, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4451
    .line 4452
    .line 4453
    const/4 v5, 0x1

    .line 4454
    add-int/2addr v4, v5

    .line 4455
    move-wide/from16 v6, v83

    .line 4456
    .line 4457
    goto :goto_6b

    .line 4458
    :pswitch_14
    move-wide/from16 v81, v4

    .line 4459
    .line 4460
    move-wide/from16 v83, v6

    .line 4461
    .line 4462
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4463
    .line 4464
    .line 4465
    goto :goto_6c

    .line 4466
    :pswitch_15
    move-wide/from16 v81, v4

    .line 4467
    .line 4468
    move-wide/from16 v83, v6

    .line 4469
    .line 4470
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4471
    .line 4472
    const/4 v5, 0x0

    .line 4473
    invoke-interface {v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4474
    .line 4475
    .line 4476
    :goto_6c
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 4477
    .line 4478
    .line 4479
    move-wide/from16 v4, v81

    .line 4480
    .line 4481
    move-wide/from16 v6, v83

    .line 4482
    .line 4483
    goto/16 :goto_68

    .line 4484
    .line 4485
    :cond_93
    move-wide/from16 v81, v4

    .line 4486
    .line 4487
    move-wide/from16 v83, v6

    .line 4488
    .line 4489
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 4490
    .line 4491
    .line 4492
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 4493
    .line 4494
    .line 4495
    move-result-object v4

    .line 4496
    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4497
    .line 4498
    .line 4499
    move-result-object v5

    .line 4500
    if-nez v10, :cond_94

    .line 4501
    .line 4502
    goto :goto_6d

    .line 4503
    :cond_94
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4504
    .line 4505
    invoke-virtual {v10, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4506
    .line 4507
    .line 4508
    move-result-object v4

    .line 4509
    :goto_6d
    new-instance v6, Lg1/a;

    .line 4510
    .line 4511
    move-object/from16 v70, v6

    .line 4512
    .line 4513
    move-object/from16 v71, v2

    .line 4514
    .line 4515
    move-object/from16 v72, v3

    .line 4516
    .line 4517
    move-wide/from16 v73, v77

    .line 4518
    .line 4519
    move-wide/from16 v75, v39

    .line 4520
    .line 4521
    move-object/from16 v77, v4

    .line 4522
    .line 4523
    invoke-direct/range {v70 .. v77}, Lg1/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 4524
    .line 4525
    .line 4526
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 4527
    .line 4528
    .line 4529
    move-result-object v4

    .line 4530
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4531
    .line 4532
    .line 4533
    goto :goto_6e

    .line 4534
    :cond_95
    move-wide/from16 v81, v4

    .line 4535
    .line 4536
    move-wide/from16 v83, v6

    .line 4537
    .line 4538
    move-object/from16 v141, v10

    .line 4539
    .line 4540
    move-object/from16 v65, v12

    .line 4541
    .line 4542
    move-object/from16 v12, v47

    .line 4543
    .line 4544
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4545
    .line 4546
    .line 4547
    :goto_6e
    invoke-static {v15, v0}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4548
    .line 4549
    .line 4550
    move-result v4

    .line 4551
    if-eqz v4, :cond_97

    .line 4552
    .line 4553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 4554
    .line 4555
    .line 4556
    move-result v0

    .line 4557
    new-array v0, v0, [J

    .line 4558
    .line 4559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 4560
    .line 4561
    .line 4562
    move-result v4

    .line 4563
    new-array v4, v4, [Lg1/a;

    .line 4564
    .line 4565
    const/4 v5, 0x0

    .line 4566
    :goto_6f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 4567
    .line 4568
    .line 4569
    move-result v6

    .line 4570
    if-ge v5, v6, :cond_96

    .line 4571
    .line 4572
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4573
    .line 4574
    .line 4575
    move-result-object v6

    .line 4576
    check-cast v6, Landroid/util/Pair;

    .line 4577
    .line 4578
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4579
    .line 4580
    check-cast v7, Ljava/lang/Long;

    .line 4581
    .line 4582
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 4583
    .line 4584
    .line 4585
    move-result-wide v7

    .line 4586
    aput-wide v7, v0, v5

    .line 4587
    .line 4588
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4589
    .line 4590
    check-cast v6, Lg1/a;

    .line 4591
    .line 4592
    aput-object v6, v4, v5

    .line 4593
    .line 4594
    const/16 v32, 0x1

    .line 4595
    .line 4596
    add-int/lit8 v5, v5, 0x1

    .line 4597
    .line 4598
    goto :goto_6f

    .line 4599
    :cond_96
    const/16 v32, 0x1

    .line 4600
    .line 4601
    new-instance v1, LF0/g;

    .line 4602
    .line 4603
    invoke-direct {v1, v2, v3, v0, v4}, LF0/g;-><init>(Ljava/lang/String;Ljava/lang/String;[J[Lg1/a;)V

    .line 4604
    .line 4605
    .line 4606
    move-object/from16 v10, v57

    .line 4607
    .line 4608
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4609
    .line 4610
    .line 4611
    move-object/from16 v57, v10

    .line 4612
    .line 4613
    move-object/from16 v49, v11

    .line 4614
    .line 4615
    move-object/from16 v66, v12

    .line 4616
    .line 4617
    move-object/from16 v68, v65

    .line 4618
    .line 4619
    move-object/from16 v65, v138

    .line 4620
    .line 4621
    move-object/from16 v51, v141

    .line 4622
    .line 4623
    move-object/from16 v47, v145

    .line 4624
    .line 4625
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 4626
    .line 4627
    .line 4628
    .line 4629
    .line 4630
    goto/16 :goto_66

    .line 4631
    .line 4632
    :cond_97
    const/16 v32, 0x1

    .line 4633
    .line 4634
    move-object/from16 v47, v12

    .line 4635
    .line 4636
    move-object/from16 v12, v65

    .line 4637
    .line 4638
    move-wide/from16 v4, v81

    .line 4639
    .line 4640
    move-wide/from16 v6, v83

    .line 4641
    .line 4642
    move-object/from16 v10, v141

    .line 4643
    .line 4644
    const-wide/16 v8, 0x0

    .line 4645
    .line 4646
    goto/16 :goto_67

    .line 4647
    .line 4648
    :cond_98
    move-object/from16 v65, v12

    .line 4649
    .line 4650
    move-object/from16 v12, v47

    .line 4651
    .line 4652
    move-object/from16 v10, v57

    .line 4653
    .line 4654
    move-object/from16 v11, v146

    .line 4655
    .line 4656
    const/16 v32, 0x1

    .line 4657
    .line 4658
    invoke-static {v15, v13}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4659
    .line 4660
    .line 4661
    move-result v0

    .line 4662
    if-eqz v0, :cond_99

    .line 4663
    .line 4664
    const/4 v13, 0x0

    .line 4665
    invoke-static {v15, v13}, LF0/e;->q(Lorg/xmlpull/v1/XmlPullParser;LF0/r;)LF0/r;

    .line 4666
    .line 4667
    .line 4668
    move-result-object v0

    .line 4669
    move-object/from16 v52, v0

    .line 4670
    .line 4671
    move-object/from16 v57, v10

    .line 4672
    .line 4673
    move-object/from16 v49, v11

    .line 4674
    .line 4675
    move-object/from16 v66, v12

    .line 4676
    .line 4677
    move-wide/from16 v9, v61

    .line 4678
    .line 4679
    move-object/from16 v68, v65

    .line 4680
    .line 4681
    move-object/from16 v65, v138

    .line 4682
    .line 4683
    move-object/from16 v51, v141

    .line 4684
    .line 4685
    move-object/from16 v0, v142

    .line 4686
    .line 4687
    move-object/from16 v47, v145

    .line 4688
    .line 4689
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 4690
    .line 4691
    .line 4692
    .line 4693
    .line 4694
    const-wide/16 v63, 0x0

    .line 4695
    .line 4696
    goto/16 :goto_72

    .line 4697
    .line 4698
    :cond_99
    const/4 v13, 0x0

    .line 4699
    invoke-static {v15, v14}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4700
    .line 4701
    .line 4702
    move-result v0

    .line 4703
    if-eqz v0, :cond_9a

    .line 4704
    .line 4705
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 4706
    .line 4707
    .line 4708
    .line 4709
    .line 4710
    invoke-static {v15, v8, v9}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 4711
    .line 4712
    .line 4713
    move-result-wide v39

    .line 4714
    const/4 v1, 0x0

    .line 4715
    move-object/from16 v0, p0

    .line 4716
    .line 4717
    move-wide/from16 v2, v41

    .line 4718
    .line 4719
    move-wide/from16 v4, v45

    .line 4720
    .line 4721
    move-wide/from16 v6, v61

    .line 4722
    .line 4723
    move-wide v13, v8

    .line 4724
    const-wide/16 v63, 0x0

    .line 4725
    .line 4726
    move-wide/from16 v8, v39

    .line 4727
    .line 4728
    move-object/from16 v57, v10

    .line 4729
    .line 4730
    move-object/from16 v49, v11

    .line 4731
    .line 4732
    move-object/from16 v51, v141

    .line 4733
    .line 4734
    move-object/from16 v47, v145

    .line 4735
    .line 4736
    move-wide/from16 v10, v26

    .line 4737
    .line 4738
    invoke-static/range {v0 .. v11}, LF0/e;->r(Lorg/xmlpull/v1/XmlPullParser;LF0/o;JJJJJ)LF0/o;

    .line 4739
    .line 4740
    .line 4741
    move-result-object v0

    .line 4742
    move-object/from16 v52, v0

    .line 4743
    .line 4744
    move-object/from16 v66, v12

    .line 4745
    .line 4746
    move-wide/from16 v58, v39

    .line 4747
    .line 4748
    move-wide/from16 v9, v61

    .line 4749
    .line 4750
    move-object/from16 v68, v65

    .line 4751
    .line 4752
    move-object/from16 v65, v138

    .line 4753
    .line 4754
    :goto_70
    move-object/from16 v0, v142

    .line 4755
    .line 4756
    goto :goto_72

    .line 4757
    :cond_9a
    move-object/from16 v57, v10

    .line 4758
    .line 4759
    move-object/from16 v49, v11

    .line 4760
    .line 4761
    move-object/from16 v51, v141

    .line 4762
    .line 4763
    move-object/from16 v47, v145

    .line 4764
    .line 4765
    move-object/from16 v0, v164

    .line 4766
    .line 4767
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 4768
    .line 4769
    .line 4770
    .line 4771
    .line 4772
    const-wide/16 v63, 0x0

    .line 4773
    .line 4774
    invoke-static {v15, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4775
    .line 4776
    .line 4777
    move-result v0

    .line 4778
    if-eqz v0, :cond_9b

    .line 4779
    .line 4780
    invoke-static {v15, v13, v14}, LF0/e;->d(Lorg/xmlpull/v1/XmlPullParser;J)J

    .line 4781
    .line 4782
    .line 4783
    move-result-wide v39

    .line 4784
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 4785
    .line 4786
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 4787
    .line 4788
    const/4 v1, 0x0

    .line 4789
    move-object/from16 v0, p0

    .line 4790
    .line 4791
    move-wide/from16 v3, v41

    .line 4792
    .line 4793
    move-wide/from16 v5, v45

    .line 4794
    .line 4795
    move-wide/from16 v7, v61

    .line 4796
    .line 4797
    move-wide/from16 v9, v39

    .line 4798
    .line 4799
    move-object/from16 v66, v12

    .line 4800
    .line 4801
    move-object/from16 v68, v65

    .line 4802
    .line 4803
    move-object/from16 v65, v138

    .line 4804
    .line 4805
    move-wide/from16 v11, v26

    .line 4806
    .line 4807
    invoke-static/range {v0 .. v12}, LF0/e;->s(Lorg/xmlpull/v1/XmlPullParser;LF0/p;Ljava/util/List;JJJJJ)LF0/p;

    .line 4808
    .line 4809
    .line 4810
    move-result-object v0

    .line 4811
    move-object/from16 v52, v0

    .line 4812
    .line 4813
    move-wide/from16 v58, v39

    .line 4814
    .line 4815
    :goto_71
    move-wide/from16 v9, v61

    .line 4816
    .line 4817
    goto :goto_70

    .line 4818
    :cond_9b
    move-object/from16 v66, v12

    .line 4819
    .line 4820
    move-object/from16 v68, v65

    .line 4821
    .line 4822
    move-object/from16 v65, v138

    .line 4823
    .line 4824
    const-string v0, "AssetIdentifier"

    .line 4825
    .line 4826
    invoke-static {v15, v0}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4827
    .line 4828
    .line 4829
    move-result v1

    .line 4830
    if-eqz v1, :cond_9c

    .line 4831
    .line 4832
    invoke-static {v15, v0}, LF0/e;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)LF0/f;

    .line 4833
    .line 4834
    .line 4835
    goto :goto_71

    .line 4836
    :cond_9c
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4837
    .line 4838
    .line 4839
    goto :goto_71

    .line 4840
    :goto_72
    invoke-static {v15, v0}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4841
    .line 4842
    .line 4843
    move-result v1

    .line 4844
    if-eqz v1, :cond_a0

    .line 4845
    .line 4846
    new-instance v0, LF0/h;

    .line 4847
    .line 4848
    move-object/from16 v52, v0

    .line 4849
    .line 4850
    move-object/from16 v56, v68

    .line 4851
    .line 4852
    invoke-direct/range {v52 .. v57}, LF0/h;-><init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V

    .line 4853
    .line 4854
    .line 4855
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4856
    .line 4857
    .line 4858
    move-result-object v1

    .line 4859
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 4860
    .line 4861
    .line 4862
    move-result-object v0

    .line 4863
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 4864
    .line 4865
    check-cast v1, LF0/h;

    .line 4866
    .line 4867
    iget-wide v2, v1, LF0/h;->b:J

    .line 4868
    .line 4869
    cmp-long v4, v2, v13

    .line 4870
    .line 4871
    if-nez v4, :cond_9e

    .line 4872
    .line 4873
    if-eqz v23, :cond_9d

    .line 4874
    .line 4875
    move-wide/from16 v8, v43

    .line 4876
    .line 4877
    move-object/from16 v3, v67

    .line 4878
    .line 4879
    const/4 v2, 0x0

    .line 4880
    const/16 v34, 0x1

    .line 4881
    .line 4882
    goto :goto_75

    .line 4883
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4884
    .line 4885
    const-string v1, "Unable to determine start of period "

    .line 4886
    .line 4887
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4888
    .line 4889
    .line 4890
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    .line 4891
    .line 4892
    .line 4893
    move-result v1

    .line 4894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4895
    .line 4896
    .line 4897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4898
    .line 4899
    .line 4900
    move-result-object v0

    .line 4901
    const/4 v2, 0x0

    .line 4902
    invoke-static {v0, v2}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 4903
    .line 4904
    .line 4905
    move-result-object v0

    .line 4906
    throw v0

    .line 4907
    :cond_9e
    const/4 v2, 0x0

    .line 4908
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4909
    .line 4910
    check-cast v0, Ljava/lang/Long;

    .line 4911
    .line 4912
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 4913
    .line 4914
    .line 4915
    move-result-wide v3

    .line 4916
    cmp-long v0, v3, v13

    .line 4917
    .line 4918
    if-nez v0, :cond_9f

    .line 4919
    .line 4920
    move-wide v8, v13

    .line 4921
    :goto_73
    move-object/from16 v3, v67

    .line 4922
    .line 4923
    goto :goto_74

    .line 4924
    :cond_9f
    iget-wide v5, v1, LF0/h;->b:J

    .line 4925
    .line 4926
    add-long v8, v5, v3

    .line 4927
    .line 4928
    goto :goto_73

    .line 4929
    :goto_74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4930
    .line 4931
    .line 4932
    :goto_75
    move-wide/from16 v0, v134

    .line 4933
    .line 4934
    goto :goto_76

    .line 4935
    :cond_a0
    move-object v6, v0

    .line 4936
    move-wide v0, v13

    .line 4937
    move-object v13, v15

    .line 4938
    move-object/from16 v8, v47

    .line 4939
    .line 4940
    move-object/from16 v61, v49

    .line 4941
    .line 4942
    move/from16 v11, v50

    .line 4943
    .line 4944
    move-object/from16 v7, v51

    .line 4945
    .line 4946
    move-object/from16 v5, v65

    .line 4947
    .line 4948
    move-object/from16 v47, v66

    .line 4949
    .line 4950
    move-object/from16 v12, v67

    .line 4951
    .line 4952
    move-object/from16 v15, v68

    .line 4953
    .line 4954
    move-object/from16 v2, v69

    .line 4955
    .line 4956
    move-object/from16 v14, v79

    .line 4957
    .line 4958
    move-object/from16 v4, v80

    .line 4959
    .line 4960
    move-object/from16 v3, v101

    .line 4961
    .line 4962
    move-wide/from16 v50, v134

    .line 4963
    .line 4964
    goto/16 :goto_19

    .line 4965
    .line 4966
    :cond_a1
    move-object/from16 v69, v2

    .line 4967
    .line 4968
    move-object/from16 v60, v10

    .line 4969
    .line 4970
    move-object v3, v12

    .line 4971
    move-wide/from16 v43, v14

    .line 4972
    .line 4973
    move-wide/from16 v134, v50

    .line 4974
    .line 4975
    const/4 v2, 0x0

    .line 4976
    const/16 v16, -0x1

    .line 4977
    .line 4978
    const/16 v32, 0x1

    .line 4979
    .line 4980
    const/16 v48, 0x0

    .line 4981
    .line 4982
    const-wide/16 v63, 0x0

    .line 4983
    .line 4984
    move/from16 v50, v11

    .line 4985
    .line 4986
    move-object v15, v13

    .line 4987
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 4988
    .line 4989
    .line 4990
    .line 4991
    .line 4992
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4993
    .line 4994
    .line 4995
    move-wide/from16 v8, v43

    .line 4996
    .line 4997
    goto :goto_75

    .line 4998
    :goto_76
    const-string v4, "MPD"

    .line 4999
    .line 5000
    invoke-static {v15, v4}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 5001
    .line 5002
    .line 5003
    move-result v4

    .line 5004
    if-eqz v4, :cond_a6

    .line 5005
    .line 5006
    cmp-long v0, v19, v13

    .line 5007
    .line 5008
    if-nez v0, :cond_a4

    .line 5009
    .line 5010
    cmp-long v0, v8, v13

    .line 5011
    .line 5012
    if-eqz v0, :cond_a2

    .line 5013
    .line 5014
    move-wide/from16 v19, v8

    .line 5015
    .line 5016
    goto :goto_77

    .line 5017
    :cond_a2
    if-eqz v23, :cond_a3

    .line 5018
    .line 5019
    goto :goto_77

    .line 5020
    :cond_a3
    const-string v0, "Unable to determine duration of static manifest."

    .line 5021
    .line 5022
    invoke-static {v0, v2}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 5023
    .line 5024
    .line 5025
    move-result-object v0

    .line 5026
    throw v0

    .line 5027
    :cond_a4
    :goto_77
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5028
    .line 5029
    .line 5030
    move-result v0

    .line 5031
    if-nez v0, :cond_a5

    .line 5032
    .line 5033
    new-instance v0, LF0/c;

    .line 5034
    .line 5035
    move-object/from16 v16, v0

    .line 5036
    .line 5037
    move-object/from16 v32, v35

    .line 5038
    .line 5039
    move-object/from16 v33, v36

    .line 5040
    .line 5041
    move-object/from16 v34, v38

    .line 5042
    .line 5043
    move-object/from16 v35, v37

    .line 5044
    .line 5045
    move-object/from16 v36, v3

    .line 5046
    .line 5047
    invoke-direct/range {v16 .. v36}, LF0/c;-><init>(JJJZJJJJLF0/i;LF0/v;Lm0/C;Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 5048
    .line 5049
    .line 5050
    return-object v0

    .line 5051
    :cond_a5
    const-string v0, "No periods found."

    .line 5052
    .line 5053
    invoke-static {v0, v2}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 5054
    .line 5055
    .line 5056
    move-result-object v0

    .line 5057
    throw v0

    .line 5058
    :cond_a6
    move-object v10, v2

    .line 5059
    move-object v5, v3

    .line 5060
    move/from16 v11, v50

    .line 5061
    .line 5062
    move-object/from16 v4, v60

    .line 5063
    .line 5064
    move-object/from16 v2, v69

    .line 5065
    .line 5066
    const/4 v12, 0x0

    .line 5067
    move-wide/from16 v165, v13

    .line 5068
    .line 5069
    move-object v13, v15

    .line 5070
    move-wide v14, v8

    .line 5071
    move-wide/from16 v8, v165

    .line 5072
    .line 5073
    goto/16 :goto_b

    .line 5074
    .line 5075
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5076
    .line 5077
    .line 5078
    .line 5079
    .line 5080
    .line 5081
    .line 5082
    .line 5083
    .line 5084
    .line 5085
    .line 5086
    .line 5087
    .line 5088
    .line 5089
    .line 5090
    .line 5091
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 5092
    .line 5093
    .line 5094
    .line 5095
    .line 5096
    .line 5097
    .line 5098
    .line 5099
    .line 5100
    .line 5101
    .line 5102
    .line 5103
    .line 5104
    .line 5105
    :pswitch_data_2
    .packed-switch 0x0
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
.end method

.method public static n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)LF0/j;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v6

    .line 6
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-wide/16 p1, -0x1

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    const-string v0, "-"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v0, p0, v0

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    array-length v2, p0

    .line 28
    const/4 v3, 0x2

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    aget-object p0, p0, p1

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    sub-long/2addr p0, v0

    .line 39
    const-wide/16 v2, 0x1

    .line 40
    .line 41
    add-long/2addr p0, v2

    .line 42
    move-wide v4, p0

    .line 43
    :goto_0
    move-wide v2, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    move-wide v4, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_2
    new-instance p0, LF0/j;

    .line 51
    .line 52
    move-object v1, p0

    .line 53
    invoke-direct/range {v1 .. v6}, LF0/j;-><init>(JJLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static o(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/16 v5, 0x8

    .line 13
    .line 14
    const/4 v6, -0x1

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :sswitch_0
    const-string v1, "supplementary"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    const/16 v6, 0xc

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string v1, "emergency"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    const/16 v6, 0xb

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :sswitch_2
    const-string v1, "commentary"

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_3
    const/16 v6, 0xa

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :sswitch_3
    const-string v1, "caption"

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_4
    const/16 v6, 0x9

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :sswitch_4
    const-string v1, "sign"

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_5

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_5
    const/16 v6, 0x8

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :sswitch_5
    const-string v1, "main"

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const/4 v6, 0x7

    .line 100
    goto :goto_0

    .line 101
    :sswitch_6
    const-string v1, "dub"

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    const/4 v6, 0x6

    .line 111
    goto :goto_0

    .line 112
    :sswitch_7
    const-string v1, "forced-subtitle"

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    const/4 v6, 0x5

    .line 122
    goto :goto_0

    .line 123
    :sswitch_8
    const-string v1, "alternate"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_9

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_9
    const/4 v6, 0x4

    .line 133
    goto :goto_0

    .line 134
    :sswitch_9
    const-string v1, "forced_subtitle"

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-nez p0, :cond_a

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_a
    const/4 v6, 0x3

    .line 144
    goto :goto_0

    .line 145
    :sswitch_a
    const-string v1, "enhanced-audio-intelligibility"

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_b

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_b
    const/4 v6, 0x2

    .line 155
    goto :goto_0

    .line 156
    :sswitch_b
    const-string v1, "description"

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-nez p0, :cond_c

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_c
    const/4 v6, 0x1

    .line 166
    goto :goto_0

    .line 167
    :sswitch_c
    const-string v1, "subtitle"

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-nez p0, :cond_d

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_d
    const/4 v6, 0x0

    .line 177
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 178
    .line 179
    .line 180
    return v0

    .line 181
    :pswitch_0
    return v4

    .line 182
    :pswitch_1
    const/16 p0, 0x20

    .line 183
    .line 184
    return p0

    .line 185
    :pswitch_2
    return v5

    .line 186
    :pswitch_3
    const/16 p0, 0x40

    .line 187
    .line 188
    return p0

    .line 189
    :pswitch_4
    const/16 p0, 0x100

    .line 190
    .line 191
    return p0

    .line 192
    :pswitch_5
    return v2

    .line 193
    :pswitch_6
    const/16 p0, 0x10

    .line 194
    .line 195
    return p0

    .line 196
    :pswitch_7
    return v3

    .line 197
    :pswitch_8
    const/16 p0, 0x800

    .line 198
    .line 199
    return p0

    .line 200
    :pswitch_9
    const/16 p0, 0x200

    .line 201
    .line 202
    return p0

    .line 203
    :pswitch_a
    const/16 p0, 0x80

    .line 204
    .line 205
    return p0

    .line 206
    nop

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Ljava/util/ArrayList;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, LF0/f;

    .line 14
    .line 15
    const-string v3, "http://dashif.org/guidelines/trickmode"

    .line 16
    .line 17
    iget-object v2, v2, LF0/f;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3, v2}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x4000

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public static q(Lorg/xmlpull/v1/XmlPullParser;LF0/r;)LF0/r;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v4, v1, LF0/s;->b:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v2

    .line 13
    :goto_0
    const-string v6, "timescale"

    .line 14
    .line 15
    invoke-static {v0, v6, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-wide v6, v1, LF0/s;->c:J

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-wide v6, v4

    .line 27
    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 28
    .line 29
    invoke-static {v0, v8, v6, v7}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v11

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-wide v6, v1, LF0/r;->d:J

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-wide v6, v4

    .line 39
    :goto_2
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-wide v4, v1, LF0/r;->e:J

    .line 42
    .line 43
    :cond_3
    const/4 v8, 0x0

    .line 44
    const-string v13, "indexRange"

    .line 45
    .line 46
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    if-eqz v13, :cond_4

    .line 51
    .line 52
    const-string v4, "-"

    .line 53
    .line 54
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    aget-object v5, v4, v5

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    const/4 v7, 0x1

    .line 66
    aget-object v4, v4, v7

    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    sub-long/2addr v13, v5

    .line 73
    add-long/2addr v13, v2

    .line 74
    move-wide v15, v13

    .line 75
    move-wide v13, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-wide v15, v4

    .line 78
    move-wide v13, v6

    .line 79
    :goto_3
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v8, v1, LF0/s;->a:LF0/j;

    .line 82
    .line 83
    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 84
    .line 85
    .line 86
    const-string v1, "Initialization"

    .line 87
    .line 88
    invoke-static {v0, v1}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    const-string v1, "sourceURL"

    .line 95
    .line 96
    const-string v2, "range"

    .line 97
    .line 98
    invoke-static {v0, v1, v2}, LF0/e;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)LF0/j;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object v8, v1

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    .line 106
    .line 107
    :goto_4
    const-string v1, "SegmentBase"

    .line 108
    .line 109
    invoke-static {v0, v1}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    new-instance v0, LF0/r;

    .line 116
    .line 117
    move-object v7, v0

    .line 118
    invoke-direct/range {v7 .. v16}, LF0/r;-><init>(LF0/j;JJJJ)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public static r(Lorg/xmlpull/v1/XmlPullParser;LF0/o;JJJJJ)LF0/o;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v4, v1, LF0/s;->b:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v2

    .line 13
    :goto_0
    const-string v6, "timescale"

    .line 14
    .line 15
    invoke-static {v0, v6, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-wide v4, v1, LF0/s;->c:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    :goto_1
    const-string v6, "presentationTimeOffset"

    .line 27
    .line 28
    invoke-static {v0, v6, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v11

    .line 32
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-wide v6, v1, LF0/n;->e:J

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-wide v6, v4

    .line 43
    :goto_2
    const-string v8, "duration"

    .line 44
    .line 45
    invoke-static {v0, v8, v6, v7}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v15

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-wide v2, v1, LF0/n;->d:J

    .line 52
    .line 53
    :cond_3
    const-string v6, "startNumber"

    .line 54
    .line 55
    invoke-static {v0, v6, v2, v3}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v13

    .line 59
    cmp-long v2, p8, v4

    .line 60
    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    move-wide/from16 v2, p6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move-wide/from16 v2, p8

    .line 67
    .line 68
    :goto_3
    const-wide v6, 0x7fffffffffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v8, v2, v6

    .line 74
    .line 75
    if-nez v8, :cond_5

    .line 76
    .line 77
    move-wide/from16 v18, v4

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    move-wide/from16 v18, v2

    .line 81
    .line 82
    :goto_4
    const/4 v2, 0x0

    .line 83
    move-object v3, v2

    .line 84
    move-object v4, v3

    .line 85
    :cond_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 86
    .line 87
    .line 88
    const-string v5, "Initialization"

    .line 89
    .line 90
    invoke-static {v0, v5}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    const-string v3, "sourceURL"

    .line 97
    .line 98
    const-string v5, "range"

    .line 99
    .line 100
    invoke-static {v0, v3, v5}, LF0/e;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)LF0/j;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-wide/from16 v5, p4

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    const-string v5, "SegmentTimeline"

    .line 108
    .line 109
    invoke-static {v0, v5}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_8

    .line 114
    .line 115
    move-wide/from16 v5, p4

    .line 116
    .line 117
    invoke-static {v0, v9, v10, v5, v6}, LF0/e;->t(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    goto :goto_5

    .line 122
    :cond_8
    move-wide/from16 v5, p4

    .line 123
    .line 124
    const-string v7, "SegmentURL"

    .line 125
    .line 126
    invoke-static {v0, v7}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_a

    .line 131
    .line 132
    if-nez v2, :cond_9

    .line 133
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    :cond_9
    const-string v7, "media"

    .line 140
    .line 141
    const-string v8, "mediaRange"

    .line 142
    .line 143
    invoke-static {v0, v7, v8}, LF0/e;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)LF0/j;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_a
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 152
    .line 153
    .line 154
    :goto_5
    const-string v7, "SegmentList"

    .line 155
    .line 156
    invoke-static {v0, v7}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_6

    .line 161
    .line 162
    if-eqz v1, :cond_e

    .line 163
    .line 164
    if-eqz v3, :cond_b

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_b
    iget-object v3, v1, LF0/s;->a:LF0/j;

    .line 168
    .line 169
    :goto_6
    if-eqz v4, :cond_c

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_c
    iget-object v4, v1, LF0/n;->f:Ljava/util/List;

    .line 173
    .line 174
    :goto_7
    if-eqz v2, :cond_d

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_d
    iget-object v2, v1, LF0/o;->j:Ljava/util/List;

    .line 178
    .line 179
    :cond_e
    :goto_8
    move-object/from16 v20, v2

    .line 180
    .line 181
    move-object v8, v3

    .line 182
    move-object/from16 v17, v4

    .line 183
    .line 184
    new-instance v0, LF0/o;

    .line 185
    .line 186
    move-object v7, v0

    .line 187
    invoke-static/range {p10 .. p11}, Lp0/M;->R(J)J

    .line 188
    .line 189
    .line 190
    move-result-wide v21

    .line 191
    invoke-static/range {p2 .. p3}, Lp0/M;->R(J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v23

    .line 195
    invoke-direct/range {v7 .. v24}, LF0/o;-><init>(LF0/j;JJJJLjava/util/List;JLjava/util/List;JJ)V

    .line 196
    .line 197
    .line 198
    return-object v0
.end method

.method public static s(Lorg/xmlpull/v1/XmlPullParser;LF0/p;Ljava/util/List;JJJJJ)LF0/p;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v4, v1, LF0/s;->b:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v4, v2

    .line 13
    :goto_0
    const-string v6, "timescale"

    .line 14
    .line 15
    invoke-static {v0, v6, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-wide v4, v1, LF0/s;->c:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    :goto_1
    const-string v6, "presentationTimeOffset"

    .line 27
    .line 28
    invoke-static {v0, v6, v4, v5}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v11

    .line 32
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-wide v6, v1, LF0/n;->e:J

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-wide v6, v4

    .line 43
    :goto_2
    const-string v8, "duration"

    .line 44
    .line 45
    invoke-static {v0, v8, v6, v7}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v17

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-wide v2, v1, LF0/n;->d:J

    .line 52
    .line 53
    :cond_3
    const-string v6, "startNumber"

    .line 54
    .line 55
    invoke-static {v0, v6, v2, v3}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v13

    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ge v2, v3, :cond_5

    .line 65
    .line 66
    move-object/from16 v3, p2

    .line 67
    .line 68
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, LF0/f;

    .line 73
    .line 74
    iget-object v7, v6, LF0/f;->a:Ljava/lang/String;

    .line 75
    .line 76
    const-string v8, "http://dashif.org/guidelines/last-segment-number"

    .line 77
    .line 78
    invoke-static {v8, v7}, Ly4/k;->B(Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    iget-object v2, v6, LF0/f;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    :goto_4
    move-wide v15, v2

    .line 91
    goto :goto_5

    .line 92
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    const-wide/16 v2, -0x1

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :goto_5
    cmp-long v2, p9, v4

    .line 99
    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    move-wide/from16 v2, p7

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    move-wide/from16 v2, p9

    .line 106
    .line 107
    :goto_6
    const-wide v6, 0x7fffffffffffffffL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmp-long v8, v2, v6

    .line 113
    .line 114
    if-nez v8, :cond_7

    .line 115
    .line 116
    move-wide/from16 v20, v4

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    move-wide/from16 v20, v2

    .line 120
    .line 121
    :goto_7
    const/4 v2, 0x0

    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-object v3, v1, LF0/p;->k:LF0/u;

    .line 125
    .line 126
    goto :goto_8

    .line 127
    :cond_8
    move-object v3, v2

    .line 128
    :goto_8
    const-string v4, "media"

    .line 129
    .line 130
    invoke-static {v0, v4, v3}, LF0/e;->u(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;LF0/u;)LF0/u;

    .line 131
    .line 132
    .line 133
    move-result-object v23

    .line 134
    if-eqz v1, :cond_9

    .line 135
    .line 136
    iget-object v3, v1, LF0/p;->j:LF0/u;

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_9
    move-object v3, v2

    .line 140
    :goto_9
    const-string v4, "initialization"

    .line 141
    .line 142
    invoke-static {v0, v4, v3}, LF0/e;->u(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;LF0/u;)LF0/u;

    .line 143
    .line 144
    .line 145
    move-result-object v22

    .line 146
    move-object v3, v2

    .line 147
    :cond_a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 148
    .line 149
    .line 150
    const-string v4, "Initialization"

    .line 151
    .line 152
    invoke-static {v0, v4}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_b

    .line 157
    .line 158
    const-string v2, "sourceURL"

    .line 159
    .line 160
    const-string v4, "range"

    .line 161
    .line 162
    invoke-static {v0, v2, v4}, LF0/e;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)LF0/j;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-wide/from16 v4, p5

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_b
    const-string v4, "SegmentTimeline"

    .line 170
    .line 171
    invoke-static {v0, v4}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-eqz v4, :cond_c

    .line 176
    .line 177
    move-wide/from16 v4, p5

    .line 178
    .line 179
    invoke-static {v0, v9, v10, v4, v5}, LF0/e;->t(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    goto :goto_a

    .line 184
    :cond_c
    move-wide/from16 v4, p5

    .line 185
    .line 186
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 187
    .line 188
    .line 189
    :goto_a
    const-string v6, "SegmentTemplate"

    .line 190
    .line 191
    invoke-static {v0, v6}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_a

    .line 196
    .line 197
    if-eqz v1, :cond_f

    .line 198
    .line 199
    if-eqz v2, :cond_d

    .line 200
    .line 201
    goto :goto_b

    .line 202
    :cond_d
    iget-object v2, v1, LF0/s;->a:LF0/j;

    .line 203
    .line 204
    :goto_b
    if-eqz v3, :cond_e

    .line 205
    .line 206
    goto :goto_c

    .line 207
    :cond_e
    iget-object v3, v1, LF0/n;->f:Ljava/util/List;

    .line 208
    .line 209
    :cond_f
    :goto_c
    move-object v8, v2

    .line 210
    move-object/from16 v19, v3

    .line 211
    .line 212
    new-instance v0, LF0/p;

    .line 213
    .line 214
    move-object v7, v0

    .line 215
    invoke-static/range {p11 .. p12}, Lp0/M;->R(J)J

    .line 216
    .line 217
    .line 218
    move-result-wide v24

    .line 219
    invoke-static/range {p3 .. p4}, Lp0/M;->R(J)J

    .line 220
    .line 221
    .line 222
    move-result-wide v26

    .line 223
    invoke-direct/range {v7 .. v27}, LF0/p;-><init>(LF0/j;JJJJJLjava/util/List;JLF0/u;LF0/u;JJ)V

    .line 224
    .line 225
    .line 226
    return-object v0
.end method

.method public static t(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v9, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v12, 0x0

    .line 16
    move-wide v2, v1

    .line 17
    move-wide v4, v10

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 21
    .line 22
    .line 23
    const-string v7, "S"

    .line 24
    .line 25
    invoke-static {v0, v7}, LZ3/C;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_3

    .line 30
    .line 31
    const-string v7, "t"

    .line 32
    .line 33
    invoke-static {v0, v7, v10, v11}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v13

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    move-object v1, v9

    .line 40
    move-wide v7, v13

    .line 41
    invoke-static/range {v1 .. v8}, LF0/e;->a(Ljava/util/ArrayList;JJIJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    :cond_1
    cmp-long v1, v13, v10

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-wide v13, v2

    .line 51
    :goto_0
    const-string v1, "d"

    .line 52
    .line 53
    invoke-static {v0, v1, v10, v11}, LF0/e;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    const-string v3, "r"

    .line 58
    .line 59
    invoke-static {v0, v3, v12}, LF0/e;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x1

    .line 64
    move-wide v4, v1

    .line 65
    move v6, v3

    .line 66
    move-wide v2, v13

    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static/range {p0 .. p0}, LF0/e;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    const-string v7, "SegmentTimeline"

    .line 73
    .line 74
    invoke-static {v0, v7}, LZ3/C;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_0

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 83
    .line 84
    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 85
    .line 86
    const-wide/16 v14, 0x3e8

    .line 87
    .line 88
    move-wide/from16 v10, p3

    .line 89
    .line 90
    move-wide/from16 v12, p1

    .line 91
    .line 92
    invoke-static/range {v10 .. v16}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    move-object v0, v9

    .line 97
    move-wide v1, v2

    .line 98
    move-wide v3, v4

    .line 99
    move v5, v6

    .line 100
    move-wide v6, v7

    .line 101
    invoke-static/range {v0 .. v7}, LF0/e;->a(Ljava/util/ArrayList;JJIJ)J

    .line 102
    .line 103
    .line 104
    :cond_4
    return-object v9
.end method

.method public static u(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;LF0/u;)LF0/u;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_a

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ge v3, v4, :cond_9

    .line 35
    .line 36
    const-string v4, "$"

    .line 37
    .line 38
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, -0x1

    .line 43
    if-ne v5, v6, :cond_0

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    if-eq v5, v3, :cond_1

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move v3, v5

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const-string v5, "$$"

    .line 127
    .line 128
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_2

    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x2

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    .line 175
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v5, "RepresentationID"

    .line 184
    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    const/4 v7, 0x1

    .line 190
    if-eqz v5, :cond_3

    .line 191
    .line 192
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_3
    const-string v5, "%0"

    .line 202
    .line 203
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eq v5, v6, :cond_5

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    const-string v9, "d"

    .line 214
    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-nez v10, :cond_4

    .line 220
    .line 221
    const-string v10, "x"

    .line 222
    .line 223
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-nez v10, :cond_4

    .line 228
    .line 229
    const-string v10, "X"

    .line 230
    .line 231
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_4

    .line 236
    .line 237
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    :cond_4
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    goto :goto_1

    .line 246
    :cond_5
    const-string v8, "%01d"

    .line 247
    .line 248
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    const/4 v9, 0x2

    .line 256
    sparse-switch v5, :sswitch_data_0

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :sswitch_0
    const-string v5, "Bandwidth"

    .line 261
    .line 262
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-nez v3, :cond_6

    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_6
    const/4 v6, 0x2

    .line 270
    goto :goto_2

    .line 271
    :sswitch_1
    const-string v5, "Time"

    .line 272
    .line 273
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-nez v3, :cond_7

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_7
    const/4 v6, 0x1

    .line 281
    goto :goto_2

    .line 282
    :sswitch_2
    const-string v5, "Number"

    .line 283
    .line 284
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-nez v3, :cond_8

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_8
    const/4 v6, 0x0

    .line 292
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 293
    .line 294
    .line 295
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 296
    .line 297
    const-string p2, "Invalid template: "

    .line 298
    .line 299
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :pswitch_0
    const/4 v3, 0x3

    .line 308
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    goto :goto_3

    .line 316
    :pswitch_1
    const/4 v3, 0x4

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :pswitch_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    sub-int/2addr v3, v7

    .line 337
    invoke-virtual {v0, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    :goto_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 344
    .line 345
    move v3, v4

    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_9
    new-instance p0, LF0/u;

    .line 349
    .line 350
    invoke-direct {p0, p1, p2, v0}, LF0/u;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 351
    .line 352
    .line 353
    return-object p0

    .line 354
    :cond_a
    return-object p2

    .line 355
    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B(Landroid/net/Uri;Ls0/k;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, LF0/e;->G:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne p2, v2, :cond_0

    .line 17
    .line 18
    const-string p2, "MPD"

    .line 19
    .line 20
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-static {v1, p1}, LF0/e;->m(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)LF0/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    .line 38
    .line 39
    invoke-static {p1, v0}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    invoke-static {v0, p1}, Lm0/P;->b(Ljava/lang/String;Ljava/lang/Exception;)Lm0/P;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method
