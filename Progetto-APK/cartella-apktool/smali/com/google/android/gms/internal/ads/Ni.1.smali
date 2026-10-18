.class public final Lcom/google/android/gms/internal/ads/Ni;
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


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ni;->a:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/Ni;->c:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/Ni;->d:F

    .line 11
    .line 12
    int-to-float p3, p1

    .line 13
    int-to-float p4, p5

    .line 14
    div-float/2addr p3, p4

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/ads/Ni;->e:F

    .line 16
    .line 17
    div-int/lit16 p3, p1, 0x190

    .line 18
    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/Ni;->f:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ni;->g:I

    .line 24
    .line 25
    add-int/2addr p1, p1

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ni;->h:I

    .line 27
    .line 28
    new-array p3, p1, [S

    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ni;->i:[S

    .line 31
    .line 32
    mul-int p1, p1, p2

    .line 33
    .line 34
    new-array p2, p1, [S

    .line 35
    .line 36
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 37
    .line 38
    new-array p2, p1, [S

    .line 39
    .line 40
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 41
    .line 42
    new-array p1, p1, [S

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ni;->n:[S

    .line 45
    .line 46
    return-void
.end method

.method public static d(II[SI[SI[SI)V
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
    mul-int v3, p7, p1

    .line 8
    .line 9
    mul-int v4, p5, p1

    .line 10
    .line 11
    add-int/2addr v4, v1

    .line 12
    add-int/2addr v3, v1

    .line 13
    add-int/2addr v2, v1

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
.method public final a([SIII)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0xff

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-gt p3, p4, :cond_5

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    :goto_1
    if-ge v5, p3, :cond_0

    .line 12
    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 14
    .line 15
    mul-int v7, v7, p2

    .line 16
    .line 17
    add-int v8, v7, v5

    .line 18
    .line 19
    aget-short v8, p1, v8

    .line 20
    .line 21
    add-int/2addr v7, p3

    .line 22
    add-int/2addr v7, v5

    .line 23
    aget-short v7, p1, v7

    .line 24
    .line 25
    sub-int/2addr v8, v7

    .line 26
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    add-int/2addr v6, v7

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    mul-int v5, v6, v3

    .line 35
    .line 36
    mul-int v7, v1, p3

    .line 37
    .line 38
    if-ge v5, v7, :cond_1

    .line 39
    .line 40
    move v1, v6

    .line 41
    :cond_1
    if-ge v5, v7, :cond_2

    .line 42
    .line 43
    move v3, p3

    .line 44
    :cond_2
    mul-int v5, v6, v2

    .line 45
    .line 46
    mul-int v7, v4, p3

    .line 47
    .line 48
    if-le v5, v7, :cond_3

    .line 49
    .line 50
    move v4, v6

    .line 51
    :cond_3
    if-le v5, v7, :cond_4

    .line 52
    .line 53
    move v2, p3

    .line 54
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    div-int/2addr v1, v3

    .line 58
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ni;->u:I

    .line 59
    .line 60
    div-int/2addr v4, v2

    .line 61
    iput v4, p0, Lcom/google/android/gms/internal/ads/Ni;->v:I

    .line 62
    .line 63
    return v3
.end method

.method public final b([SII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/Ni;->f([SII)[S

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 14
    .line 15
    mul-int v1, v1, v2

    .line 16
    .line 17
    mul-int v3, p3, v2

    .line 18
    .line 19
    mul-int p2, p2, v2

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 25
    .line 26
    add-int/2addr p1, p3

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 28
    .line 29
    return-void
.end method

.method public final c([SII)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ni;->h:I

    .line 4
    .line 5
    div-int/2addr v2, p3

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 11
    .line 12
    mul-int v5, v4, p3

    .line 13
    .line 14
    if-ge v2, v5, :cond_0

    .line 15
    .line 16
    mul-int v4, v4, p2

    .line 17
    .line 18
    mul-int v5, v5, v1

    .line 19
    .line 20
    add-int/2addr v5, v4

    .line 21
    add-int/2addr v5, v2

    .line 22
    aget-short v4, p1, v5

    .line 23
    .line 24
    add-int/2addr v3, v4

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    div-int/2addr v3, v5

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ni;->i:[S

    .line 30
    .line 31
    int-to-short v3, v3

    .line 32
    aput-short v3, v2, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/Ni;->c:F

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/Ni;->d:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iget v8, v0, Lcom/google/android/gms/internal/ads/Ni;->a:I

    .line 15
    .line 16
    iget v9, v0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x1

    .line 20
    cmpl-double v12, v3, v5

    .line 21
    .line 22
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 23
    .line 24
    if-gtz v12, :cond_1

    .line 25
    .line 26
    const-wide v12, 0x3fefffeb074a771dL    # 0.99999

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmpg-double v6, v3, v12

    .line 32
    .line 33
    if-gez v6, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 37
    .line 38
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v10, v3}, Lcom/google/android/gms/internal/ads/Ni;->b([SII)V

    .line 41
    .line 42
    .line 43
    iput v10, v0, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 44
    .line 45
    :goto_0
    move/from16 v23, v2

    .line 46
    .line 47
    move/from16 v22, v5

    .line 48
    .line 49
    move/from16 v21, v8

    .line 50
    .line 51
    goto/16 :goto_b

    .line 52
    .line 53
    :cond_1
    :goto_1
    iget v6, v0, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 54
    .line 55
    iget v12, v0, Lcom/google/android/gms/internal/ads/Ni;->h:I

    .line 56
    .line 57
    if-ge v6, v12, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v15, 0x0

    .line 61
    :goto_2
    iget v13, v0, Lcom/google/android/gms/internal/ads/Ni;->r:I

    .line 62
    .line 63
    if-lez v13, :cond_3

    .line 64
    .line 65
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 70
    .line 71
    invoke-virtual {v0, v14, v15, v13}, Lcom/google/android/gms/internal/ads/Ni;->b([SII)V

    .line 72
    .line 73
    .line 74
    iget v14, v0, Lcom/google/android/gms/internal/ads/Ni;->r:I

    .line 75
    .line 76
    sub-int/2addr v14, v13

    .line 77
    iput v14, v0, Lcom/google/android/gms/internal/ads/Ni;->r:I

    .line 78
    .line 79
    add-int/2addr v15, v13

    .line 80
    move/from16 v23, v2

    .line 81
    .line 82
    move/from16 v22, v5

    .line 83
    .line 84
    move/from16 v21, v8

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_3
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 89
    .line 90
    const/16 v14, 0xfa0

    .line 91
    .line 92
    if-le v8, v14, :cond_4

    .line 93
    .line 94
    div-int/lit16 v14, v8, 0xfa0

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 v14, 0x1

    .line 98
    :goto_3
    iget v7, v0, Lcom/google/android/gms/internal/ads/Ni;->g:I

    .line 99
    .line 100
    iget v10, v0, Lcom/google/android/gms/internal/ads/Ni;->f:I

    .line 101
    .line 102
    if-ne v9, v11, :cond_5

    .line 103
    .line 104
    if-ne v14, v11, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0, v13, v15, v10, v7}, Lcom/google/android/gms/internal/ads/Ni;->a([SIII)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    move/from16 v23, v2

    .line 111
    .line 112
    move/from16 v22, v5

    .line 113
    .line 114
    move/from16 v21, v8

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_5
    invoke-virtual {v0, v13, v15, v14}, Lcom/google/android/gms/internal/ads/Ni;->c([SII)V

    .line 118
    .line 119
    .line 120
    div-int v11, v7, v14

    .line 121
    .line 122
    move/from16 v21, v8

    .line 123
    .line 124
    div-int v8, v10, v14

    .line 125
    .line 126
    move/from16 v22, v5

    .line 127
    .line 128
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ni;->i:[S

    .line 129
    .line 130
    move/from16 v23, v2

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v5, v2, v8, v11}, Lcom/google/android/gms/internal/ads/Ni;->a([SIII)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    const/4 v2, 0x1

    .line 138
    if-eq v14, v2, :cond_9

    .line 139
    .line 140
    mul-int v8, v8, v14

    .line 141
    .line 142
    mul-int/lit8 v14, v14, 0x4

    .line 143
    .line 144
    sub-int v2, v8, v14

    .line 145
    .line 146
    if-lt v2, v10, :cond_6

    .line 147
    .line 148
    move v10, v2

    .line 149
    :cond_6
    add-int/2addr v8, v14

    .line 150
    if-le v8, v7, :cond_7

    .line 151
    .line 152
    :goto_4
    const/4 v2, 0x1

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    move v7, v8

    .line 155
    goto :goto_4

    .line 156
    :goto_5
    if-ne v9, v2, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v13, v15, v10, v7}, Lcom/google/android/gms/internal/ads/Ni;->a([SIII)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    goto :goto_6

    .line 163
    :cond_8
    invoke-virtual {v0, v13, v15, v2}, Lcom/google/android/gms/internal/ads/Ni;->c([SII)V

    .line 164
    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v5, v2, v10, v7}, Lcom/google/android/gms/internal/ads/Ni;->a([SIII)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    goto :goto_6

    .line 172
    :cond_9
    move v7, v8

    .line 173
    :goto_6
    iget v2, v0, Lcom/google/android/gms/internal/ads/Ni;->u:I

    .line 174
    .line 175
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->v:I

    .line 176
    .line 177
    if-eqz v2, :cond_c

    .line 178
    .line 179
    iget v8, v0, Lcom/google/android/gms/internal/ads/Ni;->s:I

    .line 180
    .line 181
    if-nez v8, :cond_a

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_a
    mul-int/lit8 v10, v2, 0x3

    .line 185
    .line 186
    if-le v5, v10, :cond_b

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_b
    add-int v5, v2, v2

    .line 190
    .line 191
    iget v10, v0, Lcom/google/android/gms/internal/ads/Ni;->t:I

    .line 192
    .line 193
    mul-int/lit8 v10, v10, 0x3

    .line 194
    .line 195
    if-gt v5, v10, :cond_d

    .line 196
    .line 197
    :cond_c
    :goto_7
    move v8, v7

    .line 198
    :cond_d
    add-int v5, v15, v8

    .line 199
    .line 200
    iput v2, v0, Lcom/google/android/gms/internal/ads/Ni;->t:I

    .line 201
    .line 202
    iput v7, v0, Lcom/google/android/gms/internal/ads/Ni;->s:I

    .line 203
    .line 204
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 205
    .line 206
    const/high16 v2, -0x40800000    # -1.0f

    .line 207
    .line 208
    cmpl-double v7, v3, v10

    .line 209
    .line 210
    int-to-float v10, v8

    .line 211
    if-lez v7, :cond_f

    .line 212
    .line 213
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 214
    .line 215
    add-float/2addr v2, v1

    .line 216
    const/high16 v11, 0x40000000    # 2.0f

    .line 217
    .line 218
    cmpl-float v13, v1, v11

    .line 219
    .line 220
    if-ltz v13, :cond_e

    .line 221
    .line 222
    div-float/2addr v10, v2

    .line 223
    float-to-int v2, v10

    .line 224
    goto :goto_8

    .line 225
    :cond_e
    sub-float/2addr v11, v1

    .line 226
    mul-float v11, v11, v10

    .line 227
    .line 228
    div-float/2addr v11, v2

    .line 229
    float-to-int v2, v11

    .line 230
    iput v2, v0, Lcom/google/android/gms/internal/ads/Ni;->r:I

    .line 231
    .line 232
    move v2, v8

    .line 233
    :goto_8
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 234
    .line 235
    iget v11, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 236
    .line 237
    invoke-virtual {v0, v10, v11, v2}, Lcom/google/android/gms/internal/ads/Ni;->f([SII)[S

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 242
    .line 243
    iget v14, v0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 244
    .line 245
    iget v11, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 246
    .line 247
    move v13, v2

    .line 248
    move/from16 v24, v15

    .line 249
    .line 250
    move-object v15, v10

    .line 251
    move/from16 v16, v11

    .line 252
    .line 253
    move-object/from16 v17, v7

    .line 254
    .line 255
    move/from16 v18, v24

    .line 256
    .line 257
    move-object/from16 v19, v7

    .line 258
    .line 259
    move/from16 v20, v5

    .line 260
    .line 261
    invoke-static/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/Ni;->d(II[SI[SI[SI)V

    .line 262
    .line 263
    .line 264
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 265
    .line 266
    add-int/2addr v5, v2

    .line 267
    iput v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 268
    .line 269
    add-int/2addr v8, v2

    .line 270
    add-int v8, v8, v24

    .line 271
    .line 272
    move v15, v8

    .line 273
    goto :goto_a

    .line 274
    :cond_f
    move/from16 v24, v15

    .line 275
    .line 276
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 277
    .line 278
    const/high16 v11, 0x3f800000    # 1.0f

    .line 279
    .line 280
    sub-float v13, v11, v1

    .line 281
    .line 282
    const/high16 v11, 0x3f000000    # 0.5f

    .line 283
    .line 284
    cmpg-float v11, v1, v11

    .line 285
    .line 286
    if-gez v11, :cond_10

    .line 287
    .line 288
    mul-float v10, v10, v1

    .line 289
    .line 290
    div-float/2addr v10, v13

    .line 291
    float-to-int v2, v10

    .line 292
    goto :goto_9

    .line 293
    :cond_10
    add-float v11, v1, v1

    .line 294
    .line 295
    add-float/2addr v11, v2

    .line 296
    mul-float v11, v11, v10

    .line 297
    .line 298
    div-float/2addr v11, v13

    .line 299
    float-to-int v2, v11

    .line 300
    iput v2, v0, Lcom/google/android/gms/internal/ads/Ni;->r:I

    .line 301
    .line 302
    move v2, v8

    .line 303
    :goto_9
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 304
    .line 305
    iget v11, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 306
    .line 307
    add-int v15, v8, v2

    .line 308
    .line 309
    invoke-virtual {v0, v10, v11, v15}, Lcom/google/android/gms/internal/ads/Ni;->f([SII)[S

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 314
    .line 315
    mul-int v11, v24, v9

    .line 316
    .line 317
    iget v13, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 318
    .line 319
    mul-int v13, v13, v9

    .line 320
    .line 321
    mul-int v14, v8, v9

    .line 322
    .line 323
    invoke-static {v7, v11, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    .line 325
    .line 326
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 327
    .line 328
    iget v11, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 329
    .line 330
    add-int v16, v11, v8

    .line 331
    .line 332
    iget v14, v0, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 333
    .line 334
    move v13, v2

    .line 335
    move v8, v15

    .line 336
    move-object v15, v10

    .line 337
    move-object/from16 v17, v7

    .line 338
    .line 339
    move/from16 v18, v5

    .line 340
    .line 341
    move-object/from16 v19, v7

    .line 342
    .line 343
    move/from16 v20, v24

    .line 344
    .line 345
    invoke-static/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/Ni;->d(II[SI[SI[SI)V

    .line 346
    .line 347
    .line 348
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 349
    .line 350
    add-int/2addr v5, v8

    .line 351
    iput v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 352
    .line 353
    add-int v15, v24, v2

    .line 354
    .line 355
    :goto_a
    add-int v2, v15, v12

    .line 356
    .line 357
    if-le v2, v6, :cond_1a

    .line 358
    .line 359
    iget v1, v0, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 360
    .line 361
    sub-int/2addr v1, v15

    .line 362
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ni;->j:[S

    .line 363
    .line 364
    mul-int v15, v15, v9

    .line 365
    .line 366
    mul-int v3, v1, v9

    .line 367
    .line 368
    const/4 v4, 0x0

    .line 369
    invoke-static {v2, v15, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    .line 371
    .line 372
    iput v1, v0, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 373
    .line 374
    :goto_b
    iget v1, v0, Lcom/google/android/gms/internal/ads/Ni;->e:F

    .line 375
    .line 376
    mul-float v1, v1, v23

    .line 377
    .line 378
    const/high16 v2, 0x3f800000    # 1.0f

    .line 379
    .line 380
    cmpl-float v2, v1, v2

    .line 381
    .line 382
    if-eqz v2, :cond_19

    .line 383
    .line 384
    iget v2, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 385
    .line 386
    move/from16 v5, v22

    .line 387
    .line 388
    if-ne v2, v5, :cond_11

    .line 389
    .line 390
    goto/16 :goto_12

    .line 391
    .line 392
    :cond_11
    move/from16 v7, v21

    .line 393
    .line 394
    int-to-float v2, v7

    .line 395
    div-float/2addr v2, v1

    .line 396
    float-to-int v1, v2

    .line 397
    move v8, v7

    .line 398
    :goto_c
    const/16 v2, 0x4000

    .line 399
    .line 400
    if-gt v1, v2, :cond_12

    .line 401
    .line 402
    if-le v8, v2, :cond_13

    .line 403
    .line 404
    :cond_12
    const/4 v10, 0x1

    .line 405
    const/4 v11, 0x0

    .line 406
    goto/16 :goto_11

    .line 407
    .line 408
    :cond_13
    iget v2, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 409
    .line 410
    sub-int/2addr v2, v5

    .line 411
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ni;->n:[S

    .line 412
    .line 413
    iget v4, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 414
    .line 415
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/Ni;->f([SII)[S

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/Ni;->n:[S

    .line 420
    .line 421
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 422
    .line 423
    mul-int v6, v5, v9

    .line 424
    .line 425
    iget v7, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 426
    .line 427
    mul-int v7, v7, v9

    .line 428
    .line 429
    mul-int v10, v2, v9

    .line 430
    .line 431
    invoke-static {v4, v6, v3, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    .line 433
    .line 434
    iput v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 435
    .line 436
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 437
    .line 438
    add-int/2addr v3, v2

    .line 439
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 440
    .line 441
    const/4 v2, 0x0

    .line 442
    :goto_d
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 443
    .line 444
    add-int/lit8 v4, v3, -0x1

    .line 445
    .line 446
    if-ge v2, v4, :cond_18

    .line 447
    .line 448
    :goto_e
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->p:I

    .line 449
    .line 450
    const/4 v4, 0x1

    .line 451
    add-int/2addr v3, v4

    .line 452
    mul-int v5, v3, v1

    .line 453
    .line 454
    iget v6, v0, Lcom/google/android/gms/internal/ads/Ni;->q:I

    .line 455
    .line 456
    mul-int v7, v6, v8

    .line 457
    .line 458
    if-le v5, v7, :cond_15

    .line 459
    .line 460
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 461
    .line 462
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 463
    .line 464
    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/ads/Ni;->f([SII)[S

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 469
    .line 470
    const/4 v3, 0x0

    .line 471
    :goto_f
    if-ge v3, v9, :cond_14

    .line 472
    .line 473
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ni;->l:[S

    .line 474
    .line 475
    iget v5, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 476
    .line 477
    mul-int v5, v5, v9

    .line 478
    .line 479
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Ni;->n:[S

    .line 480
    .line 481
    mul-int v7, v2, v9

    .line 482
    .line 483
    add-int/2addr v7, v3

    .line 484
    aget-short v10, v6, v7

    .line 485
    .line 486
    add-int/2addr v7, v9

    .line 487
    aget-short v6, v6, v7

    .line 488
    .line 489
    iget v7, v0, Lcom/google/android/gms/internal/ads/Ni;->q:I

    .line 490
    .line 491
    mul-int v7, v7, v8

    .line 492
    .line 493
    iget v11, v0, Lcom/google/android/gms/internal/ads/Ni;->p:I

    .line 494
    .line 495
    mul-int v12, v11, v1

    .line 496
    .line 497
    const/4 v13, 0x1

    .line 498
    add-int/2addr v11, v13

    .line 499
    mul-int v11, v11, v1

    .line 500
    .line 501
    sub-int v7, v11, v7

    .line 502
    .line 503
    mul-int v10, v10, v7

    .line 504
    .line 505
    sub-int/2addr v11, v12

    .line 506
    sub-int v7, v11, v7

    .line 507
    .line 508
    mul-int v7, v7, v6

    .line 509
    .line 510
    add-int/2addr v7, v10

    .line 511
    div-int/2addr v7, v11

    .line 512
    int-to-short v6, v7

    .line 513
    add-int/2addr v5, v3

    .line 514
    aput-short v6, v4, v5

    .line 515
    .line 516
    add-int/lit8 v3, v3, 0x1

    .line 517
    .line 518
    goto :goto_f

    .line 519
    :cond_14
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->q:I

    .line 520
    .line 521
    const/4 v10, 0x1

    .line 522
    add-int/2addr v3, v10

    .line 523
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ni;->q:I

    .line 524
    .line 525
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 526
    .line 527
    add-int/2addr v3, v10

    .line 528
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ni;->m:I

    .line 529
    .line 530
    goto :goto_e

    .line 531
    :cond_15
    const/4 v10, 0x1

    .line 532
    iput v3, v0, Lcom/google/android/gms/internal/ads/Ni;->p:I

    .line 533
    .line 534
    const/4 v11, 0x0

    .line 535
    if-ne v3, v8, :cond_17

    .line 536
    .line 537
    iput v11, v0, Lcom/google/android/gms/internal/ads/Ni;->p:I

    .line 538
    .line 539
    if-ne v6, v1, :cond_16

    .line 540
    .line 541
    const/4 v3, 0x1

    .line 542
    goto :goto_10

    .line 543
    :cond_16
    const/4 v3, 0x0

    .line 544
    :goto_10
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 545
    .line 546
    .line 547
    iput v11, v0, Lcom/google/android/gms/internal/ads/Ni;->q:I

    .line 548
    .line 549
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 550
    .line 551
    goto :goto_d

    .line 552
    :cond_18
    const/4 v11, 0x0

    .line 553
    if-eqz v4, :cond_19

    .line 554
    .line 555
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ni;->n:[S

    .line 556
    .line 557
    sub-int/2addr v3, v4

    .line 558
    mul-int v2, v4, v9

    .line 559
    .line 560
    mul-int v3, v3, v9

    .line 561
    .line 562
    invoke-static {v1, v2, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    .line 564
    .line 565
    iget v1, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 566
    .line 567
    sub-int/2addr v1, v4

    .line 568
    iput v1, v0, Lcom/google/android/gms/internal/ads/Ni;->o:I

    .line 569
    .line 570
    return-void

    .line 571
    :goto_11
    div-int/lit8 v1, v1, 0x2

    .line 572
    .line 573
    div-int/lit8 v8, v8, 0x2

    .line 574
    .line 575
    goto/16 :goto_c

    .line 576
    .line 577
    :cond_19
    :goto_12
    return-void

    .line 578
    :cond_1a
    move/from16 v8, v21

    .line 579
    .line 580
    move/from16 v5, v22

    .line 581
    .line 582
    move/from16 v2, v23

    .line 583
    .line 584
    const/4 v10, 0x0

    .line 585
    const/4 v11, 0x1

    .line 586
    goto/16 :goto_2
.end method

.method public final f([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ni;->b:I

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
