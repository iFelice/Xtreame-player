.class public final LV6/b;
.super LV6/a;
.source "SourceFile"


# instance fields
.field public final A0:[Ljava/text/NumberFormat;

.field public final B0:I

.field public final a0:Ljava/lang/String;

.field public final b0:[Ljava/lang/String;

.field public final c0:F

.field public final d0:[D

.field public final e0:[D

.field public final f0:[D

.field public final g0:[D

.field public h0:I

.field public i0:I

.field public final j0:Ljava/util/HashMap;

.field public final k0:Ljava/util/LinkedHashMap;

.field public l0:Z

.field public m0:Z

.field public final n0:Z

.field public final o0:Z

.field public p0:I

.field public final q0:Ljava/util/LinkedHashMap;

.field public final r0:F

.field public final s0:[I

.field public final t0:I

.field public final u0:Landroid/graphics/Paint$Align;

.field public final v0:[Landroid/graphics/Paint$Align;

.field public final w0:F

.field public final x0:[Landroid/graphics/Paint$Align;

.field public final y0:I

.field public final z0:[I


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    const-wide v0, -0x10000000000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v4, LV6/a;->Z:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iput-object v4, p0, LV6/a;->G:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean v3, p0, LV6/a;->H:Z

    .line 20
    .line 21
    const v4, -0x333334

    .line 22
    .line 23
    .line 24
    iput v4, p0, LV6/a;->I:I

    .line 25
    .line 26
    iput v4, p0, LV6/a;->J:I

    .line 27
    .line 28
    iput-boolean v3, p0, LV6/a;->K:Z

    .line 29
    .line 30
    iput-boolean v3, p0, LV6/a;->L:Z

    .line 31
    .line 32
    iput-boolean v3, p0, LV6/a;->M:Z

    .line 33
    .line 34
    iput v4, p0, LV6/a;->N:I

    .line 35
    .line 36
    const/high16 v5, 0x41200000    # 10.0f

    .line 37
    .line 38
    iput v5, p0, LV6/a;->O:F

    .line 39
    .line 40
    iput-boolean v3, p0, LV6/a;->P:Z

    .line 41
    .line 42
    const/high16 v5, 0x41400000    # 12.0f

    .line 43
    .line 44
    iput v5, p0, LV6/a;->Q:F

    .line 45
    .line 46
    iput-boolean v2, p0, LV6/a;->R:Z

    .line 47
    .line 48
    iput-boolean v2, p0, LV6/a;->S:Z

    .line 49
    .line 50
    new-instance v6, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v6, p0, LV6/a;->T:Ljava/util/ArrayList;

    .line 56
    .line 57
    iput-boolean v3, p0, LV6/a;->U:Z

    .line 58
    .line 59
    const/16 v6, 0x1e

    .line 60
    .line 61
    const/16 v7, 0xa

    .line 62
    .line 63
    const/16 v8, 0x14

    .line 64
    .line 65
    filled-new-array {v8, v6, v7, v8}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iput-object v6, p0, LV6/a;->V:[I

    .line 70
    .line 71
    iput-boolean v2, p0, LV6/a;->W:Z

    .line 72
    .line 73
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 74
    .line 75
    iput v6, p0, LV6/a;->X:F

    .line 76
    .line 77
    const/16 v6, 0xf

    .line 78
    .line 79
    iput v6, p0, LV6/a;->Y:I

    .line 80
    .line 81
    const-string v6, ""

    .line 82
    .line 83
    iput-object v6, p0, LV6/b;->a0:Ljava/lang/String;

    .line 84
    .line 85
    iput v5, p0, LV6/b;->c0:F

    .line 86
    .line 87
    const/4 v5, 0x5

    .line 88
    iput v5, p0, LV6/b;->h0:I

    .line 89
    .line 90
    iput v5, p0, LV6/b;->i0:I

    .line 91
    .line 92
    iput v3, p0, LV6/b;->B0:I

    .line 93
    .line 94
    new-instance v5, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v5, p0, LV6/b;->j0:Ljava/util/HashMap;

    .line 100
    .line 101
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v5, p0, LV6/b;->k0:Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    iput-boolean v3, p0, LV6/b;->l0:Z

    .line 109
    .line 110
    iput-boolean v3, p0, LV6/b;->m0:Z

    .line 111
    .line 112
    iput-boolean v3, p0, LV6/b;->n0:Z

    .line 113
    .line 114
    iput-boolean v3, p0, LV6/b;->o0:Z

    .line 115
    .line 116
    iput v2, p0, LV6/b;->p0:I

    .line 117
    .line 118
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v7, p0, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    const/high16 v8, 0x40400000    # 3.0f

    .line 126
    .line 127
    iput v8, p0, LV6/b;->r0:F

    .line 128
    .line 129
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 130
    .line 131
    iput-object v8, p0, LV6/b;->u0:Landroid/graphics/Paint$Align;

    .line 132
    .line 133
    const/high16 v9, 0x40000000    # 2.0f

    .line 134
    .line 135
    iput v9, p0, LV6/b;->w0:F

    .line 136
    .line 137
    iput v4, p0, LV6/b;->y0:I

    .line 138
    .line 139
    iput v3, p0, LV6/b;->t0:I

    .line 140
    .line 141
    new-array v9, v3, [Ljava/lang/String;

    .line 142
    .line 143
    iput-object v9, p0, LV6/b;->b0:[Ljava/lang/String;

    .line 144
    .line 145
    new-array v9, v3, [Landroid/graphics/Paint$Align;

    .line 146
    .line 147
    iput-object v9, p0, LV6/b;->v0:[Landroid/graphics/Paint$Align;

    .line 148
    .line 149
    new-array v9, v3, [Landroid/graphics/Paint$Align;

    .line 150
    .line 151
    iput-object v9, p0, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 152
    .line 153
    new-array v9, v3, [I

    .line 154
    .line 155
    iput-object v9, p0, LV6/b;->z0:[I

    .line 156
    .line 157
    new-array v10, v3, [Ljava/text/NumberFormat;

    .line 158
    .line 159
    iput-object v10, p0, LV6/b;->A0:[Ljava/text/NumberFormat;

    .line 160
    .line 161
    new-array v11, v3, [D

    .line 162
    .line 163
    iput-object v11, p0, LV6/b;->d0:[D

    .line 164
    .line 165
    new-array v11, v3, [D

    .line 166
    .line 167
    iput-object v11, p0, LV6/b;->e0:[D

    .line 168
    .line 169
    new-array v11, v3, [D

    .line 170
    .line 171
    iput-object v11, p0, LV6/b;->f0:[D

    .line 172
    .line 173
    new-array v11, v3, [D

    .line 174
    .line 175
    iput-object v11, p0, LV6/b;->g0:[D

    .line 176
    .line 177
    new-array v11, v3, [I

    .line 178
    .line 179
    iput-object v11, p0, LV6/b;->s0:[I

    .line 180
    .line 181
    aput v4, v9, v2

    .line 182
    .line 183
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    aput-object v4, v10, v2

    .line 188
    .line 189
    iget-object v4, p0, LV6/b;->s0:[I

    .line 190
    .line 191
    const/16 v9, 0x4b

    .line 192
    .line 193
    const/16 v10, 0xc8

    .line 194
    .line 195
    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    aput v9, v4, v2

    .line 200
    .line 201
    iget-object v4, p0, LV6/b;->d0:[D

    .line 202
    .line 203
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    aput-wide v9, v4, v2

    .line 209
    .line 210
    iget-object v11, p0, LV6/b;->e0:[D

    .line 211
    .line 212
    aput-wide v0, v11, v2

    .line 213
    .line 214
    iget-object v12, p0, LV6/b;->f0:[D

    .line 215
    .line 216
    aput-wide v9, v12, v2

    .line 217
    .line 218
    iget-object v9, p0, LV6/b;->g0:[D

    .line 219
    .line 220
    aput-wide v0, v9, v2

    .line 221
    .line 222
    aget-wide v9, v4, v2

    .line 223
    .line 224
    aget-wide v13, v11, v2

    .line 225
    .line 226
    aget-wide v11, v12, v2

    .line 227
    .line 228
    const/4 v4, 0x4

    .line 229
    new-array v4, v4, [D

    .line 230
    .line 231
    aput-wide v9, v4, v2

    .line 232
    .line 233
    aput-wide v13, v4, v3

    .line 234
    .line 235
    const/4 v3, 0x2

    .line 236
    aput-wide v11, v4, v3

    .line 237
    .line 238
    const/4 v3, 0x3

    .line 239
    aput-wide v0, v4, v3

    .line 240
    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, LV6/b;->b0:[Ljava/lang/String;

    .line 249
    .line 250
    aput-object v6, v0, v2

    .line 251
    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/HashMap;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, LV6/b;->v0:[Landroid/graphics/Paint$Align;

    .line 265
    .line 266
    aput-object v8, v0, v2

    .line 267
    .line 268
    iget-object v0, p0, LV6/b;->x0:[Landroid/graphics/Paint$Align;

    .line 269
    .line 270
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 271
    .line 272
    aput-object v1, v0, v2

    .line 273
    .line 274
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()[Ljava/lang/Double;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LV6/b;->j0:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Double;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public final declared-synchronized b(ILjava/lang/Double;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LV6/b;->k0:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final declared-synchronized c(I)[Ljava/lang/Double;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LV6/b;->k0:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Double;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public final d(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LV6/b;->e0:[D

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide v3, -0x10000000000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpl-double p1, v1, v3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final e(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LV6/b;->g0:[D

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide v3, -0x10000000000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpl-double p1, v1, v3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final f(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LV6/b;->d0:[D

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpl-double p1, v1, v3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final g(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, LV6/b;->f0:[D

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmpl-double p1, v1, v3

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LV6/b;->l0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, LV6/b;->m0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LV6/b;->n0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, LV6/b;->o0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final j(ID)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LV6/b;->d(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [D

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aput-wide p2, v0, v1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, LV6/b;->e0:[D

    .line 23
    .line 24
    aput-wide p2, v0, p1

    .line 25
    .line 26
    return-void
.end method

.method public final k(ID)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LV6/b;->f(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [D

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-wide p2, v0, v1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, LV6/b;->d0:[D

    .line 23
    .line 24
    aput-wide p2, v0, p1

    .line 25
    .line 26
    return-void
.end method

.method public final l(ID)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LV6/b;->e(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [D

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    aput-wide p2, v0, v1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, LV6/b;->g0:[D

    .line 23
    .line 24
    aput-wide p2, v0, p1

    .line 25
    .line 26
    return-void
.end method

.method public final m(ID)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LV6/b;->g(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LV6/b;->q0:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [D

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    aput-wide p2, v0, v1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, LV6/b;->f0:[D

    .line 23
    .line 24
    aput-wide p2, v0, p1

    .line 25
    .line 26
    return-void
.end method
