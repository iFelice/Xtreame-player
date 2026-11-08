.class public final Ln0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[S

.field public j:[S

.field public k:I

.field public l:[S

.field public m:I

.field public n:[S

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ln0/i;->a:I

    .line 5
    .line 6
    iput p2, p0, Ln0/i;->b:I

    .line 7
    .line 8
    iput p3, p0, Ln0/i;->c:F

    .line 9
    .line 10
    iput p4, p0, Ln0/i;->d:F

    .line 11
    .line 12
    int-to-float p3, p1

    .line 13
    int-to-float p4, p5

    .line 14
    div-float/2addr p3, p4

    .line 15
    iput p3, p0, Ln0/i;->e:F

    .line 16
    .line 17
    div-int/lit16 p3, p1, 0x190

    .line 18
    .line 19
    iput p3, p0, Ln0/i;->f:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Ln0/i;->g:I

    .line 24
    .line 25
    mul-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Ln0/i;->h:I

    .line 28
    .line 29
    new-array p3, p1, [S

    .line 30
    .line 31
    iput-object p3, p0, Ln0/i;->i:[S

    .line 32
    .line 33
    mul-int p3, p1, p2

    .line 34
    .line 35
    new-array p3, p3, [S

    .line 36
    .line 37
    iput-object p3, p0, Ln0/i;->j:[S

    .line 38
    .line 39
    mul-int p3, p1, p2

    .line 40
    .line 41
    new-array p3, p3, [S

    .line 42
    .line 43
    iput-object p3, p0, Ln0/i;->l:[S

    .line 44
    .line 45
    mul-int p1, p1, p2

    .line 46
    .line 47
    new-array p1, p1, [S

    .line 48
    .line 49
    iput-object p1, p0, Ln0/i;->n:[S

    .line 50
    .line 51
    return-void
.end method

.method public static e(II[SI[SI[SI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    mul-int v2, p3, p1

    .line 6
    .line 7
    add-int/2addr v2, v1

    .line 8
    mul-int v3, p7, p1

    .line 9
    .line 10
    add-int/2addr v3, v1

    .line 11
    mul-int v4, p5, p1

    .line 12
    .line 13
    add-int/2addr v4, v1

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_1
    if-ge v5, p0, :cond_0

    .line 16
    .line 17
    aget-short v6, p4, v4

    .line 18
    .line 19
    sub-int v7, p0, v5

    .line 20
    .line 21
    mul-int v7, v7, v6

    .line 22
    .line 23
    aget-short v6, p6, v3

    .line 24
    .line 25
    mul-int v6, v6, v5

    .line 26
    .line 27
    add-int/2addr v6, v7

    .line 28
    div-int/2addr v6, p0

    .line 29
    int-to-short v6, v6

    .line 30
    aput-short v6, p2, v2

    .line 31
    .line 32
    add-int/2addr v2, p1

    .line 33
    add-int/2addr v4, p1

    .line 34
    add-int/2addr v3, p1

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final a([SII)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/i;->l:[S

    .line 2
    .line 3
    iget v1, p0, Ln0/i;->m:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p3}, Ln0/i;->c([SII)[S

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ln0/i;->l:[S

    .line 10
    .line 11
    iget v1, p0, Ln0/i;->b:I

    .line 12
    .line 13
    mul-int p2, p2, v1

    .line 14
    .line 15
    iget v2, p0, Ln0/i;->m:I

    .line 16
    .line 17
    mul-int v2, v2, v1

    .line 18
    .line 19
    mul-int v1, v1, p3

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Ln0/i;->m:I

    .line 25
    .line 26
    add-int/2addr p1, p3

    .line 27
    iput p1, p0, Ln0/i;->m:I

    .line 28
    .line 29
    return-void
.end method

.method public final b([SII)V
    .locals 6

    .line 1
    iget v0, p0, Ln0/i;->h:I

    .line 2
    .line 3
    div-int/2addr v0, p3

    .line 4
    iget v1, p0, Ln0/i;->b:I

    .line 5
    .line 6
    mul-int p3, p3, v1

    .line 7
    .line 8
    mul-int p2, p2, v1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-ge v3, p3, :cond_0

    .line 17
    .line 18
    mul-int v5, v2, p3

    .line 19
    .line 20
    add-int/2addr v5, p2

    .line 21
    add-int/2addr v5, v3

    .line 22
    aget-short v5, p1, v5

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    div-int/2addr v4, p3

    .line 29
    iget-object v3, p0, Ln0/i;->i:[S

    .line 30
    .line 31
    int-to-short v4, v4

    .line 32
    aput-short v4, v3, v2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final c([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Ln0/i;->b:I

    .line 3
    .line 4
    div-int/2addr v0, v1

    .line 5
    add-int/2addr p2, p3

    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p3

    .line 14
    mul-int v0, v0, v1

    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final d([SIII)I
    .locals 9

    .line 1
    iget v0, p0, Ln0/i;->b:I

    .line 2
    .line 3
    mul-int p2, p2, v0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xff

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-gt p3, p4, :cond_3

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_1
    if-ge v5, p3, :cond_0

    .line 16
    .line 17
    add-int v7, p2, v5

    .line 18
    .line 19
    aget-short v7, p1, v7

    .line 20
    .line 21
    add-int v8, p2, p3

    .line 22
    .line 23
    add-int/2addr v8, v5

    .line 24
    aget-short v8, p1, v8

    .line 25
    .line 26
    sub-int/2addr v7, v8

    .line 27
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    add-int/2addr v6, v7

    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    mul-int v5, v6, v3

    .line 36
    .line 37
    mul-int v7, v2, p3

    .line 38
    .line 39
    if-ge v5, v7, :cond_1

    .line 40
    .line 41
    move v3, p3

    .line 42
    move v2, v6

    .line 43
    :cond_1
    mul-int v5, v6, v1

    .line 44
    .line 45
    mul-int v7, v4, p3

    .line 46
    .line 47
    if-le v5, v7, :cond_2

    .line 48
    .line 49
    move v1, p3

    .line 50
    move v4, v6

    .line 51
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    div-int/2addr v2, v3

    .line 55
    iput v2, p0, Ln0/i;->u:I

    .line 56
    .line 57
    div-int/2addr v4, v1

    .line 58
    iput v4, p0, Ln0/i;->v:I

    .line 59
    .line 60
    return v3
.end method

.method public final f()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ln0/i;->m:I

    .line 4
    .line 5
    iget v2, v0, Ln0/i;->c:F

    .line 6
    .line 7
    iget v3, v0, Ln0/i;->d:F

    .line 8
    .line 9
    div-float/2addr v2, v3

    .line 10
    float-to-double v4, v2

    .line 11
    iget v2, v0, Ln0/i;->e:F

    .line 12
    .line 13
    mul-float v2, v2, v3

    .line 14
    .line 15
    const-wide v6, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget v3, v0, Ln0/i;->a:I

    .line 21
    .line 22
    iget v8, v0, Ln0/i;->b:I

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x1

    .line 26
    cmpl-double v11, v4, v6

    .line 27
    .line 28
    if-gtz v11, :cond_1

    .line 29
    .line 30
    const-wide v6, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpg-double v11, v4, v6

    .line 36
    .line 37
    if-gez v11, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v4, v0, Ln0/i;->j:[S

    .line 41
    .line 42
    iget v5, v0, Ln0/i;->k:I

    .line 43
    .line 44
    invoke-virtual {v0, v4, v9, v5}, Ln0/i;->a([SII)V

    .line 45
    .line 46
    .line 47
    iput v9, v0, Ln0/i;->k:I

    .line 48
    .line 49
    :goto_0
    move/from16 v20, v1

    .line 50
    .line 51
    move/from16 v19, v3

    .line 52
    .line 53
    goto/16 :goto_c

    .line 54
    .line 55
    :cond_1
    :goto_1
    iget v6, v0, Ln0/i;->k:I

    .line 56
    .line 57
    iget v7, v0, Ln0/i;->h:I

    .line 58
    .line 59
    if-ge v6, v7, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v15, 0x0

    .line 63
    :goto_2
    iget v11, v0, Ln0/i;->r:I

    .line 64
    .line 65
    if-lez v11, :cond_3

    .line 66
    .line 67
    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    iget-object v12, v0, Ln0/i;->j:[S

    .line 72
    .line 73
    invoke-virtual {v0, v12, v15, v11}, Ln0/i;->a([SII)V

    .line 74
    .line 75
    .line 76
    iget v12, v0, Ln0/i;->r:I

    .line 77
    .line 78
    sub-int/2addr v12, v11

    .line 79
    iput v12, v0, Ln0/i;->r:I

    .line 80
    .line 81
    add-int/2addr v15, v11

    .line 82
    move/from16 v20, v1

    .line 83
    .line 84
    move/from16 v19, v3

    .line 85
    .line 86
    goto/16 :goto_b

    .line 87
    .line 88
    :cond_3
    iget-object v11, v0, Ln0/i;->j:[S

    .line 89
    .line 90
    const/16 v12, 0xfa0

    .line 91
    .line 92
    if-le v3, v12, :cond_4

    .line 93
    .line 94
    div-int/lit16 v12, v3, 0xfa0

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 v12, 0x1

    .line 98
    :goto_3
    iget v13, v0, Ln0/i;->g:I

    .line 99
    .line 100
    iget v14, v0, Ln0/i;->f:I

    .line 101
    .line 102
    if-ne v8, v10, :cond_5

    .line 103
    .line 104
    if-ne v12, v10, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0, v11, v15, v14, v13}, Ln0/i;->d([SIII)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    move/from16 v20, v1

    .line 111
    .line 112
    move/from16 v19, v3

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_5
    invoke-virtual {v0, v11, v15, v12}, Ln0/i;->b([SII)V

    .line 116
    .line 117
    .line 118
    div-int v10, v14, v12

    .line 119
    .line 120
    move/from16 v19, v3

    .line 121
    .line 122
    div-int v3, v13, v12

    .line 123
    .line 124
    move/from16 v20, v1

    .line 125
    .line 126
    iget-object v1, v0, Ln0/i;->i:[S

    .line 127
    .line 128
    invoke-virtual {v0, v1, v9, v10, v3}, Ln0/i;->d([SIII)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    const/4 v10, 0x1

    .line 133
    if-eq v12, v10, :cond_9

    .line 134
    .line 135
    mul-int v3, v3, v12

    .line 136
    .line 137
    mul-int/lit8 v12, v12, 0x4

    .line 138
    .line 139
    sub-int v10, v3, v12

    .line 140
    .line 141
    add-int/2addr v3, v12

    .line 142
    if-ge v10, v14, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    move v14, v10

    .line 146
    :goto_4
    if-le v3, v13, :cond_7

    .line 147
    .line 148
    :goto_5
    const/4 v3, 0x1

    .line 149
    goto :goto_6

    .line 150
    :cond_7
    move v13, v3

    .line 151
    goto :goto_5

    .line 152
    :goto_6
    if-ne v8, v3, :cond_8

    .line 153
    .line 154
    invoke-virtual {v0, v11, v15, v14, v13}, Ln0/i;->d([SIII)I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    goto :goto_7

    .line 159
    :cond_8
    invoke-virtual {v0, v11, v15, v3}, Ln0/i;->b([SII)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v9, v14, v13}, Ln0/i;->d([SIII)I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    goto :goto_7

    .line 167
    :cond_9
    move v11, v3

    .line 168
    :goto_7
    iget v1, v0, Ln0/i;->u:I

    .line 169
    .line 170
    iget v3, v0, Ln0/i;->v:I

    .line 171
    .line 172
    if-eqz v1, :cond_c

    .line 173
    .line 174
    iget v10, v0, Ln0/i;->s:I

    .line 175
    .line 176
    if-nez v10, :cond_a

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_a
    mul-int/lit8 v12, v1, 0x3

    .line 180
    .line 181
    if-le v3, v12, :cond_b

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_b
    mul-int/lit8 v3, v1, 0x2

    .line 185
    .line 186
    iget v12, v0, Ln0/i;->t:I

    .line 187
    .line 188
    mul-int/lit8 v12, v12, 0x3

    .line 189
    .line 190
    if-gt v3, v12, :cond_d

    .line 191
    .line 192
    :cond_c
    :goto_8
    move v10, v11

    .line 193
    :cond_d
    iput v1, v0, Ln0/i;->t:I

    .line 194
    .line 195
    iput v11, v0, Ln0/i;->s:I

    .line 196
    .line 197
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 198
    .line 199
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 200
    .line 201
    cmpl-double v1, v4, v13

    .line 202
    .line 203
    if-lez v1, :cond_f

    .line 204
    .line 205
    iget-object v1, v0, Ln0/i;->j:[S

    .line 206
    .line 207
    cmpl-double v3, v4, v11

    .line 208
    .line 209
    if-ltz v3, :cond_e

    .line 210
    .line 211
    int-to-double v11, v10

    .line 212
    sub-double v13, v4, v13

    .line 213
    .line 214
    div-double/2addr v11, v13

    .line 215
    iget-wide v13, v0, Ln0/i;->w:D

    .line 216
    .line 217
    add-double/2addr v11, v13

    .line 218
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    long-to-int v3, v13

    .line 223
    int-to-double v13, v3

    .line 224
    sub-double/2addr v11, v13

    .line 225
    iput-wide v11, v0, Ln0/i;->w:D

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_e
    int-to-double v13, v10

    .line 229
    sub-double/2addr v11, v4

    .line 230
    mul-double v11, v11, v13

    .line 231
    .line 232
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 233
    .line 234
    sub-double v13, v4, v13

    .line 235
    .line 236
    div-double/2addr v11, v13

    .line 237
    iget-wide v13, v0, Ln0/i;->w:D

    .line 238
    .line 239
    add-double/2addr v11, v13

    .line 240
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 241
    .line 242
    .line 243
    move-result-wide v13

    .line 244
    long-to-int v3, v13

    .line 245
    iput v3, v0, Ln0/i;->r:I

    .line 246
    .line 247
    int-to-double v13, v3

    .line 248
    sub-double/2addr v11, v13

    .line 249
    iput-wide v11, v0, Ln0/i;->w:D

    .line 250
    .line 251
    move v3, v10

    .line 252
    :goto_9
    iget-object v11, v0, Ln0/i;->l:[S

    .line 253
    .line 254
    iget v12, v0, Ln0/i;->m:I

    .line 255
    .line 256
    invoke-virtual {v0, v11, v12, v3}, Ln0/i;->c([SII)[S

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    iput-object v13, v0, Ln0/i;->l:[S

    .line 261
    .line 262
    iget v14, v0, Ln0/i;->m:I

    .line 263
    .line 264
    add-int v18, v15, v10

    .line 265
    .line 266
    iget v12, v0, Ln0/i;->b:I

    .line 267
    .line 268
    move v11, v3

    .line 269
    move/from16 v21, v15

    .line 270
    .line 271
    move-object v15, v1

    .line 272
    move/from16 v16, v21

    .line 273
    .line 274
    move-object/from16 v17, v1

    .line 275
    .line 276
    invoke-static/range {v11 .. v18}, Ln0/i;->e(II[SI[SI[SI)V

    .line 277
    .line 278
    .line 279
    iget v1, v0, Ln0/i;->m:I

    .line 280
    .line 281
    add-int/2addr v1, v3

    .line 282
    iput v1, v0, Ln0/i;->m:I

    .line 283
    .line 284
    add-int/2addr v10, v3

    .line 285
    add-int v10, v10, v21

    .line 286
    .line 287
    move v15, v10

    .line 288
    goto :goto_b

    .line 289
    :cond_f
    move/from16 v21, v15

    .line 290
    .line 291
    iget-object v1, v0, Ln0/i;->j:[S

    .line 292
    .line 293
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 294
    .line 295
    cmpg-double v3, v4, v13

    .line 296
    .line 297
    if-gez v3, :cond_10

    .line 298
    .line 299
    int-to-double v11, v10

    .line 300
    mul-double v11, v11, v4

    .line 301
    .line 302
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 303
    .line 304
    sub-double/2addr v13, v4

    .line 305
    div-double/2addr v11, v13

    .line 306
    iget-wide v13, v0, Ln0/i;->w:D

    .line 307
    .line 308
    add-double/2addr v11, v13

    .line 309
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 310
    .line 311
    .line 312
    move-result-wide v13

    .line 313
    long-to-int v3, v13

    .line 314
    int-to-double v13, v3

    .line 315
    sub-double/2addr v11, v13

    .line 316
    iput-wide v11, v0, Ln0/i;->w:D

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_10
    int-to-double v13, v10

    .line 320
    mul-double v11, v11, v4

    .line 321
    .line 322
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 323
    .line 324
    sub-double/2addr v11, v15

    .line 325
    mul-double v11, v11, v13

    .line 326
    .line 327
    sub-double v13, v15, v4

    .line 328
    .line 329
    div-double/2addr v11, v13

    .line 330
    iget-wide v13, v0, Ln0/i;->w:D

    .line 331
    .line 332
    add-double/2addr v11, v13

    .line 333
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 334
    .line 335
    .line 336
    move-result-wide v13

    .line 337
    long-to-int v3, v13

    .line 338
    iput v3, v0, Ln0/i;->r:I

    .line 339
    .line 340
    int-to-double v13, v3

    .line 341
    sub-double/2addr v11, v13

    .line 342
    iput-wide v11, v0, Ln0/i;->w:D

    .line 343
    .line 344
    move v3, v10

    .line 345
    :goto_a
    iget-object v11, v0, Ln0/i;->l:[S

    .line 346
    .line 347
    iget v12, v0, Ln0/i;->m:I

    .line 348
    .line 349
    add-int v15, v10, v3

    .line 350
    .line 351
    invoke-virtual {v0, v11, v12, v15}, Ln0/i;->c([SII)[S

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    iput-object v11, v0, Ln0/i;->l:[S

    .line 356
    .line 357
    mul-int v12, v21, v8

    .line 358
    .line 359
    iget v13, v0, Ln0/i;->m:I

    .line 360
    .line 361
    mul-int v13, v13, v8

    .line 362
    .line 363
    mul-int v14, v10, v8

    .line 364
    .line 365
    invoke-static {v1, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    .line 367
    .line 368
    iget-object v13, v0, Ln0/i;->l:[S

    .line 369
    .line 370
    iget v11, v0, Ln0/i;->m:I

    .line 371
    .line 372
    add-int v14, v11, v10

    .line 373
    .line 374
    add-int v16, v21, v10

    .line 375
    .line 376
    iget v12, v0, Ln0/i;->b:I

    .line 377
    .line 378
    move v11, v3

    .line 379
    move v10, v15

    .line 380
    move-object v15, v1

    .line 381
    move-object/from16 v17, v1

    .line 382
    .line 383
    move/from16 v18, v21

    .line 384
    .line 385
    invoke-static/range {v11 .. v18}, Ln0/i;->e(II[SI[SI[SI)V

    .line 386
    .line 387
    .line 388
    iget v1, v0, Ln0/i;->m:I

    .line 389
    .line 390
    add-int/2addr v1, v10

    .line 391
    iput v1, v0, Ln0/i;->m:I

    .line 392
    .line 393
    add-int v15, v21, v3

    .line 394
    .line 395
    :goto_b
    add-int v1, v15, v7

    .line 396
    .line 397
    if-le v1, v6, :cond_1a

    .line 398
    .line 399
    iget v1, v0, Ln0/i;->k:I

    .line 400
    .line 401
    sub-int/2addr v1, v15

    .line 402
    iget-object v3, v0, Ln0/i;->j:[S

    .line 403
    .line 404
    mul-int v15, v15, v8

    .line 405
    .line 406
    mul-int v4, v1, v8

    .line 407
    .line 408
    invoke-static {v3, v15, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    .line 410
    .line 411
    iput v1, v0, Ln0/i;->k:I

    .line 412
    .line 413
    :goto_c
    const/high16 v1, 0x3f800000    # 1.0f

    .line 414
    .line 415
    cmpl-float v1, v2, v1

    .line 416
    .line 417
    if-eqz v1, :cond_19

    .line 418
    .line 419
    iget v1, v0, Ln0/i;->m:I

    .line 420
    .line 421
    move/from16 v3, v20

    .line 422
    .line 423
    if-ne v1, v3, :cond_11

    .line 424
    .line 425
    goto/16 :goto_12

    .line 426
    .line 427
    :cond_11
    move/from16 v1, v19

    .line 428
    .line 429
    int-to-float v4, v1

    .line 430
    div-float/2addr v4, v2

    .line 431
    float-to-long v4, v4

    .line 432
    int-to-long v1, v1

    .line 433
    :goto_d
    const-wide/16 v6, 0x0

    .line 434
    .line 435
    cmp-long v10, v4, v6

    .line 436
    .line 437
    if-eqz v10, :cond_12

    .line 438
    .line 439
    cmp-long v10, v1, v6

    .line 440
    .line 441
    if-eqz v10, :cond_12

    .line 442
    .line 443
    const-wide/16 v10, 0x2

    .line 444
    .line 445
    rem-long v12, v4, v10

    .line 446
    .line 447
    cmp-long v14, v12, v6

    .line 448
    .line 449
    if-nez v14, :cond_12

    .line 450
    .line 451
    rem-long v12, v1, v10

    .line 452
    .line 453
    cmp-long v14, v12, v6

    .line 454
    .line 455
    if-nez v14, :cond_12

    .line 456
    .line 457
    div-long/2addr v4, v10

    .line 458
    div-long/2addr v1, v10

    .line 459
    goto :goto_d

    .line 460
    :cond_12
    iget v6, v0, Ln0/i;->m:I

    .line 461
    .line 462
    sub-int/2addr v6, v3

    .line 463
    iget-object v7, v0, Ln0/i;->n:[S

    .line 464
    .line 465
    iget v10, v0, Ln0/i;->o:I

    .line 466
    .line 467
    invoke-virtual {v0, v7, v10, v6}, Ln0/i;->c([SII)[S

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    iput-object v7, v0, Ln0/i;->n:[S

    .line 472
    .line 473
    iget-object v10, v0, Ln0/i;->l:[S

    .line 474
    .line 475
    mul-int v11, v3, v8

    .line 476
    .line 477
    iget v12, v0, Ln0/i;->o:I

    .line 478
    .line 479
    mul-int v12, v12, v8

    .line 480
    .line 481
    mul-int v13, v6, v8

    .line 482
    .line 483
    invoke-static {v10, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    .line 485
    .line 486
    iput v3, v0, Ln0/i;->m:I

    .line 487
    .line 488
    iget v3, v0, Ln0/i;->o:I

    .line 489
    .line 490
    add-int/2addr v3, v6

    .line 491
    iput v3, v0, Ln0/i;->o:I

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    :goto_e
    iget v6, v0, Ln0/i;->o:I

    .line 495
    .line 496
    add-int/lit8 v7, v6, -0x1

    .line 497
    .line 498
    if-ge v3, v7, :cond_17

    .line 499
    .line 500
    :goto_f
    iget v6, v0, Ln0/i;->p:I

    .line 501
    .line 502
    const/4 v7, 0x1

    .line 503
    add-int/2addr v6, v7

    .line 504
    int-to-long v10, v6

    .line 505
    mul-long v12, v10, v4

    .line 506
    .line 507
    iget v14, v0, Ln0/i;->q:I

    .line 508
    .line 509
    int-to-long v14, v14

    .line 510
    mul-long v16, v14, v1

    .line 511
    .line 512
    cmp-long v18, v12, v16

    .line 513
    .line 514
    if-lez v18, :cond_14

    .line 515
    .line 516
    iget-object v6, v0, Ln0/i;->l:[S

    .line 517
    .line 518
    iget v10, v0, Ln0/i;->m:I

    .line 519
    .line 520
    invoke-virtual {v0, v6, v10, v7}, Ln0/i;->c([SII)[S

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    iput-object v6, v0, Ln0/i;->l:[S

    .line 525
    .line 526
    const/4 v6, 0x0

    .line 527
    :goto_10
    if-ge v6, v8, :cond_13

    .line 528
    .line 529
    iget-object v7, v0, Ln0/i;->l:[S

    .line 530
    .line 531
    iget v10, v0, Ln0/i;->m:I

    .line 532
    .line 533
    mul-int v10, v10, v8

    .line 534
    .line 535
    add-int/2addr v10, v6

    .line 536
    iget-object v11, v0, Ln0/i;->n:[S

    .line 537
    .line 538
    mul-int v12, v3, v8

    .line 539
    .line 540
    add-int/2addr v12, v6

    .line 541
    aget-short v13, v11, v12

    .line 542
    .line 543
    add-int/2addr v12, v8

    .line 544
    aget-short v11, v11, v12

    .line 545
    .line 546
    iget v12, v0, Ln0/i;->q:I

    .line 547
    .line 548
    int-to-long v14, v12

    .line 549
    mul-long v14, v14, v1

    .line 550
    .line 551
    iget v12, v0, Ln0/i;->p:I

    .line 552
    .line 553
    move/from16 v17, v10

    .line 554
    .line 555
    int-to-long v9, v12

    .line 556
    mul-long v9, v9, v4

    .line 557
    .line 558
    const/16 v18, 0x1

    .line 559
    .line 560
    add-int/lit8 v12, v12, 0x1

    .line 561
    .line 562
    move-wide/from16 v19, v1

    .line 563
    .line 564
    int-to-long v1, v12

    .line 565
    mul-long v1, v1, v4

    .line 566
    .line 567
    sub-long v14, v1, v14

    .line 568
    .line 569
    sub-long/2addr v1, v9

    .line 570
    int-to-long v9, v13

    .line 571
    mul-long v9, v9, v14

    .line 572
    .line 573
    sub-long v12, v1, v14

    .line 574
    .line 575
    int-to-long v14, v11

    .line 576
    mul-long v12, v12, v14

    .line 577
    .line 578
    add-long/2addr v12, v9

    .line 579
    div-long/2addr v12, v1

    .line 580
    long-to-int v1, v12

    .line 581
    int-to-short v1, v1

    .line 582
    aput-short v1, v7, v17

    .line 583
    .line 584
    add-int/lit8 v6, v6, 0x1

    .line 585
    .line 586
    move-wide/from16 v1, v19

    .line 587
    .line 588
    const/4 v9, 0x0

    .line 589
    goto :goto_10

    .line 590
    :cond_13
    move-wide/from16 v19, v1

    .line 591
    .line 592
    iget v1, v0, Ln0/i;->q:I

    .line 593
    .line 594
    const/4 v9, 0x1

    .line 595
    add-int/2addr v1, v9

    .line 596
    iput v1, v0, Ln0/i;->q:I

    .line 597
    .line 598
    iget v1, v0, Ln0/i;->m:I

    .line 599
    .line 600
    add-int/2addr v1, v9

    .line 601
    iput v1, v0, Ln0/i;->m:I

    .line 602
    .line 603
    move-wide/from16 v1, v19

    .line 604
    .line 605
    const/4 v9, 0x0

    .line 606
    goto :goto_f

    .line 607
    :cond_14
    move-wide/from16 v19, v1

    .line 608
    .line 609
    const/4 v9, 0x1

    .line 610
    iput v6, v0, Ln0/i;->p:I

    .line 611
    .line 612
    cmp-long v1, v10, v19

    .line 613
    .line 614
    if-nez v1, :cond_16

    .line 615
    .line 616
    const/4 v1, 0x0

    .line 617
    iput v1, v0, Ln0/i;->p:I

    .line 618
    .line 619
    cmp-long v2, v14, v4

    .line 620
    .line 621
    if-nez v2, :cond_15

    .line 622
    .line 623
    const/4 v10, 0x1

    .line 624
    goto :goto_11

    .line 625
    :cond_15
    const/4 v10, 0x0

    .line 626
    :goto_11
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 627
    .line 628
    .line 629
    iput v1, v0, Ln0/i;->q:I

    .line 630
    .line 631
    :cond_16
    add-int/lit8 v3, v3, 0x1

    .line 632
    .line 633
    move-wide/from16 v1, v19

    .line 634
    .line 635
    const/4 v9, 0x0

    .line 636
    goto/16 :goto_e

    .line 637
    .line 638
    :cond_17
    if-nez v7, :cond_18

    .line 639
    .line 640
    goto :goto_12

    .line 641
    :cond_18
    iget-object v1, v0, Ln0/i;->n:[S

    .line 642
    .line 643
    mul-int v2, v7, v8

    .line 644
    .line 645
    sub-int/2addr v6, v7

    .line 646
    mul-int v6, v6, v8

    .line 647
    .line 648
    const/4 v10, 0x0

    .line 649
    invoke-static {v1, v2, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    .line 651
    .line 652
    iget v1, v0, Ln0/i;->o:I

    .line 653
    .line 654
    sub-int/2addr v1, v7

    .line 655
    iput v1, v0, Ln0/i;->o:I

    .line 656
    .line 657
    :cond_19
    :goto_12
    return-void

    .line 658
    :cond_1a
    const/4 v10, 0x0

    .line 659
    move/from16 v3, v19

    .line 660
    .line 661
    move/from16 v1, v20

    .line 662
    .line 663
    const/4 v9, 0x0

    .line 664
    const/4 v10, 0x1

    .line 665
    goto/16 :goto_2
.end method
