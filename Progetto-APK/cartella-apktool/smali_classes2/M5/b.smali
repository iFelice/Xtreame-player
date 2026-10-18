.class public final LM5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw5/b;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:[I

.field public final i:Lq5/p;


# direct methods
.method public constructor <init>(Lw5/b;IIIIFLq5/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LM5/b;->a:Lw5/b;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LM5/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput p2, p0, LM5/b;->c:I

    .line 15
    .line 16
    iput p3, p0, LM5/b;->d:I

    .line 17
    .line 18
    iput p4, p0, LM5/b;->e:I

    .line 19
    .line 20
    iput p5, p0, LM5/b;->f:I

    .line 21
    .line 22
    iput p6, p0, LM5/b;->g:F

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    new-array p1, p1, [I

    .line 26
    .line 27
    iput-object p1, p0, LM5/b;->h:[I

    .line 28
    .line 29
    iput-object p7, p0, LM5/b;->i:Lq5/p;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a([I)Z
    .locals 5

    .line 1
    iget v0, p0, LM5/b;->g:F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float v1, v0, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    const/4 v4, 0x3

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    aget v4, p1, v3

    .line 13
    .line 14
    int-to-float v4, v4

    .line 15
    sub-float v4, v0, v4

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    cmpl-float v4, v4, v1

    .line 22
    .line 23
    if-ltz v4, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public final b(II[I)LM5/a;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    aget v2, p3, v1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    aget v4, p3, v3

    .line 7
    .line 8
    add-int/2addr v2, v4

    .line 9
    const/4 v5, 0x2

    .line 10
    aget v6, p3, v5

    .line 11
    .line 12
    add-int/2addr v2, v6

    .line 13
    sub-int v6, p2, v6

    .line 14
    .line 15
    int-to-float v6, v6

    .line 16
    int-to-float v7, v4

    .line 17
    const/high16 v8, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v7, v8

    .line 20
    sub-float/2addr v6, v7

    .line 21
    float-to-int v7, v6

    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    iget-object v9, v0, LM5/b;->a:Lw5/b;

    .line 25
    .line 26
    iget v10, v9, Lw5/b;->H:I

    .line 27
    .line 28
    iget-object v11, v0, LM5/b;->h:[I

    .line 29
    .line 30
    aput v1, v11, v1

    .line 31
    .line 32
    aput v1, v11, v3

    .line 33
    .line 34
    aput v1, v11, v5

    .line 35
    .line 36
    move/from16 v12, p1

    .line 37
    .line 38
    :goto_0
    if-ltz v12, :cond_0

    .line 39
    .line 40
    invoke-virtual {v9, v7, v12}, Lw5/b;->b(II)Z

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    if-eqz v13, :cond_0

    .line 45
    .line 46
    aget v13, v11, v3

    .line 47
    .line 48
    if-gt v13, v4, :cond_0

    .line 49
    .line 50
    add-int/lit8 v13, v13, 0x1

    .line 51
    .line 52
    aput v13, v11, v3

    .line 53
    .line 54
    add-int/lit8 v12, v12, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 58
    .line 59
    if-ltz v12, :cond_9

    .line 60
    .line 61
    aget v14, v11, v3

    .line 62
    .line 63
    if-le v14, v4, :cond_1

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    :goto_1
    if-ltz v12, :cond_2

    .line 68
    .line 69
    invoke-virtual {v9, v7, v12}, Lw5/b;->b(II)Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-nez v14, :cond_2

    .line 74
    .line 75
    aget v14, v11, v1

    .line 76
    .line 77
    if-gt v14, v4, :cond_2

    .line 78
    .line 79
    add-int/lit8 v14, v14, 0x1

    .line 80
    .line 81
    aput v14, v11, v1

    .line 82
    .line 83
    add-int/lit8 v12, v12, -0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    aget v12, v11, v1

    .line 87
    .line 88
    if-le v12, v4, :cond_3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    add-int/lit8 v12, p1, 0x1

    .line 92
    .line 93
    :goto_2
    if-ge v12, v10, :cond_4

    .line 94
    .line 95
    invoke-virtual {v9, v7, v12}, Lw5/b;->b(II)Z

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    aget v14, v11, v3

    .line 102
    .line 103
    if-gt v14, v4, :cond_4

    .line 104
    .line 105
    add-int/lit8 v14, v14, 0x1

    .line 106
    .line 107
    aput v14, v11, v3

    .line 108
    .line 109
    add-int/lit8 v12, v12, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    if-eq v12, v10, :cond_9

    .line 113
    .line 114
    aget v14, v11, v3

    .line 115
    .line 116
    if-le v14, v4, :cond_5

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    :goto_3
    if-ge v12, v10, :cond_6

    .line 120
    .line 121
    invoke-virtual {v9, v7, v12}, Lw5/b;->b(II)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-nez v14, :cond_6

    .line 126
    .line 127
    aget v14, v11, v5

    .line 128
    .line 129
    if-gt v14, v4, :cond_6

    .line 130
    .line 131
    add-int/lit8 v14, v14, 0x1

    .line 132
    .line 133
    aput v14, v11, v5

    .line 134
    .line 135
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    aget v7, v11, v5

    .line 139
    .line 140
    if-le v7, v4, :cond_7

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_7
    aget v4, v11, v1

    .line 144
    .line 145
    aget v9, v11, v3

    .line 146
    .line 147
    add-int/2addr v4, v9

    .line 148
    add-int/2addr v4, v7

    .line 149
    sub-int/2addr v4, v2

    .line 150
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    mul-int/lit8 v4, v4, 0x5

    .line 155
    .line 156
    mul-int/lit8 v2, v2, 0x2

    .line 157
    .line 158
    if-lt v4, v2, :cond_8

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    invoke-virtual {p0, v11}, LM5/b;->a([I)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_9

    .line 166
    .line 167
    aget v2, v11, v5

    .line 168
    .line 169
    sub-int/2addr v12, v2

    .line 170
    int-to-float v2, v12

    .line 171
    aget v4, v11, v3

    .line 172
    .line 173
    int-to-float v4, v4

    .line 174
    div-float/2addr v4, v8

    .line 175
    sub-float v13, v2, v4

    .line 176
    .line 177
    :cond_9
    :goto_4
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_d

    .line 182
    .line 183
    aget v1, p3, v1

    .line 184
    .line 185
    aget v2, p3, v3

    .line 186
    .line 187
    add-int/2addr v1, v2

    .line 188
    aget v2, p3, v5

    .line 189
    .line 190
    add-int/2addr v1, v2

    .line 191
    int-to-float v1, v1

    .line 192
    const/high16 v2, 0x40400000    # 3.0f

    .line 193
    .line 194
    div-float/2addr v1, v2

    .line 195
    iget-object v2, v0, LM5/b;->b:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_c

    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, LM5/a;

    .line 212
    .line 213
    iget v5, v4, Lq5/o;->b:F

    .line 214
    .line 215
    sub-float v5, v13, v5

    .line 216
    .line 217
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    cmpg-float v5, v5, v1

    .line 222
    .line 223
    if-gtz v5, :cond_a

    .line 224
    .line 225
    iget v5, v4, Lq5/o;->a:F

    .line 226
    .line 227
    sub-float v7, v6, v5

    .line 228
    .line 229
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    cmpg-float v7, v7, v1

    .line 234
    .line 235
    if-gtz v7, :cond_a

    .line 236
    .line 237
    iget v7, v4, LM5/a;->c:F

    .line 238
    .line 239
    sub-float v9, v1, v7

    .line 240
    .line 241
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    const/high16 v10, 0x3f800000    # 1.0f

    .line 246
    .line 247
    cmpg-float v10, v9, v10

    .line 248
    .line 249
    if-lez v10, :cond_b

    .line 250
    .line 251
    cmpg-float v9, v9, v7

    .line 252
    .line 253
    if-gtz v9, :cond_a

    .line 254
    .line 255
    :cond_b
    add-float/2addr v5, v6

    .line 256
    div-float/2addr v5, v8

    .line 257
    iget v2, v4, Lq5/o;->b:F

    .line 258
    .line 259
    add-float/2addr v2, v13

    .line 260
    div-float/2addr v2, v8

    .line 261
    add-float/2addr v7, v1

    .line 262
    div-float/2addr v7, v8

    .line 263
    new-instance v1, LM5/a;

    .line 264
    .line 265
    invoke-direct {v1, v5, v2, v7}, LM5/a;-><init>(FFF)V

    .line 266
    .line 267
    .line 268
    return-object v1

    .line 269
    :cond_c
    new-instance v3, LM5/a;

    .line 270
    .line 271
    invoke-direct {v3, v6, v13, v1}, LM5/a;-><init>(FFF)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, LM5/b;->i:Lq5/p;

    .line 278
    .line 279
    if-eqz v1, :cond_d

    .line 280
    .line 281
    invoke-interface {v1, v3}, Lq5/p;->a(Lq5/o;)V

    .line 282
    .line 283
    .line 284
    :cond_d
    const/4 v1, 0x0

    .line 285
    return-object v1
.end method
