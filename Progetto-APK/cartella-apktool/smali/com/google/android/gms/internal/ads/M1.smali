.class public final Lcom/google/android/gms/internal/ads/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v2, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq p1, v3, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/A2;

    .line 19
    .line 20
    invoke-direct {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/A2;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 26
    .line 27
    const/16 v0, 0x4000

    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/google/android/gms/internal/ads/A2;

    .line 39
    .line 40
    invoke-direct {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/A2;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 44
    .line 45
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 46
    .line 47
    const/16 v0, 0xae2

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/N1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/N1;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/N1;->a(Lcom/google/android/gms/internal/ads/M;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v2, v0, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    and-int/2addr v2, v4

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 35
    .line 36
    invoke-interface {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, 0x5

    .line 47
    if-lt p1, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x7f

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    const-wide/32 v6, 0x464c4143

    .line 62
    .line 63
    .line 64
    cmp-long p1, v4, v6

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    new-instance p1, Lcom/google/android/gms/internal/ads/L1;

    .line 69
    .line 70
    invoke-direct {p1, v1}, Lp1/j;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 77
    .line 78
    .line 79
    :try_start_0
    invoke-static {v1, v2, v1}, La7/b;->u(ILcom/google/android/gms/internal/ads/jr;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Ka; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Lcom/google/android/gms/internal/ads/R1;

    .line 86
    .line 87
    invoke-direct {p1, v1}, Lp1/j;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lcom/google/android/gms/internal/ads/P1;->o:[B

    .line 97
    .line 98
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/P1;->i(Lcom/google/android/gms/internal/ads/jr;[B)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    new-instance p1, Lcom/google/android/gms/internal/ads/P1;

    .line 105
    .line 106
    invoke-direct {p1, v1}, Lp1/j;-><init>(I)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 110
    .line 111
    :goto_0
    return v1

    .line 112
    :cond_3
    :goto_1
    return v3
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x4

    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 21
    .line 22
    const/16 v9, 0x4000

    .line 23
    .line 24
    invoke-interface {v1, v2, v8, v9}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v7, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 34
    .line 35
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lcom/google/android/gms/internal/ads/A2;

    .line 52
    .line 53
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/A2;->d(IJ)V

    .line 54
    .line 55
    .line 56
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 57
    .line 58
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lcom/google/android/gms/internal/ads/A2;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/A2;->b(Lcom/google/android/gms/internal/ads/jr;)V

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    :goto_0
    return v7

    .line 71
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 76
    .line 77
    const/16 v9, 0xae2

    .line 78
    .line 79
    invoke-interface {v1, v2, v8, v9}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ne v1, v7, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 89
    .line 90
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/jr;->i(I)V

    .line 98
    .line 99
    .line 100
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 101
    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Lcom/google/android/gms/internal/ads/A2;

    .line 107
    .line 108
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/A2;->d(IJ)V

    .line 109
    .line 110
    .line 111
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 112
    .line 113
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Lcom/google/android/gms/internal/ads/A2;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/A2;->b(Lcom/google/android/gms/internal/ads/jr;)V

    .line 122
    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    :goto_1
    return v7

    .line 126
    :pswitch_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, Lcom/google/android/gms/internal/ads/N;

    .line 129
    .line 130
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lp1/j;

    .line 136
    .line 137
    if-nez v2, :cond_5

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/M1;->a(Lcom/google/android/gms/internal/ads/M;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    const-string v1, "Failed to determine bitstream type"

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    throw v1

    .line 157
    :cond_5
    :goto_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 158
    .line 159
    if-nez v2, :cond_6

    .line 160
    .line 161
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v2, Lcom/google/android/gms/internal/ads/N;

    .line 164
    .line 165
    invoke-interface {v2, v8, v3}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v9, Lcom/google/android/gms/internal/ads/N;

    .line 172
    .line 173
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 174
    .line 175
    .line 176
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v9, Lp1/j;

    .line 179
    .line 180
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v10, Lcom/google/android/gms/internal/ads/N;

    .line 183
    .line 184
    iput-object v10, v9, Lp1/j;->k:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v2, v9, Lp1/j;->j:Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {v9, v3}, Lp1/j;->f(Z)V

    .line 189
    .line 190
    .line 191
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 192
    .line 193
    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Lp1/j;

    .line 196
    .line 197
    iget-object v9, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v9, Lcom/google/android/gms/internal/ads/e0;

    .line 200
    .line 201
    invoke-static {v9}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sget v9, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 205
    .line 206
    iget v9, v2, Lp1/j;->d:I

    .line 207
    .line 208
    iget-object v10, v2, Lp1/j;->i:Lp1/f;

    .line 209
    .line 210
    const/4 v11, 0x3

    .line 211
    const-wide/16 v12, -0x1

    .line 212
    .line 213
    const/4 v15, 0x2

    .line 214
    if-eqz v9, :cond_f

    .line 215
    .line 216
    if-eq v9, v3, :cond_e

    .line 217
    .line 218
    if-eq v9, v15, :cond_7

    .line 219
    .line 220
    :goto_3
    const/4 v3, -0x1

    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_7
    iget-object v4, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v4, Lcom/google/android/gms/internal/ads/O1;

    .line 226
    .line 227
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/O1;->a(Lcom/google/android/gms/internal/ads/M;)J

    .line 228
    .line 229
    .line 230
    move-result-wide v14

    .line 231
    cmp-long v4, v14, v5

    .line 232
    .line 233
    if-ltz v4, :cond_8

    .line 234
    .line 235
    move-object/from16 v4, p2

    .line 236
    .line 237
    iput-wide v14, v4, LW0/w;->a:J

    .line 238
    .line 239
    goto/16 :goto_a

    .line 240
    .line 241
    :cond_8
    cmp-long v4, v14, v12

    .line 242
    .line 243
    if-gez v4, :cond_9

    .line 244
    .line 245
    const-wide/16 v16, 0x2

    .line 246
    .line 247
    add-long v14, v14, v16

    .line 248
    .line 249
    neg-long v14, v14

    .line 250
    invoke-virtual {v2, v14, v15}, Lp1/j;->h(J)V

    .line 251
    .line 252
    .line 253
    :cond_9
    iget-boolean v4, v2, Lp1/j;->g:Z

    .line 254
    .line 255
    if-nez v4, :cond_a

    .line 256
    .line 257
    iget-object v4, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v4, Lcom/google/android/gms/internal/ads/O1;

    .line 260
    .line 261
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/O1;->zze()Lcom/google/android/gms/internal/ads/Y;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v9, v2, Lp1/j;->k:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v9, Lcom/google/android/gms/internal/ads/N;

    .line 271
    .line 272
    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 273
    .line 274
    .line 275
    iput-boolean v3, v2, Lp1/j;->g:Z

    .line 276
    .line 277
    :cond_a
    iget-wide v3, v2, Lp1/j;->f:J

    .line 278
    .line 279
    cmp-long v9, v3, v5

    .line 280
    .line 281
    if-gtz v9, :cond_c

    .line 282
    .line 283
    invoke-virtual {v10, v1}, Lp1/f;->c(Lcom/google/android/gms/internal/ads/M;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_b
    iput v11, v2, Lp1/j;->d:I

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_c
    :goto_4
    iput-wide v5, v2, Lp1/j;->f:J

    .line 294
    .line 295
    iget-object v1, v10, Lp1/f;->e:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v1, Lcom/google/android/gms/internal/ads/jr;

    .line 298
    .line 299
    invoke-virtual {v2, v1}, Lp1/j;->e(Lcom/google/android/gms/internal/ads/jr;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v3

    .line 303
    cmp-long v7, v3, v5

    .line 304
    .line 305
    if-ltz v7, :cond_d

    .line 306
    .line 307
    iget-wide v5, v2, Lp1/j;->c:J

    .line 308
    .line 309
    add-long v9, v5, v3

    .line 310
    .line 311
    iget-wide v14, v2, Lp1/j;->a:J

    .line 312
    .line 313
    cmp-long v7, v9, v14

    .line 314
    .line 315
    if-ltz v7, :cond_d

    .line 316
    .line 317
    iget v7, v2, Lp1/j;->e:I

    .line 318
    .line 319
    int-to-long v9, v7

    .line 320
    const-wide/32 v14, 0xf4240

    .line 321
    .line 322
    .line 323
    mul-long v5, v5, v14

    .line 324
    .line 325
    div-long v15, v5, v9

    .line 326
    .line 327
    iget-object v5, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v5, Lcom/google/android/gms/internal/ads/e0;

    .line 330
    .line 331
    iget v6, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 332
    .line 333
    invoke-interface {v5, v6, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 334
    .line 335
    .line 336
    iget-object v5, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 337
    .line 338
    move-object v14, v5

    .line 339
    check-cast v14, Lcom/google/android/gms/internal/ads/e0;

    .line 340
    .line 341
    iget v1, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 342
    .line 343
    const/16 v19, 0x0

    .line 344
    .line 345
    const/16 v20, 0x0

    .line 346
    .line 347
    const/16 v17, 0x1

    .line 348
    .line 349
    move/from16 v18, v1

    .line 350
    .line 351
    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 352
    .line 353
    .line 354
    iput-wide v12, v2, Lp1/j;->a:J

    .line 355
    .line 356
    :cond_d
    iget-wide v5, v2, Lp1/j;->c:J

    .line 357
    .line 358
    add-long/2addr v5, v3

    .line 359
    iput-wide v5, v2, Lp1/j;->c:J

    .line 360
    .line 361
    :goto_5
    const/4 v3, 0x0

    .line 362
    goto/16 :goto_a

    .line 363
    .line 364
    :cond_e
    iget-wide v3, v2, Lp1/j;->b:J

    .line 365
    .line 366
    long-to-int v4, v3

    .line 367
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 368
    .line 369
    .line 370
    iput v15, v2, Lp1/j;->d:I

    .line 371
    .line 372
    goto/16 :goto_b

    .line 373
    .line 374
    :cond_f
    :goto_6
    invoke-virtual {v10, v1}, Lp1/f;->c(Lcom/google/android/gms/internal/ads/M;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-nez v5, :cond_10

    .line 379
    .line 380
    iput v11, v2, Lp1/j;->d:I

    .line 381
    .line 382
    goto/16 :goto_3

    .line 383
    .line 384
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 385
    .line 386
    .line 387
    move-result-wide v5

    .line 388
    iget-wide v7, v2, Lp1/j;->b:J

    .line 389
    .line 390
    sub-long/2addr v5, v7

    .line 391
    iput-wide v5, v2, Lp1/j;->f:J

    .line 392
    .line 393
    iget-object v5, v10, Lp1/f;->e:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v5, Lcom/google/android/gms/internal/ads/jr;

    .line 396
    .line 397
    iget-object v6, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v6, Lcom/google/android/gms/internal/ads/x;

    .line 400
    .line 401
    invoke-virtual {v2, v5, v7, v8, v6}, Lp1/j;->g(Lcom/google/android/gms/internal/ads/jr;JLcom/google/android/gms/internal/ads/x;)Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    if-eqz v6, :cond_11

    .line 406
    .line 407
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 408
    .line 409
    .line 410
    move-result-wide v5

    .line 411
    iput-wide v5, v2, Lp1/j;->b:J

    .line 412
    .line 413
    const/4 v7, -0x1

    .line 414
    const/4 v8, 0x0

    .line 415
    goto :goto_6

    .line 416
    :cond_11
    iget-object v6, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v6, Lcom/google/android/gms/internal/ads/x;

    .line 419
    .line 420
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v6, Lcom/google/android/gms/internal/ads/p0;

    .line 423
    .line 424
    iget v7, v6, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 425
    .line 426
    iput v7, v2, Lp1/j;->e:I

    .line 427
    .line 428
    iget-boolean v7, v2, Lp1/j;->h:Z

    .line 429
    .line 430
    if-nez v7, :cond_12

    .line 431
    .line 432
    iget-object v7, v2, Lp1/j;->j:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v7, Lcom/google/android/gms/internal/ads/e0;

    .line 435
    .line 436
    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 437
    .line 438
    .line 439
    iput-boolean v3, v2, Lp1/j;->h:Z

    .line 440
    .line 441
    :cond_12
    iget-object v6, v2, Lp1/j;->m:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v6, Lcom/google/android/gms/internal/ads/x;

    .line 444
    .line 445
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v6, Lcom/google/android/gms/internal/ads/O1;

    .line 448
    .line 449
    if-eqz v6, :cond_13

    .line 450
    .line 451
    iput-object v6, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 452
    .line 453
    :goto_7
    const/4 v1, 0x2

    .line 454
    goto :goto_9

    .line 455
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 456
    .line 457
    .line 458
    move-result-wide v6

    .line 459
    cmp-long v8, v6, v12

    .line 460
    .line 461
    if-nez v8, :cond_14

    .line 462
    .line 463
    new-instance v1, Lcom/google/android/gms/internal/ads/y1;

    .line 464
    .line 465
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 466
    .line 467
    .line 468
    iput-object v1, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_14
    iget-object v6, v10, Lp1/f;->d:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v6, Lcom/google/android/gms/internal/ads/N1;

    .line 474
    .line 475
    iget v7, v6, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 476
    .line 477
    and-int/2addr v4, v7

    .line 478
    if-eqz v4, :cond_15

    .line 479
    .line 480
    const/16 v19, 0x1

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_15
    const/16 v19, 0x0

    .line 484
    .line 485
    :goto_8
    new-instance v3, Lcom/google/android/gms/internal/ads/I1;

    .line 486
    .line 487
    iget-wide v11, v2, Lp1/j;->b:J

    .line 488
    .line 489
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 490
    .line 491
    .line 492
    move-result-wide v13

    .line 493
    iget v1, v6, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 494
    .line 495
    iget v4, v6, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 496
    .line 497
    add-int/2addr v1, v4

    .line 498
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 499
    .line 500
    int-to-long v8, v1

    .line 501
    move-wide/from16 v16, v8

    .line 502
    .line 503
    move-object v9, v3

    .line 504
    move-object v10, v2

    .line 505
    const/4 v1, 0x2

    .line 506
    move-wide/from16 v15, v16

    .line 507
    .line 508
    move-wide/from16 v17, v6

    .line 509
    .line 510
    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/I1;-><init>(Lp1/j;JJJJZ)V

    .line 511
    .line 512
    .line 513
    iput-object v3, v2, Lp1/j;->l:Ljava/lang/Object;

    .line 514
    .line 515
    :goto_9
    iput v1, v2, Lp1/j;->d:I

    .line 516
    .line 517
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 518
    .line 519
    array-length v2, v1

    .line 520
    const v3, 0xfe01

    .line 521
    .line 522
    .line 523
    if-ne v2, v3, :cond_16

    .line 524
    .line 525
    goto/16 :goto_5

    .line 526
    .line 527
    :cond_16
    iget v2, v5, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 528
    .line 529
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    iget v2, v5, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 538
    .line 539
    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :goto_a
    move v8, v3

    .line 545
    :goto_b
    return v8

    .line 546
    nop

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 4
    .line 5
    const/4 v5, 0x4

    .line 6
    const/16 v6, 0x2000

    .line 7
    .line 8
    const/4 v7, 0x7

    .line 9
    const/4 v8, 0x3

    .line 10
    const v9, 0x494433

    .line 11
    .line 12
    .line 13
    const/4 v10, 0x2

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, 0x1

    .line 16
    const/16 v13, 0xa

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/jr;

    .line 22
    .line 23
    invoke-direct {v1, v13}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    :goto_0
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 28
    .line 29
    move-object/from16 v4, p1

    .line 30
    .line 31
    check-cast v4, Lcom/google/android/gms/internal/ads/F;

    .line 32
    .line 33
    invoke-virtual {v4, v15, v11, v13, v11}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 40
    .line 41
    .line 42
    move-result v15

    .line 43
    if-eq v15, v9, :cond_7

    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 46
    .line 47
    .line 48
    move-object/from16 v15, p1

    .line 49
    .line 50
    check-cast v15, Lcom/google/android/gms/internal/ads/F;

    .line 51
    .line 52
    invoke-virtual {v15, v14, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 53
    .line 54
    .line 55
    move v9, v14

    .line 56
    :goto_1
    const/4 v4, 0x0

    .line 57
    :goto_2
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 58
    .line 59
    invoke-virtual {v15, v13, v11, v7, v11}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    const v2, 0xac40

    .line 70
    .line 71
    .line 72
    const v3, 0xac41

    .line 73
    .line 74
    .line 75
    if-eq v13, v2, :cond_0

    .line 76
    .line 77
    if-eq v13, v3, :cond_0

    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    sub-int v2, v9, v14

    .line 85
    .line 86
    if-ge v2, v6, :cond_5

    .line 87
    .line 88
    invoke-virtual {v15, v9, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    add-int/2addr v4, v12

    .line 93
    if-lt v4, v5, :cond_1

    .line 94
    .line 95
    const/4 v11, 0x1

    .line 96
    goto :goto_6

    .line 97
    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 98
    .line 99
    array-length v12, v2

    .line 100
    if-ge v12, v7, :cond_2

    .line 101
    .line 102
    const/4 v2, -0x1

    .line 103
    :goto_3
    const/4 v3, -0x1

    .line 104
    goto :goto_5

    .line 105
    :cond_2
    aget-byte v12, v2, v10

    .line 106
    .line 107
    and-int/lit16 v12, v12, 0xff

    .line 108
    .line 109
    aget-byte v7, v2, v8

    .line 110
    .line 111
    shl-int/lit8 v12, v12, 0x8

    .line 112
    .line 113
    and-int/lit16 v7, v7, 0xff

    .line 114
    .line 115
    or-int/2addr v7, v12

    .line 116
    const v12, 0xffff

    .line 117
    .line 118
    .line 119
    if-ne v7, v12, :cond_3

    .line 120
    .line 121
    aget-byte v7, v2, v5

    .line 122
    .line 123
    and-int/lit16 v7, v7, 0xff

    .line 124
    .line 125
    const/4 v12, 0x5

    .line 126
    aget-byte v10, v2, v12

    .line 127
    .line 128
    and-int/lit16 v10, v10, 0xff

    .line 129
    .line 130
    shl-int/lit8 v7, v7, 0x10

    .line 131
    .line 132
    shl-int/lit8 v10, v10, 0x8

    .line 133
    .line 134
    const/4 v12, 0x6

    .line 135
    aget-byte v2, v2, v12

    .line 136
    .line 137
    and-int/lit16 v2, v2, 0xff

    .line 138
    .line 139
    or-int/2addr v7, v10

    .line 140
    or-int/2addr v7, v2

    .line 141
    const/4 v2, 0x7

    .line 142
    goto :goto_4

    .line 143
    :cond_3
    const/4 v2, 0x4

    .line 144
    :goto_4
    if-ne v13, v3, :cond_4

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x2

    .line 147
    .line 148
    :cond_4
    add-int/2addr v2, v7

    .line 149
    goto :goto_3

    .line 150
    :goto_5
    if-ne v2, v3, :cond_6

    .line 151
    .line 152
    :cond_5
    :goto_6
    return v11

    .line 153
    :cond_6
    add-int/lit8 v2, v2, -0x7

    .line 154
    .line 155
    invoke-virtual {v15, v2, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 156
    .line 157
    .line 158
    const/4 v7, 0x7

    .line 159
    const/4 v10, 0x2

    .line 160
    const/4 v12, 0x1

    .line 161
    goto :goto_2

    .line 162
    :cond_7
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    add-int/lit8 v3, v2, 0xa

    .line 170
    .line 171
    add-int/2addr v14, v3

    .line 172
    invoke-virtual {v4, v2, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 173
    .line 174
    .line 175
    const/4 v7, 0x7

    .line 176
    const/4 v10, 0x2

    .line 177
    const/4 v12, 0x1

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_0
    new-instance v1, Lcom/google/android/gms/internal/ads/jr;

    .line 181
    .line 182
    invoke-direct {v1, v13}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 183
    .line 184
    .line 185
    const/4 v2, 0x0

    .line 186
    :goto_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 187
    .line 188
    move-object/from16 v4, p1

    .line 189
    .line 190
    check-cast v4, Lcom/google/android/gms/internal/ads/F;

    .line 191
    .line 192
    invoke-virtual {v4, v3, v11, v13, v11}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eq v3, v9, :cond_e

    .line 203
    .line 204
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 205
    .line 206
    .line 207
    move-object/from16 v3, p1

    .line 208
    .line 209
    check-cast v3, Lcom/google/android/gms/internal/ads/F;

    .line 210
    .line 211
    invoke-virtual {v3, v2, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 212
    .line 213
    .line 214
    move v7, v2

    .line 215
    :goto_8
    const/4 v4, 0x0

    .line 216
    :goto_9
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 217
    .line 218
    const/4 v10, 0x6

    .line 219
    invoke-virtual {v3, v9, v11, v10, v11}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    const/16 v10, 0xb77

    .line 230
    .line 231
    if-eq v9, v10, :cond_8

    .line 232
    .line 233
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 234
    .line 235
    .line 236
    add-int/lit8 v7, v7, 0x1

    .line 237
    .line 238
    sub-int v4, v7, v2

    .line 239
    .line 240
    if-ge v4, v6, :cond_c

    .line 241
    .line 242
    invoke-virtual {v3, v7, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_8
    const/4 v9, 0x1

    .line 247
    add-int/2addr v4, v9

    .line 248
    if-lt v4, v5, :cond_9

    .line 249
    .line 250
    const/4 v11, 0x1

    .line 251
    goto :goto_c

    .line 252
    :cond_9
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 253
    .line 254
    array-length v10, v9

    .line 255
    const/4 v12, 0x6

    .line 256
    if-ge v10, v12, :cond_a

    .line 257
    .line 258
    const/4 v5, -0x1

    .line 259
    const/4 v9, -0x1

    .line 260
    const/4 v10, 0x5

    .line 261
    const/4 v12, 0x2

    .line 262
    const/4 v14, 0x1

    .line 263
    const/4 v15, 0x7

    .line 264
    :goto_a
    const/16 v16, 0x6

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_a
    const/4 v10, 0x5

    .line 268
    aget-byte v12, v9, v10

    .line 269
    .line 270
    and-int/lit16 v12, v12, 0xf8

    .line 271
    .line 272
    shr-int/2addr v12, v8

    .line 273
    if-le v12, v13, :cond_b

    .line 274
    .line 275
    const/4 v12, 0x2

    .line 276
    aget-byte v14, v9, v12

    .line 277
    .line 278
    const/4 v15, 0x7

    .line 279
    and-int/2addr v14, v15

    .line 280
    aget-byte v9, v9, v8

    .line 281
    .line 282
    shl-int/lit8 v14, v14, 0x8

    .line 283
    .line 284
    and-int/lit16 v9, v9, 0xff

    .line 285
    .line 286
    or-int/2addr v9, v14

    .line 287
    const/4 v14, 0x1

    .line 288
    add-int/2addr v9, v14

    .line 289
    add-int/2addr v9, v9

    .line 290
    move v5, v9

    .line 291
    const/4 v9, -0x1

    .line 292
    goto :goto_a

    .line 293
    :cond_b
    const/4 v12, 0x2

    .line 294
    const/4 v14, 0x1

    .line 295
    const/4 v15, 0x7

    .line 296
    aget-byte v9, v9, v5

    .line 297
    .line 298
    and-int/lit16 v5, v9, 0xc0

    .line 299
    .line 300
    const/16 v16, 0x6

    .line 301
    .line 302
    shr-int/lit8 v5, v5, 0x6

    .line 303
    .line 304
    and-int/lit8 v9, v9, 0x3f

    .line 305
    .line 306
    invoke-static {v5, v9}, Lcom/google/android/gms/internal/ads/nH;->n(II)I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    const/4 v9, -0x1

    .line 311
    :goto_b
    if-ne v5, v9, :cond_d

    .line 312
    .line 313
    :cond_c
    :goto_c
    return v11

    .line 314
    :cond_d
    add-int/lit8 v5, v5, -0x6

    .line 315
    .line 316
    invoke-virtual {v3, v5, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 317
    .line 318
    .line 319
    const/4 v5, 0x4

    .line 320
    goto :goto_9

    .line 321
    :cond_e
    const/4 v5, -0x1

    .line 322
    const/4 v10, 0x5

    .line 323
    const/4 v12, 0x2

    .line 324
    const/4 v14, 0x1

    .line 325
    const/4 v15, 0x7

    .line 326
    const/16 v16, 0x6

    .line 327
    .line 328
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    add-int/lit8 v7, v3, 0xa

    .line 336
    .line 337
    add-int/2addr v2, v7

    .line 338
    invoke-virtual {v4, v3, v11}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 339
    .line 340
    .line 341
    const/4 v5, 0x4

    .line 342
    goto/16 :goto_7

    .line 343
    .line 344
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/M1;->a(Lcom/google/android/gms/internal/ads/M;)Z

    .line 345
    .line 346
    .line 347
    move-result v11
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Ka; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :catch_0
    return v11

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JJ)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/A2;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/A2;->zze()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/M1;->b:Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/A2;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/A2;->zze()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/M1;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lp1/j;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, v0, Lp1/j;->i:Lp1/f;

    .line 34
    .line 35
    iget-object v3, v2, Lp1/f;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lcom/google/android/gms/internal/ads/N1;

    .line 38
    .line 39
    iput v1, v3, Lcom/google/android/gms/internal/ads/N1;->a:I

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/N1;->b:J

    .line 44
    .line 45
    iput v1, v3, Lcom/google/android/gms/internal/ads/N1;->c:I

    .line 46
    .line 47
    iput v1, v3, Lcom/google/android/gms/internal/ads/N1;->d:I

    .line 48
    .line 49
    iput v1, v3, Lcom/google/android/gms/internal/ads/N1;->e:I

    .line 50
    .line 51
    iget-object v3, v2, Lp1/f;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lcom/google/android/gms/internal/ads/jr;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 56
    .line 57
    .line 58
    const/4 v3, -0x1

    .line 59
    iput v3, v2, Lp1/f;->a:I

    .line 60
    .line 61
    iput-boolean v1, v2, Lp1/f;->c:Z

    .line 62
    .line 63
    cmp-long v1, p1, v4

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    iget-boolean p1, v0, Lp1/j;->g:Z

    .line 68
    .line 69
    xor-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lp1/j;->f(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget p1, v0, Lp1/j;->d:I

    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    iget p1, v0, Lp1/j;->e:I

    .line 80
    .line 81
    int-to-long p1, p1

    .line 82
    mul-long p1, p1, p3

    .line 83
    .line 84
    const-wide/32 p3, 0xf4240

    .line 85
    .line 86
    .line 87
    div-long/2addr p1, p3

    .line 88
    iput-wide p1, v0, Lp1/j;->a:J

    .line 89
    .line 90
    iget-object p3, v0, Lp1/j;->l:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p3, Lcom/google/android/gms/internal/ads/O1;

    .line 93
    .line 94
    sget p4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 95
    .line 96
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/O1;->b(J)V

    .line 97
    .line 98
    .line 99
    const/4 p1, 0x2

    .line 100
    iput p1, v0, Lp1/j;->d:I

    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/high16 v5, -0x80000000

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, LA1/I;

    .line 18
    .line 19
    invoke-direct {v0, v5, v7, v6, v6}, LA1/I;-><init>(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Lcom/google/android/gms/internal/ads/A2;

    .line 25
    .line 26
    invoke-virtual {v5, p1, v0}, Lcom/google/android/gms/internal/ads/A2;->c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/P;

    .line 33
    .line 34
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    new-instance v0, LA1/I;

    .line 42
    .line 43
    invoke-direct {v0, v5, v7, v6, v6}, LA1/I;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Lcom/google/android/gms/internal/ads/A2;

    .line 49
    .line 50
    invoke-virtual {v5, p1, v0}, Lcom/google/android/gms/internal/ads/A2;->c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/P;

    .line 57
    .line 58
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/M1;->c:Ljava/lang/Object;

    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/M1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
