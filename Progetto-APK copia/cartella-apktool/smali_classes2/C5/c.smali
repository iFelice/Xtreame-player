.class public final LC5/c;
.super LC5/j;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/StringBuilder;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LC5/c;->d:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, LC5/c;->a:Z

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LC5/c;->b:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 p1, 0x9

    .line 16
    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, LC5/c;->c:[I

    .line 20
    .line 21
    return-void
.end method

.method public static i([I)I
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    const v4, 0x7fffffff

    .line 6
    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_1
    if-ge v5, v3, :cond_1

    .line 10
    .line 11
    aget v6, p0, v5

    .line 12
    .line 13
    if-ge v6, v4, :cond_0

    .line 14
    .line 15
    if-le v6, v2, :cond_0

    .line 16
    .line 17
    move v4, v6

    .line 18
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_2
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    aget v7, p0, v2

    .line 28
    .line 29
    if-le v7, v4, :cond_2

    .line 30
    .line 31
    add-int/lit8 v8, v0, -0x1

    .line 32
    .line 33
    sub-int/2addr v8, v2

    .line 34
    const/4 v9, 0x1

    .line 35
    shl-int v8, v9, v8

    .line 36
    .line 37
    or-int/2addr v5, v8

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    add-int/2addr v6, v7

    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v2, -0x1

    .line 45
    const/4 v7, 0x3

    .line 46
    if-ne v3, v7, :cond_6

    .line 47
    .line 48
    :goto_3
    if-ge v1, v0, :cond_5

    .line 49
    .line 50
    if-lez v3, :cond_5

    .line 51
    .line 52
    aget v7, p0, v1

    .line 53
    .line 54
    if-le v7, v4, :cond_4

    .line 55
    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    shl-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    if-lt v7, v6, :cond_4

    .line 61
    .line 62
    return v2

    .line 63
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    return v5

    .line 67
    :cond_6
    if-gt v3, v7, :cond_7

    .line 68
    .line 69
    return v2

    .line 70
    :cond_7
    move v2, v4

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, LC5/c;->c:[I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    iget-object v6, v0, LC5/c;->b:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    .line 17
    .line 18
    iget v7, v1, Lw5/a;->H:I

    .line 19
    .line 20
    invoke-virtual {v1, v5}, Lw5/a;->e(I)I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    array-length v9, v4

    .line 25
    move v10, v8

    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    :goto_0
    if-ge v8, v7, :cond_10

    .line 29
    .line 30
    invoke-virtual {v1, v8}, Lw5/a;->d(I)Z

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-eq v13, v11, :cond_0

    .line 35
    .line 36
    aget v13, v4, v12

    .line 37
    .line 38
    add-int/2addr v13, v3

    .line 39
    aput v13, v4, v12

    .line 40
    .line 41
    move/from16 v13, p1

    .line 42
    .line 43
    const/4 v14, 0x2

    .line 44
    goto/16 :goto_a

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v13, v9, -0x1

    .line 47
    .line 48
    if-ne v12, v13, :cond_f

    .line 49
    .line 50
    invoke-static {v4}, LC5/c;->i([I)I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    const/16 v14, 0x94

    .line 55
    .line 56
    if-ne v13, v14, :cond_e

    .line 57
    .line 58
    sub-int v13, v8, v10

    .line 59
    .line 60
    div-int/2addr v13, v2

    .line 61
    sub-int v13, v10, v13

    .line 62
    .line 63
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    invoke-virtual {v1, v13, v10}, Lw5/a;->h(II)Z

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-eqz v13, :cond_e

    .line 72
    .line 73
    filled-new-array {v10, v8}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    aget v8, v7, v3

    .line 78
    .line 79
    invoke-virtual {v1, v8}, Lw5/a;->e(I)I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    iget v9, v1, Lw5/a;->H:I

    .line 84
    .line 85
    :goto_1
    invoke-static {v8, v1, v4}, LC5/j;->g(ILw5/a;[I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, LC5/c;->i([I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-ltz v10, :cond_d

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    :goto_2
    const/16 v12, 0x2a

    .line 96
    .line 97
    const-string v13, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 98
    .line 99
    const/16 v15, 0x2b

    .line 100
    .line 101
    if-ge v11, v15, :cond_2

    .line 102
    .line 103
    sget-object v16, LC5/c;->d:[I

    .line 104
    .line 105
    aget v2, v16, v11

    .line 106
    .line 107
    if-ne v2, v10, :cond_1

    .line 108
    .line 109
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_3

    .line 114
    :cond_1
    add-int/2addr v11, v3

    .line 115
    const/4 v2, 0x2

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    if-ne v10, v14, :cond_c

    .line 118
    .line 119
    const/16 v2, 0x2a

    .line 120
    .line 121
    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    array-length v10, v4

    .line 125
    move v14, v8

    .line 126
    const/4 v11, 0x0

    .line 127
    :goto_4
    if-ge v11, v10, :cond_3

    .line 128
    .line 129
    aget v17, v4, v11

    .line 130
    .line 131
    add-int v14, v14, v17

    .line 132
    .line 133
    add-int/2addr v11, v3

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    invoke-virtual {v1, v14}, Lw5/a;->e(I)I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-ne v2, v12, :cond_b

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sub-int/2addr v1, v3

    .line 146
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 147
    .line 148
    .line 149
    array-length v1, v4

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v11, 0x0

    .line 152
    :goto_5
    if-ge v2, v1, :cond_4

    .line 153
    .line 154
    aget v12, v4, v2

    .line 155
    .line 156
    add-int/2addr v11, v12

    .line 157
    add-int/2addr v2, v3

    .line 158
    goto :goto_5

    .line 159
    :cond_4
    sub-int v1, v10, v8

    .line 160
    .line 161
    sub-int/2addr v1, v11

    .line 162
    if-eq v10, v9, :cond_6

    .line 163
    .line 164
    shl-int/2addr v1, v3

    .line 165
    if-lt v1, v11, :cond_5

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_5
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 169
    .line 170
    throw v1

    .line 171
    :cond_6
    :goto_6
    iget-boolean v1, v0, LC5/c;->a:Z

    .line 172
    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    sub-int/2addr v1, v3

    .line 180
    const/4 v2, 0x0

    .line 181
    const/4 v4, 0x0

    .line 182
    :goto_7
    if-ge v2, v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(I)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    add-int/2addr v4, v9

    .line 193
    add-int/2addr v2, v3

    .line 194
    goto :goto_7

    .line 195
    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    rem-int/2addr v4, v15

    .line 200
    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-ne v2, v4, :cond_8

    .line 205
    .line 206
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_8
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    throw v1

    .line 215
    :cond_9
    :goto_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_a

    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    aget v2, v7, v3

    .line 226
    .line 227
    aget v4, v7, v5

    .line 228
    .line 229
    add-int/2addr v2, v4

    .line 230
    int-to-float v2, v2

    .line 231
    const/high16 v4, 0x40000000    # 2.0f

    .line 232
    .line 233
    div-float/2addr v2, v4

    .line 234
    int-to-float v6, v8

    .line 235
    int-to-float v7, v11

    .line 236
    div-float/2addr v7, v4

    .line 237
    add-float/2addr v7, v6

    .line 238
    new-instance v4, Lq5/m;

    .line 239
    .line 240
    new-instance v6, Lq5/o;

    .line 241
    .line 242
    move/from16 v13, p1

    .line 243
    .line 244
    int-to-float v8, v13

    .line 245
    invoke-direct {v6, v2, v8}, Lq5/o;-><init>(FF)V

    .line 246
    .line 247
    .line 248
    new-instance v2, Lq5/o;

    .line 249
    .line 250
    invoke-direct {v2, v7, v8}, Lq5/o;-><init>(FF)V

    .line 251
    .line 252
    .line 253
    const/4 v7, 0x2

    .line 254
    new-array v7, v7, [Lq5/o;

    .line 255
    .line 256
    aput-object v6, v7, v5

    .line 257
    .line 258
    aput-object v2, v7, v3

    .line 259
    .line 260
    sget-object v2, Lq5/a;->I:Lq5/a;

    .line 261
    .line 262
    const/4 v3, 0x0

    .line 263
    invoke-direct {v4, v1, v3, v7, v2}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 264
    .line 265
    .line 266
    return-object v4

    .line 267
    :cond_a
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 268
    .line 269
    throw v1

    .line 270
    :cond_b
    move/from16 v13, p1

    .line 271
    .line 272
    move v8, v10

    .line 273
    const/4 v2, 0x2

    .line 274
    const/16 v14, 0x94

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_c
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 279
    .line 280
    throw v1

    .line 281
    :cond_d
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 282
    .line 283
    throw v1

    .line 284
    :cond_e
    move/from16 v13, p1

    .line 285
    .line 286
    aget v2, v4, v5

    .line 287
    .line 288
    aget v14, v4, v3

    .line 289
    .line 290
    add-int/2addr v2, v14

    .line 291
    add-int/2addr v10, v2

    .line 292
    add-int/lit8 v2, v12, -0x1

    .line 293
    .line 294
    const/4 v14, 0x2

    .line 295
    invoke-static {v4, v14, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    .line 297
    .line 298
    aput v5, v4, v2

    .line 299
    .line 300
    aput v5, v4, v12

    .line 301
    .line 302
    add-int/lit8 v12, v12, -0x1

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_f
    move/from16 v13, p1

    .line 306
    .line 307
    const/4 v14, 0x2

    .line 308
    add-int/2addr v12, v3

    .line 309
    :goto_9
    aput v3, v4, v12

    .line 310
    .line 311
    xor-int/2addr v11, v3

    .line 312
    :goto_a
    add-int/2addr v8, v3

    .line 313
    const/4 v2, 0x2

    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_10
    sget-object v1, Lq5/i;->I:Lq5/i;

    .line 317
    .line 318
    throw v1
.end method
