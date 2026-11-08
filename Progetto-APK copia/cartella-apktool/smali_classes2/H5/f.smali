.class public abstract LH5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LZ3/o;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, LZ3/o;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LH5/f;->a:LZ3/o;

    .line 9
    .line 10
    return-void
.end method

.method public static a(LH5/d;)LH5/b;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, LH5/d;->I()LW0/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    iget-boolean v5, p0, LH5/d;->K:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move-object v6, v0

    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, LH5/b;

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    iget-object v7, v6, LH5/b;->b:Lq5/o;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v7, v6, LH5/b;->d:Lq5/o;

    .line 29
    .line 30
    :goto_0
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v6, v6, LH5/b;->c:Lq5/o;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object v6, v6, LH5/b;->e:Lq5/o;

    .line 36
    .line 37
    :goto_1
    iget v7, v7, Lq5/o;->b:F

    .line 38
    .line 39
    float-to-int v7, v7

    .line 40
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->p(I)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iget v6, v6, Lq5/o;->b:F

    .line 45
    .line 46
    float-to-int v6, v6

    .line 47
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->p(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v8, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, [LW0/d;

    .line 54
    .line 55
    const/4 v9, -0x1

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x1

    .line 58
    :goto_2
    if-ge v7, v6, :cond_8

    .line 59
    .line 60
    aget-object v12, v8, v7

    .line 61
    .line 62
    if-eqz v12, :cond_7

    .line 63
    .line 64
    invoke-virtual {v12}, LW0/d;->c()V

    .line 65
    .line 66
    .line 67
    iget v13, v12, LW0/d;->f:I

    .line 68
    .line 69
    sub-int v14, v13, v9

    .line 70
    .line 71
    if-nez v14, :cond_4

    .line 72
    .line 73
    add-int/lit8 v10, v10, 0x1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    if-ne v14, v4, :cond_5

    .line 77
    .line 78
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    iget v9, v12, LW0/d;->f:I

    .line 83
    .line 84
    :goto_3
    const/4 v10, 0x1

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    iget v12, v1, LW0/d;->f:I

    .line 87
    .line 88
    if-lt v13, v12, :cond_6

    .line 89
    .line 90
    aput-object v0, v8, v7

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v9, v13

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_8
    iget v1, v1, LW0/d;->f:I

    .line 99
    .line 100
    new-array v6, v1, [I

    .line 101
    .line 102
    iget-object v7, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v7, [LW0/d;

    .line 105
    .line 106
    array-length v8, v7

    .line 107
    const/4 v9, 0x0

    .line 108
    :goto_5
    if-ge v9, v8, :cond_a

    .line 109
    .line 110
    aget-object v10, v7, v9

    .line 111
    .line 112
    if-eqz v10, :cond_9

    .line 113
    .line 114
    iget v10, v10, LW0/d;->f:I

    .line 115
    .line 116
    if-ge v10, v1, :cond_9

    .line 117
    .line 118
    aget v11, v6, v10

    .line 119
    .line 120
    add-int/2addr v11, v4

    .line 121
    aput v11, v6, v10

    .line 122
    .line 123
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_a
    :goto_6
    if-nez v6, :cond_b

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_b
    array-length v0, v6

    .line 130
    const/4 v1, 0x0

    .line 131
    :goto_7
    if-ge v1, v0, :cond_c

    .line 132
    .line 133
    aget v7, v6, v1

    .line 134
    .line 135
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_c
    array-length v0, v6

    .line 143
    const/4 v1, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    :goto_8
    if-ge v1, v0, :cond_d

    .line 146
    .line 147
    aget v8, v6, v1

    .line 148
    .line 149
    sub-int v9, v2, v8

    .line 150
    .line 151
    add-int/2addr v7, v9

    .line 152
    if-gtz v8, :cond_d

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, [LW0/d;

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    :goto_9
    if-lez v7, :cond_e

    .line 163
    .line 164
    aget-object v8, v0, v1

    .line 165
    .line 166
    if-nez v8, :cond_e

    .line 167
    .line 168
    add-int/lit8 v7, v7, -0x1

    .line 169
    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_e
    array-length v1, v6

    .line 174
    sub-int/2addr v1, v4

    .line 175
    const/4 v8, 0x0

    .line 176
    :goto_a
    if-ltz v1, :cond_f

    .line 177
    .line 178
    aget v9, v6, v1

    .line 179
    .line 180
    sub-int v10, v2, v9

    .line 181
    .line 182
    add-int/2addr v8, v10

    .line 183
    if-gtz v9, :cond_f

    .line 184
    .line 185
    add-int/lit8 v1, v1, -0x1

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_f
    array-length v1, v0

    .line 189
    sub-int/2addr v1, v4

    .line 190
    :goto_b
    if-lez v8, :cond_10

    .line 191
    .line 192
    aget-object v2, v0, v1

    .line 193
    .line 194
    if-nez v2, :cond_10

    .line 195
    .line 196
    add-int/lit8 v8, v8, -0x1

    .line 197
    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 199
    .line 200
    goto :goto_b

    .line 201
    :cond_10
    iget-object p0, p0, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p0, LH5/b;

    .line 204
    .line 205
    iget-object v0, p0, LH5/b;->b:Lq5/o;

    .line 206
    .line 207
    iget-object v1, p0, LH5/b;->d:Lq5/o;

    .line 208
    .line 209
    if-lez v7, :cond_14

    .line 210
    .line 211
    if-eqz v5, :cond_11

    .line 212
    .line 213
    move-object v2, v0

    .line 214
    goto :goto_c

    .line 215
    :cond_11
    move-object v2, v1

    .line 216
    :goto_c
    iget v6, v2, Lq5/o;->b:F

    .line 217
    .line 218
    float-to-int v6, v6

    .line 219
    sub-int/2addr v6, v7

    .line 220
    if-gez v6, :cond_12

    .line 221
    .line 222
    goto :goto_d

    .line 223
    :cond_12
    move v3, v6

    .line 224
    :goto_d
    new-instance v6, Lq5/o;

    .line 225
    .line 226
    int-to-float v3, v3

    .line 227
    iget v2, v2, Lq5/o;->a:F

    .line 228
    .line 229
    invoke-direct {v6, v2, v3}, Lq5/o;-><init>(FF)V

    .line 230
    .line 231
    .line 232
    if-eqz v5, :cond_13

    .line 233
    .line 234
    move-object v13, v1

    .line 235
    move-object v11, v6

    .line 236
    goto :goto_e

    .line 237
    :cond_13
    move-object v11, v0

    .line 238
    move-object v13, v6

    .line 239
    goto :goto_e

    .line 240
    :cond_14
    move-object v11, v0

    .line 241
    move-object v13, v1

    .line 242
    :goto_e
    iget-object v0, p0, LH5/b;->c:Lq5/o;

    .line 243
    .line 244
    iget-object v1, p0, LH5/b;->e:Lq5/o;

    .line 245
    .line 246
    if-lez v8, :cond_18

    .line 247
    .line 248
    if-eqz v5, :cond_15

    .line 249
    .line 250
    move-object v2, v0

    .line 251
    goto :goto_f

    .line 252
    :cond_15
    move-object v2, v1

    .line 253
    :goto_f
    iget v3, v2, Lq5/o;->b:F

    .line 254
    .line 255
    float-to-int v3, v3

    .line 256
    add-int/2addr v3, v8

    .line 257
    iget-object v6, p0, LH5/b;->a:Lw5/b;

    .line 258
    .line 259
    iget v6, v6, Lw5/b;->H:I

    .line 260
    .line 261
    if-lt v3, v6, :cond_16

    .line 262
    .line 263
    add-int/lit8 v3, v6, -0x1

    .line 264
    .line 265
    :cond_16
    new-instance v4, Lq5/o;

    .line 266
    .line 267
    int-to-float v3, v3

    .line 268
    iget v2, v2, Lq5/o;->a:F

    .line 269
    .line 270
    invoke-direct {v4, v2, v3}, Lq5/o;-><init>(FF)V

    .line 271
    .line 272
    .line 273
    if-eqz v5, :cond_17

    .line 274
    .line 275
    move-object v14, v1

    .line 276
    move-object v12, v4

    .line 277
    goto :goto_10

    .line 278
    :cond_17
    move-object v12, v0

    .line 279
    move-object v14, v4

    .line 280
    goto :goto_10

    .line 281
    :cond_18
    move-object v12, v0

    .line 282
    move-object v14, v1

    .line 283
    :goto_10
    new-instance v0, LH5/b;

    .line 284
    .line 285
    iget-object v10, p0, LH5/b;->a:Lw5/b;

    .line 286
    .line 287
    move-object v9, v0

    .line 288
    invoke-direct/range {v9 .. v14}, LH5/b;-><init>(Lw5/b;Lq5/o;Lq5/o;Lq5/o;Lq5/o;)V

    .line 289
    .line 290
    .line 291
    return-object v0
.end method

.method public static b(I[I[I)Lw5/d;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    array-length v6, v0

    .line 10
    if-eqz v6, :cond_36

    .line 11
    .line 12
    add-int/lit8 v6, p0, 0x1

    .line 13
    .line 14
    shl-int v6, v5, v6

    .line 15
    .line 16
    array-length v7, v1

    .line 17
    div-int/lit8 v8, v6, 0x2

    .line 18
    .line 19
    add-int/lit8 v8, v8, 0x3

    .line 20
    .line 21
    if-gt v7, v8, :cond_35

    .line 22
    .line 23
    if-ltz v6, :cond_35

    .line 24
    .line 25
    const/16 v7, 0x200

    .line 26
    .line 27
    if-gt v6, v7, :cond_35

    .line 28
    .line 29
    new-instance v7, LF/i;

    .line 30
    .line 31
    sget-object v8, LH5/f;->a:LZ3/o;

    .line 32
    .line 33
    iget-object v9, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v9, LI5/a;

    .line 36
    .line 37
    invoke-direct {v7, v9, v0}, LF/i;-><init>(LI5/a;[I)V

    .line 38
    .line 39
    .line 40
    new-array v9, v6, [I

    .line 41
    .line 42
    move v10, v6

    .line 43
    const/4 v11, 0x0

    .line 44
    :goto_0
    if-lez v10, :cond_1

    .line 45
    .line 46
    iget-object v12, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v12, LI5/a;

    .line 49
    .line 50
    iget-object v12, v12, LI5/a;->a:[I

    .line 51
    .line 52
    aget v12, v12, v10

    .line 53
    .line 54
    invoke-virtual {v7, v12}, LF/i;->f(I)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    sub-int v13, v6, v10

    .line 59
    .line 60
    aput v12, v9, v13

    .line 61
    .line 62
    if-eqz v12, :cond_0

    .line 63
    .line 64
    const/4 v11, 0x1

    .line 65
    :cond_0
    add-int/2addr v10, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-nez v11, :cond_2

    .line 68
    .line 69
    goto/16 :goto_c

    .line 70
    .line 71
    :cond_2
    iget-object v7, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v7, LI5/a;

    .line 74
    .line 75
    iget-object v7, v7, LI5/a;->d:LF/i;

    .line 76
    .line 77
    array-length v10, v1

    .line 78
    const/4 v11, 0x0

    .line 79
    :goto_1
    const/16 v12, 0x3a1

    .line 80
    .line 81
    if-ge v11, v10, :cond_3

    .line 82
    .line 83
    aget v13, v1, v11

    .line 84
    .line 85
    iget-object v14, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v14, LI5/a;

    .line 88
    .line 89
    array-length v15, v0

    .line 90
    sub-int/2addr v15, v5

    .line 91
    sub-int/2addr v15, v13

    .line 92
    iget-object v13, v14, LI5/a;->a:[I

    .line 93
    .line 94
    aget v13, v13, v15

    .line 95
    .line 96
    new-instance v15, LF/i;

    .line 97
    .line 98
    rsub-int v13, v13, 0x3a1

    .line 99
    .line 100
    rem-int/2addr v13, v12

    .line 101
    filled-new-array {v13, v5}, [I

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-direct {v15, v14, v12}, LF/i;-><init>(LI5/a;[I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v15}, LF/i;->t(LF/i;)LF/i;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    add-int/2addr v11, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance v1, LF/i;

    .line 115
    .line 116
    iget-object v7, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v7, LI5/a;

    .line 119
    .line 120
    invoke-direct {v1, v7, v9}, LF/i;-><init>(LI5/a;[I)V

    .line 121
    .line 122
    .line 123
    iget-object v7, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v7, LI5/a;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    if-ltz v6, :cond_34

    .line 131
    .line 132
    add-int/lit8 v9, v6, 0x1

    .line 133
    .line 134
    new-array v9, v9, [I

    .line 135
    .line 136
    aput v5, v9, v2

    .line 137
    .line 138
    new-instance v10, LF/i;

    .line 139
    .line 140
    invoke-direct {v10, v7, v9}, LF/i;-><init>(LI5/a;[I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, LF/i;->i()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {v1}, LF/i;->i()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-ge v7, v9, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    move-object/from16 v21, v10

    .line 155
    .line 156
    move-object v10, v1

    .line 157
    move-object/from16 v1, v21

    .line 158
    .line 159
    :goto_2
    iget-object v7, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v7, LI5/a;

    .line 162
    .line 163
    iget-object v9, v7, LI5/a;->c:LF/i;

    .line 164
    .line 165
    iget-object v7, v7, LI5/a;->d:LF/i;

    .line 166
    .line 167
    move-object/from16 v21, v7

    .line 168
    .line 169
    move-object v7, v1

    .line 170
    move-object v1, v10

    .line 171
    move-object v10, v9

    .line 172
    move-object/from16 v9, v21

    .line 173
    .line 174
    :goto_3
    invoke-virtual {v1}, LF/i;->i()I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    div-int/lit8 v13, v6, 0x2

    .line 179
    .line 180
    if-lt v11, v13, :cond_c

    .line 181
    .line 182
    invoke-virtual {v1}, LF/i;->r()Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-nez v11, :cond_b

    .line 187
    .line 188
    iget-object v11, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v11, LI5/a;

    .line 191
    .line 192
    iget-object v11, v11, LI5/a;->c:LF/i;

    .line 193
    .line 194
    invoke-virtual {v1}, LF/i;->i()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    invoke-virtual {v1, v13}, LF/i;->h(I)I

    .line 199
    .line 200
    .line 201
    move-result v13

    .line 202
    iget-object v14, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v14, LI5/a;

    .line 205
    .line 206
    invoke-virtual {v14, v13}, LI5/a;->a(I)I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    :goto_4
    invoke-virtual {v7}, LF/i;->i()I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    invoke-virtual {v1}, LF/i;->i()I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    if-lt v14, v15, :cond_a

    .line 219
    .line 220
    invoke-virtual {v7}, LF/i;->r()Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-nez v14, :cond_a

    .line 225
    .line 226
    invoke-virtual {v7}, LF/i;->i()I

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    invoke-virtual {v1}, LF/i;->i()I

    .line 231
    .line 232
    .line 233
    move-result v15

    .line 234
    sub-int/2addr v14, v15

    .line 235
    iget-object v15, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v15, LI5/a;

    .line 238
    .line 239
    invoke-virtual {v7}, LF/i;->i()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-virtual {v7, v3}, LF/i;->h(I)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v15, v3, v13}, LI5/a;->b(II)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    iget-object v15, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v15, LI5/a;

    .line 254
    .line 255
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    if-ltz v14, :cond_9

    .line 259
    .line 260
    if-nez v3, :cond_5

    .line 261
    .line 262
    iget-object v15, v15, LI5/a;->c:LF/i;

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_5
    add-int/lit8 v12, v14, 0x1

    .line 266
    .line 267
    new-array v12, v12, [I

    .line 268
    .line 269
    aput v3, v12, v2

    .line 270
    .line 271
    new-instance v4, LF/i;

    .line 272
    .line 273
    invoke-direct {v4, v15, v12}, LF/i;-><init>(LI5/a;[I)V

    .line 274
    .line 275
    .line 276
    move-object v15, v4

    .line 277
    :goto_5
    invoke-virtual {v11, v15}, LF/i;->a(LF/i;)LF/i;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    if-ltz v14, :cond_8

    .line 282
    .line 283
    if-nez v3, :cond_6

    .line 284
    .line 285
    iget-object v3, v1, LF/i;->I:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v3, LI5/a;

    .line 288
    .line 289
    iget-object v3, v3, LI5/a;->c:LF/i;

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_6
    iget-object v4, v1, LF/i;->H:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v4, [I

    .line 295
    .line 296
    array-length v4, v4

    .line 297
    add-int/2addr v14, v4

    .line 298
    new-array v12, v14, [I

    .line 299
    .line 300
    const/4 v14, 0x0

    .line 301
    :goto_6
    if-ge v14, v4, :cond_7

    .line 302
    .line 303
    iget-object v15, v1, LF/i;->I:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v15, LI5/a;

    .line 306
    .line 307
    iget-object v2, v1, LF/i;->H:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v2, [I

    .line 310
    .line 311
    aget v2, v2, v14

    .line 312
    .line 313
    invoke-virtual {v15, v2, v3}, LI5/a;->b(II)I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    aput v2, v12, v14

    .line 318
    .line 319
    add-int/2addr v14, v5

    .line 320
    const/4 v2, 0x0

    .line 321
    goto :goto_6

    .line 322
    :cond_7
    new-instance v3, LF/i;

    .line 323
    .line 324
    iget-object v2, v1, LF/i;->I:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v2, LI5/a;

    .line 327
    .line 328
    invoke-direct {v3, v2, v12}, LF/i;-><init>(LI5/a;[I)V

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-virtual {v7, v3}, LF/i;->z(LF/i;)LF/i;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    const/4 v2, 0x0

    .line 336
    const/4 v3, -0x1

    .line 337
    const/4 v4, 0x2

    .line 338
    const/16 v12, 0x3a1

    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_a
    invoke-virtual {v11, v9}, LF/i;->t(LF/i;)LF/i;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2, v10}, LF/i;->z(LF/i;)LF/i;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v2}, LF/i;->u()LF/i;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    move-object v10, v9

    .line 367
    const/4 v3, -0x1

    .line 368
    const/4 v4, 0x2

    .line 369
    const/16 v12, 0x3a1

    .line 370
    .line 371
    move-object v9, v2

    .line 372
    const/4 v2, 0x0

    .line 373
    move-object/from16 v21, v7

    .line 374
    .line 375
    move-object v7, v1

    .line 376
    move-object/from16 v1, v21

    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :cond_b
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    throw v0

    .line 385
    :cond_c
    invoke-virtual {v9, v2}, LF/i;->h(I)I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_33

    .line 390
    .line 391
    iget-object v4, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v4, LI5/a;

    .line 394
    .line 395
    invoke-virtual {v4, v3}, LI5/a;->a(I)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    invoke-virtual {v9, v3}, LF/i;->s(I)LF/i;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v1, v3}, LF/i;->s(I)LF/i;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    const/4 v3, 0x2

    .line 408
    new-array v7, v3, [LF/i;

    .line 409
    .line 410
    aput-object v4, v7, v2

    .line 411
    .line 412
    aput-object v1, v7, v5

    .line 413
    .line 414
    aget-object v1, v7, v2

    .line 415
    .line 416
    aget-object v2, v7, v5

    .line 417
    .line 418
    invoke-virtual {v1}, LF/i;->i()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    new-array v4, v3, [I

    .line 423
    .line 424
    const/4 v7, 0x0

    .line 425
    const/4 v9, 0x1

    .line 426
    :goto_8
    iget-object v10, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v10, LI5/a;

    .line 429
    .line 430
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    const/16 v10, 0x3a1

    .line 434
    .line 435
    if-ge v9, v10, :cond_e

    .line 436
    .line 437
    if-ge v7, v3, :cond_e

    .line 438
    .line 439
    invoke-virtual {v1, v9}, LF/i;->f(I)I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    if-nez v10, :cond_d

    .line 444
    .line 445
    iget-object v10, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v10, LI5/a;

    .line 448
    .line 449
    invoke-virtual {v10, v9}, LI5/a;->a(I)I

    .line 450
    .line 451
    .line 452
    move-result v10

    .line 453
    aput v10, v4, v7

    .line 454
    .line 455
    add-int/2addr v7, v5

    .line 456
    :cond_d
    add-int/2addr v9, v5

    .line 457
    goto :goto_8

    .line 458
    :cond_e
    if-ne v7, v3, :cond_32

    .line 459
    .line 460
    invoke-virtual {v1}, LF/i;->i()I

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    new-array v9, v7, [I

    .line 465
    .line 466
    const/4 v10, 0x1

    .line 467
    :goto_9
    if-gt v10, v7, :cond_f

    .line 468
    .line 469
    sub-int v11, v7, v10

    .line 470
    .line 471
    iget-object v12, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v12, LI5/a;

    .line 474
    .line 475
    invoke-virtual {v1, v10}, LF/i;->h(I)I

    .line 476
    .line 477
    .line 478
    move-result v13

    .line 479
    invoke-virtual {v12, v10, v13}, LI5/a;->b(II)I

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    aput v12, v9, v11

    .line 484
    .line 485
    add-int/2addr v10, v5

    .line 486
    goto :goto_9

    .line 487
    :cond_f
    new-instance v1, LF/i;

    .line 488
    .line 489
    iget-object v7, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v7, LI5/a;

    .line 492
    .line 493
    invoke-direct {v1, v7, v9}, LF/i;-><init>(LI5/a;[I)V

    .line 494
    .line 495
    .line 496
    new-array v7, v3, [I

    .line 497
    .line 498
    const/4 v9, 0x0

    .line 499
    :goto_a
    if-ge v9, v3, :cond_10

    .line 500
    .line 501
    iget-object v10, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v10, LI5/a;

    .line 504
    .line 505
    aget v11, v4, v9

    .line 506
    .line 507
    invoke-virtual {v10, v11}, LI5/a;->a(I)I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    iget-object v11, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v11, LI5/a;

    .line 514
    .line 515
    invoke-virtual {v2, v10}, LF/i;->f(I)I

    .line 516
    .line 517
    .line 518
    move-result v12

    .line 519
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    const/16 v11, 0x3a1

    .line 523
    .line 524
    rsub-int v12, v12, 0x3a1

    .line 525
    .line 526
    rem-int/2addr v12, v11

    .line 527
    iget-object v11, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v11, LI5/a;

    .line 530
    .line 531
    invoke-virtual {v1, v10}, LF/i;->f(I)I

    .line 532
    .line 533
    .line 534
    move-result v10

    .line 535
    invoke-virtual {v11, v10}, LI5/a;->a(I)I

    .line 536
    .line 537
    .line 538
    move-result v10

    .line 539
    iget-object v11, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v11, LI5/a;

    .line 542
    .line 543
    invoke-virtual {v11, v12, v10}, LI5/a;->b(II)I

    .line 544
    .line 545
    .line 546
    move-result v10

    .line 547
    aput v10, v7, v9

    .line 548
    .line 549
    add-int/2addr v9, v5

    .line 550
    goto :goto_a

    .line 551
    :cond_10
    const/4 v1, 0x0

    .line 552
    :goto_b
    if-ge v1, v3, :cond_13

    .line 553
    .line 554
    array-length v2, v0

    .line 555
    sub-int/2addr v2, v5

    .line 556
    iget-object v9, v8, LZ3/o;->H:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v9, LI5/a;

    .line 559
    .line 560
    aget v10, v4, v1

    .line 561
    .line 562
    if-eqz v10, :cond_12

    .line 563
    .line 564
    iget-object v9, v9, LI5/a;->b:[I

    .line 565
    .line 566
    aget v9, v9, v10

    .line 567
    .line 568
    sub-int/2addr v2, v9

    .line 569
    if-ltz v2, :cond_11

    .line 570
    .line 571
    aget v9, v0, v2

    .line 572
    .line 573
    aget v10, v7, v1

    .line 574
    .line 575
    const/16 v11, 0x3a1

    .line 576
    .line 577
    add-int v12, v11, v9

    .line 578
    .line 579
    sub-int/2addr v12, v10

    .line 580
    rem-int/2addr v12, v11

    .line 581
    aput v12, v0, v2

    .line 582
    .line 583
    add-int/2addr v1, v5

    .line 584
    goto :goto_b

    .line 585
    :cond_11
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    throw v0

    .line 590
    :cond_12
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 594
    .line 595
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 596
    .line 597
    .line 598
    throw v0

    .line 599
    :cond_13
    :goto_c
    array-length v1, v0

    .line 600
    const/4 v2, 0x4

    .line 601
    if-lt v1, v2, :cond_31

    .line 602
    .line 603
    const/4 v1, 0x0

    .line 604
    aget v2, v0, v1

    .line 605
    .line 606
    array-length v3, v0

    .line 607
    if-gt v2, v3, :cond_30

    .line 608
    .line 609
    if-nez v2, :cond_15

    .line 610
    .line 611
    array-length v2, v0

    .line 612
    if-ge v6, v2, :cond_14

    .line 613
    .line 614
    array-length v2, v0

    .line 615
    sub-int/2addr v2, v6

    .line 616
    aput v2, v0, v1

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_14
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    throw v0

    .line 624
    :cond_15
    :goto_d
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    sget-object v2, LH5/c;->a:[C

    .line 629
    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    array-length v3, v0

    .line 633
    shl-int/2addr v3, v5

    .line 634
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 635
    .line 636
    .line 637
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 638
    .line 639
    aget v4, v0, v5

    .line 640
    .line 641
    new-instance v6, LG5/c;

    .line 642
    .line 643
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 644
    .line 645
    .line 646
    move v7, v4

    .line 647
    const/4 v8, 0x0

    .line 648
    move-object v4, v3

    .line 649
    const/4 v3, 0x2

    .line 650
    :goto_e
    aget v9, v0, v8

    .line 651
    .line 652
    if-ge v3, v9, :cond_2e

    .line 653
    .line 654
    const/16 v8, 0x391

    .line 655
    .line 656
    if-eq v7, v8, :cond_2c

    .line 657
    .line 658
    const/16 v8, 0x384

    .line 659
    .line 660
    packed-switch v7, :pswitch_data_0

    .line 661
    .line 662
    .line 663
    packed-switch v7, :pswitch_data_1

    .line 664
    .line 665
    .line 666
    const/4 v10, -0x1

    .line 667
    add-int/2addr v3, v10

    .line 668
    invoke-static {v0, v3, v2}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    :cond_16
    :goto_f
    const/4 v7, 0x0

    .line 673
    goto/16 :goto_1e

    .line 674
    .line 675
    :pswitch_0
    const/4 v7, 0x2

    .line 676
    add-int/lit8 v8, v3, 0x2

    .line 677
    .line 678
    if-gt v8, v9, :cond_1d

    .line 679
    .line 680
    new-array v8, v7, [I

    .line 681
    .line 682
    const/4 v9, 0x0

    .line 683
    :goto_10
    if-ge v9, v7, :cond_17

    .line 684
    .line 685
    aget v10, v0, v3

    .line 686
    .line 687
    aput v10, v8, v9

    .line 688
    .line 689
    add-int/2addr v9, v5

    .line 690
    add-int/2addr v3, v5

    .line 691
    goto :goto_10

    .line 692
    :cond_17
    invoke-static {v8, v7}, LH5/c;->a([II)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-static {v0, v3, v7}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    aget v7, v0, v3

    .line 709
    .line 710
    const/16 v8, 0x39b

    .line 711
    .line 712
    if-ne v7, v8, :cond_18

    .line 713
    .line 714
    add-int/lit8 v10, v3, 0x1

    .line 715
    .line 716
    :goto_11
    const/4 v7, 0x0

    .line 717
    goto :goto_12

    .line 718
    :cond_18
    const/4 v7, 0x0

    .line 719
    const/4 v10, -0x1

    .line 720
    :goto_12
    aget v9, v0, v7

    .line 721
    .line 722
    if-ge v3, v9, :cond_1b

    .line 723
    .line 724
    aget v7, v0, v3

    .line 725
    .line 726
    const/16 v9, 0x39a

    .line 727
    .line 728
    if-eq v7, v9, :cond_1a

    .line 729
    .line 730
    if-ne v7, v8, :cond_19

    .line 731
    .line 732
    add-int/lit8 v7, v3, 0x1

    .line 733
    .line 734
    aget v7, v0, v7

    .line 735
    .line 736
    packed-switch v7, :pswitch_data_2

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    throw v0

    .line 744
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .line 748
    .line 749
    const/4 v9, 0x2

    .line 750
    add-int/2addr v3, v9

    .line 751
    invoke-static {v0, v3, v7}, LH5/c;->b([IILjava/lang/StringBuilder;)I

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    goto :goto_11

    .line 763
    :pswitch_2
    const/4 v9, 0x2

    .line 764
    new-instance v7, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    add-int/2addr v3, v9

    .line 770
    invoke-static {v0, v3, v7}, LH5/c;->b([IILjava/lang/StringBuilder;)I

    .line 771
    .line 772
    .line 773
    move-result v3

    .line 774
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v7

    .line 778
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 779
    .line 780
    .line 781
    goto :goto_11

    .line 782
    :pswitch_3
    const/4 v9, 0x2

    .line 783
    new-instance v7, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    add-int/2addr v3, v9

    .line 789
    invoke-static {v0, v3, v7}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    goto :goto_11

    .line 794
    :pswitch_4
    const/4 v9, 0x2

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .line 799
    .line 800
    add-int/2addr v3, v9

    .line 801
    invoke-static {v0, v3, v7}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 802
    .line 803
    .line 804
    move-result v3

    .line 805
    goto :goto_11

    .line 806
    :pswitch_5
    const/4 v9, 0x2

    .line 807
    new-instance v7, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 810
    .line 811
    .line 812
    add-int/2addr v3, v9

    .line 813
    invoke-static {v0, v3, v7}, LH5/c;->b([IILjava/lang/StringBuilder;)I

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 822
    .line 823
    .line 824
    goto :goto_11

    .line 825
    :pswitch_6
    const/4 v9, 0x2

    .line 826
    new-instance v7, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .line 830
    .line 831
    add-int/2addr v3, v9

    .line 832
    invoke-static {v0, v3, v7}, LH5/c;->b([IILjava/lang/StringBuilder;)I

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v7

    .line 840
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 841
    .line 842
    .line 843
    goto :goto_11

    .line 844
    :pswitch_7
    const/4 v9, 0x2

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    add-int/2addr v3, v9

    .line 851
    invoke-static {v0, v3, v7}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    goto/16 :goto_11

    .line 856
    .line 857
    :cond_19
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    throw v0

    .line 862
    :cond_1a
    add-int/2addr v3, v5

    .line 863
    iput-boolean v5, v6, LG5/c;->a:Z

    .line 864
    .line 865
    goto/16 :goto_11

    .line 866
    .line 867
    :cond_1b
    const/4 v9, -0x1

    .line 868
    if-eq v10, v9, :cond_16

    .line 869
    .line 870
    sub-int v7, v3, v10

    .line 871
    .line 872
    iget-boolean v8, v6, LG5/c;->a:Z

    .line 873
    .line 874
    if-eqz v8, :cond_1c

    .line 875
    .line 876
    add-int/2addr v7, v9

    .line 877
    :cond_1c
    add-int/2addr v7, v10

    .line 878
    invoke-static {v0, v10, v7}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 879
    .line 880
    .line 881
    goto/16 :goto_f

    .line 882
    .line 883
    :cond_1d
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    throw v0

    .line 888
    :pswitch_8
    const/4 v9, -0x1

    .line 889
    add-int/lit8 v4, v3, 0x1

    .line 890
    .line 891
    aget v3, v0, v3

    .line 892
    .line 893
    sget-object v7, Lw5/c;->I:Ljava/util/HashMap;

    .line 894
    .line 895
    if-ltz v3, :cond_1e

    .line 896
    .line 897
    if-ge v3, v8, :cond_1e

    .line 898
    .line 899
    sget-object v7, Lw5/c;->I:Ljava/util/HashMap;

    .line 900
    .line 901
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    check-cast v3, Lw5/c;

    .line 910
    .line 911
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    const/4 v7, 0x0

    .line 920
    move/from16 v21, v4

    .line 921
    .line 922
    move-object v4, v3

    .line 923
    move/from16 v3, v21

    .line 924
    .line 925
    goto/16 :goto_1e

    .line 926
    .line 927
    :cond_1e
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    throw v0

    .line 932
    :pswitch_9
    const/4 v9, -0x1

    .line 933
    const/4 v10, 0x2

    .line 934
    add-int/2addr v3, v10

    .line 935
    goto/16 :goto_f

    .line 936
    .line 937
    :pswitch_a
    const/4 v9, -0x1

    .line 938
    const/4 v10, 0x2

    .line 939
    add-int/2addr v3, v5

    .line 940
    goto/16 :goto_f

    .line 941
    .line 942
    :pswitch_b
    const/4 v9, -0x1

    .line 943
    const/4 v10, 0x2

    .line 944
    goto :goto_13

    .line 945
    :pswitch_c
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    throw v0

    .line 950
    :pswitch_d
    const/4 v9, -0x1

    .line 951
    const/4 v10, 0x2

    .line 952
    invoke-static {v0, v3, v2}, LH5/c;->b([IILjava/lang/StringBuilder;)I

    .line 953
    .line 954
    .line 955
    move-result v3

    .line 956
    goto/16 :goto_f

    .line 957
    .line 958
    :goto_13
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 959
    .line 960
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 961
    .line 962
    .line 963
    const/16 v12, 0x385

    .line 964
    .line 965
    const/16 v13, 0x3a0

    .line 966
    .line 967
    const-wide/16 v14, 0x384

    .line 968
    .line 969
    const-wide/16 v16, 0x0

    .line 970
    .line 971
    if-eq v7, v12, :cond_25

    .line 972
    .line 973
    const/16 v12, 0x39c

    .line 974
    .line 975
    if-eq v7, v12, :cond_1f

    .line 976
    .line 977
    :goto_14
    const/4 v7, 0x0

    .line 978
    goto/16 :goto_1d

    .line 979
    .line 980
    :cond_1f
    move v12, v3

    .line 981
    move-wide/from16 v19, v16

    .line 982
    .line 983
    const/4 v3, 0x0

    .line 984
    const/4 v7, 0x0

    .line 985
    :goto_15
    const/16 v18, 0x0

    .line 986
    .line 987
    aget v10, v0, v18

    .line 988
    .line 989
    if-ge v12, v10, :cond_24

    .line 990
    .line 991
    if-nez v3, :cond_24

    .line 992
    .line 993
    add-int/lit8 v10, v12, 0x1

    .line 994
    .line 995
    aget v9, v0, v12

    .line 996
    .line 997
    if-ge v9, v8, :cond_20

    .line 998
    .line 999
    add-int/2addr v7, v5

    .line 1000
    mul-long v19, v19, v14

    .line 1001
    .line 1002
    int-to-long v8, v9

    .line 1003
    add-long v19, v19, v8

    .line 1004
    .line 1005
    :goto_16
    move v12, v10

    .line 1006
    goto :goto_17

    .line 1007
    :cond_20
    if-eq v9, v13, :cond_21

    .line 1008
    .line 1009
    packed-switch v9, :pswitch_data_3

    .line 1010
    .line 1011
    .line 1012
    packed-switch v9, :pswitch_data_4

    .line 1013
    .line 1014
    .line 1015
    goto :goto_16

    .line 1016
    :cond_21
    :pswitch_e
    const/4 v3, 0x1

    .line 1017
    :goto_17
    rem-int/lit8 v8, v7, 0x5

    .line 1018
    .line 1019
    if-nez v8, :cond_23

    .line 1020
    .line 1021
    if-lez v7, :cond_23

    .line 1022
    .line 1023
    const/4 v7, 0x0

    .line 1024
    :goto_18
    const/4 v8, 0x6

    .line 1025
    if-ge v7, v8, :cond_22

    .line 1026
    .line 1027
    rsub-int/lit8 v8, v7, 0x5

    .line 1028
    .line 1029
    mul-int/lit8 v8, v8, 0x8

    .line 1030
    .line 1031
    shr-long v8, v19, v8

    .line 1032
    .line 1033
    long-to-int v9, v8

    .line 1034
    int-to-byte v8, v9

    .line 1035
    invoke-virtual {v11, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1036
    .line 1037
    .line 1038
    add-int/2addr v7, v5

    .line 1039
    goto :goto_18

    .line 1040
    :cond_22
    move-wide/from16 v19, v16

    .line 1041
    .line 1042
    const/4 v7, 0x0

    .line 1043
    :cond_23
    const/16 v8, 0x384

    .line 1044
    .line 1045
    goto :goto_15

    .line 1046
    :cond_24
    move v3, v12

    .line 1047
    goto :goto_14

    .line 1048
    :cond_25
    const/4 v7, 0x6

    .line 1049
    new-array v8, v7, [I

    .line 1050
    .line 1051
    add-int/lit8 v7, v3, 0x1

    .line 1052
    .line 1053
    aget v3, v0, v3

    .line 1054
    .line 1055
    move v10, v3

    .line 1056
    move v9, v7

    .line 1057
    move-wide/from16 v19, v16

    .line 1058
    .line 1059
    const/4 v3, 0x0

    .line 1060
    const/4 v7, 0x0

    .line 1061
    const/16 v18, 0x0

    .line 1062
    .line 1063
    :goto_19
    aget v12, v0, v7

    .line 1064
    .line 1065
    if-ge v9, v12, :cond_29

    .line 1066
    .line 1067
    if-nez v18, :cond_29

    .line 1068
    .line 1069
    add-int/lit8 v12, v3, 0x1

    .line 1070
    .line 1071
    aput v10, v8, v3

    .line 1072
    .line 1073
    mul-long v19, v19, v14

    .line 1074
    .line 1075
    int-to-long v14, v10

    .line 1076
    add-long v19, v19, v14

    .line 1077
    .line 1078
    add-int/lit8 v3, v9, 0x1

    .line 1079
    .line 1080
    aget v10, v0, v9

    .line 1081
    .line 1082
    if-eq v10, v13, :cond_28

    .line 1083
    .line 1084
    packed-switch v10, :pswitch_data_5

    .line 1085
    .line 1086
    .line 1087
    packed-switch v10, :pswitch_data_6

    .line 1088
    .line 1089
    .line 1090
    rem-int/lit8 v9, v12, 0x5

    .line 1091
    .line 1092
    if-nez v9, :cond_27

    .line 1093
    .line 1094
    if-lez v12, :cond_27

    .line 1095
    .line 1096
    const/4 v9, 0x0

    .line 1097
    :goto_1a
    const/4 v14, 0x6

    .line 1098
    if-ge v9, v14, :cond_26

    .line 1099
    .line 1100
    rsub-int/lit8 v12, v9, 0x5

    .line 1101
    .line 1102
    mul-int/lit8 v12, v12, 0x8

    .line 1103
    .line 1104
    shr-long v13, v19, v12

    .line 1105
    .line 1106
    long-to-int v12, v13

    .line 1107
    int-to-byte v12, v12

    .line 1108
    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    .line 1110
    .line 1111
    add-int/2addr v9, v5

    .line 1112
    const/16 v13, 0x3a0

    .line 1113
    .line 1114
    goto :goto_1a

    .line 1115
    :cond_26
    move v9, v3

    .line 1116
    move-wide/from16 v19, v16

    .line 1117
    .line 1118
    const/4 v3, 0x0

    .line 1119
    :goto_1b
    const-wide/16 v14, 0x384

    .line 1120
    .line 1121
    goto :goto_19

    .line 1122
    :cond_27
    move v9, v3

    .line 1123
    move v3, v12

    .line 1124
    const/16 v13, 0x3a0

    .line 1125
    .line 1126
    goto :goto_1b

    .line 1127
    :cond_28
    :pswitch_f
    move v3, v12

    .line 1128
    const/16 v13, 0x3a0

    .line 1129
    .line 1130
    const-wide/16 v14, 0x384

    .line 1131
    .line 1132
    const/16 v18, 0x1

    .line 1133
    .line 1134
    goto :goto_19

    .line 1135
    :cond_29
    if-ne v9, v12, :cond_2a

    .line 1136
    .line 1137
    const/16 v12, 0x384

    .line 1138
    .line 1139
    if-ge v10, v12, :cond_2a

    .line 1140
    .line 1141
    add-int/lit8 v12, v3, 0x1

    .line 1142
    .line 1143
    aput v10, v8, v3

    .line 1144
    .line 1145
    move v3, v12

    .line 1146
    :cond_2a
    const/4 v10, 0x0

    .line 1147
    :goto_1c
    if-ge v10, v3, :cond_2b

    .line 1148
    .line 1149
    aget v12, v8, v10

    .line 1150
    .line 1151
    int-to-byte v12, v12

    .line 1152
    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1153
    .line 1154
    .line 1155
    add-int/2addr v10, v5

    .line 1156
    goto :goto_1c

    .line 1157
    :cond_2b
    move v3, v9

    .line 1158
    :goto_1d
    new-instance v8, Ljava/lang/String;

    .line 1159
    .line 1160
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 1161
    .line 1162
    .line 1163
    move-result-object v9

    .line 1164
    invoke-direct {v8, v9, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    goto :goto_1e

    .line 1171
    :pswitch_10
    const/4 v7, 0x0

    .line 1172
    invoke-static {v0, v3, v2}, LH5/c;->c([IILjava/lang/StringBuilder;)I

    .line 1173
    .line 1174
    .line 1175
    move-result v3

    .line 1176
    goto :goto_1e

    .line 1177
    :cond_2c
    const/4 v7, 0x0

    .line 1178
    add-int/lit8 v8, v3, 0x1

    .line 1179
    .line 1180
    aget v3, v0, v3

    .line 1181
    .line 1182
    int-to-char v3, v3

    .line 1183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    move v3, v8

    .line 1187
    :goto_1e
    array-length v8, v0

    .line 1188
    if-ge v3, v8, :cond_2d

    .line 1189
    .line 1190
    add-int/lit8 v8, v3, 0x1

    .line 1191
    .line 1192
    aget v3, v0, v3

    .line 1193
    .line 1194
    move v7, v3

    .line 1195
    move v3, v8

    .line 1196
    const/4 v8, 0x0

    .line 1197
    goto/16 :goto_e

    .line 1198
    .line 1199
    :cond_2d
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    throw v0

    .line 1204
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 1205
    .line 1206
    .line 1207
    move-result v0

    .line 1208
    if-eqz v0, :cond_2f

    .line 1209
    .line 1210
    new-instance v0, Lw5/d;

    .line 1211
    .line 1212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v2

    .line 1216
    const/4 v3, 0x0

    .line 1217
    invoke-direct {v0, v3, v2, v3, v1}, Lw5/d;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    iput-object v6, v0, Lw5/d;->e:Ljava/lang/Object;

    .line 1221
    .line 1222
    return-object v0

    .line 1223
    :cond_2f
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    throw v0

    .line 1228
    :cond_30
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    throw v0

    .line 1233
    :cond_31
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    throw v0

    .line 1238
    :cond_32
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    throw v0

    .line 1243
    :cond_33
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    throw v0

    .line 1248
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1249
    .line 1250
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1251
    .line 1252
    .line 1253
    throw v0

    .line 1254
    :cond_35
    invoke-static {}, Lq5/b;->a()Lq5/b;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    throw v0

    .line 1259
    :cond_36
    invoke-static {}, Lq5/e;->a()Lq5/e;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    throw v0

    .line 1264
    nop

    .line 1265
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_10
        :pswitch_b
        :pswitch_d
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 1276
    .line 1277
    .line 1278
    .line 1279
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
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1294
    .line 1295
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
    .line 1310
    .line 1311
    :pswitch_data_3
    .packed-switch 0x384
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    :pswitch_data_4
    .packed-switch 0x39a
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    :pswitch_data_5
    .packed-switch 0x384
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    :pswitch_data_6
    .packed-switch 0x39a
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static c(Lw5/b;IIZIIII)LW0/d;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move/from16 v10, p3

    move/from16 v9, p4

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x2

    if-ge v8, v11, :cond_4

    :goto_2
    if-eqz v10, :cond_1

    if-lt v9, v1, :cond_3

    goto :goto_3

    :cond_1
    if-ge v9, v2, :cond_3

    .line 2
    :goto_3
    invoke-virtual {v0, v9, v3}, Lw5/b;->b(II)Z

    move-result v12

    if-ne v10, v12, :cond_3

    sub-int v12, p4, v9

    .line 3
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v11, :cond_2

    move/from16 v9, p4

    goto :goto_4

    :cond_2
    add-int/2addr v9, v6

    goto :goto_2

    :cond_3
    neg-int v6, v6

    xor-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    const/16 v6, 0x8

    .line 4
    new-array v8, v6, [I

    if-eqz p3, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, -0x1

    :goto_5
    move/from16 v14, p3

    move v12, v9

    const/4 v13, 0x0

    :goto_6
    if-eqz p3, :cond_6

    if-ge v12, v2, :cond_8

    goto :goto_7

    :cond_6
    if-lt v12, v1, :cond_8

    :goto_7
    if-ge v13, v6, :cond_8

    .line 5
    invoke-virtual {v0, v12, v3}, Lw5/b;->b(II)Z

    move-result v15

    if-ne v15, v14, :cond_7

    .line 6
    aget v15, v8, v13

    add-int/2addr v15, v5

    aput v15, v8, v13

    add-int/2addr v12, v10

    goto :goto_6

    :cond_7
    add-int/lit8 v13, v13, 0x1

    xor-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x7

    const/4 v3, 0x0

    if-eq v13, v6, :cond_b

    if-eqz p3, :cond_9

    move v1, v2

    :cond_9
    if-ne v12, v1, :cond_a

    if-ne v13, v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v8, v3

    :cond_b
    :goto_8
    if-nez v8, :cond_c

    return-object v3

    .line 7
    :cond_c
    invoke-static {v8}, Ld2/v;->t([I)I

    move-result v1

    if-eqz p3, :cond_d

    add-int v2, v9, v1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    .line 8
    :goto_9
    array-length v10, v8

    div-int/2addr v10, v11

    if-ge v2, v10, :cond_e

    .line 9
    aget v10, v8, v2

    .line 10
    array-length v12, v8

    sub-int/2addr v12, v5

    sub-int/2addr v12, v2

    aget v12, v8, v12

    aput v12, v8, v2

    .line 11
    array-length v12, v8

    sub-int/2addr v12, v5

    sub-int/2addr v12, v2

    aput v10, v8, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    sub-int v2, v9, v1

    move/from16 v19, v9

    move v9, v2

    move/from16 v2, v19

    :goto_a
    add-int/lit8 v10, p6, -0x2

    if-gt v10, v1, :cond_1f

    add-int/lit8 v10, p7, 0x2

    if-gt v1, v10, :cond_1f

    .line 12
    sget-object v1, LH5/e;->a:[[F

    .line 13
    invoke-static {v8}, Ld2/v;->t([I)I

    move-result v1

    int-to-float v1, v1

    .line 14
    new-array v10, v6, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    const/16 v15, 0x11

    if-ge v12, v15, :cond_10

    const/high16 v15, 0x42080000    # 34.0f

    div-float v15, v1, v15

    int-to-float v0, v12

    mul-float v0, v0, v1

    const/high16 v16, 0x41880000    # 17.0f

    div-float v0, v0, v16

    add-float/2addr v0, v15

    .line 15
    aget v15, v8, v14

    add-int/2addr v15, v13

    int-to-float v11, v15

    cmpg-float v0, v11, v0

    if-gtz v0, :cond_f

    add-int/lit8 v14, v14, 0x1

    move v13, v15

    .line 16
    :cond_f
    aget v0, v10, v14

    add-int/2addr v0, v5

    aput v0, v10, v14

    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x7

    const/4 v11, 0x2

    goto :goto_b

    :cond_10
    const-wide/16 v0, 0x0

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v6, :cond_13

    const/4 v12, 0x0

    .line 17
    :goto_d
    aget v13, v10, v11

    if-ge v12, v13, :cond_12

    shl-long/2addr v0, v5

    .line 18
    rem-int/lit8 v13, v11, 0x2

    if-nez v13, :cond_11

    const/4 v13, 0x1

    goto :goto_e

    :cond_11
    const/4 v13, 0x0

    :goto_e
    int-to-long v13, v13

    or-long/2addr v0, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_13
    long-to-int v1, v0

    .line 19
    sget-object v0, LG5/a;->b:[I

    const v10, 0x3ffff

    and-int v11, v1, v10

    invoke-static {v0, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    .line 20
    sget-object v12, LG5/a;->c:[I

    if-gez v11, :cond_14

    goto :goto_f

    .line 21
    :cond_14
    aget v11, v12, v11

    sub-int/2addr v11, v5

    rem-int/lit16 v11, v11, 0x3a1

    if-ne v11, v4, :cond_15

    :goto_f
    const/4 v1, -0x1

    :cond_15
    if-eq v1, v4, :cond_16

    goto :goto_13

    .line 22
    :cond_16
    invoke-static {v8}, Ld2/v;->t([I)I

    move-result v1

    .line 23
    new-array v11, v6, [F

    if-le v1, v5, :cond_17

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v6, :cond_17

    .line 24
    aget v14, v8, v13

    int-to-float v14, v14

    int-to-float v15, v1

    div-float/2addr v14, v15

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_17
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, -0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    .line 25
    :goto_11
    sget-object v14, LH5/e;->a:[[F

    array-length v15, v14

    if-ge v13, v15, :cond_1a

    .line 26
    aget-object v14, v14, v13

    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_18

    .line 27
    aget v17, v14, v7

    aget v18, v11, v7

    sub-float v17, v17, v18

    mul-float v17, v17, v17

    add-float v15, v17, v15

    cmpl-float v17, v15, v8

    if-gez v17, :cond_18

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_18
    cmpg-float v7, v15, v8

    if-gez v7, :cond_19

    .line 28
    aget v1, v0, v13

    move v8, v15

    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_1a
    :goto_13
    and-int v7, v1, v10

    .line 29
    invoke-static {v0, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1b

    const/4 v0, -0x1

    goto :goto_14

    .line 30
    :cond_1b
    aget v0, v12, v0

    sub-int/2addr v0, v5

    rem-int/lit16 v0, v0, 0x3a1

    :goto_14
    if-ne v0, v4, :cond_1c

    return-object v3

    .line 31
    :cond_1c
    new-instance v4, LW0/d;

    .line 32
    new-array v6, v6, [I

    move v3, v1

    const/4 v1, 0x7

    const/4 v7, 0x0

    :goto_15
    and-int/lit8 v8, v3, 0x1

    if-eq v8, v7, :cond_1d

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    move v7, v8

    :cond_1d
    const/4 v8, 0x0

    const/4 v10, 0x2

    goto :goto_16

    :cond_1e
    const/4 v8, 0x0

    .line 33
    aget v1, v6, v8

    const/4 v10, 0x2

    aget v3, v6, v10

    sub-int/2addr v1, v3

    const/4 v3, 0x4

    aget v3, v6, v3

    add-int/2addr v1, v3

    const/4 v3, 0x6

    aget v3, v6, v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x9

    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object/from16 p0, v4

    move/from16 p1, v9

    move/from16 p2, v2

    move/from16 p3, v1

    move/from16 p4, v0

    move/from16 p5, v3

    move/from16 p6, v5

    .line 34
    invoke-direct/range {p0 .. p6}, LW0/d;-><init>(IIIIII)V

    return-object v4

    .line 35
    :goto_16
    aget v11, v6, v1

    add-int/2addr v11, v5

    aput v11, v6, v1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1f
    return-object v3
.end method

.method public static d(Lw5/b;LH5/b;Lq5/o;ZII)LH5/d;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    new-instance v11, LH5/d;

    .line 8
    .line 9
    invoke-direct {v11, v0, v10}, LH5/d;-><init>(LH5/b;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v12, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x2

    .line 15
    if-ge v12, v2, :cond_4

    .line 16
    .line 17
    if-nez v12, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v13, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v2, -0x1

    .line 23
    const/4 v13, -0x1

    .line 24
    :goto_1
    iget v2, v1, Lq5/o;->a:F

    .line 25
    .line 26
    float-to-int v2, v2

    .line 27
    iget v3, v1, Lq5/o;->b:F

    .line 28
    .line 29
    float-to-int v3, v3

    .line 30
    move v14, v2

    .line 31
    move v15, v3

    .line 32
    :goto_2
    iget v2, v0, LH5/b;->i:I

    .line 33
    .line 34
    if-gt v15, v2, :cond_3

    .line 35
    .line 36
    iget v2, v0, LH5/b;->h:I

    .line 37
    .line 38
    if-lt v15, v2, :cond_3

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    move-object/from16 v9, p0

    .line 42
    .line 43
    iget v4, v9, Lw5/b;->G:I

    .line 44
    .line 45
    move-object/from16 v2, p0

    .line 46
    .line 47
    move/from16 v5, p3

    .line 48
    .line 49
    move v6, v14

    .line 50
    move v7, v15

    .line 51
    move/from16 v8, p4

    .line 52
    .line 53
    move/from16 v9, p5

    .line 54
    .line 55
    invoke-static/range {v2 .. v9}, LH5/f;->c(Lw5/b;IIZIIII)LW0/d;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v3, v11, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, [LW0/d;

    .line 64
    .line 65
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->p(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    aput-object v2, v3, v4

    .line 70
    .line 71
    if-eqz v10, :cond_1

    .line 72
    .line 73
    iget v2, v2, LW0/d;->b:I

    .line 74
    .line 75
    :goto_3
    move v14, v2

    .line 76
    goto :goto_4

    .line 77
    :cond_1
    iget v2, v2, LW0/d;->c:I

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_4
    add-int/2addr v15, v13

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    return-object v11
.end method
