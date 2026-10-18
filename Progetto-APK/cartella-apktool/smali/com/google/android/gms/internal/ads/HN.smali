.class public final Lcom/google/android/gms/internal/ads/HN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/UN;


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/KN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/KN;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/HN;->b:Lcom/google/android/gms/internal/ads/KN;

    iput p2, p0, Lcom/google/android/gms/internal/ads/HN;->a:I

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HN;->b:Lcom/google/android/gms/internal/ads/KN;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/HN;->a:I

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/KN;->v()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_4

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/KN;->r(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget v5, v2, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget v7, v2, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 30
    .line 31
    iget v8, v2, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 32
    .line 33
    if-eq v7, v8, :cond_4

    .line 34
    .line 35
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 36
    .line 37
    aget-wide v9, v7, v6

    .line 38
    .line 39
    cmp-long v7, p1, v9

    .line 40
    .line 41
    if-gez v7, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/TN;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    cmp-long v7, p1, v9

    .line 47
    .line 48
    if-lez v7, :cond_3

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sub-int/2addr v8, v5

    .line 54
    monitor-exit v2

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_0
    sub-int v7, v8, v5

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    move-object v4, v2

    .line 60
    move v5, v6

    .line 61
    move v6, v7

    .line 62
    move-wide v7, p1

    .line 63
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TN;->g(IIJZ)I

    .line 64
    .line 65
    .line 66
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const/4 p1, -0x1

    .line 68
    monitor-exit v2

    .line 69
    if-ne v8, p1, :cond_5

    .line 70
    .line 71
    :goto_1
    const/4 v8, 0x0

    .line 72
    goto :goto_3

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_5

    .line 75
    :cond_4
    :goto_2
    monitor-exit v2

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    :goto_3
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/TN;->p(I)V

    .line 78
    .line 79
    .line 80
    if-nez v8, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/KN;->s(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    move v3, v8

    .line 87
    :goto_4
    return v3

    .line 88
    :goto_5
    monitor-exit v2

    .line 89
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/HN;->b:Lcom/google/android/gms/internal/ads/KN;

    .line 8
    .line 9
    iget v4, v1, Lcom/google/android/gms/internal/ads/HN;->a:I

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/KN;->v()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, -0x3

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/KN;->r(I)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 24
    .line 25
    aget-object v5, v5, v4

    .line 26
    .line 27
    iget-boolean v7, v3, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v8, p3, 0x2

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x1

    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v8, 0x0

    .line 41
    :goto_0
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/TN;->b:Lt0/d;

    .line 42
    .line 43
    monitor-enter v5

    .line 44
    :try_start_0
    iput-boolean v9, v2, Lcom/google/android/gms/internal/ads/VJ;->f:Z

    .line 45
    .line 46
    iget v12, v5, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 47
    .line 48
    iget v13, v5, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 49
    .line 50
    if-eq v12, v13, :cond_2

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    :cond_2
    const/4 v13, 0x4

    .line 54
    const/4 v14, -0x4

    .line 55
    if-nez v9, :cond_7

    .line 56
    .line 57
    if-nez v7, :cond_6

    .line 58
    .line 59
    iget-boolean v7, v5, Lcom/google/android/gms/internal/ads/TN;->u:Z

    .line 60
    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;

    .line 65
    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    if-nez v8, :cond_4

    .line 69
    .line 70
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 71
    .line 72
    if-eq v7, v8, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_b

    .line 77
    .line 78
    :cond_4
    :goto_1
    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/TN;->j(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/Om;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    monitor-exit v5

    .line 82
    :goto_2
    const/4 v15, -0x5

    .line 83
    goto :goto_7

    .line 84
    :cond_5
    monitor-exit v5

    .line 85
    :goto_3
    const/4 v15, -0x3

    .line 86
    goto :goto_7

    .line 87
    :cond_6
    :goto_4
    :try_start_1
    iput v13, v2, Lq0/e;->b:I

    .line 88
    .line 89
    const-wide/high16 v7, -0x8000000000000000L

    .line 90
    .line 91
    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/VJ;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    monitor-exit v5

    .line 94
    :goto_5
    const/4 v15, -0x4

    .line 95
    goto :goto_7

    .line 96
    :cond_7
    :try_start_2
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/TN;->c:Lcom/google/android/gms/internal/ads/YN;

    .line 97
    .line 98
    iget v15, v5, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 99
    .line 100
    add-int/2addr v15, v12

    .line 101
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/YN;->a(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Lcom/google/android/gms/internal/ads/RN;

    .line 106
    .line 107
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/RN;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 108
    .line 109
    if-nez v8, :cond_c

    .line 110
    .line 111
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/TN;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 112
    .line 113
    if-eq v9, v8, :cond_8

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    iget v0, v5, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 117
    .line 118
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/TN;->h(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 123
    .line 124
    if-eqz v8, :cond_9

    .line 125
    .line 126
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 127
    .line 128
    aget v0, v7, v0

    .line 129
    .line 130
    iput-boolean v10, v2, Lcom/google/android/gms/internal/ads/VJ;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    monitor-exit v5

    .line 133
    goto :goto_3

    .line 134
    :cond_9
    :try_start_3
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/TN;->k:[I

    .line 135
    .line 136
    aget v8, v8, v0

    .line 137
    .line 138
    iput v8, v2, Lq0/e;->b:I

    .line 139
    .line 140
    iget v9, v5, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 141
    .line 142
    iget v12, v5, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 143
    .line 144
    add-int/lit8 v12, v12, -0x1

    .line 145
    .line 146
    if-ne v9, v12, :cond_b

    .line 147
    .line 148
    if-nez v7, :cond_a

    .line 149
    .line 150
    iget-boolean v7, v5, Lcom/google/android/gms/internal/ads/TN;->u:Z

    .line 151
    .line 152
    if-eqz v7, :cond_b

    .line 153
    .line 154
    :cond_a
    const/high16 v7, 0x20000000

    .line 155
    .line 156
    or-int/2addr v7, v8

    .line 157
    iput v7, v2, Lq0/e;->b:I

    .line 158
    .line 159
    :cond_b
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 160
    .line 161
    aget-wide v8, v7, v0

    .line 162
    .line 163
    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 164
    .line 165
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->j:[I

    .line 166
    .line 167
    aget v7, v7, v0

    .line 168
    .line 169
    iput v7, v11, Lt0/d;->H:I

    .line 170
    .line 171
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->i:[J

    .line 172
    .line 173
    aget-wide v8, v7, v0

    .line 174
    .line 175
    iput-wide v8, v11, Lt0/d;->I:J

    .line 176
    .line 177
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->m:[Lcom/google/android/gms/internal/ads/d0;

    .line 178
    .line 179
    aget-object v0, v7, v0

    .line 180
    .line 181
    iput-object v0, v11, Lt0/d;->J:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .line 183
    monitor-exit v5

    .line 184
    goto :goto_5

    .line 185
    :cond_c
    :goto_6
    :try_start_4
    invoke-virtual {v5, v9, v0}, Lcom/google/android/gms/internal/ads/TN;->j(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/Om;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    .line 187
    .line 188
    monitor-exit v5

    .line 189
    goto :goto_2

    .line 190
    :goto_7
    if-ne v15, v14, :cond_10

    .line 191
    .line 192
    invoke-virtual {v2, v13}, Lq0/e;->b(I)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_11

    .line 197
    .line 198
    and-int/lit8 v0, p3, 0x1

    .line 199
    .line 200
    and-int/lit8 v7, p3, 0x4

    .line 201
    .line 202
    if-nez v7, :cond_e

    .line 203
    .line 204
    if-eqz v0, :cond_d

    .line 205
    .line 206
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 207
    .line 208
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/TN;->b:Lt0/d;

    .line 209
    .line 210
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/QN;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 213
    .line 214
    invoke-static {v0, v2, v5, v7}, Lcom/google/android/gms/internal/ads/QN;->e(Lcom/google/android/gms/internal/ads/PN;Lcom/google/android/gms/internal/ads/VJ;Lt0/d;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/PN;

    .line 215
    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_d
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 219
    .line 220
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/TN;->b:Lt0/d;

    .line 221
    .line 222
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/QN;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 223
    .line 224
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 225
    .line 226
    invoke-static {v9, v2, v7, v8}, Lcom/google/android/gms/internal/ads/QN;->e(Lcom/google/android/gms/internal/ads/PN;Lcom/google/android/gms/internal/ads/VJ;Lt0/d;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/PN;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/QN;->c:Lcom/google/android/gms/internal/ads/PN;

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_e
    if-eqz v0, :cond_f

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_f
    :goto_8
    iget v0, v5, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 237
    .line 238
    add-int/2addr v0, v10

    .line 239
    iput v0, v5, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_10
    move v14, v15

    .line 243
    :cond_11
    :goto_9
    if-ne v14, v6, :cond_12

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/KN;->s(I)V

    .line 246
    .line 247
    .line 248
    :cond_12
    move v6, v14

    .line 249
    :goto_a
    return v6

    .line 250
    :goto_b
    monitor-exit v5

    .line 251
    throw v0
.end method

.method public final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HN;->b:Lcom/google/android/gms/internal/ads/KN;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/HN;->a:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/TN;->A:Lcom/google/android/gms/internal/ads/yM;

    .line 10
    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    iget v1, v0, Lcom/google/android/gms/internal/ads/KN;->g0:I

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 24
    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget v0, v0, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 36
    .line 37
    if-gt v0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    throw v2

    .line 41
    :cond_2
    :goto_1
    return-void

    .line 42
    :cond_3
    throw v2

    .line 43
    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/yM;->a:Lcom/google/android/gms/internal/ads/tM;

    .line 44
    .line 45
    throw v0
.end method

.method public final zze()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/HN;->b:Lcom/google/android/gms/internal/ads/KN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/KN;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/HN;->a:I

    .line 12
    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/TN;->q(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method
