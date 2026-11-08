.class public final LW0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:F

.field public final l:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LW0/e;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, LW0/e;->b:I

    .line 7
    .line 8
    iput p3, p0, LW0/e;->c:I

    .line 9
    .line 10
    iput p4, p0, LW0/e;->d:I

    .line 11
    .line 12
    iput p5, p0, LW0/e;->e:I

    .line 13
    .line 14
    iput p6, p0, LW0/e;->f:I

    .line 15
    .line 16
    iput p7, p0, LW0/e;->g:I

    .line 17
    .line 18
    iput p8, p0, LW0/e;->h:I

    .line 19
    .line 20
    iput p9, p0, LW0/e;->i:I

    .line 21
    .line 22
    iput p10, p0, LW0/e;->j:I

    .line 23
    .line 24
    iput p11, p0, LW0/e;->k:F

    .line 25
    .line 26
    iput-object p12, p0, LW0/e;->l:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Lp0/E;)LW0/e;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    :try_start_0
    invoke-virtual {v0, v3}, Lp0/E;->M(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    and-int/2addr v5, v2

    .line 15
    add-int/lit8 v8, v5, 0x1

    .line 16
    .line 17
    if-eq v8, v2, :cond_3

    .line 18
    .line 19
    new-instance v7, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    and-int/lit8 v5, v5, 0x1f

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    iget v10, v0, Lp0/E;->b:I

    .line 38
    .line 39
    invoke-virtual {v0, v9}, Lp0/E;->M(I)V

    .line 40
    .line 41
    .line 42
    iget-object v11, v0, Lp0/E;->a:[B

    .line 43
    .line 44
    sget-object v12, Lp0/g;->a:[B

    .line 45
    .line 46
    add-int/lit8 v12, v9, 0x4

    .line 47
    .line 48
    new-array v12, v12, [B

    .line 49
    .line 50
    sget-object v13, Lp0/g;->a:[B

    .line 51
    .line 52
    invoke-static {v13, v1, v12, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    invoke-static {v11, v10, v12, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/2addr v6, v4

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v9, 0x0

    .line 71
    :goto_1
    if-ge v9, v6, :cond_1

    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    iget v11, v0, Lp0/E;->b:I

    .line 78
    .line 79
    invoke-virtual {v0, v10}, Lp0/E;->M(I)V

    .line 80
    .line 81
    .line 82
    iget-object v12, v0, Lp0/E;->a:[B

    .line 83
    .line 84
    sget-object v13, Lp0/g;->a:[B

    .line 85
    .line 86
    add-int/lit8 v13, v10, 0x4

    .line 87
    .line 88
    new-array v13, v13, [B

    .line 89
    .line 90
    sget-object v14, Lp0/g;->a:[B

    .line 91
    .line 92
    invoke-static {v14, v1, v13, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    invoke-static {v12, v11, v13, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/2addr v9, v4

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    if-lez v5, :cond_2

    .line 104
    .line 105
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, [B

    .line 110
    .line 111
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, [B

    .line 116
    .line 117
    sget-object v6, Lq0/p;->a:[B

    .line 118
    .line 119
    array-length v0, v0

    .line 120
    invoke-static {v3, v5, v0}, Lq0/p;->k(I[BI)Lq0/o;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget v3, v0, Lq0/o;->e:I

    .line 125
    .line 126
    iget v5, v0, Lq0/o;->f:I

    .line 127
    .line 128
    iget v6, v0, Lq0/o;->h:I

    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x8

    .line 131
    .line 132
    iget v9, v0, Lq0/o;->i:I

    .line 133
    .line 134
    add-int/lit8 v9, v9, 0x8

    .line 135
    .line 136
    iget v10, v0, Lq0/o;->p:I

    .line 137
    .line 138
    iget v11, v0, Lq0/o;->q:I

    .line 139
    .line 140
    iget v12, v0, Lq0/o;->r:I

    .line 141
    .line 142
    iget v13, v0, Lq0/o;->s:I

    .line 143
    .line 144
    iget v14, v0, Lq0/o;->g:F

    .line 145
    .line 146
    iget v15, v0, Lq0/o;->a:I

    .line 147
    .line 148
    iget v4, v0, Lq0/o;->b:I

    .line 149
    .line 150
    iget v0, v0, Lq0/o;->c:I

    .line 151
    .line 152
    sget-object v17, Lp0/g;->a:[B

    .line 153
    .line 154
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v15, v2, v1

    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    aput-object v4, v2, v1

    .line 172
    .line 173
    const/4 v1, 0x2

    .line 174
    aput-object v0, v2, v1

    .line 175
    .line 176
    const-string v0, "avc1.%02X%02X%02X"

    .line 177
    .line 178
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    move-object/from16 v18, v0

    .line 183
    .line 184
    move v15, v12

    .line 185
    move/from16 v16, v13

    .line 186
    .line 187
    move/from16 v17, v14

    .line 188
    .line 189
    move v12, v9

    .line 190
    move v13, v10

    .line 191
    move v14, v11

    .line 192
    move v9, v3

    .line 193
    move v10, v5

    .line 194
    move v11, v6

    .line 195
    goto :goto_2

    .line 196
    :cond_2
    const/4 v0, -0x1

    .line 197
    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    const/16 v3, 0x10

    .line 201
    .line 202
    move-object/from16 v18, v2

    .line 203
    .line 204
    const/4 v9, -0x1

    .line 205
    const/4 v10, -0x1

    .line 206
    const/4 v11, -0x1

    .line 207
    const/4 v12, -0x1

    .line 208
    const/4 v13, -0x1

    .line 209
    const/4 v14, -0x1

    .line 210
    const/4 v15, -0x1

    .line 211
    const/16 v16, 0x10

    .line 212
    .line 213
    const/high16 v17, 0x3f800000    # 1.0f

    .line 214
    .line 215
    :goto_2
    new-instance v0, LW0/e;

    .line 216
    .line 217
    move-object v6, v0

    .line 218
    invoke-direct/range {v6 .. v18}, LW0/e;-><init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-object v0

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 225
    .line 226
    .line 227
    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_3
    const-string v1, "Error parsing AVC config"

    .line 229
    .line 230
    invoke-static {v1, v0}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    throw v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/jr;)LW0/e;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    and-int/2addr v6, v3

    .line 16
    add-int/lit8 v9, v6, 0x1

    .line 17
    .line 18
    if-eq v9, v3, :cond_3

    .line 19
    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 26
    .line 27
    .line 28
    move-result v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    and-int/lit8 v7, v7, 0x1f

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    :goto_0
    sget-object v11, Lcom/google/android/gms/internal/ads/el;->d:[B

    .line 33
    .line 34
    if-ge v10, v7, :cond_0

    .line 35
    .line 36
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    iget v13, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 41
    .line 42
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 43
    .line 44
    .line 45
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 46
    .line 47
    add-int/lit8 v15, v12, 0x4

    .line 48
    .line 49
    new-array v15, v15, [B

    .line 50
    .line 51
    invoke-static {v11, v2, v15, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    invoke-static {v14, v13, v15, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/2addr v10, v5

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const/4 v12, 0x0

    .line 70
    :goto_1
    if-ge v12, v10, :cond_1

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    iget v14, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 77
    .line 78
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 79
    .line 80
    .line 81
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 82
    .line 83
    add-int/lit8 v3, v13, 0x4

    .line 84
    .line 85
    new-array v3, v3, [B

    .line 86
    .line 87
    invoke-static {v11, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    invoke-static {v15, v14, v3, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/2addr v12, v5

    .line 97
    const/4 v3, 0x3

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    if-lez v7, :cond_2

    .line 100
    .line 101
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, [B

    .line 106
    .line 107
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, [B

    .line 112
    .line 113
    array-length v0, v0

    .line 114
    add-int/2addr v6, v1

    .line 115
    invoke-static {v6, v3, v0}, Lcom/google/android/gms/internal/ads/sy;->e(I[BI)Lcom/google/android/gms/internal/ads/dy;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget v3, v0, Lcom/google/android/gms/internal/ads/dy;->e:I

    .line 120
    .line 121
    iget v4, v0, Lcom/google/android/gms/internal/ads/dy;->f:I

    .line 122
    .line 123
    iget v6, v0, Lcom/google/android/gms/internal/ads/dy;->h:I

    .line 124
    .line 125
    add-int/lit8 v6, v6, 0x8

    .line 126
    .line 127
    iget v7, v0, Lcom/google/android/gms/internal/ads/dy;->i:I

    .line 128
    .line 129
    add-int/lit8 v7, v7, 0x8

    .line 130
    .line 131
    iget v10, v0, Lcom/google/android/gms/internal/ads/dy;->j:I

    .line 132
    .line 133
    iget v11, v0, Lcom/google/android/gms/internal/ads/dy;->k:I

    .line 134
    .line 135
    iget v12, v0, Lcom/google/android/gms/internal/ads/dy;->l:I

    .line 136
    .line 137
    iget v13, v0, Lcom/google/android/gms/internal/ads/dy;->m:I

    .line 138
    .line 139
    iget v14, v0, Lcom/google/android/gms/internal/ads/dy;->g:F

    .line 140
    .line 141
    iget v15, v0, Lcom/google/android/gms/internal/ads/dy;->a:I

    .line 142
    .line 143
    iget v1, v0, Lcom/google/android/gms/internal/ads/dy;->b:I

    .line 144
    .line 145
    iget v0, v0, Lcom/google/android/gms/internal/ads/dy;->c:I

    .line 146
    .line 147
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v5, 0x3

    .line 160
    new-array v5, v5, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v15, v5, v2

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    aput-object v1, v5, v2

    .line 166
    .line 167
    const/4 v1, 0x2

    .line 168
    aput-object v0, v5, v1

    .line 169
    .line 170
    const-string v0, "avc1.%02X%02X%02X"

    .line 171
    .line 172
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object/from16 v19, v0

    .line 177
    .line 178
    move v15, v11

    .line 179
    move/from16 v16, v12

    .line 180
    .line 181
    move/from16 v17, v13

    .line 182
    .line 183
    move/from16 v18, v14

    .line 184
    .line 185
    move v11, v4

    .line 186
    move v12, v6

    .line 187
    move v13, v7

    .line 188
    move v14, v10

    .line 189
    move v10, v3

    .line 190
    goto :goto_2

    .line 191
    :cond_2
    const/4 v0, -0x1

    .line 192
    const/16 v1, 0x10

    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    const/high16 v3, 0x3f800000    # 1.0f

    .line 196
    .line 197
    move-object/from16 v19, v2

    .line 198
    .line 199
    const/4 v10, -0x1

    .line 200
    const/4 v11, -0x1

    .line 201
    const/4 v12, -0x1

    .line 202
    const/4 v13, -0x1

    .line 203
    const/4 v14, -0x1

    .line 204
    const/4 v15, -0x1

    .line 205
    const/16 v16, -0x1

    .line 206
    .line 207
    const/16 v17, 0x10

    .line 208
    .line 209
    const/high16 v18, 0x3f800000    # 1.0f

    .line 210
    .line 211
    :goto_2
    new-instance v0, LW0/e;

    .line 212
    .line 213
    move-object v7, v0

    .line 214
    invoke-direct/range {v7 .. v19}, LW0/e;-><init>(Ljava/util/ArrayList;IIIIIIIIIFLjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 221
    .line 222
    .line 223
    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :goto_3
    const-string v1, "Error parsing AVC config"

    .line 225
    .line 226
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    throw v0
.end method
