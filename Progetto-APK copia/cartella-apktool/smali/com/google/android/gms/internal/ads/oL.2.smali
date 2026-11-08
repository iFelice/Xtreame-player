.class public final synthetic Lcom/google/android/gms/internal/ads/oL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bo;
.implements Lcom/google/android/gms/internal/ads/pO;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/oL;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/oL;->G:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/Ve;[I)Lcom/google/android/gms/internal/ads/PA;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/oL;->G:I

    .line 6
    .line 7
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    const-string v3, "initialCapacity"

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 18
    .line 19
    invoke-static {v2, v3}, Lo3/r;->q(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-array v1, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    move-object v11, v1

    .line 25
    const/4 v12, 0x0

    .line 26
    const/4 v13, 0x0

    .line 27
    :goto_0
    iget v1, v8, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 28
    .line 29
    if-ge v12, v1, :cond_1

    .line 30
    .line 31
    move-object v7, v10

    .line 32
    check-cast v7, Ljava/lang/String;

    .line 33
    .line 34
    move-object v5, v9

    .line 35
    check-cast v5, Lcom/google/android/gms/internal/ads/lO;

    .line 36
    .line 37
    new-instance v14, Lcom/google/android/gms/internal/ads/oO;

    .line 38
    .line 39
    aget v6, p3, v12

    .line 40
    .line 41
    move-object v1, v14

    .line 42
    move/from16 v2, p1

    .line 43
    .line 44
    move-object/from16 v3, p2

    .line 45
    .line 46
    move v4, v12

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/oO;-><init>(ILcom/google/android/gms/internal/ads/Ve;ILcom/google/android/gms/internal/ads/lO;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v13, 0x1

    .line 51
    .line 52
    array-length v2, v11

    .line 53
    if-ge v2, v1, :cond_0

    .line 54
    .line 55
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object v11, v2

    .line 64
    :cond_0
    aput-object v14, v11, v13

    .line 65
    .line 66
    add-int/lit8 v12, v12, 0x1

    .line 67
    .line 68
    move v13, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    return-object v1

    .line 75
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/ads/sO;->j:Lcom/google/android/gms/internal/ads/kA;

    .line 76
    .line 77
    check-cast v9, Lcom/google/android/gms/internal/ads/lO;

    .line 78
    .line 79
    check-cast v10, [I

    .line 80
    .line 81
    aget v1, v10, p1

    .line 82
    .line 83
    iget v1, v9, Lcom/google/android/gms/internal/ads/pg;->a:I

    .line 84
    .line 85
    const/4 v12, -0x1

    .line 86
    const v13, 0x7fffffff

    .line 87
    .line 88
    .line 89
    if-eq v1, v13, :cond_9

    .line 90
    .line 91
    iget v4, v9, Lcom/google/android/gms/internal/ads/pg;->b:I

    .line 92
    .line 93
    if-ne v4, v13, :cond_2

    .line 94
    .line 95
    :goto_1
    const/4 v1, 0x4

    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_2
    const/4 v5, 0x0

    .line 99
    const v6, 0x7fffffff

    .line 100
    .line 101
    .line 102
    :goto_2
    iget v7, v8, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 103
    .line 104
    if-ge v5, v7, :cond_8

    .line 105
    .line 106
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 107
    .line 108
    aget-object v7, v7, v5

    .line 109
    .line 110
    iget v14, v7, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 111
    .line 112
    if-lez v14, :cond_7

    .line 113
    .line 114
    iget v15, v7, Lcom/google/android/gms/internal/ads/p0;->t:I

    .line 115
    .line 116
    if-lez v15, :cond_7

    .line 117
    .line 118
    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/pg;->c:Z

    .line 119
    .line 120
    if-eqz v10, :cond_5

    .line 121
    .line 122
    if-gt v14, v15, :cond_3

    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    const/4 v10, 0x1

    .line 127
    :goto_3
    if-gt v1, v4, :cond_4

    .line 128
    .line 129
    const/4 v11, 0x0

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/4 v11, 0x1

    .line 132
    :goto_4
    if-eq v10, v11, :cond_5

    .line 133
    .line 134
    move v10, v1

    .line 135
    move v11, v4

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    move v11, v1

    .line 138
    move v10, v4

    .line 139
    :goto_5
    mul-int v13, v14, v10

    .line 140
    .line 141
    mul-int v2, v15, v11

    .line 142
    .line 143
    if-lt v13, v2, :cond_6

    .line 144
    .line 145
    new-instance v10, Landroid/graphics/Point;

    .line 146
    .line 147
    sget v13, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 148
    .line 149
    add-int/2addr v2, v14

    .line 150
    add-int/2addr v2, v12

    .line 151
    div-int/2addr v2, v14

    .line 152
    invoke-direct {v10, v11, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_6
    new-instance v2, Landroid/graphics/Point;

    .line 157
    .line 158
    sget v11, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 159
    .line 160
    add-int/2addr v13, v15

    .line 161
    add-int/2addr v13, v12

    .line 162
    div-int/2addr v13, v15

    .line 163
    invoke-direct {v2, v13, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 164
    .line 165
    .line 166
    move-object v10, v2

    .line 167
    :goto_6
    iget v2, v7, Lcom/google/android/gms/internal/ads/p0;->s:I

    .line 168
    .line 169
    mul-int v7, v2, v15

    .line 170
    .line 171
    iget v11, v10, Landroid/graphics/Point;->x:I

    .line 172
    .line 173
    int-to-float v11, v11

    .line 174
    const v13, 0x3f7ae148    # 0.98f

    .line 175
    .line 176
    .line 177
    mul-float v11, v11, v13

    .line 178
    .line 179
    float-to-int v11, v11

    .line 180
    if-lt v2, v11, :cond_7

    .line 181
    .line 182
    iget v2, v10, Landroid/graphics/Point;->y:I

    .line 183
    .line 184
    int-to-float v2, v2

    .line 185
    mul-float v2, v2, v13

    .line 186
    .line 187
    float-to-int v2, v2

    .line 188
    if-lt v15, v2, :cond_7

    .line 189
    .line 190
    if-ge v7, v6, :cond_7

    .line 191
    .line 192
    move v6, v7

    .line 193
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 194
    .line 195
    const/4 v2, 0x4

    .line 196
    const v13, 0x7fffffff

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_8
    move v13, v6

    .line 201
    goto :goto_1

    .line 202
    :cond_9
    const/4 v1, 0x4

    .line 203
    const v13, 0x7fffffff

    .line 204
    .line 205
    .line 206
    :goto_7
    invoke-static {v1, v3}, Lo3/r;->q(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-array v1, v1, [Ljava/lang/Object;

    .line 210
    .line 211
    move-object v10, v1

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v14, 0x0

    .line 214
    :goto_8
    iget v1, v8, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 215
    .line 216
    if-ge v11, v1, :cond_d

    .line 217
    .line 218
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 219
    .line 220
    aget-object v1, v1, v11

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p0;->a()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    const v15, 0x7fffffff

    .line 227
    .line 228
    .line 229
    if-eq v13, v15, :cond_a

    .line 230
    .line 231
    if-eq v1, v12, :cond_b

    .line 232
    .line 233
    if-gt v1, v13, :cond_b

    .line 234
    .line 235
    :cond_a
    const/4 v7, 0x1

    .line 236
    goto :goto_9

    .line 237
    :cond_b
    const/4 v7, 0x0

    .line 238
    :goto_9
    new-instance v16, Lcom/google/android/gms/internal/ads/rO;

    .line 239
    .line 240
    aget v6, p3, v11

    .line 241
    .line 242
    move-object/from16 v1, v16

    .line 243
    .line 244
    move/from16 v2, p1

    .line 245
    .line 246
    move-object/from16 v3, p2

    .line 247
    .line 248
    move v4, v11

    .line 249
    move-object v5, v9

    .line 250
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/rO;-><init>(ILcom/google/android/gms/internal/ads/Ve;ILcom/google/android/gms/internal/ads/lO;IZ)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v1, v14, 0x1

    .line 254
    .line 255
    array-length v2, v10

    .line 256
    if-ge v2, v1, :cond_c

    .line 257
    .line 258
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/oA;->e(II)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    move-object v10, v2

    .line 267
    :cond_c
    aput-object v16, v10, v14

    .line 268
    .line 269
    add-int/lit8 v11, v11, 0x1

    .line 270
    .line 271
    move v14, v1

    .line 272
    goto :goto_8

    .line 273
    :cond_d
    invoke-static {v14, v10}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    return-object v1

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cK;)V
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/KL;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/KL;-><init>(Lcom/google/android/gms/internal/ads/oL;Lcom/google/android/gms/internal/ads/cK;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/oL;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/th;

    .line 11
    .line 12
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/eL;->l(Lcom/google/android/gms/internal/ads/th;)V

    .line 13
    .line 14
    .line 15
    iget p1, v1, Lcom/google/android/gms/internal/ads/th;->a:I

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 19
    .line 20
    check-cast v1, Lcom/google/android/gms/internal/ads/cK;

    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/eL;->i(Lcom/google/android/gms/internal/ads/cK;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 27
    .line 28
    check-cast v1, Lcom/google/android/gms/internal/ads/Xa;

    .line 29
    .line 30
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/eL;->h(Lcom/google/android/gms/internal/ads/Xa;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/gms/internal/ads/dL;

    .line 39
    .line 40
    check-cast v1, Lcom/google/android/gms/internal/ads/nL;

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/eL;->b(Lcom/google/android/gms/internal/ads/dL;Lcom/google/android/gms/internal/ads/nL;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
