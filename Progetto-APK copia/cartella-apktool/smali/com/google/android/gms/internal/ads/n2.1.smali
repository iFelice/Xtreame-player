.class public final Lcom/google/android/gms/internal/ads/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/W1;


# static fields
.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final L:Ljava/util/regex/Pattern;

.field public static final M:Ljava/util/regex/Pattern;

.field public static final N:Ljava/util/regex/Pattern;

.field public static final O:Lw1/d;


# instance fields
.field public final G:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->H:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->I:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->J:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->K:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->L:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->M:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->N:Ljava/util/regex/Pattern;

    new-instance v0, Lw1/d;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lw1/d;-><init>(FII)V

    sput-object v0, Lcom/google/android/gms/internal/ads/n2;->O:Lw1/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n2;->G:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public static b(Ljava/lang/String;Lw1/d;)J
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/n2;->H:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/4 v4, 0x5

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x3

    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v8

    .line 34
    const-wide/16 v10, 0xe10

    .line 35
    .line 36
    mul-long v8, v8, v10

    .line 37
    .line 38
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    long-to-double v7, v8

    .line 46
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    const-wide/16 v11, 0x3c

    .line 51
    .line 52
    mul-long v9, v9, v11

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    long-to-double v9, v9

    .line 62
    add-double/2addr v7, v9

    .line 63
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    long-to-double v9, v9

    .line 68
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-wide/16 v5, 0x0

    .line 73
    .line 74
    if-eqz p0, :cond_0

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-wide v11, v5

    .line 82
    :goto_0
    add-double/2addr v7, v9

    .line 83
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    long-to-float p0, v9

    .line 94
    iget v1, p1, Lw1/d;->a:F

    .line 95
    .line 96
    div-float/2addr p0, v1

    .line 97
    float-to-double v9, p0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    move-wide v9, v5

    .line 100
    :goto_1
    add-double/2addr v7, v11

    .line 101
    const/4 p0, 0x6

    .line 102
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    long-to-double v0, v0

    .line 113
    iget p0, p1, Lw1/d;->b:I

    .line 114
    .line 115
    int-to-double v4, p0

    .line 116
    iget p0, p1, Lw1/d;->a:F

    .line 117
    .line 118
    float-to-double p0, p0

    .line 119
    div-double/2addr v0, v4

    .line 120
    div-double v5, v0, p0

    .line 121
    .line 122
    :cond_2
    add-double/2addr v7, v9

    .line 123
    add-double/2addr v7, v5

    .line 124
    mul-double v7, v7, v2

    .line 125
    .line 126
    double-to-long p0, v7

    .line 127
    return-wide p0

    .line 128
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/n2;->I:Ljava/util/regex/Pattern;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_10

    .line 139
    .line 140
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 148
    .line 149
    .line 150
    move-result-wide v9

    .line 151
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/16 v1, 0x66

    .line 163
    .line 164
    if-eq v0, v1, :cond_9

    .line 165
    .line 166
    const/16 v1, 0x68

    .line 167
    .line 168
    if-eq v0, v1, :cond_8

    .line 169
    .line 170
    const/16 v1, 0x6d

    .line 171
    .line 172
    if-eq v0, v1, :cond_7

    .line 173
    .line 174
    const/16 v1, 0xda6

    .line 175
    .line 176
    if-eq v0, v1, :cond_6

    .line 177
    .line 178
    const/16 v1, 0x73

    .line 179
    .line 180
    if-eq v0, v1, :cond_5

    .line 181
    .line 182
    const/16 v1, 0x74

    .line 183
    .line 184
    if-eq v0, v1, :cond_4

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    const-string v0, "t"

    .line 188
    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_a

    .line 194
    .line 195
    const/4 v7, 0x5

    .line 196
    goto :goto_3

    .line 197
    :cond_5
    const-string v0, "s"

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_a

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const-string v0, "ms"

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_a

    .line 213
    .line 214
    const/4 v7, 0x3

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    const-string v0, "m"

    .line 217
    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    if-eqz p0, :cond_a

    .line 223
    .line 224
    const/4 v7, 0x1

    .line 225
    goto :goto_3

    .line 226
    :cond_8
    const-string v0, "h"

    .line 227
    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-eqz p0, :cond_a

    .line 233
    .line 234
    const/4 v7, 0x0

    .line 235
    goto :goto_3

    .line 236
    :cond_9
    const-string v0, "f"

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-eqz p0, :cond_a

    .line 243
    .line 244
    const/4 v7, 0x4

    .line 245
    goto :goto_3

    .line 246
    :cond_a
    :goto_2
    const/4 v7, -0x1

    .line 247
    :goto_3
    if-eqz v7, :cond_f

    .line 248
    .line 249
    if-eq v7, v8, :cond_e

    .line 250
    .line 251
    if-eq v7, v6, :cond_d

    .line 252
    .line 253
    if-eq v7, v5, :cond_c

    .line 254
    .line 255
    if-eq v7, v4, :cond_b

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_b
    iget p0, p1, Lw1/d;->c:I

    .line 259
    .line 260
    int-to-double p0, p0

    .line 261
    :goto_4
    div-double/2addr v9, p0

    .line 262
    goto :goto_6

    .line 263
    :cond_c
    iget p0, p1, Lw1/d;->a:F

    .line 264
    .line 265
    float-to-double p0, p0

    .line 266
    goto :goto_4

    .line 267
    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    .line 274
    .line 275
    :goto_5
    mul-double v9, v9, p0

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :goto_6
    mul-double v9, v9, v2

    .line 285
    .line 286
    double-to-long p0, v9

    .line 287
    return-wide p0

    .line 288
    :cond_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    new-instance p1, Lcom/google/android/gms/internal/ads/U1;

    .line 293
    .line 294
    const-string v0, "Malformed time expression: "

    .line 295
    .line 296
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p1
.end method

.method public static c(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 5

    .line 1
    invoke-static {p0}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v0, "start"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :sswitch_1
    const-string v0, "right"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x2

    .line 36
    goto :goto_1

    .line 37
    :sswitch_2
    const-string v0, "left"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string v0, "end"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    const/4 p0, 0x3

    .line 56
    goto :goto_1

    .line 57
    :sswitch_4
    const-string v0, "center"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x4

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    const/4 p0, -0x1

    .line 68
    :goto_1
    if-eqz p0, :cond_3

    .line 69
    .line 70
    if-eq p0, v4, :cond_3

    .line 71
    .line 72
    if-eq p0, v3, :cond_2

    .line 73
    .line 74
    if-eq p0, v2, :cond_2

    .line 75
    .line 76
    if-eq p0, v1, :cond_1

    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 87
    .line 88
    return-object p0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/p2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p2;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static f(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;
    .locals 13

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_25

    .line 8
    .line 9
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x5

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x2

    .line 25
    const/4 v10, -0x1

    .line 26
    const/4 v11, 0x1

    .line 27
    sparse-switch v5, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v5, "multiRowAlign"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    const/16 v7, 0x8

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :sswitch_1
    const-string v5, "backgroundColor"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :sswitch_2
    const-string v5, "rubyPosition"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    const/16 v7, 0xb

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :sswitch_3
    const-string v5, "textEmphasis"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_0

    .line 74
    .line 75
    const/16 v7, 0xd

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :sswitch_4
    const-string v5, "fontSize"

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    const/4 v7, 0x4

    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :sswitch_5
    const-string v5, "textCombine"

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_0

    .line 97
    .line 98
    const/16 v7, 0x9

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :sswitch_6
    const-string v5, "shear"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_0

    .line 108
    .line 109
    const/16 v7, 0xe

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :sswitch_7
    const-string v5, "color"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_0

    .line 119
    .line 120
    const/4 v7, 0x2

    .line 121
    goto :goto_2

    .line 122
    :sswitch_8
    const-string v5, "ruby"

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_0

    .line 129
    .line 130
    const/16 v7, 0xa

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :sswitch_9
    const-string v5, "id"

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_0

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    goto :goto_2

    .line 143
    :sswitch_a
    const-string v5, "fontWeight"

    .line 144
    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_0

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :sswitch_b
    const-string v5, "textDecoration"

    .line 153
    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_0

    .line 159
    .line 160
    const/16 v7, 0xc

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :sswitch_c
    const-string v5, "textAlign"

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_0

    .line 170
    .line 171
    const/4 v7, 0x7

    .line 172
    goto :goto_2

    .line 173
    :sswitch_d
    const-string v5, "fontFamily"

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_0

    .line 180
    .line 181
    const/4 v7, 0x3

    .line 182
    goto :goto_2

    .line 183
    :sswitch_e
    const-string v5, "fontStyle"

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_0

    .line 190
    .line 191
    const/4 v7, 0x6

    .line 192
    goto :goto_2

    .line 193
    :cond_0
    :goto_1
    const/4 v7, -0x1

    .line 194
    :goto_2
    const-string v4, "after"

    .line 195
    .line 196
    const-string v5, "none"

    .line 197
    .line 198
    const-string v12, "TtmlParser"

    .line 199
    .line 200
    packed-switch v7, :pswitch_data_0

    .line 201
    .line 202
    .line 203
    goto/16 :goto_11

    .line 204
    .line 205
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    sget-object v4, Lcom/google/android/gms/internal/ads/n2;->K:Ljava/util/regex/Pattern;

    .line 210
    .line 211
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 220
    .line 221
    .line 222
    if-nez v5, :cond_1

    .line 223
    .line 224
    const-string v4, "Invalid value for shear: "

    .line 225
    .line 226
    invoke-static {v3, v4, v12}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_1
    :try_start_0
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const/high16 v5, -0x3d380000    # -100.0f

    .line 242
    .line 243
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    const/high16 v5, 0x42c80000    # 100.0f

    .line 248
    .line 249
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    .line 250
    .line 251
    .line 252
    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    goto :goto_3

    .line 254
    :catch_0
    move-exception v4

    .line 255
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    const-string v5, "Failed to parse shear: "

    .line 260
    .line 261
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v12, v3, v4}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_3
    iput v6, p1, Lcom/google/android/gms/internal/ads/p2;->s:F

    .line 269
    .line 270
    goto/16 :goto_11

    .line 271
    .line 272
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    sget-object v6, Lcom/google/android/gms/internal/ads/l2;->d:Ljava/util/regex/Pattern;

    .line 277
    .line 278
    if-nez v3, :cond_2

    .line 279
    .line 280
    goto/16 :goto_a

    .line 281
    .line 282
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-nez v6, :cond_f

    .line 295
    .line 296
    sget-object v6, Lcom/google/android/gms/internal/ads/l2;->d:Ljava/util/regex/Pattern;

    .line 297
    .line 298
    invoke-static {v3, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    array-length v6, v3

    .line 303
    if-eqz v6, :cond_4

    .line 304
    .line 305
    if-eq v6, v11, :cond_3

    .line 306
    .line 307
    invoke-virtual {v3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, [Ljava/lang/Object;

    .line 312
    .line 313
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    goto :goto_4

    .line 318
    :cond_3
    aget-object v3, v3, v1

    .line 319
    .line 320
    new-instance v6, Lcom/google/android/gms/internal/ads/dB;

    .line 321
    .line 322
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/dB;-><init>(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    move-object v3, v6

    .line 326
    goto :goto_4

    .line 327
    :cond_4
    sget-object v3, Lcom/google/android/gms/internal/ads/VA;->P:Lcom/google/android/gms/internal/ads/VA;

    .line 328
    .line 329
    :goto_4
    sget-object v6, Lcom/google/android/gms/internal/ads/l2;->h:Lcom/google/android/gms/internal/ads/zA;

    .line 330
    .line 331
    invoke-static {v6, v3}, Lf/b;->m0(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)Lcom/google/android/gms/internal/ads/YA;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    const-string v7, "outside"

    .line 336
    .line 337
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/Cw;->G(Lcom/google/android/gms/internal/ads/YA;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    check-cast v6, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-nez v4, :cond_6

    .line 351
    .line 352
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_5

    .line 357
    .line 358
    const/4 v4, 0x1

    .line 359
    goto :goto_5

    .line 360
    :cond_5
    const/4 v4, -0x2

    .line 361
    goto :goto_5

    .line 362
    :cond_6
    const/4 v4, 0x2

    .line 363
    :goto_5
    sget-object v6, Lcom/google/android/gms/internal/ads/l2;->e:Lcom/google/android/gms/internal/ads/zA;

    .line 364
    .line 365
    invoke-static {v6, v3}, Lf/b;->m0(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)Lcom/google/android/gms/internal/ads/YA;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/YA;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-nez v7, :cond_9

    .line 374
    .line 375
    new-instance v3, Lcom/google/android/gms/internal/ads/AA;

    .line 376
    .line 377
    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/AA;-><init>(Lcom/google/android/gms/internal/ads/YA;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Lz;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    const v7, 0x33af38

    .line 391
    .line 392
    .line 393
    if-eq v6, v7, :cond_7

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_8

    .line 401
    .line 402
    const/4 v5, 0x0

    .line 403
    const/4 v8, 0x0

    .line 404
    goto :goto_9

    .line 405
    :cond_8
    :goto_6
    const/4 v5, 0x0

    .line 406
    const/4 v8, -0x1

    .line 407
    goto :goto_9

    .line 408
    :cond_9
    sget-object v5, Lcom/google/android/gms/internal/ads/l2;->g:Lcom/google/android/gms/internal/ads/zA;

    .line 409
    .line 410
    invoke-static {v5, v3}, Lf/b;->m0(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)Lcom/google/android/gms/internal/ads/YA;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    sget-object v6, Lcom/google/android/gms/internal/ads/l2;->f:Lcom/google/android/gms/internal/ads/zA;

    .line 415
    .line 416
    invoke-static {v6, v3}, Lf/b;->m0(Lcom/google/android/gms/internal/ads/zA;Lcom/google/android/gms/internal/ads/zA;)Lcom/google/android/gms/internal/ads/YA;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/YA;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_a

    .line 425
    .line 426
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/YA;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    if-eqz v6, :cond_a

    .line 431
    .line 432
    goto :goto_6

    .line 433
    :cond_a
    const-string v6, "filled"

    .line 434
    .line 435
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->G(Lcom/google/android/gms/internal/ads/YA;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    const v7, 0x34264a

    .line 446
    .line 447
    .line 448
    if-eq v6, v7, :cond_b

    .line 449
    .line 450
    goto :goto_7

    .line 451
    :cond_b
    const-string v6, "open"

    .line 452
    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    if-eqz v5, :cond_c

    .line 458
    .line 459
    const/4 v5, 0x2

    .line 460
    goto :goto_8

    .line 461
    :cond_c
    :goto_7
    const/4 v5, 0x1

    .line 462
    :goto_8
    const-string v6, "circle"

    .line 463
    .line 464
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/Cw;->G(Lcom/google/android/gms/internal/ads/YA;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    check-cast v3, Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    const-string v6, "dot"

    .line 474
    .line 475
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    if-nez v6, :cond_d

    .line 480
    .line 481
    const-string v6, "sesame"

    .line 482
    .line 483
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    if-nez v3, :cond_e

    .line 488
    .line 489
    const/4 v8, 0x1

    .line 490
    goto :goto_9

    .line 491
    :cond_d
    const/4 v8, 0x2

    .line 492
    :cond_e
    :goto_9
    new-instance v3, Lcom/google/android/gms/internal/ads/l2;

    .line 493
    .line 494
    invoke-direct {v3, v8, v5, v4}, Lcom/google/android/gms/internal/ads/l2;-><init>(III)V

    .line 495
    .line 496
    .line 497
    goto :goto_b

    .line 498
    :cond_f
    :goto_a
    const/4 v3, 0x0

    .line 499
    :goto_b
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/p2;->r:Lcom/google/android/gms/internal/ads/l2;

    .line 500
    .line 501
    goto/16 :goto_11

    .line 502
    .line 503
    :pswitch_2
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 511
    .line 512
    .line 513
    const/4 v4, -0x1

    .line 514
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    sparse-switch v5, :sswitch_data_1

    .line 519
    .line 520
    .line 521
    goto :goto_c

    .line 522
    :sswitch_f
    const-string v5, "linethrough"

    .line 523
    .line 524
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-nez v3, :cond_10

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_10
    const/4 v4, 0x3

    .line 532
    goto :goto_c

    .line 533
    :sswitch_10
    const-string v5, "nolinethrough"

    .line 534
    .line 535
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-nez v3, :cond_11

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_11
    const/4 v4, 0x2

    .line 543
    goto :goto_c

    .line 544
    :sswitch_11
    const-string v5, "underline"

    .line 545
    .line 546
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v3

    .line 550
    if-nez v3, :cond_12

    .line 551
    .line 552
    goto :goto_c

    .line 553
    :cond_12
    const/4 v4, 0x1

    .line 554
    goto :goto_c

    .line 555
    :sswitch_12
    const-string v5, "nounderline"

    .line 556
    .line 557
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-nez v3, :cond_13

    .line 562
    .line 563
    goto :goto_c

    .line 564
    :cond_13
    const/4 v4, 0x0

    .line 565
    :goto_c
    packed-switch v4, :pswitch_data_1

    .line 566
    .line 567
    .line 568
    goto/16 :goto_11

    .line 569
    .line 570
    :pswitch_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->f:I

    .line 575
    .line 576
    goto/16 :goto_11

    .line 577
    .line 578
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    iput v1, p1, Lcom/google/android/gms/internal/ads/p2;->f:I

    .line 583
    .line 584
    goto/16 :goto_11

    .line 585
    .line 586
    :pswitch_5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->g:I

    .line 591
    .line 592
    goto/16 :goto_11

    .line 593
    .line 594
    :pswitch_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    iput v1, p1, Lcom/google/android/gms/internal/ads/p2;->g:I

    .line 599
    .line 600
    goto/16 :goto_11

    .line 601
    .line 602
    :pswitch_7
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    if-nez v4, :cond_15

    .line 614
    .line 615
    const-string v4, "before"

    .line 616
    .line 617
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-nez v3, :cond_14

    .line 622
    .line 623
    goto/16 :goto_11

    .line 624
    .line 625
    :cond_14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->n:I

    .line 630
    .line 631
    goto/16 :goto_11

    .line 632
    .line 633
    :cond_15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    iput v9, p1, Lcom/google/android/gms/internal/ads/p2;->n:I

    .line 638
    .line 639
    goto/16 :goto_11

    .line 640
    .line 641
    :pswitch_8
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 649
    .line 650
    .line 651
    const/4 v4, -0x1

    .line 652
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 653
    .line 654
    .line 655
    move-result v5

    .line 656
    sparse-switch v5, :sswitch_data_2

    .line 657
    .line 658
    .line 659
    goto :goto_d

    .line 660
    :sswitch_13
    const-string v5, "text"

    .line 661
    .line 662
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-nez v3, :cond_16

    .line 667
    .line 668
    goto :goto_d

    .line 669
    :cond_16
    const/4 v4, 0x5

    .line 670
    goto :goto_d

    .line 671
    :sswitch_14
    const-string v5, "base"

    .line 672
    .line 673
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result v3

    .line 677
    if-nez v3, :cond_17

    .line 678
    .line 679
    goto :goto_d

    .line 680
    :cond_17
    const/4 v4, 0x4

    .line 681
    goto :goto_d

    .line 682
    :sswitch_15
    const-string v5, "textContainer"

    .line 683
    .line 684
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    if-nez v3, :cond_18

    .line 689
    .line 690
    goto :goto_d

    .line 691
    :cond_18
    const/4 v4, 0x3

    .line 692
    goto :goto_d

    .line 693
    :sswitch_16
    const-string v5, "delimiter"

    .line 694
    .line 695
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-nez v3, :cond_19

    .line 700
    .line 701
    goto :goto_d

    .line 702
    :cond_19
    const/4 v4, 0x2

    .line 703
    goto :goto_d

    .line 704
    :sswitch_17
    const-string v5, "container"

    .line 705
    .line 706
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    if-nez v3, :cond_1a

    .line 711
    .line 712
    goto :goto_d

    .line 713
    :cond_1a
    const/4 v4, 0x1

    .line 714
    goto :goto_d

    .line 715
    :sswitch_18
    const-string v5, "baseContainer"

    .line 716
    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-nez v3, :cond_1b

    .line 722
    .line 723
    goto :goto_d

    .line 724
    :cond_1b
    const/4 v4, 0x0

    .line 725
    :goto_d
    packed-switch v4, :pswitch_data_2

    .line 726
    .line 727
    .line 728
    goto/16 :goto_11

    .line 729
    .line 730
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    iput v8, p1, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 735
    .line 736
    goto/16 :goto_11

    .line 737
    .line 738
    :pswitch_a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    iput v6, p1, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 743
    .line 744
    goto/16 :goto_11

    .line 745
    .line 746
    :pswitch_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 751
    .line 752
    goto/16 :goto_11

    .line 753
    .line 754
    :pswitch_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 755
    .line 756
    .line 757
    move-result-object p1

    .line 758
    iput v9, p1, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 759
    .line 760
    goto/16 :goto_11

    .line 761
    .line 762
    :pswitch_d
    invoke-static {v3}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v4

    .line 773
    if-nez v4, :cond_1d

    .line 774
    .line 775
    const-string v4, "all"

    .line 776
    .line 777
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    if-nez v3, :cond_1c

    .line 782
    .line 783
    goto/16 :goto_11

    .line 784
    .line 785
    :cond_1c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->q:I

    .line 790
    .line 791
    goto/16 :goto_11

    .line 792
    .line 793
    :cond_1d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    iput v1, p1, Lcom/google/android/gms/internal/ads/p2;->q:I

    .line 798
    .line 799
    goto/16 :goto_11

    .line 800
    .line 801
    :pswitch_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 802
    .line 803
    .line 804
    move-result-object p1

    .line 805
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/n2;->c(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/p2;->p:Landroid/text/Layout$Alignment;

    .line 810
    .line 811
    goto/16 :goto_11

    .line 812
    .line 813
    :pswitch_f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/n2;->c(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/p2;->o:Landroid/text/Layout$Alignment;

    .line 822
    .line 823
    goto/16 :goto_11

    .line 824
    .line 825
    :pswitch_10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    const-string v4, "italic"

    .line 830
    .line 831
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    iput v3, p1, Lcom/google/android/gms/internal/ads/p2;->i:I

    .line 836
    .line 837
    goto/16 :goto_11

    .line 838
    .line 839
    :pswitch_11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 840
    .line 841
    .line 842
    move-result-object p1

    .line 843
    const-string v4, "bold"

    .line 844
    .line 845
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    iput v3, p1, Lcom/google/android/gms/internal/ads/p2;->h:I

    .line 850
    .line 851
    goto/16 :goto_11

    .line 852
    .line 853
    :pswitch_12
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    const-string v4, "\\s+"

    .line 858
    .line 859
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 860
    .line 861
    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v4

    .line 865
    array-length v5, v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2 .. :try_end_2} :catch_1

    .line 866
    sget-object v6, Lcom/google/android/gms/internal/ads/n2;->J:Ljava/util/regex/Pattern;

    .line 867
    .line 868
    if-ne v5, v11, :cond_1e

    .line 869
    .line 870
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 871
    .line 872
    .line 873
    move-result-object v4

    .line 874
    goto :goto_e

    .line 875
    :cond_1e
    if-ne v5, v9, :cond_23

    .line 876
    .line 877
    aget-object v4, v4, v11

    .line 878
    .line 879
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    const-string v5, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 884
    .line 885
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    :goto_e
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 889
    .line 890
    .line 891
    move-result v5
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_3 .. :try_end_3} :catch_1

    .line 892
    const-string v6, "\'."

    .line 893
    .line 894
    if-eqz v5, :cond_22

    .line 895
    .line 896
    :try_start_4
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v5
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_4 .. :try_end_4} :catch_1

    .line 900
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 904
    .line 905
    .line 906
    const/4 v7, -0x1

    .line 907
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 908
    .line 909
    .line 910
    move-result v10

    .line 911
    sparse-switch v10, :sswitch_data_3

    .line 912
    .line 913
    .line 914
    goto :goto_f

    .line 915
    :sswitch_19
    const-string v10, "px"

    .line 916
    .line 917
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v10

    .line 921
    if-nez v10, :cond_1f

    .line 922
    .line 923
    goto :goto_f

    .line 924
    :cond_1f
    const/4 v7, 0x2

    .line 925
    goto :goto_f

    .line 926
    :sswitch_1a
    const-string v10, "em"

    .line 927
    .line 928
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v10

    .line 932
    if-nez v10, :cond_20

    .line 933
    .line 934
    goto :goto_f

    .line 935
    :cond_20
    const/4 v7, 0x1

    .line 936
    goto :goto_f

    .line 937
    :sswitch_1b
    const-string v10, "%"

    .line 938
    .line 939
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 940
    .line 941
    .line 942
    move-result v10

    .line 943
    if-nez v10, :cond_21

    .line 944
    .line 945
    goto :goto_f

    .line 946
    :cond_21
    const/4 v7, 0x0

    .line 947
    :goto_f
    packed-switch v7, :pswitch_data_3

    .line 948
    .line 949
    .line 950
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/U1;

    .line 951
    .line 952
    new-instance v7, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .line 956
    .line 957
    const-string v8, "Invalid unit for fontSize: \'"

    .line 958
    .line 959
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    throw v4

    .line 976
    :pswitch_13
    iput v11, p1, Lcom/google/android/gms/internal/ads/p2;->j:I

    .line 977
    .line 978
    goto :goto_10

    .line 979
    :pswitch_14
    iput v9, p1, Lcom/google/android/gms/internal/ads/p2;->j:I

    .line 980
    .line 981
    goto :goto_10

    .line 982
    :pswitch_15
    iput v8, p1, Lcom/google/android/gms/internal/ads/p2;->j:I

    .line 983
    .line 984
    :goto_10
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v4
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_5 .. :try_end_5} :catch_1

    .line 988
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 989
    .line 990
    .line 991
    :try_start_6
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 992
    .line 993
    .line 994
    move-result v4

    .line 995
    iput v4, p1, Lcom/google/android/gms/internal/ads/p2;->k:F

    .line 996
    .line 997
    goto/16 :goto_11

    .line 998
    .line 999
    :cond_22
    new-instance v4, Lcom/google/android/gms/internal/ads/U1;

    .line 1000
    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .line 1005
    .line 1006
    const-string v7, "Invalid expression for fontSize: \'"

    .line 1007
    .line 1008
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v5

    .line 1021
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    throw v4

    .line 1025
    :cond_23
    new-instance v4, Lcom/google/android/gms/internal/ads/U1;

    .line 1026
    .line 1027
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1030
    .line 1031
    .line 1032
    const-string v7, "Invalid number of entries for fontSize: "

    .line 1033
    .line 1034
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    const-string v5, "."

    .line 1041
    .line 1042
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v5

    .line 1049
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1050
    .line 1051
    .line 1052
    throw v4
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_6 .. :try_end_6} :catch_1

    .line 1053
    :catch_1
    const-string v4, "Failed parsing fontSize value: "

    .line 1054
    .line 1055
    invoke-static {v3, v4, v12}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    goto :goto_11

    .line 1059
    :pswitch_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 1060
    .line 1061
    .line 1062
    move-result-object p1

    .line 1063
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/p2;->a:Ljava/lang/String;

    .line 1064
    .line 1065
    goto :goto_11

    .line 1066
    :pswitch_17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 1067
    .line 1068
    .line 1069
    move-result-object p1

    .line 1070
    :try_start_7
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Ml;->a(Ljava/lang/String;Z)I

    .line 1071
    .line 1072
    .line 1073
    move-result v4

    .line 1074
    iput v4, p1, Lcom/google/android/gms/internal/ads/p2;->b:I

    .line 1075
    .line 1076
    iput-boolean v11, p1, Lcom/google/android/gms/internal/ads/p2;->c:Z
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1077
    .line 1078
    goto :goto_11

    .line 1079
    :catch_2
    const-string v4, "Failed parsing color value: "

    .line 1080
    .line 1081
    invoke-static {v3, v4, v12}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_11

    .line 1085
    :pswitch_18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 1086
    .line 1087
    .line 1088
    move-result-object p1

    .line 1089
    :try_start_8
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/Ml;->a(Ljava/lang/String;Z)I

    .line 1090
    .line 1091
    .line 1092
    move-result v4

    .line 1093
    iput v4, p1, Lcom/google/android/gms/internal/ads/p2;->d:I

    .line 1094
    .line 1095
    iput-boolean v11, p1, Lcom/google/android/gms/internal/ads/p2;->e:Z
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1096
    .line 1097
    goto :goto_11

    .line 1098
    :catch_3
    const-string v4, "Failed parsing background value: "

    .line 1099
    .line 1100
    invoke-static {v3, v4, v12}, La/r;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    goto :goto_11

    .line 1104
    :pswitch_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    const-string v5, "style"

    .line 1109
    .line 1110
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v4

    .line 1114
    if-eqz v4, :cond_24

    .line 1115
    .line 1116
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n2;->e(Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 1117
    .line 1118
    .line 1119
    move-result-object p1

    .line 1120
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/p2;->l:Ljava/lang/String;

    .line 1121
    .line 1122
    :cond_24
    :goto_11
    add-int/lit8 v2, v2, 0x1

    .line 1123
    .line 1124
    goto/16 :goto_0

    .line 1125
    .line 1126
    :cond_25
    return-object p1

    .line 1127
    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_12
        -0x3d363934 -> :sswitch_11
        0x36723ff0 -> :sswitch_10
        0x641ec051 -> :sswitch_f
    .end sparse-switch

    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_18
        -0x187eb37f -> :sswitch_17
        -0xeee99f9 -> :sswitch_16
        -0x81c562c -> :sswitch_15
        0x2e06d1 -> :sswitch_14
        0x36452d -> :sswitch_13
    .end sparse-switch

    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_9
    .end packed-switch

    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    :sswitch_data_3
    .sparse-switch
        0x25 -> :sswitch_1b
        0xca8 -> :sswitch_1a
        0xe08 -> :sswitch_19
    .end sparse-switch

    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final a(I[BI)Lcom/google/android/gms/internal/ads/q2;
    .locals 45

    .line 1
    const-string v1, ""

    .line 2
    .line 3
    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    .line 4
    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    :try_start_0
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/n2;->G:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 8
    .line 9
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v7, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v15, Lcom/google/android/gms/internal/ads/o2;

    .line 29
    .line 30
    const-string v9, ""

    .line 31
    .line 32
    const v17, -0x800001

    .line 33
    .line 34
    .line 35
    const/high16 v18, -0x80000000

    .line 36
    .line 37
    move-object v8, v15

    .line 38
    move/from16 v10, v17

    .line 39
    .line 40
    move/from16 v11, v17

    .line 41
    .line 42
    move/from16 v12, v18

    .line 43
    .line 44
    move/from16 v13, v18

    .line 45
    .line 46
    move/from16 v14, v17

    .line 47
    .line 48
    move-object/from16 v19, v15

    .line 49
    .line 50
    move/from16 v15, v17

    .line 51
    .line 52
    move/from16 v16, v18

    .line 53
    .line 54
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/ads/o2;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v8, v19

    .line 58
    .line 59
    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 63
    .line 64
    move/from16 v9, p1

    .line 65
    .line 66
    move-object/from16 v10, p2

    .line 67
    .line 68
    move/from16 v11, p3

    .line 69
    .line 70
    invoke-direct {v8, v10, v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 71
    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v8, Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 83
    .line 84
    .line 85
    move-result v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    sget-object v12, Lcom/google/android/gms/internal/ads/n2;->O:Lw1/d;

    .line 87
    .line 88
    move-object v14, v9

    .line 89
    move-object/from16 v17, v14

    .line 90
    .line 91
    move-object/from16 v16, v12

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    const/16 v18, 0xf

    .line 95
    .line 96
    :goto_0
    const/4 v13, 0x1

    .line 97
    if-eq v10, v13, :cond_45

    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v19

    .line 103
    move-object/from16 v9, v19

    .line 104
    .line 105
    check-cast v9, Lcom/google/android/gms/internal/ads/m2;

    .line 106
    .line 107
    const/4 v13, 0x2

    .line 108
    if-nez v15, :cond_42

    .line 109
    .line 110
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    move-object/from16 v20, v1

    .line 115
    .line 116
    const-string v1, "tt"

    .line 117
    .line 118
    if-ne v10, v13, :cond_3d

    .line 119
    .line 120
    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    sget-object v13, Lcom/google/android/gms/internal/ads/n2;->M:Ljava/util/regex/Pattern;

    .line 125
    .line 126
    const-string v3, "extent"

    .line 127
    .line 128
    move-object/from16 v22, v14

    .line 129
    .line 130
    const/high16 v23, 0x3f800000    # 1.0f

    .line 131
    .line 132
    const-string v14, "TtmlParser"

    .line 133
    .line 134
    if-eqz v10, :cond_b

    .line 135
    .line 136
    :try_start_3
    const-string v10, "frameRate"

    .line 137
    .line 138
    invoke-interface {v4, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    if-eqz v10, :cond_0

    .line 143
    .line 144
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    :goto_1
    move/from16 v24, v15

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    move-object v1, v0

    .line 153
    goto/16 :goto_38

    .line 154
    .line 155
    :catch_1
    move-exception v0

    .line 156
    move-object v1, v0

    .line 157
    goto/16 :goto_39

    .line 158
    .line 159
    :cond_0
    const/16 v10, 0x1e

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :goto_2
    const-string v15, "frameRateMultiplier"

    .line 163
    .line 164
    invoke-interface {v4, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v15
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    move-object/from16 v25, v8

    .line 169
    .line 170
    const-string v8, " "

    .line 171
    .line 172
    if-eqz v15, :cond_2

    .line 173
    .line 174
    :try_start_4
    sget v16, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 175
    .line 176
    move-object/from16 v26, v9

    .line 177
    .line 178
    const/4 v9, -0x1

    .line 179
    invoke-virtual {v15, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    array-length v9, v15

    .line 184
    move-object/from16 v27, v6

    .line 185
    .line 186
    const/4 v6, 0x2

    .line 187
    if-ne v9, v6, :cond_1

    .line 188
    .line 189
    const/4 v6, 0x1

    .line 190
    goto :goto_3

    .line 191
    :cond_1
    const/4 v6, 0x0

    .line 192
    :goto_3
    const-string v9, "frameRateMultiplier doesn\'t have 2 parts"

    .line 193
    .line 194
    invoke-static {v6, v9}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    aget-object v9, v15, v6

    .line 199
    .line 200
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    int-to-float v6, v6

    .line 205
    const/4 v9, 0x1

    .line 206
    aget-object v15, v15, v9

    .line 207
    .line 208
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    int-to-float v9, v9

    .line 213
    div-float/2addr v6, v9

    .line 214
    goto :goto_4

    .line 215
    :cond_2
    move-object/from16 v27, v6

    .line 216
    .line 217
    move-object/from16 v26, v9

    .line 218
    .line 219
    const/high16 v6, 0x3f800000    # 1.0f

    .line 220
    .line 221
    :goto_4
    iget v9, v12, Lw1/d;->b:I

    .line 222
    .line 223
    const-string v15, "subFrameRate"

    .line 224
    .line 225
    invoke-interface {v4, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    if-eqz v15, :cond_3

    .line 230
    .line 231
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    :cond_3
    iget v15, v12, Lw1/d;->c:I

    .line 236
    .line 237
    move-object/from16 v28, v12

    .line 238
    .line 239
    const-string v12, "tickRate"

    .line 240
    .line 241
    invoke-interface {v4, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    if-eqz v12, :cond_4

    .line 246
    .line 247
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    :cond_4
    new-instance v12, Lw1/d;

    .line 252
    .line 253
    int-to-float v10, v10

    .line 254
    mul-float v10, v10, v6

    .line 255
    .line 256
    invoke-direct {v12, v10, v9, v15}, Lw1/d;-><init>(FII)V

    .line 257
    .line 258
    .line 259
    const-string v6, "cellResolution"

    .line 260
    .line 261
    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    if-nez v6, :cond_5

    .line 266
    .line 267
    :goto_5
    move-object/from16 v29, v2

    .line 268
    .line 269
    move-object/from16 v30, v7

    .line 270
    .line 271
    move-object/from16 v16, v12

    .line 272
    .line 273
    :goto_6
    const/16 v18, 0xf

    .line 274
    .line 275
    goto/16 :goto_a

    .line 276
    .line 277
    :cond_5
    sget-object v9, Lcom/google/android/gms/internal/ads/n2;->N:Ljava/util/regex/Pattern;

    .line 278
    .line 279
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 284
    .line 285
    .line 286
    move-result v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 287
    const-string v15, "Ignoring malformed cell resolution: "

    .line 288
    .line 289
    if-nez v10, :cond_6

    .line 290
    .line 291
    :try_start_5
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_6
    const/4 v10, 0x1

    .line 300
    :try_start_6
    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v16
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    :try_start_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result v10
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 311
    move-object/from16 v29, v2

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    :try_start_8
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v9
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 318
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    :try_start_9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v2
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 325
    if-eqz v10, :cond_8

    .line 326
    .line 327
    if-eqz v2, :cond_7

    .line 328
    .line 329
    move v9, v2

    .line 330
    move-object/from16 v16, v12

    .line 331
    .line 332
    const/4 v2, 0x1

    .line 333
    goto :goto_7

    .line 334
    :cond_7
    move-object/from16 v16, v12

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    const/4 v9, 0x0

    .line 338
    goto :goto_7

    .line 339
    :cond_8
    move v9, v2

    .line 340
    move-object/from16 v16, v12

    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    :goto_7
    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 346
    .line 347
    .line 348
    move-object/from16 v30, v7

    .line 349
    .line 350
    :try_start_b
    const-string v7, "Invalid cell resolution "

    .line 351
    .line 352
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    invoke-static {v2, v7}, Lo3/r;->L(ZLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 369
    .line 370
    .line 371
    move/from16 v18, v9

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :catch_2
    move-object/from16 v30, v7

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :catch_3
    :goto_8
    move-object/from16 v30, v7

    .line 378
    .line 379
    move-object/from16 v16, v12

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :catch_4
    move-object/from16 v29, v2

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :catch_5
    :goto_9
    :try_start_c
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :goto_a
    invoke-static {v4, v3}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-nez v2, :cond_9

    .line 398
    .line 399
    :goto_b
    const/4 v10, 0x5

    .line 400
    :goto_c
    const/16 v17, 0x0

    .line 401
    .line 402
    goto :goto_d

    .line 403
    :cond_9
    invoke-virtual {v13, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    if-nez v7, :cond_a

    .line 412
    .line 413
    const-string v6, "Ignoring non-pixel tts extent: "

    .line 414
    .line 415
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 420
    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_a
    const/4 v7, 0x1

    .line 424
    :try_start_d
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v8
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 428
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    :try_start_e
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    const/4 v8, 0x2

    .line 436
    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v6
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 440
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    :try_start_f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    new-instance v8, LN/r;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 448
    .line 449
    const/4 v9, 0x0

    .line 450
    const/4 v10, 0x5

    .line 451
    :try_start_10
    invoke-direct {v8, v7, v6, v10, v9}, LN/r;-><init>(IIII)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    .line 452
    .line 453
    .line 454
    move-object/from16 v17, v8

    .line 455
    .line 456
    goto :goto_d

    .line 457
    :catch_6
    const/4 v10, 0x5

    .line 458
    :catch_7
    :try_start_11
    const-string v6, "Ignoring malformed tts extent: "

    .line 459
    .line 460
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_c

    .line 468
    :goto_d
    move-object/from16 v2, v16

    .line 469
    .line 470
    move-object/from16 v6, v17

    .line 471
    .line 472
    move/from16 v7, v18

    .line 473
    .line 474
    goto :goto_e

    .line 475
    :cond_b
    move-object/from16 v29, v2

    .line 476
    .line 477
    move-object/from16 v27, v6

    .line 478
    .line 479
    move-object/from16 v30, v7

    .line 480
    .line 481
    move-object/from16 v25, v8

    .line 482
    .line 483
    move-object/from16 v26, v9

    .line 484
    .line 485
    move-object/from16 v28, v12

    .line 486
    .line 487
    move/from16 v24, v15

    .line 488
    .line 489
    const/4 v10, 0x5

    .line 490
    goto :goto_d

    .line 491
    :goto_e
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v1
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 495
    const-string v8, "image"

    .line 496
    .line 497
    const-string v9, "style"

    .line 498
    .line 499
    const-string v12, "region"

    .line 500
    .line 501
    const-string v15, "metadata"

    .line 502
    .line 503
    const-string v10, "head"

    .line 504
    .line 505
    if-nez v1, :cond_d

    .line 506
    .line 507
    :try_start_12
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-nez v1, :cond_d

    .line 512
    .line 513
    const-string v1, "body"

    .line 514
    .line 515
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-nez v1, :cond_d

    .line 520
    .line 521
    const-string v1, "div"

    .line 522
    .line 523
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_d

    .line 528
    .line 529
    const-string v1, "p"

    .line 530
    .line 531
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-nez v1, :cond_d

    .line 536
    .line 537
    const-string v1, "span"

    .line 538
    .line 539
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    if-nez v1, :cond_d

    .line 544
    .line 545
    const-string v1, "br"

    .line 546
    .line 547
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-nez v1, :cond_d

    .line 552
    .line 553
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-nez v1, :cond_d

    .line 558
    .line 559
    const-string v1, "styling"

    .line 560
    .line 561
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-nez v1, :cond_d

    .line 566
    .line 567
    const-string v1, "layout"

    .line 568
    .line 569
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_d

    .line 574
    .line 575
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-nez v1, :cond_d

    .line 580
    .line 581
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-nez v1, :cond_d

    .line 586
    .line 587
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    if-nez v1, :cond_d

    .line 592
    .line 593
    const-string v1, "data"

    .line 594
    .line 595
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    if-nez v1, :cond_d

    .line 600
    .line 601
    const-string v1, "information"

    .line 602
    .line 603
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_c

    .line 608
    .line 609
    goto :goto_10

    .line 610
    :cond_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    const-string v8, "Ignoring unsupported tag: "

    .line 620
    .line 621
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    move-object/from16 v16, v2

    .line 635
    .line 636
    move-object v2, v5

    .line 637
    move-object/from16 v17, v6

    .line 638
    .line 639
    move/from16 v18, v7

    .line 640
    .line 641
    move-object/from16 v14, v22

    .line 642
    .line 643
    move-object/from16 v3, v25

    .line 644
    .line 645
    move-object/from16 v5, v27

    .line 646
    .line 647
    move-object/from16 v6, v30

    .line 648
    .line 649
    :goto_f
    const/4 v15, 0x1

    .line 650
    goto/16 :goto_37

    .line 651
    .line 652
    :cond_d
    :goto_10
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v1
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 656
    const-string v11, "\\s+"

    .line 657
    .line 658
    if-eqz v1, :cond_28

    .line 659
    .line 660
    :goto_11
    :try_start_13
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 661
    .line 662
    .line 663
    invoke-static {v4, v9}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_12

    .line 668
    .line 669
    invoke-static {v4, v9}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    move-object/from16 v16, v2

    .line 674
    .line 675
    new-instance v2, Lcom/google/android/gms/internal/ads/p2;

    .line 676
    .line 677
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/p2;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/n2;->f(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    if-eqz v1, :cond_f

    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 691
    .line 692
    .line 693
    move-result v17

    .line 694
    if-eqz v17, :cond_e

    .line 695
    .line 696
    move-object/from16 v17, v9

    .line 697
    .line 698
    const/4 v9, 0x0

    .line 699
    new-array v1, v9, [Ljava/lang/String;

    .line 700
    .line 701
    goto :goto_12

    .line 702
    :cond_e
    move-object/from16 v17, v9

    .line 703
    .line 704
    sget v9, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 705
    .line 706
    const/4 v9, -0x1

    .line 707
    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    :goto_12
    array-length v9, v1

    .line 712
    move-object/from16 v18, v11

    .line 713
    .line 714
    const/4 v11, 0x0

    .line 715
    :goto_13
    if-ge v11, v9, :cond_10

    .line 716
    .line 717
    move/from16 v19, v9

    .line 718
    .line 719
    aget-object v9, v1, v11

    .line 720
    .line 721
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v9

    .line 725
    check-cast v9, Lcom/google/android/gms/internal/ads/p2;

    .line 726
    .line 727
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/p2;->b(Lcom/google/android/gms/internal/ads/p2;)V

    .line 728
    .line 729
    .line 730
    add-int/lit8 v11, v11, 0x1

    .line 731
    .line 732
    move/from16 v9, v19

    .line 733
    .line 734
    goto :goto_13

    .line 735
    :cond_f
    move-object/from16 v17, v9

    .line 736
    .line 737
    move-object/from16 v18, v11

    .line 738
    .line 739
    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/p2;->a()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    if-eqz v1, :cond_11

    .line 744
    .line 745
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    :cond_11
    move-object/from16 v43, v5

    .line 749
    .line 750
    move-object/from16 v41, v8

    .line 751
    .line 752
    move-object/from16 v42, v15

    .line 753
    .line 754
    move-object/from16 v5, v27

    .line 755
    .line 756
    move-object/from16 v44, v30

    .line 757
    .line 758
    goto/16 :goto_1e

    .line 759
    .line 760
    :cond_12
    move-object/from16 v16, v2

    .line 761
    .line 762
    move-object/from16 v17, v9

    .line 763
    .line 764
    move-object/from16 v18, v11

    .line 765
    .line 766
    invoke-static {v4, v12}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 767
    .line 768
    .line 769
    move-result v1
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    .line 770
    const-string v2, "id"

    .line 771
    .line 772
    if-nez v1, :cond_16

    .line 773
    .line 774
    :try_start_14
    invoke-static {v4, v15}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-eqz v1, :cond_11

    .line 779
    .line 780
    :goto_14
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 781
    .line 782
    .line 783
    invoke-static {v4, v8}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-eqz v1, :cond_13

    .line 788
    .line 789
    invoke-static {v4, v2}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    if-eqz v1, :cond_13

    .line 794
    .line 795
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v9

    .line 799
    move-object/from16 v11, v30

    .line 800
    .line 801
    invoke-virtual {v11, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    goto :goto_15

    .line 805
    :cond_13
    move-object/from16 v11, v30

    .line 806
    .line 807
    :goto_15
    invoke-static {v4, v15}, LU4/a;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-eqz v1, :cond_15

    .line 812
    .line 813
    move-object/from16 v43, v5

    .line 814
    .line 815
    move-object/from16 v41, v8

    .line 816
    .line 817
    move-object/from16 v44, v11

    .line 818
    .line 819
    move-object/from16 v42, v15

    .line 820
    .line 821
    :cond_14
    move-object/from16 v5, v27

    .line 822
    .line 823
    goto/16 :goto_1e

    .line 824
    .line 825
    :cond_15
    move-object/from16 v30, v11

    .line 826
    .line 827
    goto :goto_14

    .line 828
    :cond_16
    move-object/from16 v11, v30

    .line 829
    .line 830
    invoke-static {v4, v2}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v31

    .line 834
    if-nez v31, :cond_17

    .line 835
    .line 836
    move-object/from16 v43, v5

    .line 837
    .line 838
    move-object/from16 v41, v8

    .line 839
    .line 840
    move-object/from16 v44, v11

    .line 841
    .line 842
    move-object/from16 v42, v15

    .line 843
    .line 844
    :goto_16
    const/4 v1, 0x0

    .line 845
    goto/16 :goto_1d

    .line 846
    .line 847
    :cond_17
    const-string v1, "origin"

    .line 848
    .line 849
    invoke-static {v4, v1}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    if-eqz v1, :cond_26

    .line 854
    .line 855
    sget-object v2, Lcom/google/android/gms/internal/ads/n2;->L:Ljava/util/regex/Pattern;

    .line 856
    .line 857
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 858
    .line 859
    .line 860
    move-result-object v9

    .line 861
    move-object/from16 v41, v8

    .line 862
    .line 863
    invoke-virtual {v13, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 864
    .line 865
    .line 866
    move-result-object v8

    .line 867
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 868
    .line 869
    .line 870
    move-result v19
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    .line 871
    move-object/from16 v42, v15

    .line 872
    .line 873
    const-string v15, "Ignoring region with missing tts:extent: "

    .line 874
    .line 875
    move-object/from16 v43, v5

    .line 876
    .line 877
    const-string v5, "Ignoring region with malformed origin: "

    .line 878
    .line 879
    const/high16 v21, 0x42c80000    # 100.0f

    .line 880
    .line 881
    if-eqz v19, :cond_18

    .line 882
    .line 883
    move-object/from16 v44, v11

    .line 884
    .line 885
    const/4 v11, 0x1

    .line 886
    :try_start_15
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v8
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    .line 890
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    :try_start_16
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 894
    .line 895
    .line 896
    move-result v8

    .line 897
    div-float v8, v8, v21

    .line 898
    .line 899
    const/4 v11, 0x2

    .line 900
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v9
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    .line 904
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    :try_start_17
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 908
    .line 909
    .line 910
    move-result v5
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    .line 911
    div-float v5, v5, v21

    .line 912
    .line 913
    move/from16 v32, v8

    .line 914
    .line 915
    goto :goto_17

    .line 916
    :catch_8
    :try_start_18
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    goto :goto_16

    .line 924
    :cond_18
    move-object/from16 v44, v11

    .line 925
    .line 926
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 927
    .line 928
    .line 929
    move-result v9

    .line 930
    if-eqz v9, :cond_25

    .line 931
    .line 932
    if-nez v6, :cond_19

    .line 933
    .line 934
    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0

    .line 939
    .line 940
    .line 941
    goto :goto_16

    .line 942
    :cond_19
    const/4 v9, 0x1

    .line 943
    :try_start_19
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v11
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_0

    .line 947
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 948
    .line 949
    .line 950
    :try_start_1a
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 951
    .line 952
    .line 953
    move-result v9

    .line 954
    const/4 v11, 0x2

    .line 955
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v8
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 959
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    :try_start_1b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    move-result v8

    .line 966
    int-to-float v9, v9

    .line 967
    iget v11, v6, LN/r;->H:I

    .line 968
    .line 969
    int-to-float v11, v11

    .line 970
    div-float/2addr v9, v11

    .line 971
    int-to-float v8, v8

    .line 972
    iget v5, v6, LN/r;->I:I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    .line 973
    .line 974
    int-to-float v5, v5

    .line 975
    div-float v5, v8, v5

    .line 976
    .line 977
    move/from16 v32, v9

    .line 978
    .line 979
    :goto_17
    :try_start_1c
    invoke-static {v4, v3}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v8

    .line 983
    if-eqz v8, :cond_24

    .line 984
    .line 985
    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 986
    .line 987
    .line 988
    move-result-object v2

    .line 989
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 990
    .line 991
    .line 992
    move-result-object v8

    .line 993
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 994
    .line 995
    .line 996
    move-result v9
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0

    .line 997
    const-string v11, "Ignoring region with malformed extent: "

    .line 998
    .line 999
    if-eqz v9, :cond_1a

    .line 1000
    .line 1001
    const/4 v9, 0x1

    .line 1002
    :try_start_1d
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v8
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_0

    .line 1006
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    :try_start_1e
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1010
    .line 1011
    .line 1012
    move-result v8

    .line 1013
    div-float v8, v8, v21

    .line 1014
    .line 1015
    const/4 v9, 0x2

    .line 1016
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0

    .line 1020
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1024
    .line 1025
    .line 1026
    move-result v1
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0

    .line 1027
    div-float v1, v1, v21

    .line 1028
    .line 1029
    move/from16 v37, v1

    .line 1030
    .line 1031
    move/from16 v36, v8

    .line 1032
    .line 1033
    goto :goto_18

    .line 1034
    :catch_9
    :try_start_20
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_16

    .line 1042
    .line 1043
    :cond_1a
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_23

    .line 1048
    .line 1049
    if-nez v6, :cond_1b

    .line 1050
    .line 1051
    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    .line 1056
    .line 1057
    .line 1058
    goto/16 :goto_16

    .line 1059
    .line 1060
    :cond_1b
    const/4 v2, 0x1

    .line 1061
    :try_start_21
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v9
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0

    .line 1065
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    :try_start_22
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    move-result v2

    .line 1072
    const/4 v9, 0x2

    .line 1073
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v8
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_0

    .line 1077
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    .line 1079
    .line 1080
    :try_start_23
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1081
    .line 1082
    .line 1083
    move-result v8

    .line 1084
    int-to-float v2, v2

    .line 1085
    iget v9, v6, LN/r;->H:I

    .line 1086
    .line 1087
    int-to-float v9, v9

    .line 1088
    div-float/2addr v2, v9

    .line 1089
    int-to-float v8, v8

    .line 1090
    iget v1, v6, LN/r;->I:I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_0

    .line 1091
    .line 1092
    int-to-float v1, v1

    .line 1093
    div-float/2addr v8, v1

    .line 1094
    move/from16 v36, v2

    .line 1095
    .line 1096
    move/from16 v37, v8

    .line 1097
    .line 1098
    :goto_18
    :try_start_24
    const-string v1, "displayAlign"

    .line 1099
    .line 1100
    invoke-static {v4, v1}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v1

    .line 1104
    if-eqz v1, :cond_1c

    .line 1105
    .line 1106
    invoke-static {v1}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0

    .line 1111
    .line 1112
    .line 1113
    const-string v2, "after"

    .line 1114
    .line 1115
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v2

    .line 1119
    if-nez v2, :cond_1e

    .line 1120
    .line 1121
    const-string v2, "center"

    .line 1122
    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    if-nez v1, :cond_1d

    .line 1128
    .line 1129
    :cond_1c
    move/from16 v33, v5

    .line 1130
    .line 1131
    const/16 v35, 0x0

    .line 1132
    .line 1133
    goto :goto_19

    .line 1134
    :cond_1d
    const/high16 v1, 0x40000000    # 2.0f

    .line 1135
    .line 1136
    div-float v1, v37, v1

    .line 1137
    .line 1138
    add-float/2addr v1, v5

    .line 1139
    move/from16 v33, v1

    .line 1140
    .line 1141
    const/16 v35, 0x1

    .line 1142
    .line 1143
    goto :goto_19

    .line 1144
    :cond_1e
    add-float v5, v5, v37

    .line 1145
    .line 1146
    move/from16 v33, v5

    .line 1147
    .line 1148
    const/16 v35, 0x2

    .line 1149
    .line 1150
    :goto_19
    int-to-float v1, v7

    .line 1151
    div-float v39, v23, v1

    .line 1152
    .line 1153
    :try_start_25
    const-string v1, "writingMode"

    .line 1154
    .line 1155
    invoke-static {v4, v1}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    const/high16 v2, -0x80000000

    .line 1160
    .line 1161
    if-eqz v1, :cond_22

    .line 1162
    .line 1163
    invoke-static {v1}, Lo3/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_0

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1171
    .line 1172
    .line 1173
    move-result v5

    .line 1174
    sparse-switch v5, :sswitch_data_0

    .line 1175
    .line 1176
    .line 1177
    :goto_1a
    const/4 v9, -0x1

    .line 1178
    goto :goto_1b

    .line 1179
    :sswitch_0
    const-string v5, "tbrl"

    .line 1180
    .line 1181
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1182
    .line 1183
    .line 1184
    move-result v1

    .line 1185
    if-nez v1, :cond_1f

    .line 1186
    .line 1187
    goto :goto_1a

    .line 1188
    :cond_1f
    const/4 v9, 0x2

    .line 1189
    goto :goto_1b

    .line 1190
    :sswitch_1
    const-string v5, "tblr"

    .line 1191
    .line 1192
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v1

    .line 1196
    if-nez v1, :cond_20

    .line 1197
    .line 1198
    goto :goto_1a

    .line 1199
    :cond_20
    const/4 v9, 0x1

    .line 1200
    goto :goto_1b

    .line 1201
    :sswitch_2
    const-string v5, "tb"

    .line 1202
    .line 1203
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v1

    .line 1207
    if-nez v1, :cond_21

    .line 1208
    .line 1209
    goto :goto_1a

    .line 1210
    :cond_21
    const/4 v9, 0x0

    .line 1211
    :goto_1b
    packed-switch v9, :pswitch_data_0

    .line 1212
    .line 1213
    .line 1214
    :cond_22
    const/high16 v40, -0x80000000

    .line 1215
    .line 1216
    goto :goto_1c

    .line 1217
    :pswitch_0
    const/16 v40, 0x1

    .line 1218
    .line 1219
    goto :goto_1c

    .line 1220
    :pswitch_1
    const/16 v40, 0x2

    .line 1221
    .line 1222
    :goto_1c
    :try_start_26
    new-instance v1, Lcom/google/android/gms/internal/ads/o2;

    .line 1223
    .line 1224
    const/16 v34, 0x0

    .line 1225
    .line 1226
    const/16 v38, 0x1

    .line 1227
    .line 1228
    move-object/from16 v30, v1

    .line 1229
    .line 1230
    invoke-direct/range {v30 .. v40}, Lcom/google/android/gms/internal/ads/o2;-><init>(Ljava/lang/String;FFIIFFIFI)V

    .line 1231
    .line 1232
    .line 1233
    goto :goto_1d

    .line 1234
    :catch_a
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v1

    .line 1238
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_16

    .line 1242
    .line 1243
    :cond_23
    const-string v2, "Ignoring region with unsupported extent: "

    .line 1244
    .line 1245
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    goto/16 :goto_16

    .line 1253
    .line 1254
    :cond_24
    const-string v1, "Ignoring region without an extent"

    .line 1255
    .line 1256
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_16

    .line 1260
    .line 1261
    :catch_b
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    goto/16 :goto_16

    .line 1269
    .line 1270
    :cond_25
    const-string v2, "Ignoring region with unsupported origin: "

    .line 1271
    .line 1272
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    goto/16 :goto_16

    .line 1280
    .line 1281
    :cond_26
    move-object/from16 v43, v5

    .line 1282
    .line 1283
    move-object/from16 v41, v8

    .line 1284
    .line 1285
    move-object/from16 v44, v11

    .line 1286
    .line 1287
    move-object/from16 v42, v15

    .line 1288
    .line 1289
    const-string v1, "Ignoring region without an origin"

    .line 1290
    .line 1291
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .line 1293
    .line 1294
    goto/16 :goto_16

    .line 1295
    .line 1296
    :goto_1d
    if-eqz v1, :cond_14

    .line 1297
    .line 1298
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/o2;->a:Ljava/lang/String;

    .line 1299
    .line 1300
    move-object/from16 v5, v27

    .line 1301
    .line 1302
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    :goto_1e
    invoke-static {v4, v10}, LU4/a;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v1
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_0

    .line 1309
    if-eqz v1, :cond_27

    .line 1310
    .line 1311
    move-object/from16 v13, v16

    .line 1312
    .line 1313
    move-object/from16 v3, v25

    .line 1314
    .line 1315
    goto/16 :goto_2f

    .line 1316
    .line 1317
    :cond_27
    move-object/from16 v27, v5

    .line 1318
    .line 1319
    move-object/from16 v2, v16

    .line 1320
    .line 1321
    move-object/from16 v9, v17

    .line 1322
    .line 1323
    move-object/from16 v11, v18

    .line 1324
    .line 1325
    move-object/from16 v8, v41

    .line 1326
    .line 1327
    move-object/from16 v15, v42

    .line 1328
    .line 1329
    move-object/from16 v5, v43

    .line 1330
    .line 1331
    move-object/from16 v30, v44

    .line 1332
    .line 1333
    goto/16 :goto_11

    .line 1334
    .line 1335
    :cond_28
    move-object/from16 v16, v2

    .line 1336
    .line 1337
    move-object/from16 v43, v5

    .line 1338
    .line 1339
    move-object/from16 v17, v9

    .line 1340
    .line 1341
    move-object/from16 v18, v11

    .line 1342
    .line 1343
    move-object/from16 v5, v27

    .line 1344
    .line 1345
    move-object/from16 v44, v30

    .line 1346
    .line 1347
    :try_start_27
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 1348
    .line 1349
    .line 1350
    move-result v1

    .line 1351
    const/4 v2, 0x0

    .line 1352
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/n2;->f(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/p2;)Lcom/google/android/gms/internal/ads/p2;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v35
    :try_end_27
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_27 .. :try_end_27} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_27} :catch_1
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0

    .line 1356
    move-object/from16 v36, v2

    .line 1357
    .line 1358
    move-object/from16 v38, v36

    .line 1359
    .line 1360
    move-object/from16 v37, v20

    .line 1361
    .line 1362
    const/4 v3, 0x0

    .line 1363
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    :goto_1f
    if-ge v3, v1, :cond_33

    .line 1379
    .line 1380
    :try_start_28
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v13

    .line 1384
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v15

    .line 1388
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_28
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_28 .. :try_end_28} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_0

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 1392
    .line 1393
    .line 1394
    move-result v23

    .line 1395
    sparse-switch v23, :sswitch_data_1

    .line 1396
    .line 1397
    .line 1398
    :goto_20
    move-object/from16 v2, v17

    .line 1399
    .line 1400
    :goto_21
    const/4 v8, -0x1

    .line 1401
    goto :goto_23

    .line 1402
    :sswitch_3
    const-string v2, "backgroundImage"

    .line 1403
    .line 1404
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v2

    .line 1408
    if-nez v2, :cond_29

    .line 1409
    .line 1410
    goto :goto_20

    .line 1411
    :cond_29
    move-object/from16 v2, v17

    .line 1412
    .line 1413
    const/4 v8, 0x5

    .line 1414
    goto :goto_23

    .line 1415
    :sswitch_4
    move-object/from16 v2, v17

    .line 1416
    .line 1417
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v13

    .line 1421
    if-nez v13, :cond_2a

    .line 1422
    .line 1423
    :goto_22
    goto :goto_21

    .line 1424
    :cond_2a
    const/4 v8, 0x4

    .line 1425
    goto :goto_23

    .line 1426
    :sswitch_5
    move-object/from16 v2, v17

    .line 1427
    .line 1428
    const-string v8, "begin"

    .line 1429
    .line 1430
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v8

    .line 1434
    if-nez v8, :cond_2b

    .line 1435
    .line 1436
    goto :goto_22

    .line 1437
    :cond_2b
    const/4 v8, 0x3

    .line 1438
    goto :goto_23

    .line 1439
    :sswitch_6
    move-object/from16 v2, v17

    .line 1440
    .line 1441
    const-string v8, "end"

    .line 1442
    .line 1443
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1444
    .line 1445
    .line 1446
    move-result v8

    .line 1447
    if-nez v8, :cond_2c

    .line 1448
    .line 1449
    goto :goto_22

    .line 1450
    :cond_2c
    const/4 v8, 0x2

    .line 1451
    goto :goto_23

    .line 1452
    :sswitch_7
    move-object/from16 v2, v17

    .line 1453
    .line 1454
    const-string v8, "dur"

    .line 1455
    .line 1456
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v8

    .line 1460
    if-nez v8, :cond_2d

    .line 1461
    .line 1462
    goto :goto_22

    .line 1463
    :cond_2d
    const/4 v8, 0x1

    .line 1464
    goto :goto_23

    .line 1465
    :sswitch_8
    move-object/from16 v2, v17

    .line 1466
    .line 1467
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v8

    .line 1471
    if-nez v8, :cond_2e

    .line 1472
    .line 1473
    goto :goto_22

    .line 1474
    :cond_2e
    const/4 v8, 0x0

    .line 1475
    :goto_23
    packed-switch v8, :pswitch_data_1

    .line 1476
    .line 1477
    .line 1478
    goto :goto_24

    .line 1479
    :pswitch_2
    :try_start_29
    const-string v8, "#"

    .line 1480
    .line 1481
    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1482
    .line 1483
    .line 1484
    move-result v8
    :try_end_29
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_29 .. :try_end_29} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_0

    .line 1485
    if-eqz v8, :cond_2f

    .line 1486
    .line 1487
    const/4 v8, 0x1

    .line 1488
    :try_start_2a
    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v38
    :try_end_2a
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2a .. :try_end_2a} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_0

    .line 1492
    :cond_2f
    :goto_24
    move-object/from16 v13, v16

    .line 1493
    .line 1494
    move-object/from16 v8, v18

    .line 1495
    .line 1496
    :goto_25
    const/4 v9, -0x1

    .line 1497
    goto/16 :goto_2a

    .line 1498
    .line 1499
    :catch_c
    move-exception v0

    .line 1500
    :goto_26
    move-object v1, v0

    .line 1501
    move-object/from16 v13, v16

    .line 1502
    .line 1503
    :goto_27
    move-object/from16 v3, v25

    .line 1504
    .line 1505
    goto/16 :goto_32

    .line 1506
    .line 1507
    :catch_d
    move-exception v0

    .line 1508
    const/4 v8, 0x1

    .line 1509
    goto :goto_26

    .line 1510
    :pswitch_3
    const/4 v8, 0x1

    .line 1511
    :try_start_2b
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v9

    .line 1515
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v13

    .line 1519
    if-eqz v13, :cond_30

    .line 1520
    .line 1521
    const/4 v13, 0x0

    .line 1522
    new-array v9, v13, [Ljava/lang/String;

    .line 1523
    .line 1524
    move-object/from16 v8, v18

    .line 1525
    .line 1526
    const/4 v15, -0x1

    .line 1527
    goto :goto_28

    .line 1528
    :cond_30
    const/4 v13, 0x0

    .line 1529
    sget v15, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 1530
    .line 1531
    move-object/from16 v8, v18

    .line 1532
    .line 1533
    const/4 v15, -0x1

    .line 1534
    invoke-virtual {v9, v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v9
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2b .. :try_end_2b} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2b} :catch_1
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_0

    .line 1538
    :goto_28
    :try_start_2c
    array-length v13, v9
    :try_end_2c
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2c .. :try_end_2c} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_0

    .line 1539
    if-lez v13, :cond_31

    .line 1540
    .line 1541
    move-object/from16 v36, v9

    .line 1542
    .line 1543
    :cond_31
    move-object/from16 v13, v16

    .line 1544
    .line 1545
    goto :goto_25

    .line 1546
    :catch_e
    move-exception v0

    .line 1547
    goto :goto_26

    .line 1548
    :pswitch_4
    move-object/from16 v13, v16

    .line 1549
    .line 1550
    move-object/from16 v8, v18

    .line 1551
    .line 1552
    const/4 v9, -0x1

    .line 1553
    :try_start_2d
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/n2;->b(Ljava/lang/String;Lw1/d;)J

    .line 1554
    .line 1555
    .line 1556
    move-result-wide v30

    .line 1557
    goto :goto_2a

    .line 1558
    :catch_f
    move-exception v0

    .line 1559
    :goto_29
    move-object v1, v0

    .line 1560
    goto :goto_27

    .line 1561
    :pswitch_5
    move-object/from16 v13, v16

    .line 1562
    .line 1563
    move-object/from16 v8, v18

    .line 1564
    .line 1565
    const/4 v9, -0x1

    .line 1566
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/n2;->b(Ljava/lang/String;Lw1/d;)J

    .line 1567
    .line 1568
    .line 1569
    move-result-wide v10

    .line 1570
    goto :goto_2a

    .line 1571
    :pswitch_6
    move-object/from16 v13, v16

    .line 1572
    .line 1573
    move-object/from16 v8, v18

    .line 1574
    .line 1575
    const/4 v9, -0x1

    .line 1576
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/n2;->b(Ljava/lang/String;Lw1/d;)J

    .line 1577
    .line 1578
    .line 1579
    move-result-wide v32

    .line 1580
    goto :goto_2a

    .line 1581
    :pswitch_7
    move-object/from16 v13, v16

    .line 1582
    .line 1583
    move-object/from16 v8, v18

    .line 1584
    .line 1585
    const/4 v9, -0x1

    .line 1586
    invoke-virtual {v5, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v16

    .line 1590
    if-eqz v16, :cond_32

    .line 1591
    .line 1592
    move-object/from16 v37, v15

    .line 1593
    .line 1594
    :cond_32
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    .line 1595
    .line 1596
    move-object/from16 v17, v2

    .line 1597
    .line 1598
    move-object/from16 v18, v8

    .line 1599
    .line 1600
    move-object/from16 v16, v13

    .line 1601
    .line 1602
    const/4 v2, 0x0

    .line 1603
    goto/16 :goto_1f

    .line 1604
    .line 1605
    :catch_10
    move-exception v0

    .line 1606
    move-object/from16 v13, v16

    .line 1607
    .line 1608
    goto :goto_29

    .line 1609
    :cond_33
    move-object/from16 v13, v16

    .line 1610
    .line 1611
    if-eqz v26, :cond_37

    .line 1612
    .line 1613
    move-object/from16 v2, v26

    .line 1614
    .line 1615
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/m2;->d:J

    .line 1616
    .line 1617
    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    cmp-long v1, v8, v39

    .line 1623
    .line 1624
    if-eqz v1, :cond_36

    .line 1625
    .line 1626
    cmp-long v1, v30, v39

    .line 1627
    .line 1628
    if-eqz v1, :cond_34

    .line 1629
    .line 1630
    add-long v15, v30, v8

    .line 1631
    .line 1632
    goto :goto_2b

    .line 1633
    :cond_34
    move-wide/from16 v15, v39

    .line 1634
    .line 1635
    :goto_2b
    cmp-long v1, v10, v39

    .line 1636
    .line 1637
    if-eqz v1, :cond_35

    .line 1638
    .line 1639
    add-long/2addr v10, v8

    .line 1640
    move-object v1, v2

    .line 1641
    :goto_2c
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    goto :goto_2d

    .line 1647
    :cond_35
    move-object v1, v2

    .line 1648
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    goto :goto_2d

    .line 1659
    :cond_36
    move-object v1, v2

    .line 1660
    move-wide/from16 v15, v30

    .line 1661
    .line 1662
    goto :goto_2c

    .line 1663
    :cond_37
    move-object/from16 v2, v26

    .line 1664
    .line 1665
    move-wide/from16 v15, v30

    .line 1666
    .line 1667
    const/4 v1, 0x0

    .line 1668
    goto :goto_2c

    .line 1669
    :goto_2d
    cmp-long v3, v10, v8

    .line 1670
    .line 1671
    if-nez v3, :cond_39

    .line 1672
    .line 1673
    cmp-long v3, v32, v8

    .line 1674
    .line 1675
    if-eqz v3, :cond_38

    .line 1676
    .line 1677
    add-long v32, v15, v32

    .line 1678
    .line 1679
    move-wide/from16 v33, v32

    .line 1680
    .line 1681
    goto :goto_2e

    .line 1682
    :cond_38
    if-eqz v1, :cond_3a

    .line 1683
    .line 1684
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/m2;->e:J
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2d .. :try_end_2d} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_2d} :catch_1
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_0

    .line 1685
    .line 1686
    cmp-long v3, v10, v8

    .line 1687
    .line 1688
    if-eqz v3, :cond_3a

    .line 1689
    .line 1690
    :cond_39
    move-wide/from16 v33, v10

    .line 1691
    .line 1692
    goto :goto_2e

    .line 1693
    :cond_3a
    move-wide/from16 v33, v8

    .line 1694
    .line 1695
    :goto_2e
    :try_start_2e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v30

    .line 1699
    move-wide/from16 v31, v15

    .line 1700
    .line 1701
    move-object/from16 v39, v1

    .line 1702
    .line 1703
    invoke-static/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/m2;->b(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/m2;)Lcom/google/android/gms/internal/ads/m2;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1
    :try_end_2e
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2e .. :try_end_2e} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_2e} :catch_1
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_0

    .line 1707
    move-object/from16 v3, v25

    .line 1708
    .line 1709
    :try_start_2f
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1710
    .line 1711
    .line 1712
    if-eqz v2, :cond_3c

    .line 1713
    .line 1714
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    if-nez v8, :cond_3b

    .line 1717
    .line 1718
    new-instance v8, Ljava/util/ArrayList;

    .line 1719
    .line 1720
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .line 1722
    .line 1723
    iput-object v8, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1724
    .line 1725
    :cond_3b
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1726
    .line 1727
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Lcom/google/android/gms/internal/ads/U1; {:try_start_2f .. :try_end_2f} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_0

    .line 1728
    .line 1729
    .line 1730
    :cond_3c
    :goto_2f
    move-object/from16 v17, v6

    .line 1731
    .line 1732
    move/from16 v18, v7

    .line 1733
    .line 1734
    move-object/from16 v16, v13

    .line 1735
    .line 1736
    move-object/from16 v14, v22

    .line 1737
    .line 1738
    move/from16 v15, v24

    .line 1739
    .line 1740
    move-object/from16 v2, v43

    .line 1741
    .line 1742
    move-object/from16 v6, v44

    .line 1743
    .line 1744
    goto/16 :goto_37

    .line 1745
    .line 1746
    :catch_11
    move-exception v0

    .line 1747
    :goto_30
    move-object v1, v0

    .line 1748
    goto :goto_32

    .line 1749
    :catch_12
    move-exception v0

    .line 1750
    :goto_31
    move-object/from16 v3, v25

    .line 1751
    .line 1752
    goto :goto_30

    .line 1753
    :catch_13
    move-exception v0

    .line 1754
    move-object/from16 v13, v16

    .line 1755
    .line 1756
    goto :goto_31

    .line 1757
    :goto_32
    :try_start_30
    const-string v2, "Suppressing parser error"

    .line 1758
    .line 1759
    invoke-static {v14, v2, v1}, Lcom/google/android/gms/internal/ads/Zo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_0

    .line 1760
    .line 1761
    .line 1762
    move-object/from16 v17, v6

    .line 1763
    .line 1764
    move/from16 v18, v7

    .line 1765
    .line 1766
    move-object/from16 v16, v13

    .line 1767
    .line 1768
    move-object/from16 v14, v22

    .line 1769
    .line 1770
    move-object/from16 v2, v43

    .line 1771
    .line 1772
    move-object/from16 v6, v44

    .line 1773
    .line 1774
    goto/16 :goto_f

    .line 1775
    .line 1776
    :cond_3d
    move-object/from16 v29, v2

    .line 1777
    .line 1778
    move-object/from16 v43, v5

    .line 1779
    .line 1780
    move-object v5, v6

    .line 1781
    move-object/from16 v44, v7

    .line 1782
    .line 1783
    move-object v3, v8

    .line 1784
    move-object v2, v9

    .line 1785
    move-object/from16 v28, v12

    .line 1786
    .line 1787
    move-object/from16 v22, v14

    .line 1788
    .line 1789
    move/from16 v24, v15

    .line 1790
    .line 1791
    const/4 v6, 0x4

    .line 1792
    if-ne v10, v6, :cond_40

    .line 1793
    .line 1794
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1795
    .line 1796
    .line 1797
    :try_start_31
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v1

    .line 1801
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/m2;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/m2;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v1

    .line 1805
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1806
    .line 1807
    if-nez v6, :cond_3e

    .line 1808
    .line 1809
    new-instance v6, Ljava/util/ArrayList;

    .line 1810
    .line 1811
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    .line 1813
    .line 1814
    iput-object v6, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1815
    .line 1816
    :cond_3e
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 1817
    .line 1818
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    .line 1820
    .line 1821
    :cond_3f
    move-object/from16 v2, v43

    .line 1822
    .line 1823
    move-object/from16 v6, v44

    .line 1824
    .line 1825
    goto :goto_36

    .line 1826
    :cond_40
    const/4 v2, 0x3

    .line 1827
    if-ne v10, v2, :cond_3f

    .line 1828
    .line 1829
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v2

    .line 1833
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1834
    .line 1835
    .line 1836
    move-result v1

    .line 1837
    if-eqz v1, :cond_41

    .line 1838
    .line 1839
    new-instance v14, Lcom/google/android/gms/internal/ads/q2;

    .line 1840
    .line 1841
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v1

    .line 1845
    check-cast v1, Lcom/google/android/gms/internal/ads/m2;
    :try_end_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_31} :catch_1
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_0

    .line 1846
    .line 1847
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1848
    .line 1849
    .line 1850
    move-object/from16 v2, v43

    .line 1851
    .line 1852
    move-object/from16 v6, v44

    .line 1853
    .line 1854
    :try_start_32
    invoke-direct {v14, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/q2;-><init>(Lcom/google/android/gms/internal/ads/m2;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1855
    .line 1856
    .line 1857
    goto :goto_33

    .line 1858
    :cond_41
    move-object/from16 v2, v43

    .line 1859
    .line 1860
    move-object/from16 v6, v44

    .line 1861
    .line 1862
    move-object/from16 v14, v22

    .line 1863
    .line 1864
    :goto_33
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 1865
    .line 1866
    .line 1867
    :goto_34
    move/from16 v15, v24

    .line 1868
    .line 1869
    goto :goto_37

    .line 1870
    :cond_42
    move-object/from16 v20, v1

    .line 1871
    .line 1872
    move-object/from16 v29, v2

    .line 1873
    .line 1874
    move-object v2, v5

    .line 1875
    move-object v5, v6

    .line 1876
    move-object v6, v7

    .line 1877
    move-object v3, v8

    .line 1878
    move-object/from16 v28, v12

    .line 1879
    .line 1880
    move-object/from16 v22, v14

    .line 1881
    .line 1882
    move/from16 v24, v15

    .line 1883
    .line 1884
    const/4 v1, 0x2

    .line 1885
    if-ne v10, v1, :cond_43

    .line 1886
    .line 1887
    add-int/lit8 v15, v24, 0x1

    .line 1888
    .line 1889
    :goto_35
    move-object/from16 v14, v22

    .line 1890
    .line 1891
    goto :goto_37

    .line 1892
    :cond_43
    const/4 v1, 0x3

    .line 1893
    if-ne v10, v1, :cond_44

    .line 1894
    .line 1895
    add-int/lit8 v15, v24, -0x1

    .line 1896
    .line 1897
    goto :goto_35

    .line 1898
    :cond_44
    :goto_36
    move-object/from16 v14, v22

    .line 1899
    .line 1900
    goto :goto_34

    .line 1901
    :goto_37
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1902
    .line 1903
    .line 1904
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1905
    .line 1906
    .line 1907
    move-result v10
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_0

    .line 1908
    move-object v8, v3

    .line 1909
    move-object v7, v6

    .line 1910
    move-object/from16 v1, v20

    .line 1911
    .line 1912
    move-object/from16 v12, v28

    .line 1913
    .line 1914
    const/4 v9, 0x0

    .line 1915
    move-object/from16 v3, p0

    .line 1916
    .line 1917
    move-object v6, v5

    .line 1918
    move-object v5, v2

    .line 1919
    move-object/from16 v2, v29

    .line 1920
    .line 1921
    goto/16 :goto_0

    .line 1922
    .line 1923
    :cond_45
    move-object/from16 v22, v14

    .line 1924
    .line 1925
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1926
    .line 1927
    .line 1928
    return-object v22

    .line 1929
    :goto_38
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1930
    .line 1931
    const-string v3, "Unexpected error when reading input."

    .line 1932
    .line 1933
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1934
    .line 1935
    .line 1936
    throw v2

    .line 1937
    :goto_39
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1938
    .line 1939
    const-string v3, "Unable to decode source"

    .line 1940
    .line 1941
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1942
    .line 1943
    .line 1944
    throw v2

    .line 1945
    :sswitch_data_0
    .sparse-switch
        0xe6e -> :sswitch_2
        0x363874 -> :sswitch_1
        0x363928 -> :sswitch_0
    .end sparse-switch

    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :sswitch_data_1
    .sparse-switch
        -0x37b7d90c -> :sswitch_8
        0x18601 -> :sswitch_7
        0x188db -> :sswitch_6
        0x59478a9 -> :sswitch_5
        0x68b1db1 -> :sswitch_4
        0x4d0b70cd -> :sswitch_3
    .end sparse-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final d([BIILt0/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/n2;->a(I[BI)Lcom/google/android/gms/internal/ads/q2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p4}, La7/b;->o(Lcom/google/android/gms/internal/ads/T1;Lt0/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
