.class public abstract LW0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW0/h;LW0/j;JJJJJI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 3
    iput-object v1, v0, LW0/k;->c:Ljava/lang/Object;

    move/from16 v1, p13

    .line 4
    iput v1, v0, LW0/k;->a:I

    .line 5
    new-instance v13, LW0/f;

    move-object v1, v13

    move-object v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v1 .. v12}, LW0/f;-><init>(LW0/h;JJJJJ)V

    iput-object v13, v0, LW0/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/B;Lcom/google/android/gms/internal/ads/D;JJJJJI)V
    .locals 14

    .line 6
    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, LW0/k;->c:Ljava/lang/Object;

    move/from16 v1, p13

    iput v1, v0, LW0/k;->a:I

    new-instance v13, Lcom/google/android/gms/internal/ads/A;

    move-object v1, v13

    move-object v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/A;-><init>(Lcom/google/android/gms/internal/ads/B;JJJJJ)V

    iput-object v13, v0, LW0/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public static c(LW0/t;JLW0/w;)I
    .locals 2

    .line 1
    invoke-interface {p0}, LW0/t;->r()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, p1, v0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-wide p1, p3, LW0/w;->a:J

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public static final g(Lcom/google/android/gms/internal/ads/M;JLW0/w;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, p1, v0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-wide p1, p3, LW0/w;->a:J

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method


# virtual methods
.method public final a(LW0/t;LW0/w;)I
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :goto_0
    iget-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, LW0/g;

    .line 10
    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-wide v4, v3, LW0/g;->f:J

    .line 15
    .line 16
    iget-wide v6, v3, LW0/g;->g:J

    .line 17
    .line 18
    iget-wide v8, v3, LW0/g;->h:J

    .line 19
    .line 20
    sub-long/2addr v6, v4

    .line 21
    iget v10, v0, LW0/k;->a:I

    .line 22
    .line 23
    int-to-long v10, v10

    .line 24
    const/4 v12, 0x0

    .line 25
    iget-object v13, v0, LW0/k;->c:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    cmp-long v15, v6, v10

    .line 29
    .line 30
    if-gtz v15, :cond_0

    .line 31
    .line 32
    iput-object v12, v0, LW0/k;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v13, LW0/j;

    .line 35
    .line 36
    invoke-interface {v13}, LW0/j;->e()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4, v5, v14}, LW0/k;->b(JZ)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4, v5, v2}, LW0/k;->c(LW0/t;JLW0/w;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    return v1

    .line 47
    :cond_0
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    sub-long v4, v8, v4

    .line 52
    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    cmp-long v10, v4, v6

    .line 56
    .line 57
    if-ltz v10, :cond_6

    .line 58
    .line 59
    const-wide/32 v10, 0x40000

    .line 60
    .line 61
    .line 62
    cmp-long v15, v4, v10

    .line 63
    .line 64
    if-gtz v15, :cond_6

    .line 65
    .line 66
    long-to-int v5, v4

    .line 67
    invoke-interface {v1, v5}, LW0/t;->n(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface/range {p1 .. p1}, LW0/t;->m()V

    .line 71
    .line 72
    .line 73
    move-object v4, v13

    .line 74
    check-cast v4, LW0/j;

    .line 75
    .line 76
    iget-wide v14, v3, LW0/g;->b:J

    .line 77
    .line 78
    invoke-interface {v4, v1, v14, v15}, LW0/j;->a(LW0/t;J)LW0/i;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v14, -0x3

    .line 83
    iget v15, v4, LW0/i;->a:I

    .line 84
    .line 85
    if-eq v15, v14, :cond_5

    .line 86
    .line 87
    const/4 v5, -0x2

    .line 88
    iget-wide v8, v4, LW0/i;->b:J

    .line 89
    .line 90
    move-object/from16 v16, v13

    .line 91
    .line 92
    iget-wide v12, v4, LW0/i;->c:J

    .line 93
    .line 94
    if-eq v15, v5, :cond_4

    .line 95
    .line 96
    const/4 v4, -0x1

    .line 97
    if-eq v15, v4, :cond_3

    .line 98
    .line 99
    if-nez v15, :cond_2

    .line 100
    .line 101
    invoke-interface/range {p1 .. p1}, LW0/t;->r()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    sub-long v3, v12, v3

    .line 106
    .line 107
    cmp-long v5, v3, v6

    .line 108
    .line 109
    if-ltz v5, :cond_1

    .line 110
    .line 111
    cmp-long v5, v3, v10

    .line 112
    .line 113
    if-gtz v5, :cond_1

    .line 114
    .line 115
    long-to-int v4, v3

    .line 116
    invoke-interface {v1, v4}, LW0/t;->n(I)V

    .line 117
    .line 118
    .line 119
    :cond_1
    const/4 v3, 0x0

    .line 120
    iput-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 121
    .line 122
    move-object/from16 v3, v16

    .line 123
    .line 124
    check-cast v3, LW0/j;

    .line 125
    .line 126
    invoke-interface {v3}, LW0/j;->e()V

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-virtual {v0, v12, v13, v3}, LW0/k;->b(JZ)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v12, v13, v2}, LW0/k;->c(LW0/t;JLW0/w;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    return v1

    .line 138
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v2, "Invalid case"

    .line 141
    .line 142
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_3
    iput-wide v8, v3, LW0/g;->e:J

    .line 147
    .line 148
    iput-wide v12, v3, LW0/g;->g:J

    .line 149
    .line 150
    iget-wide v4, v3, LW0/g;->d:J

    .line 151
    .line 152
    iget-wide v6, v3, LW0/g;->f:J

    .line 153
    .line 154
    iget-wide v10, v3, LW0/g;->c:J

    .line 155
    .line 156
    iget-wide v14, v3, LW0/g;->b:J

    .line 157
    .line 158
    move-wide/from16 v16, v14

    .line 159
    .line 160
    move-wide/from16 v18, v4

    .line 161
    .line 162
    move-wide/from16 v20, v8

    .line 163
    .line 164
    move-wide/from16 v22, v6

    .line 165
    .line 166
    move-wide/from16 v24, v12

    .line 167
    .line 168
    move-wide/from16 v26, v10

    .line 169
    .line 170
    invoke-static/range {v16 .. v27}, LW0/g;->a(JJJJJJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    iput-wide v4, v3, LW0/g;->h:J

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_4
    iput-wide v8, v3, LW0/g;->d:J

    .line 179
    .line 180
    iput-wide v12, v3, LW0/g;->f:J

    .line 181
    .line 182
    iget-wide v4, v3, LW0/g;->e:J

    .line 183
    .line 184
    iget-wide v6, v3, LW0/g;->g:J

    .line 185
    .line 186
    iget-wide v10, v3, LW0/g;->c:J

    .line 187
    .line 188
    iget-wide v14, v3, LW0/g;->b:J

    .line 189
    .line 190
    move-wide/from16 v16, v14

    .line 191
    .line 192
    move-wide/from16 v18, v8

    .line 193
    .line 194
    move-wide/from16 v20, v4

    .line 195
    .line 196
    move-wide/from16 v22, v12

    .line 197
    .line 198
    move-wide/from16 v24, v6

    .line 199
    .line 200
    move-wide/from16 v26, v10

    .line 201
    .line 202
    invoke-static/range {v16 .. v27}, LW0/g;->a(JJJJJJ)J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    iput-wide v4, v3, LW0/g;->h:J

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_5
    move-object v3, v12

    .line 211
    move-object/from16 v16, v13

    .line 212
    .line 213
    iput-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 214
    .line 215
    move-object/from16 v13, v16

    .line 216
    .line 217
    check-cast v13, LW0/j;

    .line 218
    .line 219
    invoke-interface {v13}, LW0/j;->e()V

    .line 220
    .line 221
    .line 222
    const/4 v3, 0x0

    .line 223
    invoke-virtual {v0, v8, v9, v3}, LW0/k;->b(JZ)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v8, v9, v2}, LW0/k;->c(LW0/t;JLW0/w;)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    return v1

    .line 231
    :cond_6
    invoke-static {v1, v8, v9, v2}, LW0/k;->c(LW0/t;JLW0/w;)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    return v1
.end method

.method public b(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, LW0/k;->d:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v4, v1

    .line 8
    check-cast v4, LW0/g;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    check-cast v1, LW0/g;

    .line 13
    .line 14
    iget-wide v4, v1, LW0/g;->a:J

    .line 15
    .line 16
    cmp-long v1, v4, v2

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v14, LW0/g;

    .line 22
    .line 23
    iget-object v1, v0, LW0/k;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, LW0/f;

    .line 26
    .line 27
    iget-object v4, v1, LW0/f;->a:LW0/h;

    .line 28
    .line 29
    invoke-interface {v4, v2, v3}, LW0/h;->b(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-wide v6, v1, LW0/f;->c:J

    .line 34
    .line 35
    iget-wide v8, v1, LW0/f;->d:J

    .line 36
    .line 37
    iget-wide v10, v1, LW0/f;->e:J

    .line 38
    .line 39
    iget-wide v12, v1, LW0/f;->f:J

    .line 40
    .line 41
    move-wide v15, v12

    .line 42
    iget-wide v12, v1, LW0/f;->g:J

    .line 43
    .line 44
    move-object v1, v14

    .line 45
    move-wide/from16 v2, p1

    .line 46
    .line 47
    move-wide/from16 v17, v12

    .line 48
    .line 49
    move-wide v12, v15

    .line 50
    move-object/from16 v19, v14

    .line 51
    .line 52
    move-wide/from16 v14, v17

    .line 53
    .line 54
    invoke-direct/range {v1 .. v15}, LW0/g;-><init>(JJJJJJJ)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v1, v19

    .line 58
    .line 59
    iput-object v1, v0, LW0/k;->d:Ljava/lang/Object;

    .line 60
    .line 61
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    :goto_0
    iget-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, LW0/g;

    .line 10
    .line 11
    invoke-static {v3}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-wide v4, v3, LW0/g;->f:J

    .line 15
    .line 16
    iget-wide v6, v3, LW0/g;->g:J

    .line 17
    .line 18
    iget-wide v8, v3, LW0/g;->h:J

    .line 19
    .line 20
    sub-long/2addr v6, v4

    .line 21
    iget v10, v0, LW0/k;->a:I

    .line 22
    .line 23
    int-to-long v10, v10

    .line 24
    const/4 v12, 0x0

    .line 25
    iget-object v13, v0, LW0/k;->c:Ljava/lang/Object;

    .line 26
    .line 27
    cmp-long v14, v6, v10

    .line 28
    .line 29
    if-gtz v14, :cond_0

    .line 30
    .line 31
    iput-object v12, v0, LW0/k;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v13, Lcom/google/android/gms/internal/ads/D;

    .line 34
    .line 35
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/D;->zzb()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v4, v5, v2}, LW0/k;->g(Lcom/google/android/gms/internal/ads/M;JLW0/w;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    return v1

    .line 43
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    sub-long v4, v8, v4

    .line 48
    .line 49
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    cmp-long v10, v4, v6

    .line 52
    .line 53
    if-ltz v10, :cond_5

    .line 54
    .line 55
    const-wide/32 v10, 0x40000

    .line 56
    .line 57
    .line 58
    cmp-long v14, v4, v10

    .line 59
    .line 60
    if-gtz v14, :cond_5

    .line 61
    .line 62
    long-to-int v5, v4

    .line 63
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 67
    .line 68
    .line 69
    move-object v4, v13

    .line 70
    check-cast v4, Lcom/google/android/gms/internal/ads/D;

    .line 71
    .line 72
    iget-wide v14, v3, LW0/g;->b:J

    .line 73
    .line 74
    invoke-interface {v4, v1, v14, v15}, Lcom/google/android/gms/internal/ads/D;->e(Lcom/google/android/gms/internal/ads/M;J)Lcom/google/android/gms/internal/ads/C;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v5, -0x3

    .line 79
    iget v14, v4, Lcom/google/android/gms/internal/ads/C;->a:I

    .line 80
    .line 81
    if-eq v14, v5, :cond_4

    .line 82
    .line 83
    const/4 v5, -0x2

    .line 84
    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/C;->b:J

    .line 85
    .line 86
    move-object/from16 v16, v13

    .line 87
    .line 88
    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/C;->c:J

    .line 89
    .line 90
    if-eq v14, v5, :cond_3

    .line 91
    .line 92
    const/4 v4, -0x1

    .line 93
    if-eq v14, v4, :cond_2

    .line 94
    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    sub-long v3, v12, v3

    .line 100
    .line 101
    cmp-long v5, v3, v6

    .line 102
    .line 103
    if-ltz v5, :cond_1

    .line 104
    .line 105
    cmp-long v5, v3, v10

    .line 106
    .line 107
    if-gtz v5, :cond_1

    .line 108
    .line 109
    long-to-int v4, v3

    .line 110
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 111
    .line 112
    .line 113
    :cond_1
    const/4 v3, 0x0

    .line 114
    iput-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 115
    .line 116
    move-object/from16 v3, v16

    .line 117
    .line 118
    check-cast v3, Lcom/google/android/gms/internal/ads/D;

    .line 119
    .line 120
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/D;->zzb()V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v12, v13, v2}, LW0/k;->g(Lcom/google/android/gms/internal/ads/M;JLW0/w;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    return v1

    .line 128
    :cond_2
    iput-wide v8, v3, LW0/g;->e:J

    .line 129
    .line 130
    iput-wide v12, v3, LW0/g;->g:J

    .line 131
    .line 132
    iget-wide v4, v3, LW0/g;->d:J

    .line 133
    .line 134
    iget-wide v6, v3, LW0/g;->f:J

    .line 135
    .line 136
    iget-wide v10, v3, LW0/g;->c:J

    .line 137
    .line 138
    iget-wide v14, v3, LW0/g;->b:J

    .line 139
    .line 140
    move-wide v15, v14

    .line 141
    move-wide/from16 v17, v4

    .line 142
    .line 143
    move-wide/from16 v19, v8

    .line 144
    .line 145
    move-wide/from16 v21, v6

    .line 146
    .line 147
    move-wide/from16 v23, v12

    .line 148
    .line 149
    move-wide/from16 v25, v10

    .line 150
    .line 151
    invoke-static/range {v15 .. v26}, LW0/g;->b(JJJJJJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    iput-wide v4, v3, LW0/g;->h:J

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_3
    iput-wide v8, v3, LW0/g;->d:J

    .line 160
    .line 161
    iput-wide v12, v3, LW0/g;->f:J

    .line 162
    .line 163
    iget-wide v4, v3, LW0/g;->e:J

    .line 164
    .line 165
    iget-wide v6, v3, LW0/g;->g:J

    .line 166
    .line 167
    iget-wide v10, v3, LW0/g;->c:J

    .line 168
    .line 169
    iget-wide v14, v3, LW0/g;->b:J

    .line 170
    .line 171
    move-wide v15, v14

    .line 172
    move-wide/from16 v17, v8

    .line 173
    .line 174
    move-wide/from16 v19, v4

    .line 175
    .line 176
    move-wide/from16 v21, v12

    .line 177
    .line 178
    move-wide/from16 v23, v6

    .line 179
    .line 180
    move-wide/from16 v25, v10

    .line 181
    .line 182
    invoke-static/range {v15 .. v26}, LW0/g;->b(JJJJJJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v4

    .line 186
    iput-wide v4, v3, LW0/g;->h:J

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_4
    move-object v3, v12

    .line 191
    move-object/from16 v16, v13

    .line 192
    .line 193
    iput-object v3, v0, LW0/k;->d:Ljava/lang/Object;

    .line 194
    .line 195
    move-object/from16 v13, v16

    .line 196
    .line 197
    check-cast v13, Lcom/google/android/gms/internal/ads/D;

    .line 198
    .line 199
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/D;->zzb()V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v8, v9, v2}, LW0/k;->g(Lcom/google/android/gms/internal/ads/M;JLW0/w;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    return v1

    .line 207
    :cond_5
    invoke-static {v1, v8, v9, v2}, LW0/k;->g(Lcom/google/android/gms/internal/ads/M;JLW0/w;)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    return v1
.end method

.method public final f(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v2, p1

    .line 3
    .line 4
    iget-object v1, v0, LW0/k;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, LW0/g;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-wide v4, v1, LW0/g;->a:J

    .line 11
    .line 12
    cmp-long v1, v4, v2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, LW0/k;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/ads/A;

    .line 20
    .line 21
    new-instance v14, LW0/g;

    .line 22
    .line 23
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/A;->a:Lcom/google/android/gms/internal/ads/B;

    .line 24
    .line 25
    invoke-interface {v4, v2, v3}, Lcom/google/android/gms/internal/ads/B;->c(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/A;->c:J

    .line 30
    .line 31
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/A;->e:J

    .line 32
    .line 33
    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/A;->f:J

    .line 34
    .line 35
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/A;->d:J

    .line 36
    .line 37
    move-object v1, v14

    .line 38
    move-wide/from16 v2, p1

    .line 39
    .line 40
    invoke-direct/range {v1 .. v13}, LW0/g;-><init>(JJJJJJ)V

    .line 41
    .line 42
    .line 43
    iput-object v14, v0, LW0/k;->d:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method
