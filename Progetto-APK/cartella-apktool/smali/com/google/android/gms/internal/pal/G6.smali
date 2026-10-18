.class public abstract Lcom/google/android/gms/internal/pal/G6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/pal/G6;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/G6;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    mul-int/lit8 v1, v0, 0x3

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    div-int/2addr v1, v2

    .line 12
    new-array v3, v1, [B

    .line 13
    .line 14
    sget-object v4, Lcom/google/android/gms/internal/pal/F6;->d:[I

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    :goto_0
    const/4 v10, 0x2

    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v12, 0x3

    .line 24
    if-ge v6, v0, :cond_10

    .line 25
    .line 26
    if-nez v7, :cond_2

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v7, v6, 0x4

    .line 29
    .line 30
    if-gt v7, v0, :cond_0

    .line 31
    .line 32
    aget-byte v8, p0, v6

    .line 33
    .line 34
    and-int/lit16 v8, v8, 0xff

    .line 35
    .line 36
    aget v8, v4, v8

    .line 37
    .line 38
    shl-int/lit8 v8, v8, 0x12

    .line 39
    .line 40
    add-int/lit8 v13, v6, 0x1

    .line 41
    .line 42
    aget-byte v13, p0, v13

    .line 43
    .line 44
    and-int/lit16 v13, v13, 0xff

    .line 45
    .line 46
    aget v13, v4, v13

    .line 47
    .line 48
    shl-int/lit8 v13, v13, 0xc

    .line 49
    .line 50
    or-int/2addr v8, v13

    .line 51
    add-int/lit8 v13, v6, 0x2

    .line 52
    .line 53
    aget-byte v13, p0, v13

    .line 54
    .line 55
    and-int/lit16 v13, v13, 0xff

    .line 56
    .line 57
    aget v13, v4, v13

    .line 58
    .line 59
    shl-int/lit8 v13, v13, 0x6

    .line 60
    .line 61
    or-int/2addr v8, v13

    .line 62
    add-int/lit8 v13, v6, 0x3

    .line 63
    .line 64
    aget-byte v13, p0, v13

    .line 65
    .line 66
    and-int/lit16 v13, v13, 0xff

    .line 67
    .line 68
    aget v13, v4, v13

    .line 69
    .line 70
    or-int/2addr v8, v13

    .line 71
    if-ltz v8, :cond_0

    .line 72
    .line 73
    add-int/lit8 v6, v9, 0x2

    .line 74
    .line 75
    int-to-byte v13, v8

    .line 76
    aput-byte v13, v3, v6

    .line 77
    .line 78
    add-int/lit8 v6, v9, 0x1

    .line 79
    .line 80
    shr-int/lit8 v13, v8, 0x8

    .line 81
    .line 82
    int-to-byte v13, v13

    .line 83
    aput-byte v13, v3, v6

    .line 84
    .line 85
    shr-int/lit8 v6, v8, 0x10

    .line 86
    .line 87
    int-to-byte v6, v6

    .line 88
    aput-byte v6, v3, v9

    .line 89
    .line 90
    add-int/lit8 v9, v9, 0x3

    .line 91
    .line 92
    move v6, v7

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    if-lt v6, v0, :cond_1

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_1
    const/4 v7, 0x0

    .line 100
    :cond_2
    add-int/lit8 v13, v6, 0x1

    .line 101
    .line 102
    aget-byte v6, p0, v6

    .line 103
    .line 104
    and-int/lit16 v6, v6, 0xff

    .line 105
    .line 106
    aget v6, v4, v6

    .line 107
    .line 108
    const/4 v14, -0x1

    .line 109
    if-eqz v7, :cond_e

    .line 110
    .line 111
    if-eq v7, v11, :cond_c

    .line 112
    .line 113
    const/4 v11, -0x2

    .line 114
    if-eq v7, v10, :cond_9

    .line 115
    .line 116
    const/4 v10, 0x5

    .line 117
    if-eq v7, v12, :cond_6

    .line 118
    .line 119
    if-eq v7, v2, :cond_4

    .line 120
    .line 121
    if-eq v7, v10, :cond_3

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_3
    if-ne v6, v14, :cond_14

    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_4
    if-ne v6, v11, :cond_5

    .line 130
    .line 131
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 132
    .line 133
    :goto_3
    move v6, v13

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    if-ne v6, v14, :cond_14

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_6
    if-ltz v6, :cond_7

    .line 139
    .line 140
    shl-int/lit8 v7, v8, 0x6

    .line 141
    .line 142
    or-int v8, v7, v6

    .line 143
    .line 144
    add-int/lit8 v6, v9, 0x2

    .line 145
    .line 146
    int-to-byte v7, v8

    .line 147
    aput-byte v7, v3, v6

    .line 148
    .line 149
    add-int/lit8 v6, v9, 0x1

    .line 150
    .line 151
    shr-int/lit8 v7, v8, 0x8

    .line 152
    .line 153
    int-to-byte v7, v7

    .line 154
    aput-byte v7, v3, v6

    .line 155
    .line 156
    shr-int/lit8 v6, v8, 0x10

    .line 157
    .line 158
    int-to-byte v6, v6

    .line 159
    aput-byte v6, v3, v9

    .line 160
    .line 161
    add-int/lit8 v9, v9, 0x3

    .line 162
    .line 163
    move v6, v13

    .line 164
    const/4 v7, 0x0

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    if-ne v6, v11, :cond_8

    .line 168
    .line 169
    add-int/lit8 v6, v9, 0x1

    .line 170
    .line 171
    shr-int/lit8 v7, v8, 0x2

    .line 172
    .line 173
    int-to-byte v7, v7

    .line 174
    aput-byte v7, v3, v6

    .line 175
    .line 176
    shr-int/lit8 v6, v8, 0xa

    .line 177
    .line 178
    int-to-byte v6, v6

    .line 179
    aput-byte v6, v3, v9

    .line 180
    .line 181
    add-int/lit8 v9, v9, 0x2

    .line 182
    .line 183
    move v6, v13

    .line 184
    const/4 v7, 0x5

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_8
    if-ne v6, v14, :cond_14

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    if-ltz v6, :cond_a

    .line 191
    .line 192
    :goto_4
    shl-int/lit8 v8, v8, 0x6

    .line 193
    .line 194
    or-int/2addr v8, v6

    .line 195
    goto :goto_2

    .line 196
    :cond_a
    if-ne v6, v11, :cond_b

    .line 197
    .line 198
    add-int/lit8 v6, v9, 0x1

    .line 199
    .line 200
    shr-int/lit8 v7, v8, 0x4

    .line 201
    .line 202
    int-to-byte v7, v7

    .line 203
    aput-byte v7, v3, v9

    .line 204
    .line 205
    move v9, v6

    .line 206
    move v6, v13

    .line 207
    const/4 v7, 0x4

    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_b
    if-ne v6, v14, :cond_14

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_c
    if-ltz v6, :cond_d

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_d
    if-ne v6, v14, :cond_14

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_e
    if-ltz v6, :cond_f

    .line 220
    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    move v8, v6

    .line 224
    goto :goto_3

    .line 225
    :cond_f
    if-ne v6, v14, :cond_14

    .line 226
    .line 227
    :goto_5
    goto :goto_3

    .line 228
    :cond_10
    :goto_6
    if-eq v7, v11, :cond_14

    .line 229
    .line 230
    if-eq v7, v10, :cond_12

    .line 231
    .line 232
    if-eq v7, v12, :cond_11

    .line 233
    .line 234
    if-eq v7, v2, :cond_14

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_11
    add-int/lit8 p0, v9, 0x1

    .line 238
    .line 239
    shr-int/lit8 v0, v8, 0xa

    .line 240
    .line 241
    int-to-byte v0, v0

    .line 242
    aput-byte v0, v3, v9

    .line 243
    .line 244
    add-int/lit8 v9, v9, 0x2

    .line 245
    .line 246
    shr-int/lit8 v0, v8, 0x2

    .line 247
    .line 248
    int-to-byte v0, v0

    .line 249
    aput-byte v0, v3, p0

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_12
    add-int/lit8 p0, v9, 0x1

    .line 253
    .line 254
    shr-int/lit8 v0, v8, 0x4

    .line 255
    .line 256
    int-to-byte v0, v0

    .line 257
    aput-byte v0, v3, v9

    .line 258
    .line 259
    move v9, p0

    .line 260
    :goto_7
    if-ne v9, v1, :cond_13

    .line 261
    .line 262
    return-object v3

    .line 263
    :cond_13
    new-array p0, v9, [B

    .line 264
    .line 265
    invoke-static {v3, v5, p0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    .line 267
    .line 268
    return-object p0

    .line 269
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    const-string v0, "bad base-64"

    .line 272
    .line 273
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p0
.end method
