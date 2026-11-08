.class public final Lcom/google/android/gms/internal/ads/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;
.implements Lcom/google/android/gms/internal/ads/Y;


# instance fields
.field public A:I

.field public final a:Lcom/google/android/gms/internal/ads/V1;

.field public final b:I

.field public final c:Lcom/google/android/gms/internal/ads/jr;

.field public final d:Lcom/google/android/gms/internal/ads/jr;

.field public final e:Lcom/google/android/gms/internal/ads/jr;

.field public final f:Lcom/google/android/gms/internal/ads/jr;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Lcom/google/android/gms/internal/ads/C1;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/google/android/gms/internal/ads/PA;

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:Lcom/google/android/gms/internal/ads/jr;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Lcom/google/android/gms/internal/ads/N;

.field public w:[Lcom/google/android/gms/internal/ads/z1;

.field public x:[[J

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/V1;->o:Lcom/google/android/gms/internal/ads/kH;

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/A1;-><init>(ILcom/google/android/gms/internal/ads/kH;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/kH;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->a:Lcom/google/android/gms/internal/ads/V1;

    iput p1, p0, Lcom/google/android/gms/internal/ads/A1;->b:I

    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->j:Lcom/google/android/gms/internal/ads/PA;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/C1;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/C1;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->h:Lcom/google/android/gms/internal/ads/C1;

    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->i:Ljava/util/ArrayList;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->f:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Ljava/util/ArrayDeque;

    .line 8
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->g:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->a:[B

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->c:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    const/4 v0, 0x5

    .line 10
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->d:Lcom/google/android/gms/internal/ads/jr;

    new-instance p2, Lcom/google/android/gms/internal/ads/jr;

    .line 11
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->e:Lcom/google/android/gms/internal/ads/jr;

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/A1;->p:I

    sget-object p2, Lcom/google/android/gms/internal/ads/N;->n:LF2/G;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/A1;->v:Lcom/google/android/gms/internal/ads/N;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/z1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/A1;->t:Z

    return-void
.end method


# virtual methods
.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 6
    .line 7
    array-length v4, v3

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/ads/Z;->c:Lcom/google/android/gms/internal/ads/Z;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 13
    .line 14
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_e

    .line 18
    .line 19
    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/A1;->y:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, -0x1

    .line 23
    if-eq v4, v7, :cond_6

    .line 24
    .line 25
    aget-object v3, v3, v4

    .line 26
    .line 27
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 30
    .line 31
    invoke-static {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    :goto_0
    if-ltz v4, :cond_2

    .line 36
    .line 37
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 38
    .line 39
    aget v11, v11, v4

    .line 40
    .line 41
    and-int/lit8 v11, v11, 0x1

    .line 42
    .line 43
    if-eqz v11, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v4, -0x1

    .line 50
    :goto_1
    if-ne v4, v7, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/G1;->a(J)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_3
    if-ne v4, v7, :cond_4

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 59
    .line 60
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_e

    .line 64
    .line 65
    :cond_4
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 66
    .line 67
    aget-wide v11, v5, v4

    .line 68
    .line 69
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 70
    .line 71
    aget-wide v14, v13, v4

    .line 72
    .line 73
    cmp-long v16, v11, v1

    .line 74
    .line 75
    if-gez v16, :cond_5

    .line 76
    .line 77
    iget v8, v3, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 78
    .line 79
    add-int/2addr v8, v7

    .line 80
    if-ge v4, v8, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/G1;->a(J)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eq v1, v7, :cond_5

    .line 87
    .line 88
    if-eq v1, v4, :cond_5

    .line 89
    .line 90
    aget-wide v2, v5, v1

    .line 91
    .line 92
    aget-wide v8, v13, v1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide/16 v8, -0x1

    .line 101
    .line 102
    :goto_2
    move-wide v3, v2

    .line 103
    move-wide v1, v11

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const-wide v14, 0x7fffffffffffffffL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    const-wide/16 v8, -0x1

    .line 116
    .line 117
    :goto_3
    move-wide v11, v14

    .line 118
    const/4 v5, 0x0

    .line 119
    :goto_4
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 120
    .line 121
    array-length v14, v13

    .line 122
    if-ge v5, v14, :cond_11

    .line 123
    .line 124
    iget v14, v0, Lcom/google/android/gms/internal/ads/A1;->y:I

    .line 125
    .line 126
    if-eq v5, v14, :cond_10

    .line 127
    .line 128
    aget-object v13, v13, v5

    .line 129
    .line 130
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 131
    .line 132
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 133
    .line 134
    invoke-static {v14, v1, v2, v6}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    :goto_5
    iget-object v6, v13, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 139
    .line 140
    if-ltz v14, :cond_8

    .line 141
    .line 142
    aget v16, v6, v14

    .line 143
    .line 144
    and-int/lit8 v16, v16, 0x1

    .line 145
    .line 146
    if-eqz v16, :cond_7

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_7
    add-int/lit8 v14, v14, -0x1

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    const/4 v14, -0x1

    .line 153
    :goto_6
    if-ne v14, v7, :cond_9

    .line 154
    .line 155
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/G1;->a(J)I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    :cond_9
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 160
    .line 161
    if-ne v14, v7, :cond_a

    .line 162
    .line 163
    move-wide/from16 p1, v8

    .line 164
    .line 165
    :goto_7
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_a
    move-wide/from16 p1, v8

    .line 172
    .line 173
    aget-wide v7, v10, v14

    .line 174
    .line 175
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v11

    .line 179
    goto :goto_7

    .line 180
    :goto_8
    cmp-long v9, v3, v7

    .line 181
    .line 182
    if-eqz v9, :cond_f

    .line 183
    .line 184
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-static {v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    :goto_9
    if-ltz v7, :cond_c

    .line 192
    .line 193
    aget v9, v6, v7

    .line 194
    .line 195
    and-int/lit8 v9, v9, 0x1

    .line 196
    .line 197
    if-eqz v9, :cond_b

    .line 198
    .line 199
    const/4 v6, -0x1

    .line 200
    goto :goto_a

    .line 201
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_c
    const/4 v6, -0x1

    .line 205
    const/4 v7, -0x1

    .line 206
    :goto_a
    if-ne v7, v6, :cond_d

    .line 207
    .line 208
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/ads/G1;->a(J)I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    :cond_d
    if-ne v7, v6, :cond_e

    .line 213
    .line 214
    move-wide/from16 v9, p1

    .line 215
    .line 216
    goto :goto_b

    .line 217
    :cond_e
    aget-wide v9, v10, v7

    .line 218
    .line 219
    move-wide/from16 v13, p1

    .line 220
    .line 221
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v9

    .line 225
    :goto_b
    move-wide v13, v9

    .line 226
    goto :goto_d

    .line 227
    :cond_f
    move-wide/from16 v13, p1

    .line 228
    .line 229
    :goto_c
    const/4 v6, -0x1

    .line 230
    const/4 v8, 0x0

    .line 231
    goto :goto_d

    .line 232
    :cond_10
    move-wide v13, v8

    .line 233
    goto :goto_c

    .line 234
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    move-wide v8, v13

    .line 237
    const/4 v6, 0x0

    .line 238
    const/4 v7, -0x1

    .line 239
    goto :goto_4

    .line 240
    :cond_11
    move-wide v13, v8

    .line 241
    new-instance v5, Lcom/google/android/gms/internal/ads/Z;

    .line 242
    .line 243
    invoke-direct {v5, v1, v2, v11, v12}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 244
    .line 245
    .line 246
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    cmp-long v6, v3, v1

    .line 252
    .line 253
    if-nez v6, :cond_12

    .line 254
    .line 255
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 256
    .line 257
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 258
    .line 259
    .line 260
    goto :goto_e

    .line 261
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/Z;

    .line 262
    .line 263
    invoke-direct {v1, v3, v4, v13, v14}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Lcom/google/android/gms/internal/ads/X;

    .line 267
    .line 268
    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 269
    .line 270
    .line 271
    move-object v1, v2

    .line 272
    :goto_e
    return-object v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 31

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
    :cond_0
    :goto_0
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/A1;->g:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v7, 0x4

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v13, 0x0

    .line 15
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/A1;->e:Lcom/google/android/gms/internal/ads/jr;

    .line 16
    .line 17
    if-eqz v3, :cond_3f

    .line 18
    .line 19
    const/4 v12, 0x2

    .line 20
    const-wide/32 v18, 0x40000

    .line 21
    .line 22
    .line 23
    if-eq v3, v9, :cond_32

    .line 24
    .line 25
    const-wide/16 v20, 0x8

    .line 26
    .line 27
    if-eq v3, v12, :cond_18

    .line 28
    .line 29
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->i:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/A1;->h:Lcom/google/android/gms/internal/ads/C1;

    .line 32
    .line 33
    iget v14, v4, Lcom/google/android/gms/internal/ads/C1;->b:I

    .line 34
    .line 35
    if-eqz v14, :cond_14

    .line 36
    .line 37
    if-eq v14, v9, :cond_12

    .line 38
    .line 39
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/C1;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/16 v6, 0xb01

    .line 42
    .line 43
    const/16 v9, 0xb00

    .line 44
    .line 45
    const/16 v5, 0x890

    .line 46
    .line 47
    if-eq v14, v12, :cond_c

    .line 48
    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 50
    .line 51
    .line 52
    move-result-wide v17

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 54
    .line 55
    .line 56
    move-result-wide v19

    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 58
    .line 59
    .line 60
    move-result-wide v21

    .line 61
    sub-long v19, v19, v21

    .line 62
    .line 63
    iget v4, v4, Lcom/google/android/gms/internal/ads/C1;->c:I

    .line 64
    .line 65
    int-to-long v10, v4

    .line 66
    new-instance v4, Lcom/google/android/gms/internal/ads/jr;

    .line 67
    .line 68
    sub-long v10, v19, v10

    .line 69
    .line 70
    long-to-int v11, v10

    .line 71
    invoke-direct {v4, v11}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 75
    .line 76
    invoke-interface {v0, v8, v10, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-ge v0, v10, :cond_b

    .line 85
    .line 86
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Lcom/google/android/gms/internal/ads/B1;

    .line 91
    .line 92
    move-object v11, v15

    .line 93
    iget-wide v14, v10, Lcom/google/android/gms/internal/ads/B1;->a:J

    .line 94
    .line 95
    sub-long v14, v14, v17

    .line 96
    .line 97
    long-to-int v15, v14

    .line 98
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-virtual {v4, v14, v15}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v20

    .line 118
    sparse-switch v20, :sswitch_data_0

    .line 119
    .line 120
    .line 121
    :goto_2
    const/4 v7, -0x1

    .line 122
    goto :goto_3

    .line 123
    :sswitch_0
    const-string v12, "Super_SlowMotion_BGM"

    .line 124
    .line 125
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    const/4 v7, 0x4

    .line 133
    goto :goto_3

    .line 134
    :sswitch_1
    const-string v12, "Super_SlowMotion_Deflickering_On"

    .line 135
    .line 136
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_2

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    const/4 v7, 0x3

    .line 144
    goto :goto_3

    .line 145
    :sswitch_2
    const-string v12, "Super_SlowMotion_Data"

    .line 146
    .line 147
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    const/4 v7, 0x2

    .line 155
    goto :goto_3

    .line 156
    :sswitch_3
    const-string v12, "Super_SlowMotion_Edit_Data"

    .line 157
    .line 158
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/4 v7, 0x1

    .line 166
    goto :goto_3

    .line 167
    :sswitch_4
    const-string v12, "SlowMotion_Data"

    .line 168
    .line 169
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    const/4 v7, 0x0

    .line 177
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 178
    .line 179
    .line 180
    const-string v0, "Invalid SEF name"

    .line 181
    .line 182
    invoke-static {v0, v13}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    throw v0

    .line 187
    :pswitch_0
    const/16 v7, 0xb01

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :pswitch_1
    const/16 v7, 0xb04

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :pswitch_2
    const/16 v7, 0xb00

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :pswitch_3
    const/16 v7, 0xb03

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :pswitch_4
    const/16 v7, 0x890

    .line 200
    .line 201
    :goto_4
    add-int/lit8 v14, v14, 0x8

    .line 202
    .line 203
    iget v10, v10, Lcom/google/android/gms/internal/ads/B1;->b:I

    .line 204
    .line 205
    sub-int/2addr v10, v14

    .line 206
    if-eq v7, v5, :cond_7

    .line 207
    .line 208
    if-eq v7, v9, :cond_a

    .line 209
    .line 210
    if-eq v7, v6, :cond_a

    .line 211
    .line 212
    const/16 v10, 0xb03

    .line 213
    .line 214
    if-eq v7, v10, :cond_a

    .line 215
    .line 216
    const/16 v10, 0xb04

    .line 217
    .line 218
    if-ne v7, v10, :cond_6

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v10, v15}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    sget-object v12, Lcom/google/android/gms/internal/ads/C1;->e:Lcom/google/android/gms/internal/ads/Xu;

    .line 237
    .line 238
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/Xu;->s(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    const/4 v12, 0x0

    .line 243
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-ge v12, v15, :cond_9

    .line 248
    .line 249
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    check-cast v15, Ljava/lang/CharSequence;

    .line 254
    .line 255
    sget-object v14, Lcom/google/android/gms/internal/ads/C1;->d:Lcom/google/android/gms/internal/ads/Xu;

    .line 256
    .line 257
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/Xu;->s(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    const/4 v6, 0x3

    .line 266
    if-ne v15, v6, :cond_8

    .line 267
    .line 268
    :try_start_0
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    check-cast v6, Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 275
    .line 276
    .line 277
    move-result-wide v25

    .line 278
    const/4 v6, 0x1

    .line 279
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v15

    .line 283
    check-cast v15, Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v27

    .line 289
    const/4 v6, 0x2

    .line 290
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    check-cast v14, Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    const/4 v14, -0x1

    .line 301
    add-int/2addr v6, v14

    .line 302
    const/4 v14, 0x1

    .line 303
    shl-int v24, v14, v6

    .line 304
    .line 305
    new-instance v6, Lcom/google/android/gms/internal/ads/X0;

    .line 306
    .line 307
    move-object/from16 v23, v6

    .line 308
    .line 309
    invoke-direct/range {v23 .. v28}, Lcom/google/android/gms/internal/ads/X0;-><init>(IJJ)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .line 314
    .line 315
    add-int/lit8 v12, v12, 0x1

    .line 316
    .line 317
    const/16 v6, 0xb01

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    throw v0

    .line 326
    :cond_8
    invoke-static {v13, v13}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    throw v0

    .line 331
    :cond_9
    new-instance v6, Lcom/google/android/gms/internal/ads/Y0;

    .line 332
    .line 333
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/Y0;-><init>(Ljava/util/ArrayList;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 340
    .line 341
    move-object v15, v11

    .line 342
    const/16 v6, 0xb01

    .line 343
    .line 344
    const/4 v7, 0x4

    .line 345
    const/4 v12, 0x2

    .line 346
    goto/16 :goto_1

    .line 347
    .line 348
    :cond_b
    const-wide/16 v6, 0x0

    .line 349
    .line 350
    iput-wide v6, v2, LW0/w;->a:J

    .line 351
    .line 352
    :goto_7
    const/4 v0, 0x1

    .line 353
    goto/16 :goto_d

    .line 354
    .line 355
    :cond_c
    move-object v11, v15

    .line 356
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    iget v3, v4, Lcom/google/android/gms/internal/ads/C1;->c:I

    .line 361
    .line 362
    add-int/lit8 v3, v3, -0x14

    .line 363
    .line 364
    new-instance v10, Lcom/google/android/gms/internal/ads/jr;

    .line 365
    .line 366
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 367
    .line 368
    .line 369
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 370
    .line 371
    invoke-interface {v0, v8, v12, v3}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 372
    .line 373
    .line 374
    const/4 v0, 0x0

    .line 375
    :goto_8
    div-int/lit8 v12, v3, 0xc

    .line 376
    .line 377
    if-ge v0, v12, :cond_10

    .line 378
    .line 379
    const/4 v12, 0x2

    .line 380
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 381
    .line 382
    .line 383
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 384
    .line 385
    iget v14, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 386
    .line 387
    add-int/lit8 v15, v14, 0x1

    .line 388
    .line 389
    aget-byte v8, v13, v14

    .line 390
    .line 391
    and-int/lit16 v8, v8, 0xff

    .line 392
    .line 393
    add-int/2addr v14, v12

    .line 394
    iput v14, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 395
    .line 396
    aget-byte v12, v13, v15

    .line 397
    .line 398
    and-int/lit16 v12, v12, 0xff

    .line 399
    .line 400
    const/16 v13, 0x8

    .line 401
    .line 402
    shl-int/2addr v12, v13

    .line 403
    or-int/2addr v8, v12

    .line 404
    int-to-short v8, v8

    .line 405
    if-eq v8, v5, :cond_e

    .line 406
    .line 407
    if-eq v8, v9, :cond_e

    .line 408
    .line 409
    const/16 v12, 0xb01

    .line 410
    .line 411
    const/16 v14, 0xb03

    .line 412
    .line 413
    if-eq v8, v12, :cond_d

    .line 414
    .line 415
    const/16 v15, 0xb04

    .line 416
    .line 417
    if-eq v8, v14, :cond_f

    .line 418
    .line 419
    if-eq v8, v15, :cond_f

    .line 420
    .line 421
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 422
    .line 423
    .line 424
    move-wide/from16 v18, v6

    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_d
    :goto_9
    const/16 v15, 0xb04

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_e
    const/16 v12, 0xb01

    .line 431
    .line 432
    const/16 v14, 0xb03

    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_f
    :goto_a
    iget v8, v4, Lcom/google/android/gms/internal/ads/C1;->c:I

    .line 436
    .line 437
    int-to-long v12, v8

    .line 438
    sub-long v12, v6, v12

    .line 439
    .line 440
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    move-wide/from16 v18, v6

    .line 445
    .line 446
    int-to-long v5, v8

    .line 447
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    new-instance v8, Lcom/google/android/gms/internal/ads/B1;

    .line 452
    .line 453
    sub-long/2addr v12, v5

    .line 454
    invoke-direct {v8, v12, v13, v7}, Lcom/google/android/gms/internal/ads/B1;-><init>(JI)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 461
    .line 462
    move-wide/from16 v6, v18

    .line 463
    .line 464
    const/16 v5, 0x890

    .line 465
    .line 466
    const/4 v8, 0x0

    .line 467
    goto :goto_8

    .line 468
    :cond_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_11

    .line 473
    .line 474
    const-wide/16 v5, 0x0

    .line 475
    .line 476
    iput-wide v5, v2, LW0/w;->a:J

    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_11
    const/4 v0, 0x3

    .line 480
    iput v0, v4, Lcom/google/android/gms/internal/ads/C1;->b:I

    .line 481
    .line 482
    const/4 v3, 0x0

    .line 483
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Lcom/google/android/gms/internal/ads/B1;

    .line 488
    .line 489
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/B1;->a:J

    .line 490
    .line 491
    iput-wide v4, v2, LW0/w;->a:J

    .line 492
    .line 493
    goto/16 :goto_7

    .line 494
    .line 495
    :cond_12
    const/4 v3, 0x0

    .line 496
    new-instance v5, Lcom/google/android/gms/internal/ads/jr;

    .line 497
    .line 498
    const/16 v6, 0x8

    .line 499
    .line 500
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 501
    .line 502
    .line 503
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 504
    .line 505
    invoke-interface {v0, v3, v7, v6}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->s()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    add-int/2addr v3, v6

    .line 513
    iput v3, v4, Lcom/google/android/gms/internal/ads/C1;->c:I

    .line 514
    .line 515
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    const v5, 0x53454654

    .line 520
    .line 521
    .line 522
    if-eq v3, v5, :cond_13

    .line 523
    .line 524
    const-wide/16 v5, 0x0

    .line 525
    .line 526
    iput-wide v5, v2, LW0/w;->a:J

    .line 527
    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 531
    .line 532
    .line 533
    move-result-wide v5

    .line 534
    iget v0, v4, Lcom/google/android/gms/internal/ads/C1;->c:I

    .line 535
    .line 536
    add-int/lit8 v0, v0, -0xc

    .line 537
    .line 538
    int-to-long v7, v0

    .line 539
    sub-long/2addr v5, v7

    .line 540
    iput-wide v5, v2, LW0/w;->a:J

    .line 541
    .line 542
    const/4 v0, 0x2

    .line 543
    iput v0, v4, Lcom/google/android/gms/internal/ads/C1;->b:I

    .line 544
    .line 545
    goto/16 :goto_7

    .line 546
    .line 547
    :cond_14
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 548
    .line 549
    .line 550
    move-result-wide v5

    .line 551
    const-wide/16 v7, -0x1

    .line 552
    .line 553
    cmp-long v0, v5, v7

    .line 554
    .line 555
    if-eqz v0, :cond_15

    .line 556
    .line 557
    cmp-long v0, v5, v20

    .line 558
    .line 559
    if-gez v0, :cond_16

    .line 560
    .line 561
    :cond_15
    const-wide/16 v5, 0x0

    .line 562
    .line 563
    goto :goto_c

    .line 564
    :cond_16
    const-wide/16 v7, -0x8

    .line 565
    .line 566
    add-long/2addr v5, v7

    .line 567
    :goto_c
    iput-wide v5, v2, LW0/w;->a:J

    .line 568
    .line 569
    const/4 v0, 0x1

    .line 570
    iput v0, v4, Lcom/google/android/gms/internal/ads/C1;->b:I

    .line 571
    .line 572
    :goto_d
    iget-wide v2, v2, LW0/w;->a:J

    .line 573
    .line 574
    const-wide/16 v4, 0x0

    .line 575
    .line 576
    cmp-long v6, v2, v4

    .line 577
    .line 578
    if-nez v6, :cond_17

    .line 579
    .line 580
    const/4 v2, 0x0

    .line 581
    iput v2, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 582
    .line 583
    iput v2, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 584
    .line 585
    :cond_17
    return v0

    .line 586
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 587
    .line 588
    .line 589
    move-result-wide v3

    .line 590
    iget v5, v1, Lcom/google/android/gms/internal/ads/A1;->p:I

    .line 591
    .line 592
    const/4 v6, -0x1

    .line 593
    if-ne v5, v6, :cond_22

    .line 594
    .line 595
    const/4 v7, -0x1

    .line 596
    const/4 v8, -0x1

    .line 597
    const/4 v9, 0x1

    .line 598
    const/4 v10, 0x1

    .line 599
    const/4 v11, 0x0

    .line 600
    const-wide v15, 0x7fffffffffffffffL

    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    const-wide v24, 0x7fffffffffffffffL

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    const-wide v26, 0x7fffffffffffffffL

    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :goto_e
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 616
    .line 617
    array-length v13, v12

    .line 618
    if-ge v11, v13, :cond_20

    .line 619
    .line 620
    aget-object v12, v12, v11

    .line 621
    .line 622
    iget v13, v12, Lcom/google/android/gms/internal/ads/z1;->e:I

    .line 623
    .line 624
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 625
    .line 626
    iget v5, v12, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 627
    .line 628
    if-ne v13, v5, :cond_19

    .line 629
    .line 630
    goto :goto_10

    .line 631
    :cond_19
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 632
    .line 633
    aget-wide v29, v5, v13

    .line 634
    .line 635
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/A1;->x:[[J

    .line 636
    .line 637
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 638
    .line 639
    aget-object v5, v5, v11

    .line 640
    .line 641
    aget-wide v12, v5, v13

    .line 642
    .line 643
    sub-long v29, v29, v3

    .line 644
    .line 645
    const-wide/16 v5, 0x0

    .line 646
    .line 647
    cmp-long v17, v29, v5

    .line 648
    .line 649
    if-ltz v17, :cond_1a

    .line 650
    .line 651
    cmp-long v5, v29, v18

    .line 652
    .line 653
    if-ltz v5, :cond_1b

    .line 654
    .line 655
    :cond_1a
    const/4 v5, 0x1

    .line 656
    goto :goto_f

    .line 657
    :cond_1b
    const/4 v5, 0x0

    .line 658
    :goto_f
    if-nez v5, :cond_1c

    .line 659
    .line 660
    if-nez v10, :cond_1d

    .line 661
    .line 662
    const/4 v10, 0x0

    .line 663
    :cond_1c
    if-ne v5, v10, :cond_1e

    .line 664
    .line 665
    cmp-long v6, v29, v26

    .line 666
    .line 667
    if-gez v6, :cond_1e

    .line 668
    .line 669
    :cond_1d
    move v10, v5

    .line 670
    move v8, v11

    .line 671
    move-wide/from16 v24, v12

    .line 672
    .line 673
    move-wide/from16 v26, v29

    .line 674
    .line 675
    :cond_1e
    cmp-long v6, v12, v15

    .line 676
    .line 677
    if-gez v6, :cond_1f

    .line 678
    .line 679
    move v9, v5

    .line 680
    move v7, v11

    .line 681
    move-wide v15, v12

    .line 682
    :cond_1f
    :goto_10
    add-int/lit8 v11, v11, 0x1

    .line 683
    .line 684
    const/4 v13, 0x0

    .line 685
    goto :goto_e

    .line 686
    :cond_20
    const-wide v5, 0x7fffffffffffffffL

    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    cmp-long v10, v15, v5

    .line 692
    .line 693
    if-eqz v10, :cond_21

    .line 694
    .line 695
    if-eqz v9, :cond_21

    .line 696
    .line 697
    const-wide/32 v5, 0xa00000

    .line 698
    .line 699
    .line 700
    add-long/2addr v15, v5

    .line 701
    cmp-long v5, v24, v15

    .line 702
    .line 703
    if-ltz v5, :cond_21

    .line 704
    .line 705
    move v5, v7

    .line 706
    goto :goto_11

    .line 707
    :cond_21
    move v5, v8

    .line 708
    :goto_11
    iput v5, v1, Lcom/google/android/gms/internal/ads/A1;->p:I

    .line 709
    .line 710
    const/4 v6, -0x1

    .line 711
    if-ne v5, v6, :cond_22

    .line 712
    .line 713
    const/4 v6, -0x1

    .line 714
    goto/16 :goto_18

    .line 715
    .line 716
    :cond_22
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 717
    .line 718
    aget-object v5, v6, v5

    .line 719
    .line 720
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/e0;

    .line 721
    .line 722
    iget v13, v5, Lcom/google/android/gms/internal/ads/z1;->e:I

    .line 723
    .line 724
    iget-object v12, v5, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 725
    .line 726
    iget-object v6, v12, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 727
    .line 728
    aget-wide v7, v6, v13

    .line 729
    .line 730
    iget-object v6, v12, Lcom/google/android/gms/internal/ads/G1;->d:[I

    .line 731
    .line 732
    aget v6, v6, v13

    .line 733
    .line 734
    sub-long v3, v7, v3

    .line 735
    .line 736
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 737
    .line 738
    int-to-long v9, v9

    .line 739
    add-long/2addr v3, v9

    .line 740
    const-wide/16 v9, 0x0

    .line 741
    .line 742
    cmp-long v11, v3, v9

    .line 743
    .line 744
    if-ltz v11, :cond_31

    .line 745
    .line 746
    cmp-long v9, v3, v18

    .line 747
    .line 748
    if-ltz v9, :cond_23

    .line 749
    .line 750
    goto/16 :goto_17

    .line 751
    .line 752
    :cond_23
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/z1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 753
    .line 754
    iget v7, v2, Lcom/google/android/gms/internal/ads/D1;->g:I

    .line 755
    .line 756
    const/4 v8, 0x1

    .line 757
    if-ne v7, v8, :cond_24

    .line 758
    .line 759
    add-long v3, v3, v20

    .line 760
    .line 761
    add-int/lit8 v6, v6, -0x8

    .line 762
    .line 763
    :cond_24
    long-to-int v4, v3

    .line 764
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 765
    .line 766
    .line 767
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 768
    .line 769
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 770
    .line 771
    const-string v7, "video/avc"

    .line 772
    .line 773
    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    if-nez v4, :cond_25

    .line 778
    .line 779
    const/4 v4, 0x1

    .line 780
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 781
    .line 782
    goto :goto_12

    .line 783
    :cond_25
    const/4 v4, 0x1

    .line 784
    :goto_12
    iget v2, v2, Lcom/google/android/gms/internal/ads/D1;->j:I

    .line 785
    .line 786
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/z1;->d:LW0/M;

    .line 787
    .line 788
    if-eqz v2, :cond_2a

    .line 789
    .line 790
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->d:Lcom/google/android/gms/internal/ads/jr;

    .line 791
    .line 792
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 793
    .line 794
    const/4 v8, 0x0

    .line 795
    aput-byte v8, v7, v8

    .line 796
    .line 797
    aput-byte v8, v7, v4

    .line 798
    .line 799
    const/4 v4, 0x2

    .line 800
    aput-byte v8, v7, v4

    .line 801
    .line 802
    add-int/lit8 v4, v2, 0x1

    .line 803
    .line 804
    const/4 v8, 0x4

    .line 805
    rsub-int/lit8 v2, v2, 0x4

    .line 806
    .line 807
    :cond_26
    :goto_13
    iget v8, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 808
    .line 809
    if-ge v8, v6, :cond_29

    .line 810
    .line 811
    iget v8, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 812
    .line 813
    if-nez v8, :cond_28

    .line 814
    .line 815
    invoke-interface {v0, v2, v7, v4}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 816
    .line 817
    .line 818
    iget v8, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 819
    .line 820
    add-int/2addr v8, v4

    .line 821
    iput v8, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 822
    .line 823
    const/4 v8, 0x0

    .line 824
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 828
    .line 829
    .line 830
    move-result v9

    .line 831
    if-lez v9, :cond_27

    .line 832
    .line 833
    add-int/lit8 v9, v9, -0x1

    .line 834
    .line 835
    iput v9, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 836
    .line 837
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/A1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 838
    .line 839
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 840
    .line 841
    .line 842
    const/4 v8, 0x4

    .line 843
    invoke-interface {v15, v8, v9}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 844
    .line 845
    .line 846
    const/4 v9, 0x1

    .line 847
    invoke-interface {v15, v9, v3}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 848
    .line 849
    .line 850
    iget v10, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 851
    .line 852
    add-int/lit8 v10, v10, 0x5

    .line 853
    .line 854
    iput v10, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 855
    .line 856
    add-int/2addr v6, v2

    .line 857
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 858
    .line 859
    if-nez v10, :cond_26

    .line 860
    .line 861
    aget-byte v10, v7, v8

    .line 862
    .line 863
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/sy;->h(B)Z

    .line 864
    .line 865
    .line 866
    move-result v8

    .line 867
    if-eqz v8, :cond_26

    .line 868
    .line 869
    iput-boolean v9, v1, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 870
    .line 871
    goto :goto_13

    .line 872
    :cond_27
    const-string v0, "Invalid NAL length"

    .line 873
    .line 874
    const/4 v2, 0x0

    .line 875
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    throw v0

    .line 880
    :cond_28
    const/4 v9, 0x0

    .line 881
    invoke-interface {v15, v0, v8, v9}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 882
    .line 883
    .line 884
    move-result v8

    .line 885
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 886
    .line 887
    add-int/2addr v9, v8

    .line 888
    iput v9, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 889
    .line 890
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 891
    .line 892
    add-int/2addr v9, v8

    .line 893
    iput v9, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 894
    .line 895
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 896
    .line 897
    sub-int/2addr v9, v8

    .line 898
    iput v9, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 899
    .line 900
    goto :goto_13

    .line 901
    :cond_29
    move v0, v6

    .line 902
    goto :goto_15

    .line 903
    :cond_2a
    const-string v2, "audio/ac4"

    .line 904
    .line 905
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 906
    .line 907
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    if-eqz v2, :cond_2c

    .line 912
    .line 913
    iget v2, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 914
    .line 915
    if-nez v2, :cond_2b

    .line 916
    .line 917
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/nH;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 918
    .line 919
    .line 920
    const/4 v2, 0x7

    .line 921
    invoke-interface {v15, v2, v14}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 922
    .line 923
    .line 924
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 925
    .line 926
    add-int/2addr v3, v2

    .line 927
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 928
    .line 929
    :cond_2b
    add-int/lit8 v6, v6, 0x7

    .line 930
    .line 931
    goto :goto_14

    .line 932
    :cond_2c
    if-eqz v11, :cond_2d

    .line 933
    .line 934
    invoke-virtual {v11, v0}, LW0/M;->f(Lcom/google/android/gms/internal/ads/M;)V

    .line 935
    .line 936
    .line 937
    :cond_2d
    :goto_14
    iget v2, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 938
    .line 939
    if-ge v2, v6, :cond_29

    .line 940
    .line 941
    sub-int v2, v6, v2

    .line 942
    .line 943
    const/4 v3, 0x0

    .line 944
    invoke-interface {v15, v0, v2, v3}, Lcom/google/android/gms/internal/ads/e0;->e(Lcom/google/android/gms/internal/ads/HL;IZ)I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 949
    .line 950
    add-int/2addr v3, v2

    .line 951
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 952
    .line 953
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 954
    .line 955
    add-int/2addr v3, v2

    .line 956
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 957
    .line 958
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 959
    .line 960
    sub-int/2addr v3, v2

    .line 961
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 962
    .line 963
    goto :goto_14

    .line 964
    :goto_15
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 965
    .line 966
    aget-wide v3, v2, v13

    .line 967
    .line 968
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 969
    .line 970
    aget v2, v2, v13

    .line 971
    .line 972
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 973
    .line 974
    if-nez v6, :cond_2e

    .line 975
    .line 976
    const/high16 v6, 0x4000000

    .line 977
    .line 978
    or-int/2addr v2, v6

    .line 979
    :cond_2e
    if-eqz v11, :cond_2f

    .line 980
    .line 981
    const/4 v14, 0x0

    .line 982
    const/16 v16, 0x0

    .line 983
    .line 984
    move-object v6, v11

    .line 985
    move-object v7, v15

    .line 986
    move-wide v8, v3

    .line 987
    move v10, v2

    .line 988
    move-object v2, v11

    .line 989
    move v11, v0

    .line 990
    move-object v0, v12

    .line 991
    move v12, v14

    .line 992
    move v3, v13

    .line 993
    move-object/from16 v13, v16

    .line 994
    .line 995
    invoke-virtual/range {v6 .. v13}, LW0/M;->e(Lcom/google/android/gms/internal/ads/e0;JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 996
    .line 997
    .line 998
    const/4 v4, 0x1

    .line 999
    add-int/lit8 v13, v3, 0x1

    .line 1000
    .line 1001
    iget v0, v0, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 1002
    .line 1003
    if-ne v13, v0, :cond_30

    .line 1004
    .line 1005
    const/4 v3, 0x0

    .line 1006
    invoke-virtual {v2, v15, v3}, LW0/M;->d(Lcom/google/android/gms/internal/ads/e0;Lcom/google/android/gms/internal/ads/d0;)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_16

    .line 1010
    :cond_2f
    const/4 v11, 0x0

    .line 1011
    const/4 v12, 0x0

    .line 1012
    move-object v6, v15

    .line 1013
    move-wide v7, v3

    .line 1014
    move v9, v2

    .line 1015
    move v10, v0

    .line 1016
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 1017
    .line 1018
    .line 1019
    :cond_30
    :goto_16
    iget v0, v5, Lcom/google/android/gms/internal/ads/z1;->e:I

    .line 1020
    .line 1021
    const/4 v2, 0x1

    .line 1022
    add-int/2addr v0, v2

    .line 1023
    iput v0, v5, Lcom/google/android/gms/internal/ads/z1;->e:I

    .line 1024
    .line 1025
    const/4 v0, -0x1

    .line 1026
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->p:I

    .line 1027
    .line 1028
    const/4 v0, 0x0

    .line 1029
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 1030
    .line 1031
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 1032
    .line 1033
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 1034
    .line 1035
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 1036
    .line 1037
    const/4 v6, 0x0

    .line 1038
    goto :goto_18

    .line 1039
    :cond_31
    :goto_17
    iput-wide v7, v2, LW0/w;->a:J

    .line 1040
    .line 1041
    const/4 v6, 0x1

    .line 1042
    :goto_18
    return v6

    .line 1043
    :cond_32
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1044
    .line 1045
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1046
    .line 1047
    int-to-long v7, v3

    .line 1048
    sub-long/2addr v5, v7

    .line 1049
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1050
    .line 1051
    .line 1052
    move-result-wide v7

    .line 1053
    add-long/2addr v7, v5

    .line 1054
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 1055
    .line 1056
    if-eqz v3, :cond_3c

    .line 1057
    .line 1058
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1059
    .line 1060
    iget v10, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1061
    .line 1062
    long-to-int v6, v5

    .line 1063
    invoke-interface {v0, v10, v9, v6}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 1064
    .line 1065
    .line 1066
    iget v5, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1067
    .line 1068
    const v6, 0x66747970

    .line 1069
    .line 1070
    .line 1071
    if-ne v5, v6, :cond_3b

    .line 1072
    .line 1073
    const/4 v5, 0x1

    .line 1074
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/A1;->u:Z

    .line 1075
    .line 1076
    const/16 v4, 0x8

    .line 1077
    .line 1078
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1082
    .line 1083
    .line 1084
    move-result v4

    .line 1085
    const v5, 0x71742020

    .line 1086
    .line 1087
    .line 1088
    const v6, 0x68656963

    .line 1089
    .line 1090
    .line 1091
    if-eq v4, v6, :cond_34

    .line 1092
    .line 1093
    if-eq v4, v5, :cond_33

    .line 1094
    .line 1095
    const/4 v4, 0x0

    .line 1096
    goto :goto_19

    .line 1097
    :cond_33
    const/4 v4, 0x1

    .line 1098
    goto :goto_19

    .line 1099
    :cond_34
    const/4 v4, 0x2

    .line 1100
    :goto_19
    if-eqz v4, :cond_35

    .line 1101
    .line 1102
    goto :goto_1b

    .line 1103
    :cond_35
    const/4 v4, 0x4

    .line 1104
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1105
    .line 1106
    .line 1107
    :cond_36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1108
    .line 1109
    .line 1110
    move-result v4

    .line 1111
    if-lez v4, :cond_39

    .line 1112
    .line 1113
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1114
    .line 1115
    .line 1116
    move-result v4

    .line 1117
    if-eq v4, v6, :cond_38

    .line 1118
    .line 1119
    if-eq v4, v5, :cond_37

    .line 1120
    .line 1121
    const/4 v4, 0x0

    .line 1122
    goto :goto_1a

    .line 1123
    :cond_37
    const/4 v4, 0x1

    .line 1124
    goto :goto_1a

    .line 1125
    :cond_38
    const/4 v4, 0x2

    .line 1126
    :goto_1a
    if-eqz v4, :cond_36

    .line 1127
    .line 1128
    goto :goto_1b

    .line 1129
    :cond_39
    const/4 v4, 0x0

    .line 1130
    :goto_1b
    iput v4, v1, Lcom/google/android/gms/internal/ads/A1;->A:I

    .line 1131
    .line 1132
    :cond_3a
    :goto_1c
    const/16 v23, 0x0

    .line 1133
    .line 1134
    goto :goto_1d

    .line 1135
    :cond_3b
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v5

    .line 1139
    if-nez v5, :cond_3a

    .line 1140
    .line 1141
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v4

    .line 1145
    check-cast v4, Lcom/google/android/gms/internal/ads/o1;

    .line 1146
    .line 1147
    new-instance v5, Lcom/google/android/gms/internal/ads/p1;

    .line 1148
    .line 1149
    iget v6, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1150
    .line 1151
    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/p1;-><init>(ILcom/google/android/gms/internal/ads/jr;)V

    .line 1152
    .line 1153
    .line 1154
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/o1;->d:Ljava/util/ArrayList;

    .line 1155
    .line 1156
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    goto :goto_1c

    .line 1160
    :cond_3c
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/A1;->u:Z

    .line 1161
    .line 1162
    if-nez v3, :cond_3d

    .line 1163
    .line 1164
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1165
    .line 1166
    const v4, 0x6d646174

    .line 1167
    .line 1168
    .line 1169
    if-ne v3, v4, :cond_3d

    .line 1170
    .line 1171
    const/4 v3, 0x1

    .line 1172
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->A:I

    .line 1173
    .line 1174
    :cond_3d
    cmp-long v3, v5, v18

    .line 1175
    .line 1176
    if-gez v3, :cond_3e

    .line 1177
    .line 1178
    long-to-int v3, v5

    .line 1179
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_1c

    .line 1183
    :cond_3e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1184
    .line 1185
    .line 1186
    move-result-wide v3

    .line 1187
    add-long/2addr v3, v5

    .line 1188
    iput-wide v3, v2, LW0/w;->a:J

    .line 1189
    .line 1190
    const/16 v23, 0x1

    .line 1191
    .line 1192
    :goto_1d
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/A1;->g(J)V

    .line 1193
    .line 1194
    .line 1195
    if-eqz v23, :cond_0

    .line 1196
    .line 1197
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1198
    .line 1199
    const/4 v4, 0x2

    .line 1200
    if-eq v3, v4, :cond_0

    .line 1201
    .line 1202
    const/4 v3, 0x1

    .line 1203
    return v3

    .line 1204
    :cond_3f
    const/4 v3, 0x1

    .line 1205
    iget v5, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1206
    .line 1207
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/A1;->f:Lcom/google/android/gms/internal/ads/jr;

    .line 1208
    .line 1209
    if-nez v5, :cond_41

    .line 1210
    .line 1211
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1212
    .line 1213
    const/16 v7, 0x8

    .line 1214
    .line 1215
    const/4 v8, 0x0

    .line 1216
    invoke-interface {v0, v5, v8, v7, v3}, Lcom/google/android/gms/internal/ads/M;->b([BIIZ)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    if-nez v5, :cond_40

    .line 1221
    .line 1222
    const/4 v3, -0x1

    .line 1223
    return v3

    .line 1224
    :cond_40
    iput v7, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1225
    .line 1226
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v7

    .line 1233
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1234
    .line 1235
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1236
    .line 1237
    .line 1238
    move-result v3

    .line 1239
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1240
    .line 1241
    :cond_41
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1242
    .line 1243
    const-wide/16 v9, 0x1

    .line 1244
    .line 1245
    cmp-long v3, v7, v9

    .line 1246
    .line 1247
    if-nez v3, :cond_42

    .line 1248
    .line 1249
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1250
    .line 1251
    const/16 v5, 0x8

    .line 1252
    .line 1253
    invoke-interface {v0, v5, v3, v5}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 1254
    .line 1255
    .line 1256
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1257
    .line 1258
    add-int/2addr v3, v5

    .line 1259
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1260
    .line 1261
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 1262
    .line 1263
    .line 1264
    move-result-wide v7

    .line 1265
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1266
    .line 1267
    goto :goto_1f

    .line 1268
    :cond_42
    const-wide/16 v9, 0x0

    .line 1269
    .line 1270
    cmp-long v3, v7, v9

    .line 1271
    .line 1272
    if-nez v3, :cond_45

    .line 1273
    .line 1274
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 1275
    .line 1276
    .line 1277
    move-result-wide v7

    .line 1278
    const-wide/16 v9, -0x1

    .line 1279
    .line 1280
    cmp-long v3, v7, v9

    .line 1281
    .line 1282
    if-nez v3, :cond_44

    .line 1283
    .line 1284
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v3

    .line 1288
    check-cast v3, Lcom/google/android/gms/internal/ads/o1;

    .line 1289
    .line 1290
    if-eqz v3, :cond_43

    .line 1291
    .line 1292
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/o1;->c:J

    .line 1293
    .line 1294
    goto :goto_1e

    .line 1295
    :cond_43
    move-wide v7, v9

    .line 1296
    :cond_44
    :goto_1e
    cmp-long v3, v7, v9

    .line 1297
    .line 1298
    if-eqz v3, :cond_45

    .line 1299
    .line 1300
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v9

    .line 1304
    sub-long/2addr v7, v9

    .line 1305
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1306
    .line 1307
    int-to-long v9, v3

    .line 1308
    add-long/2addr v7, v9

    .line 1309
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1310
    .line 1311
    :cond_45
    :goto_1f
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1312
    .line 1313
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1314
    .line 1315
    int-to-long v9, v3

    .line 1316
    cmp-long v5, v7, v9

    .line 1317
    .line 1318
    if-ltz v5, :cond_4f

    .line 1319
    .line 1320
    iget v5, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1321
    .line 1322
    const v7, 0x6d6f6f76

    .line 1323
    .line 1324
    .line 1325
    const v8, 0x68646c72    # 4.3148E24f

    .line 1326
    .line 1327
    .line 1328
    const v9, 0x6d657461

    .line 1329
    .line 1330
    .line 1331
    if-eq v5, v7, :cond_4b

    .line 1332
    .line 1333
    const v7, 0x7472616b

    .line 1334
    .line 1335
    .line 1336
    if-eq v5, v7, :cond_4b

    .line 1337
    .line 1338
    const v7, 0x6d646961

    .line 1339
    .line 1340
    .line 1341
    if-eq v5, v7, :cond_4b

    .line 1342
    .line 1343
    const v7, 0x6d696e66

    .line 1344
    .line 1345
    .line 1346
    if-eq v5, v7, :cond_4b

    .line 1347
    .line 1348
    const v7, 0x7374626c

    .line 1349
    .line 1350
    .line 1351
    if-eq v5, v7, :cond_4b

    .line 1352
    .line 1353
    const v7, 0x65647473

    .line 1354
    .line 1355
    .line 1356
    if-eq v5, v7, :cond_4b

    .line 1357
    .line 1358
    if-ne v5, v9, :cond_46

    .line 1359
    .line 1360
    goto/16 :goto_23

    .line 1361
    .line 1362
    :cond_46
    const v4, 0x6d646864

    .line 1363
    .line 1364
    .line 1365
    if-eq v5, v4, :cond_47

    .line 1366
    .line 1367
    const v4, 0x6d766864

    .line 1368
    .line 1369
    .line 1370
    if-eq v5, v4, :cond_47

    .line 1371
    .line 1372
    if-eq v5, v8, :cond_47

    .line 1373
    .line 1374
    const v4, 0x73747364

    .line 1375
    .line 1376
    .line 1377
    if-eq v5, v4, :cond_47

    .line 1378
    .line 1379
    const v4, 0x73747473

    .line 1380
    .line 1381
    .line 1382
    if-eq v5, v4, :cond_47

    .line 1383
    .line 1384
    const v4, 0x73747373

    .line 1385
    .line 1386
    .line 1387
    if-eq v5, v4, :cond_47

    .line 1388
    .line 1389
    const v4, 0x63747473

    .line 1390
    .line 1391
    .line 1392
    if-eq v5, v4, :cond_47

    .line 1393
    .line 1394
    const v4, 0x656c7374

    .line 1395
    .line 1396
    .line 1397
    if-eq v5, v4, :cond_47

    .line 1398
    .line 1399
    const v4, 0x73747363

    .line 1400
    .line 1401
    .line 1402
    if-eq v5, v4, :cond_47

    .line 1403
    .line 1404
    const v4, 0x7374737a

    .line 1405
    .line 1406
    .line 1407
    if-eq v5, v4, :cond_47

    .line 1408
    .line 1409
    const v4, 0x73747a32

    .line 1410
    .line 1411
    .line 1412
    if-eq v5, v4, :cond_47

    .line 1413
    .line 1414
    const v4, 0x7374636f

    .line 1415
    .line 1416
    .line 1417
    if-eq v5, v4, :cond_47

    .line 1418
    .line 1419
    const v4, 0x636f3634

    .line 1420
    .line 1421
    .line 1422
    if-eq v5, v4, :cond_47

    .line 1423
    .line 1424
    const v4, 0x746b6864

    .line 1425
    .line 1426
    .line 1427
    if-eq v5, v4, :cond_47

    .line 1428
    .line 1429
    const v4, 0x66747970

    .line 1430
    .line 1431
    .line 1432
    if-eq v5, v4, :cond_47

    .line 1433
    .line 1434
    const v4, 0x75647461

    .line 1435
    .line 1436
    .line 1437
    if-eq v5, v4, :cond_47

    .line 1438
    .line 1439
    const v4, 0x6b657973

    .line 1440
    .line 1441
    .line 1442
    if-eq v5, v4, :cond_47

    .line 1443
    .line 1444
    const v4, 0x696c7374

    .line 1445
    .line 1446
    .line 1447
    if-ne v5, v4, :cond_48

    .line 1448
    .line 1449
    :cond_47
    const/16 v4, 0x8

    .line 1450
    .line 1451
    goto :goto_20

    .line 1452
    :cond_48
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1453
    .line 1454
    .line 1455
    const/4 v3, 0x0

    .line 1456
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 1457
    .line 1458
    const/4 v3, 0x1

    .line 1459
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1460
    .line 1461
    goto/16 :goto_0

    .line 1462
    .line 1463
    :goto_20
    if-ne v3, v4, :cond_49

    .line 1464
    .line 1465
    const/4 v3, 0x1

    .line 1466
    goto :goto_21

    .line 1467
    :cond_49
    const/4 v3, 0x0

    .line 1468
    :goto_21
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 1469
    .line 1470
    .line 1471
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1472
    .line 1473
    const-wide/32 v7, 0x7fffffff

    .line 1474
    .line 1475
    .line 1476
    cmp-long v5, v3, v7

    .line 1477
    .line 1478
    if-gtz v5, :cond_4a

    .line 1479
    .line 1480
    const/4 v3, 0x1

    .line 1481
    goto :goto_22

    .line 1482
    :cond_4a
    const/4 v3, 0x0

    .line 1483
    :goto_22
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 1484
    .line 1485
    .line 1486
    new-instance v3, Lcom/google/android/gms/internal/ads/jr;

    .line 1487
    .line 1488
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1489
    .line 1490
    long-to-int v5, v4

    .line 1491
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 1492
    .line 1493
    .line 1494
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1495
    .line 1496
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1497
    .line 1498
    const/16 v6, 0x8

    .line 1499
    .line 1500
    const/4 v7, 0x0

    .line 1501
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1502
    .line 1503
    .line 1504
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->o:Lcom/google/android/gms/internal/ads/jr;

    .line 1505
    .line 1506
    const/4 v3, 0x1

    .line 1507
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1508
    .line 1509
    goto/16 :goto_0

    .line 1510
    .line 1511
    :cond_4b
    :goto_23
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 1512
    .line 1513
    .line 1514
    move-result-wide v5

    .line 1515
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1516
    .line 1517
    add-long/2addr v5, v10

    .line 1518
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1519
    .line 1520
    int-to-long v12, v3

    .line 1521
    cmp-long v3, v10, v12

    .line 1522
    .line 1523
    if-eqz v3, :cond_4d

    .line 1524
    .line 1525
    iget v3, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1526
    .line 1527
    if-ne v3, v9, :cond_4d

    .line 1528
    .line 1529
    const/16 v3, 0x8

    .line 1530
    .line 1531
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 1532
    .line 1533
    .line 1534
    iget-object v7, v14, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1535
    .line 1536
    const/4 v9, 0x0

    .line 1537
    invoke-interface {v0, v9, v7, v3}, Lcom/google/android/gms/internal/ads/M;->g(I[BI)V

    .line 1538
    .line 1539
    .line 1540
    sget-object v3, Lcom/google/android/gms/internal/ads/r1;->a:[B

    .line 1541
    .line 1542
    iget v3, v14, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1543
    .line 1544
    const/4 v7, 0x4

    .line 1545
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1546
    .line 1547
    .line 1548
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1549
    .line 1550
    .line 1551
    move-result v7

    .line 1552
    if-eq v7, v8, :cond_4c

    .line 1553
    .line 1554
    add-int/lit8 v3, v3, 0x4

    .line 1555
    .line 1556
    :cond_4c
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1557
    .line 1558
    .line 1559
    iget v3, v14, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1560
    .line 1561
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 1562
    .line 1563
    .line 1564
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 1565
    .line 1566
    .line 1567
    :cond_4d
    sub-long/2addr v5, v12

    .line 1568
    new-instance v3, Lcom/google/android/gms/internal/ads/o1;

    .line 1569
    .line 1570
    iget v7, v1, Lcom/google/android/gms/internal/ads/A1;->l:I

    .line 1571
    .line 1572
    invoke-direct {v3, v7, v5, v6}, Lcom/google/android/gms/internal/ads/o1;-><init>(IJ)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1576
    .line 1577
    .line 1578
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/A1;->m:J

    .line 1579
    .line 1580
    iget v7, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1581
    .line 1582
    int-to-long v7, v7

    .line 1583
    cmp-long v9, v3, v7

    .line 1584
    .line 1585
    if-nez v9, :cond_4e

    .line 1586
    .line 1587
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/A1;->g(J)V

    .line 1588
    .line 1589
    .line 1590
    goto/16 :goto_0

    .line 1591
    .line 1592
    :cond_4e
    const/4 v3, 0x0

    .line 1593
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1594
    .line 1595
    iput v3, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1596
    .line 1597
    goto/16 :goto_0

    .line 1598
    .line 1599
    :cond_4f
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1600
    .line 1601
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ka;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ka;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    throw v0

    .line 1606
    nop

    .line 1607
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/internal/ads/nH;->i(Lcom/google/android/gms/internal/ads/M;ZZ)Lcom/google/android/gms/internal/ads/c0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 16
    .line 17
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/A1;->j:Lcom/google/android/gms/internal/ads/PA;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    return v0
.end method

.method public final e(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/A1;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/A1;->p:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->q:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->r:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->s:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/A1;->t:Z

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    cmp-long v5, p1, v3

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 28
    .line 29
    const/4 p2, 0x3

    .line 30
    if-eq p1, p2, :cond_0

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->h:Lcom/google/android/gms/internal/ads/C1;

    .line 38
    .line 39
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/C1;->a:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    iput v0, p1, Lcom/google/android/gms/internal/ads/C1;->b:I

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->i:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 53
    .line 54
    array-length p2, p1

    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_0
    if-ge v3, p2, :cond_6

    .line 57
    .line 58
    aget-object v4, p1, v3

    .line 59
    .line 60
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 61
    .line 62
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 63
    .line 64
    invoke-static {v6, p3, p4, v0}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    :goto_1
    if-ltz v6, :cond_3

    .line 69
    .line 70
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 71
    .line 72
    aget v7, v7, v6

    .line 73
    .line 74
    and-int/2addr v7, v2

    .line 75
    if-eqz v7, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 v6, -0x1

    .line 82
    :goto_2
    if-ne v6, v1, :cond_4

    .line 83
    .line 84
    invoke-virtual {v5, p3, p4}, Lcom/google/android/gms/internal/ads/G1;->a(J)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    :cond_4
    iput v6, v4, Lcom/google/android/gms/internal/ads/z1;->e:I

    .line 89
    .line 90
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/z1;->d:LW0/M;

    .line 91
    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    iput-boolean v0, v4, LW0/M;->b:Z

    .line 95
    .line 96
    iput v0, v4, LW0/M;->c:I

    .line 97
    .line 98
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/A1;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/X1;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/A1;->a:Lcom/google/android/gms/internal/ads/V1;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/X1;-><init>(Lcom/google/android/gms/internal/ads/N;Lcom/google/android/gms/internal/ads/V1;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A1;->v:Lcom/google/android/gms/internal/ads/N;

    .line 16
    .line 17
    return-void
.end method

.method public final g(J)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    :goto_0
    const/4 v3, 0x0

    .line 5
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/A1;->g:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    if-nez v6, :cond_65

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    check-cast v6, Lcom/google/android/gms/internal/ads/o1;

    .line 18
    .line 19
    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/o1;->c:J

    .line 20
    .line 21
    cmp-long v6, v8, p1

    .line 22
    .line 23
    if-nez v6, :cond_65

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    move-object v8, v6

    .line 30
    check-cast v8, Lcom/google/android/gms/internal/ads/o1;

    .line 31
    .line 32
    iget v6, v8, Lq0/e;->b:I

    .line 33
    .line 34
    const v9, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v6, v9, :cond_64

    .line 38
    .line 39
    new-instance v6, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->A:I

    .line 45
    .line 46
    new-instance v15, Lcom/google/android/gms/internal/ads/T;

    .line 47
    .line 48
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/T;-><init>()V

    .line 49
    .line 50
    .line 51
    const v10, 0x75647461

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    const v11, 0x68646c72    # 4.3148E24f

    .line 59
    .line 60
    .line 61
    const/16 v14, 0x8

    .line 62
    .line 63
    const v7, 0x696c7374

    .line 64
    .line 65
    .line 66
    const v12, 0x6d657461

    .line 67
    .line 68
    .line 69
    move-object/from16 v19, v5

    .line 70
    .line 71
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    if-eqz v10, :cond_42

    .line 77
    .line 78
    sget-object v21, Lcom/google/android/gms/internal/ads/r1;->a:[B

    .line 79
    .line 80
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 81
    .line 82
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/google/android/gms/internal/ads/Q9;

    .line 86
    .line 87
    new-array v13, v3, [Lcom/google/android/gms/internal/ads/K9;

    .line 88
    .line 89
    invoke-direct {v2, v4, v5, v13}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    if-lt v13, v14, :cond_41

    .line 97
    .line 98
    iget v13, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 99
    .line 100
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 101
    .line 102
    .line 103
    move-result v22

    .line 104
    add-int v4, v22, v13

    .line 105
    .line 106
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-ne v5, v12, :cond_31

    .line 111
    .line 112
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 116
    .line 117
    .line 118
    iget v5, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 119
    .line 120
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eq v13, v11, :cond_0

    .line 128
    .line 129
    add-int/2addr v5, v0

    .line 130
    :cond_0
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 131
    .line 132
    .line 133
    :goto_2
    iget v5, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 134
    .line 135
    if-ge v5, v4, :cond_30

    .line 136
    .line 137
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    add-int/2addr v13, v5

    .line 142
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-ne v11, v7, :cond_2f

    .line 147
    .line 148
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 152
    .line 153
    .line 154
    new-instance v5, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :goto_3
    iget v11, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 160
    .line 161
    if-ge v11, v13, :cond_2d

    .line 162
    .line 163
    const-string v7, "Skipped unknown metadata entry: "

    .line 164
    .line 165
    const-string v12, "Unrecognized cover art flags: "

    .line 166
    .line 167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 168
    .line 169
    .line 170
    move-result v27

    .line 171
    add-int v11, v27, v11

    .line 172
    .line 173
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    shr-int/lit8 v0, v14, 0x18

    .line 178
    .line 179
    and-int/lit16 v0, v0, 0xff

    .line 180
    .line 181
    const/16 v3, 0xa9

    .line 182
    .line 183
    const v29, 0xffffff

    .line 184
    .line 185
    .line 186
    move-object/from16 v30, v6

    .line 187
    .line 188
    const-string v6, "TCON"

    .line 189
    .line 190
    const-string v1, "MetadataUtil"

    .line 191
    .line 192
    if-eq v0, v3, :cond_1e

    .line 193
    .line 194
    const/16 v3, 0xfd

    .line 195
    .line 196
    if-ne v0, v3, :cond_1

    .line 197
    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_1
    const v0, 0x676e7265

    .line 201
    .line 202
    .line 203
    if-ne v14, v0, :cond_4

    .line 204
    .line 205
    :try_start_0
    invoke-static {v10}, LQ3/b;->E(Lcom/google/android/gms/internal/ads/jr;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const/4 v3, -0x1

    .line 210
    add-int/2addr v0, v3

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Q0;->a(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    .line 217
    new-instance v1, Lcom/google/android/gms/internal/ads/U0;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const/4 v3, 0x0

    .line 224
    invoke-direct {v1, v6, v3, v0}, Lcom/google/android/gms/internal/ads/U0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/PA;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :catchall_0
    move-exception v0

    .line 230
    goto/16 :goto_c

    .line 231
    .line 232
    :cond_2
    const-string v0, "Failed to parse standard genre code"

    .line 233
    .line 234
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_3
    :goto_4
    const/4 v1, 0x0

    .line 238
    goto/16 :goto_b

    .line 239
    .line 240
    :cond_4
    const v0, 0x6469736b

    .line 241
    .line 242
    .line 243
    if-ne v14, v0, :cond_5

    .line 244
    .line 245
    const-string v1, "TPOS"

    .line 246
    .line 247
    invoke-static {v0, v1, v10}, LQ3/b;->N(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto/16 :goto_b

    .line 252
    .line 253
    :cond_5
    const v0, 0x74726b6e

    .line 254
    .line 255
    .line 256
    if-ne v14, v0, :cond_6

    .line 257
    .line 258
    const-string v1, "TRCK"

    .line 259
    .line 260
    invoke-static {v0, v1, v10}, LQ3/b;->N(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :cond_6
    const v0, 0x746d706f

    .line 267
    .line 268
    .line 269
    if-ne v14, v0, :cond_7

    .line 270
    .line 271
    const-string v1, "TBPM"

    .line 272
    .line 273
    const/4 v3, 0x1

    .line 274
    const/4 v6, 0x0

    .line 275
    invoke-static {v0, v1, v10, v3, v6}, LQ3/b;->J(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/P0;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    goto/16 :goto_b

    .line 280
    .line 281
    :cond_7
    const/4 v3, 0x1

    .line 282
    const v0, 0x6370696c

    .line 283
    .line 284
    .line 285
    if-ne v14, v0, :cond_8

    .line 286
    .line 287
    const-string v1, "TCMP"

    .line 288
    .line 289
    invoke-static {v0, v1, v10, v3, v3}, LQ3/b;->J(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/P0;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    goto/16 :goto_b

    .line 294
    .line 295
    :cond_8
    const v0, 0x636f7672

    .line 296
    .line 297
    .line 298
    if-ne v14, v0, :cond_d

    .line 299
    .line 300
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    const v6, 0x64617461

    .line 309
    .line 310
    .line 311
    if-ne v3, v6, :cond_c

    .line 312
    .line 313
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    and-int v3, v3, v29

    .line 318
    .line 319
    const/16 v6, 0xd

    .line 320
    .line 321
    if-ne v3, v6, :cond_9

    .line 322
    .line 323
    const-string v6, "image/jpeg"

    .line 324
    .line 325
    move-object/from16 v32, v6

    .line 326
    .line 327
    move v6, v3

    .line 328
    move-object/from16 v3, v32

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_9
    const/16 v6, 0xe

    .line 332
    .line 333
    if-ne v3, v6, :cond_a

    .line 334
    .line 335
    const-string v3, "image/png"

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_a
    move v6, v3

    .line 339
    const/4 v3, 0x0

    .line 340
    :goto_5
    if-nez v3, :cond_b

    .line 341
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_b
    const/4 v1, 0x4

    .line 359
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 360
    .line 361
    .line 362
    add-int/lit8 v0, v0, -0x10

    .line 363
    .line 364
    new-array v1, v0, [B

    .line 365
    .line 366
    const/4 v6, 0x0

    .line 367
    invoke-virtual {v10, v6, v1, v0}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lcom/google/android/gms/internal/ads/J0;

    .line 371
    .line 372
    const/4 v6, 0x3

    .line 373
    const/4 v12, 0x0

    .line 374
    invoke-direct {v0, v3, v12, v6, v1}, Lcom/google/android/gms/internal/ads/J0;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 375
    .line 376
    .line 377
    move-object v1, v0

    .line 378
    goto/16 :goto_b

    .line 379
    .line 380
    :cond_c
    const/4 v12, 0x0

    .line 381
    const-string v0, "Failed to parse cover art attribute"

    .line 382
    .line 383
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    move-object v1, v12

    .line 387
    goto/16 :goto_b

    .line 388
    .line 389
    :cond_d
    const/4 v12, 0x0

    .line 390
    const v0, 0x61415254

    .line 391
    .line 392
    .line 393
    if-ne v14, v0, :cond_e

    .line 394
    .line 395
    const-string v1, "TPE2"

    .line 396
    .line 397
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    goto/16 :goto_b

    .line 402
    .line 403
    :cond_e
    const v0, 0x736f6e6d

    .line 404
    .line 405
    .line 406
    if-ne v14, v0, :cond_f

    .line 407
    .line 408
    const-string v1, "TSOT"

    .line 409
    .line 410
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    goto/16 :goto_b

    .line 415
    .line 416
    :cond_f
    const v0, 0x736f616c

    .line 417
    .line 418
    .line 419
    if-ne v14, v0, :cond_10

    .line 420
    .line 421
    const-string v1, "TSOA"

    .line 422
    .line 423
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    goto/16 :goto_b

    .line 428
    .line 429
    :cond_10
    const v0, 0x736f6172

    .line 430
    .line 431
    .line 432
    if-ne v14, v0, :cond_11

    .line 433
    .line 434
    const-string v1, "TSOP"

    .line 435
    .line 436
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    goto/16 :goto_b

    .line 441
    .line 442
    :cond_11
    const v0, 0x736f6161

    .line 443
    .line 444
    .line 445
    if-ne v14, v0, :cond_12

    .line 446
    .line 447
    const-string v1, "TSO2"

    .line 448
    .line 449
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    goto/16 :goto_b

    .line 454
    .line 455
    :cond_12
    const v0, 0x736f636f

    .line 456
    .line 457
    .line 458
    if-ne v14, v0, :cond_13

    .line 459
    .line 460
    const-string v1, "TSOC"

    .line 461
    .line 462
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    goto/16 :goto_b

    .line 467
    .line 468
    :cond_13
    const v0, 0x72746e67

    .line 469
    .line 470
    .line 471
    if-ne v14, v0, :cond_14

    .line 472
    .line 473
    const-string v1, "ITUNESADVISORY"

    .line 474
    .line 475
    const/4 v3, 0x0

    .line 476
    invoke-static {v0, v1, v10, v3, v3}, LQ3/b;->J(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/P0;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    goto/16 :goto_b

    .line 481
    .line 482
    :cond_14
    const/4 v3, 0x0

    .line 483
    const v0, 0x70676170

    .line 484
    .line 485
    .line 486
    if-ne v14, v0, :cond_15

    .line 487
    .line 488
    const-string v1, "ITUNESGAPLESS"

    .line 489
    .line 490
    const/4 v6, 0x1

    .line 491
    invoke-static {v0, v1, v10, v3, v6}, LQ3/b;->J(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;ZZ)Lcom/google/android/gms/internal/ads/P0;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    goto/16 :goto_b

    .line 496
    .line 497
    :cond_15
    const v0, 0x736f736e

    .line 498
    .line 499
    .line 500
    if-ne v14, v0, :cond_16

    .line 501
    .line 502
    const-string v1, "TVSHOWSORT"

    .line 503
    .line 504
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    goto/16 :goto_b

    .line 509
    .line 510
    :cond_16
    const v0, 0x74767368

    .line 511
    .line 512
    .line 513
    if-ne v14, v0, :cond_17

    .line 514
    .line 515
    const-string v1, "TVSHOW"

    .line 516
    .line 517
    invoke-static {v0, v1, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    goto/16 :goto_b

    .line 522
    .line 523
    :cond_17
    const v0, 0x2d2d2d2d

    .line 524
    .line 525
    .line 526
    if-ne v14, v0, :cond_29

    .line 527
    .line 528
    move-object v0, v12

    .line 529
    move-object v3, v0

    .line 530
    const/4 v1, -0x1

    .line 531
    const/4 v6, -0x1

    .line 532
    :goto_6
    iget v7, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 533
    .line 534
    if-ge v7, v11, :cond_1c

    .line 535
    .line 536
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 537
    .line 538
    .line 539
    move-result v14

    .line 540
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    move/from16 v29, v7

    .line 545
    .line 546
    const/4 v7, 0x4

    .line 547
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 548
    .line 549
    .line 550
    const v7, 0x6d65616e

    .line 551
    .line 552
    .line 553
    if-ne v12, v7, :cond_18

    .line 554
    .line 555
    add-int/lit8 v14, v14, -0xc

    .line 556
    .line 557
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/jr;->a(I)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    :goto_7
    const/4 v12, 0x0

    .line 562
    goto :goto_6

    .line 563
    :cond_18
    add-int/lit8 v7, v14, -0xc

    .line 564
    .line 565
    move/from16 v31, v14

    .line 566
    .line 567
    const v14, 0x6e616d65

    .line 568
    .line 569
    .line 570
    if-ne v12, v14, :cond_19

    .line 571
    .line 572
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/jr;->a(I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    goto :goto_7

    .line 577
    :cond_19
    const v14, 0x64617461

    .line 578
    .line 579
    .line 580
    if-ne v12, v14, :cond_1a

    .line 581
    .line 582
    move/from16 v6, v31

    .line 583
    .line 584
    :cond_1a
    if-ne v12, v14, :cond_1b

    .line 585
    .line 586
    move/from16 v1, v29

    .line 587
    .line 588
    :cond_1b
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 589
    .line 590
    .line 591
    goto :goto_7

    .line 592
    :cond_1c
    if-eqz v3, :cond_3

    .line 593
    .line 594
    if-eqz v0, :cond_3

    .line 595
    .line 596
    const/4 v7, -0x1

    .line 597
    if-ne v1, v7, :cond_1d

    .line 598
    .line 599
    goto/16 :goto_4

    .line 600
    .line 601
    :cond_1d
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 602
    .line 603
    .line 604
    const/16 v1, 0x10

    .line 605
    .line 606
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 607
    .line 608
    .line 609
    add-int/lit8 v6, v6, -0x10

    .line 610
    .line 611
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/jr;->a(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    new-instance v6, Lcom/google/android/gms/internal/ads/R0;

    .line 616
    .line 617
    invoke-direct {v6, v3, v0, v1}, Lcom/google/android/gms/internal/ads/R0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    move-object v1, v6

    .line 621
    goto/16 :goto_b

    .line 622
    .line 623
    :cond_1e
    :goto_8
    and-int v0, v14, v29

    .line 624
    .line 625
    const v3, 0x636d74

    .line 626
    .line 627
    .line 628
    if-ne v0, v3, :cond_20

    .line 629
    .line 630
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    const v6, 0x64617461

    .line 639
    .line 640
    .line 641
    if-ne v3, v6, :cond_1f

    .line 642
    .line 643
    const/16 v3, 0x8

    .line 644
    .line 645
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 646
    .line 647
    .line 648
    add-int/lit8 v0, v0, -0x10

    .line 649
    .line 650
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/jr;->a(I)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    new-instance v1, Lcom/google/android/gms/internal/ads/N0;

    .line 655
    .line 656
    const-string v3, "und"

    .line 657
    .line 658
    invoke-direct {v1, v3, v0, v0}, Lcom/google/android/gms/internal/ads/N0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    goto/16 :goto_b

    .line 662
    .line 663
    :cond_1f
    invoke-static {v14}, Lq0/e;->d(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    const-string v3, "Failed to parse comment attribute: "

    .line 668
    .line 669
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_4

    .line 677
    .line 678
    :cond_20
    const v3, 0x6e616d

    .line 679
    .line 680
    .line 681
    if-eq v0, v3, :cond_2b

    .line 682
    .line 683
    const v3, 0x74726b

    .line 684
    .line 685
    .line 686
    if-ne v0, v3, :cond_21

    .line 687
    .line 688
    goto/16 :goto_a

    .line 689
    .line 690
    :cond_21
    const v3, 0x636f6d

    .line 691
    .line 692
    .line 693
    if-eq v0, v3, :cond_2a

    .line 694
    .line 695
    const v3, 0x777274

    .line 696
    .line 697
    .line 698
    if-ne v0, v3, :cond_22

    .line 699
    .line 700
    goto/16 :goto_9

    .line 701
    .line 702
    :cond_22
    const v3, 0x646179

    .line 703
    .line 704
    .line 705
    if-ne v0, v3, :cond_23

    .line 706
    .line 707
    const-string v0, "TDRC"

    .line 708
    .line 709
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    goto/16 :goto_b

    .line 714
    .line 715
    :cond_23
    const v3, 0x415254

    .line 716
    .line 717
    .line 718
    if-ne v0, v3, :cond_24

    .line 719
    .line 720
    const-string v0, "TPE1"

    .line 721
    .line 722
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    goto :goto_b

    .line 727
    :cond_24
    const v3, 0x746f6f

    .line 728
    .line 729
    .line 730
    if-ne v0, v3, :cond_25

    .line 731
    .line 732
    const-string v0, "TSSE"

    .line 733
    .line 734
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    goto :goto_b

    .line 739
    :cond_25
    const v3, 0x616c62

    .line 740
    .line 741
    .line 742
    if-ne v0, v3, :cond_26

    .line 743
    .line 744
    const-string v0, "TALB"

    .line 745
    .line 746
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    goto :goto_b

    .line 751
    :cond_26
    const v3, 0x6c7972

    .line 752
    .line 753
    .line 754
    if-ne v0, v3, :cond_27

    .line 755
    .line 756
    const-string v0, "USLT"

    .line 757
    .line 758
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    goto :goto_b

    .line 763
    :cond_27
    const v3, 0x67656e

    .line 764
    .line 765
    .line 766
    if-ne v0, v3, :cond_28

    .line 767
    .line 768
    invoke-static {v14, v6, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    goto :goto_b

    .line 773
    :cond_28
    const v3, 0x677270

    .line 774
    .line 775
    .line 776
    if-ne v0, v3, :cond_29

    .line 777
    .line 778
    const-string v0, "TIT1"

    .line 779
    .line 780
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    goto :goto_b

    .line 785
    :cond_29
    invoke-static {v14}, Lq0/e;->d(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_4

    .line 805
    .line 806
    :cond_2a
    :goto_9
    const-string v0, "TCOM"

    .line 807
    .line 808
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    goto :goto_b

    .line 813
    :cond_2b
    :goto_a
    const-string v0, "TIT2"

    .line 814
    .line 815
    invoke-static {v14, v0, v10}, LQ3/b;->R(ILjava/lang/String;Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/U0;

    .line 816
    .line 817
    .line 818
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :goto_b
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 820
    .line 821
    .line 822
    if-eqz v1, :cond_2c

    .line 823
    .line 824
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    :cond_2c
    const/4 v0, 0x4

    .line 828
    const v7, 0x696c7374

    .line 829
    .line 830
    .line 831
    const v12, 0x6d657461

    .line 832
    .line 833
    .line 834
    const/16 v14, 0x8

    .line 835
    .line 836
    move-object/from16 v1, p0

    .line 837
    .line 838
    move-object/from16 v6, v30

    .line 839
    .line 840
    goto/16 :goto_3

    .line 841
    .line 842
    :goto_c
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 843
    .line 844
    .line 845
    throw v0

    .line 846
    :cond_2d
    move-object/from16 v30, v6

    .line 847
    .line 848
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    if-eqz v0, :cond_2e

    .line 853
    .line 854
    :goto_d
    const/4 v3, 0x0

    .line 855
    goto :goto_e

    .line 856
    :cond_2e
    new-instance v3, Lcom/google/android/gms/internal/ads/Q9;

    .line 857
    .line 858
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Ljava/util/List;)V

    .line 859
    .line 860
    .line 861
    goto :goto_e

    .line 862
    :cond_2f
    move-object/from16 v30, v6

    .line 863
    .line 864
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 865
    .line 866
    .line 867
    const/4 v0, 0x4

    .line 868
    const v7, 0x696c7374

    .line 869
    .line 870
    .line 871
    const v11, 0x68646c72    # 4.3148E24f

    .line 872
    .line 873
    .line 874
    const v12, 0x6d657461

    .line 875
    .line 876
    .line 877
    const/16 v14, 0x8

    .line 878
    .line 879
    move-object/from16 v1, p0

    .line 880
    .line 881
    goto/16 :goto_2

    .line 882
    .line 883
    :cond_30
    move-object/from16 v30, v6

    .line 884
    .line 885
    goto :goto_d

    .line 886
    :goto_e
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    :goto_f
    move-object v2, v0

    .line 891
    goto/16 :goto_18

    .line 892
    .line 893
    :cond_31
    move-object/from16 v30, v6

    .line 894
    .line 895
    const v0, 0x736d7461

    .line 896
    .line 897
    .line 898
    if-ne v5, v0, :cond_3f

    .line 899
    .line 900
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 901
    .line 902
    .line 903
    const/16 v0, 0xc

    .line 904
    .line 905
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 906
    .line 907
    .line 908
    :goto_10
    iget v0, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 909
    .line 910
    if-ge v0, v4, :cond_32

    .line 911
    .line 912
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    const v5, 0x73617574

    .line 921
    .line 922
    .line 923
    if-ne v3, v5, :cond_3e

    .line 924
    .line 925
    const/16 v3, 0x10

    .line 926
    .line 927
    if-ge v1, v3, :cond_33

    .line 928
    .line 929
    :cond_32
    :goto_11
    const/4 v3, 0x0

    .line 930
    goto/16 :goto_16

    .line 931
    .line 932
    :cond_33
    const/4 v0, 0x4

    .line 933
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 934
    .line 935
    .line 936
    const/4 v0, -0x1

    .line 937
    const/4 v1, 0x0

    .line 938
    const/4 v3, 0x0

    .line 939
    :goto_12
    const/4 v5, 0x2

    .line 940
    if-ge v1, v5, :cond_36

    .line 941
    .line 942
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 947
    .line 948
    .line 949
    move-result v6

    .line 950
    if-nez v5, :cond_34

    .line 951
    .line 952
    move v0, v6

    .line 953
    const/4 v7, 0x1

    .line 954
    goto :goto_13

    .line 955
    :cond_34
    const/4 v7, 0x1

    .line 956
    if-ne v5, v7, :cond_35

    .line 957
    .line 958
    move v3, v6

    .line 959
    :cond_35
    :goto_13
    add-int/2addr v1, v7

    .line 960
    goto :goto_12

    .line 961
    :cond_36
    const v1, -0x7fffffff

    .line 962
    .line 963
    .line 964
    const/16 v5, 0xc

    .line 965
    .line 966
    if-ne v0, v5, :cond_37

    .line 967
    .line 968
    const/16 v0, 0xf0

    .line 969
    .line 970
    goto :goto_15

    .line 971
    :cond_37
    const/16 v5, 0xd

    .line 972
    .line 973
    if-ne v0, v5, :cond_38

    .line 974
    .line 975
    const/16 v0, 0x78

    .line 976
    .line 977
    goto :goto_15

    .line 978
    :cond_38
    const/16 v5, 0x15

    .line 979
    .line 980
    if-eq v0, v5, :cond_3a

    .line 981
    .line 982
    :cond_39
    :goto_14
    const v0, -0x7fffffff

    .line 983
    .line 984
    .line 985
    goto :goto_15

    .line 986
    :cond_3a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    const/16 v5, 0x8

    .line 991
    .line 992
    if-lt v0, v5, :cond_39

    .line 993
    .line 994
    iget v0, v10, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 995
    .line 996
    add-int/2addr v0, v5

    .line 997
    if-le v0, v4, :cond_3b

    .line 998
    .line 999
    goto :goto_14

    .line 1000
    :cond_3b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1005
    .line 1006
    .line 1007
    move-result v5

    .line 1008
    const/16 v6, 0xc

    .line 1009
    .line 1010
    if-lt v0, v6, :cond_39

    .line 1011
    .line 1012
    const v0, 0x73726672

    .line 1013
    .line 1014
    .line 1015
    if-eq v5, v0, :cond_3c

    .line 1016
    .line 1017
    goto :goto_14

    .line 1018
    :cond_3c
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->x()I

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    :goto_15
    if-ne v0, v1, :cond_3d

    .line 1023
    .line 1024
    goto :goto_11

    .line 1025
    :cond_3d
    new-instance v1, Lcom/google/android/gms/internal/ads/Q9;

    .line 1026
    .line 1027
    new-instance v5, Lcom/google/android/gms/internal/ads/Z0;

    .line 1028
    .line 1029
    int-to-float v0, v0

    .line 1030
    invoke-direct {v5, v3, v0}, Lcom/google/android/gms/internal/ads/Z0;-><init>(IF)V

    .line 1031
    .line 1032
    .line 1033
    const/4 v0, 0x1

    .line 1034
    new-array v3, v0, [Lcom/google/android/gms/internal/ads/K9;

    .line 1035
    .line 1036
    const/4 v0, 0x0

    .line 1037
    aput-object v5, v3, v0

    .line 1038
    .line 1039
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    invoke-direct {v1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 1045
    .line 1046
    .line 1047
    move-object v3, v1

    .line 1048
    goto :goto_16

    .line 1049
    :cond_3e
    const/16 v5, 0xd

    .line 1050
    .line 1051
    add-int/2addr v0, v1

    .line 1052
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1053
    .line 1054
    .line 1055
    goto/16 :goto_10

    .line 1056
    .line 1057
    :goto_16
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    goto/16 :goto_f

    .line 1062
    .line 1063
    :cond_3f
    const v0, -0x56878686

    .line 1064
    .line 1065
    .line 1066
    if-ne v5, v0, :cond_40

    .line 1067
    .line 1068
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/jr;->d()S

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    const/4 v1, 0x2

    .line 1073
    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1074
    .line 1075
    .line 1076
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1077
    .line 1078
    invoke-virtual {v10, v0, v1}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    const/16 v1, 0x2b

    .line 1083
    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 1085
    .line 1086
    .line 1087
    move-result v1

    .line 1088
    const/16 v3, 0x2d

    .line 1089
    .line 1090
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 1091
    .line 1092
    .line 1093
    move-result v3

    .line 1094
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 1095
    .line 1096
    .line 1097
    move-result v1

    .line 1098
    const/4 v3, 0x0

    .line 1099
    :try_start_1
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1104
    .line 1105
    .line 1106
    move-result v3

    .line 1107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1108
    .line 1109
    .line 1110
    move-result v5

    .line 1111
    const/4 v6, -0x1

    .line 1112
    add-int/2addr v5, v6

    .line 1113
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1118
    .line 1119
    .line 1120
    move-result v0

    .line 1121
    new-instance v1, Lcom/google/android/gms/internal/ads/Q9;

    .line 1122
    .line 1123
    const/4 v5, 0x1

    .line 1124
    new-array v6, v5, [Lcom/google/android/gms/internal/ads/K9;

    .line 1125
    .line 1126
    new-instance v5, Lcom/google/android/gms/internal/ads/Vu;

    .line 1127
    .line 1128
    invoke-direct {v5, v3, v0}, Lcom/google/android/gms/internal/ads/Vu;-><init>(FF)V

    .line 1129
    .line 1130
    .line 1131
    const/4 v0, 0x0

    .line 1132
    aput-object v5, v6, v0

    .line 1133
    .line 1134
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    invoke-direct {v1, v11, v12, v6}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1140
    .line 1141
    .line 1142
    move-object v3, v1

    .line 1143
    goto :goto_17

    .line 1144
    :catch_0
    const/4 v3, 0x0

    .line 1145
    :goto_17
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    goto/16 :goto_f

    .line 1150
    .line 1151
    :cond_40
    :goto_18
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1152
    .line 1153
    .line 1154
    move-object/from16 v6, v30

    .line 1155
    .line 1156
    const/4 v0, 0x4

    .line 1157
    const/4 v3, 0x0

    .line 1158
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    const v7, 0x696c7374

    .line 1164
    .line 1165
    .line 1166
    const v11, 0x68646c72    # 4.3148E24f

    .line 1167
    .line 1168
    .line 1169
    const v12, 0x6d657461

    .line 1170
    .line 1171
    .line 1172
    const/16 v14, 0x8

    .line 1173
    .line 1174
    move-object/from16 v1, p0

    .line 1175
    .line 1176
    goto/16 :goto_1

    .line 1177
    .line 1178
    :cond_41
    move-object/from16 v30, v6

    .line 1179
    .line 1180
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/T;->b(Lcom/google/android/gms/internal/ads/Q9;)V

    .line 1181
    .line 1182
    .line 1183
    const v0, 0x6d657461

    .line 1184
    .line 1185
    .line 1186
    goto :goto_19

    .line 1187
    :cond_42
    move-object/from16 v30, v6

    .line 1188
    .line 1189
    const v0, 0x6d657461

    .line 1190
    .line 1191
    .line 1192
    const/4 v2, 0x0

    .line 1193
    :goto_19
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/o1;->e(I)Lcom/google/android/gms/internal/ads/o1;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    if-eqz v0, :cond_4a

    .line 1198
    .line 1199
    sget-object v1, Lcom/google/android/gms/internal/ads/r1;->a:[B

    .line 1200
    .line 1201
    const v1, 0x68646c72    # 4.3148E24f

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v1

    .line 1208
    const v3, 0x6b657973

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v3

    .line 1215
    const v4, 0x696c7374

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    if-eqz v1, :cond_4a

    .line 1223
    .line 1224
    if-eqz v3, :cond_4a

    .line 1225
    .line 1226
    if-eqz v0, :cond_4a

    .line 1227
    .line 1228
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1229
    .line 1230
    const/16 v4, 0x10

    .line 1231
    .line 1232
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1236
    .line 1237
    .line 1238
    move-result v1

    .line 1239
    const v4, 0x6d647461

    .line 1240
    .line 1241
    .line 1242
    if-eq v1, v4, :cond_43

    .line 1243
    .line 1244
    goto/16 :goto_1f

    .line 1245
    .line 1246
    :cond_43
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1247
    .line 1248
    const/16 v3, 0xc

    .line 1249
    .line 1250
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    new-array v4, v3, [Ljava/lang/String;

    .line 1258
    .line 1259
    const/4 v5, 0x0

    .line 1260
    :goto_1a
    if-ge v5, v3, :cond_44

    .line 1261
    .line 1262
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1263
    .line 1264
    .line 1265
    move-result v6

    .line 1266
    const/4 v7, 0x4

    .line 1267
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 1268
    .line 1269
    .line 1270
    add-int/lit8 v6, v6, -0x8

    .line 1271
    .line 1272
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1273
    .line 1274
    invoke-virtual {v1, v6, v10}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v6

    .line 1278
    aput-object v6, v4, v5

    .line 1279
    .line 1280
    const/4 v6, 0x1

    .line 1281
    add-int/2addr v5, v6

    .line 1282
    goto :goto_1a

    .line 1283
    :cond_44
    const/4 v7, 0x4

    .line 1284
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1285
    .line 1286
    const/16 v1, 0x8

    .line 1287
    .line 1288
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1289
    .line 1290
    .line 1291
    new-instance v5, Ljava/util/ArrayList;

    .line 1292
    .line 1293
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .line 1295
    .line 1296
    :goto_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1297
    .line 1298
    .line 1299
    move-result v6

    .line 1300
    if-le v6, v1, :cond_49

    .line 1301
    .line 1302
    iget v6, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1303
    .line 1304
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1305
    .line 1306
    .line 1307
    move-result v10

    .line 1308
    add-int/2addr v10, v6

    .line 1309
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1310
    .line 1311
    .line 1312
    move-result v6

    .line 1313
    const/4 v13, -0x1

    .line 1314
    add-int/2addr v6, v13

    .line 1315
    if-ltz v6, :cond_47

    .line 1316
    .line 1317
    if-ge v6, v3, :cond_47

    .line 1318
    .line 1319
    aget-object v6, v4, v6

    .line 1320
    .line 1321
    :goto_1c
    iget v11, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 1322
    .line 1323
    if-ge v11, v10, :cond_46

    .line 1324
    .line 1325
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1326
    .line 1327
    .line 1328
    move-result v12

    .line 1329
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1330
    .line 1331
    .line 1332
    move-result v14

    .line 1333
    const v1, 0x64617461

    .line 1334
    .line 1335
    .line 1336
    if-ne v14, v1, :cond_45

    .line 1337
    .line 1338
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1339
    .line 1340
    .line 1341
    move-result v11

    .line 1342
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 1343
    .line 1344
    .line 1345
    move-result v14

    .line 1346
    add-int/lit8 v12, v12, -0x10

    .line 1347
    .line 1348
    new-array v1, v12, [B

    .line 1349
    .line 1350
    const/4 v7, 0x0

    .line 1351
    invoke-virtual {v0, v7, v1, v12}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 1352
    .line 1353
    .line 1354
    new-instance v7, Lcom/google/android/gms/internal/ads/Gu;

    .line 1355
    .line 1356
    invoke-direct {v7, v6, v1, v14, v11}, Lcom/google/android/gms/internal/ads/Gu;-><init>(Ljava/lang/String;[BII)V

    .line 1357
    .line 1358
    .line 1359
    goto :goto_1d

    .line 1360
    :cond_45
    add-int/2addr v11, v12

    .line 1361
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1362
    .line 1363
    .line 1364
    const/16 v1, 0x8

    .line 1365
    .line 1366
    const/4 v7, 0x4

    .line 1367
    goto :goto_1c

    .line 1368
    :cond_46
    const/4 v7, 0x0

    .line 1369
    :goto_1d
    if-eqz v7, :cond_48

    .line 1370
    .line 1371
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    .line 1373
    .line 1374
    goto :goto_1e

    .line 1375
    :cond_47
    const-string v1, "Skipped metadata with unknown key index: "

    .line 1376
    .line 1377
    const-string v7, "AtomParsers"

    .line 1378
    .line 1379
    invoke-static {v1, v6, v7}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    :cond_48
    :goto_1e
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1383
    .line 1384
    .line 1385
    const/16 v1, 0x8

    .line 1386
    .line 1387
    const/4 v7, 0x4

    .line 1388
    goto :goto_1b

    .line 1389
    :cond_49
    const/4 v13, -0x1

    .line 1390
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v0

    .line 1394
    if-nez v0, :cond_4b

    .line 1395
    .line 1396
    new-instance v3, Lcom/google/android/gms/internal/ads/Q9;

    .line 1397
    .line 1398
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Ljava/util/List;)V

    .line 1399
    .line 1400
    .line 1401
    goto :goto_20

    .line 1402
    :cond_4a
    :goto_1f
    const/4 v13, -0x1

    .line 1403
    :cond_4b
    const/4 v3, 0x0

    .line 1404
    :goto_20
    new-instance v0, Lcom/google/android/gms/internal/ads/Q9;

    .line 1405
    .line 1406
    const/4 v1, 0x1

    .line 1407
    new-array v4, v1, [Lcom/google/android/gms/internal/ads/K9;

    .line 1408
    .line 1409
    const v5, 0x6d766864

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/o1;->f(I)Lcom/google/android/gms/internal/ads/p1;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v5

    .line 1416
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1417
    .line 1418
    .line 1419
    if-ne v9, v1, :cond_4c

    .line 1420
    .line 1421
    const/4 v14, 0x1

    .line 1422
    goto :goto_21

    .line 1423
    :cond_4c
    const/4 v14, 0x0

    .line 1424
    :goto_21
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/p1;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 1425
    .line 1426
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/r1;->a(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/wv;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v5

    .line 1430
    const/4 v6, 0x0

    .line 1431
    aput-object v5, v4, v6

    .line 1432
    .line 1433
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    invoke-direct {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 1439
    .line 1440
    .line 1441
    new-instance v4, Lcom/google/android/gms/internal/ads/u1;

    .line 1442
    .line 1443
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 1444
    .line 1445
    .line 1446
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    const/4 v12, 0x0

    .line 1452
    const/4 v1, 0x0

    .line 1453
    move-object v9, v15

    .line 1454
    const/4 v5, 0x0

    .line 1455
    const/4 v6, -0x1

    .line 1456
    move v13, v1

    .line 1457
    const/16 v1, 0x8

    .line 1458
    .line 1459
    move-object v7, v15

    .line 1460
    move-object v15, v4

    .line 1461
    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/r1;->b(Lcom/google/android/gms/internal/ads/o1;Lcom/google/android/gms/internal/ads/T;JLcom/google/android/gms/internal/ads/mO;ZZLcom/google/android/gms/internal/ads/u1;)Ljava/util/ArrayList;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    const/4 v10, 0x0

    .line 1471
    const/4 v11, 0x0

    .line 1472
    const/4 v13, -0x1

    .line 1473
    :goto_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1474
    .line 1475
    .line 1476
    move-result v12

    .line 1477
    if-ge v10, v12, :cond_5d

    .line 1478
    .line 1479
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v12

    .line 1483
    check-cast v12, Lcom/google/android/gms/internal/ads/G1;

    .line 1484
    .line 1485
    iget v5, v12, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 1486
    .line 1487
    if-nez v5, :cond_4d

    .line 1488
    .line 1489
    move-object/from16 v16, v4

    .line 1490
    .line 1491
    move/from16 v20, v11

    .line 1492
    .line 1493
    move-object/from16 v11, v30

    .line 1494
    .line 1495
    const/4 v4, -0x1

    .line 1496
    const/4 v5, 0x3

    .line 1497
    const/4 v6, 0x1

    .line 1498
    const/16 v17, 0x8

    .line 1499
    .line 1500
    move-object/from16 v1, p0

    .line 1501
    .line 1502
    goto/16 :goto_2f

    .line 1503
    .line 1504
    :cond_4d
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 1505
    .line 1506
    iget-wide v14, v5, Lcom/google/android/gms/internal/ads/D1;->e:J

    .line 1507
    .line 1508
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    cmp-long v16, v14, v23

    .line 1514
    .line 1515
    if-eqz v16, :cond_4e

    .line 1516
    .line 1517
    goto :goto_23

    .line 1518
    :cond_4e
    iget-wide v14, v12, Lcom/google/android/gms/internal/ads/G1;->h:J

    .line 1519
    .line 1520
    :goto_23
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 1521
    .line 1522
    .line 1523
    move-result-wide v8

    .line 1524
    new-instance v6, Lcom/google/android/gms/internal/ads/z1;

    .line 1525
    .line 1526
    move-object/from16 v1, p0

    .line 1527
    .line 1528
    move-object/from16 v16, v4

    .line 1529
    .line 1530
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/A1;->v:Lcom/google/android/gms/internal/ads/N;

    .line 1531
    .line 1532
    const/16 v18, 0x1

    .line 1533
    .line 1534
    add-int/lit8 v20, v11, 0x1

    .line 1535
    .line 1536
    move-wide/from16 v28, v8

    .line 1537
    .line 1538
    iget v8, v5, Lcom/google/android/gms/internal/ads/D1;->b:I

    .line 1539
    .line 1540
    invoke-interface {v4, v11, v8}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v4

    .line 1544
    invoke-direct {v6, v5, v12, v4}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/D1;Lcom/google/android/gms/internal/ads/G1;Lcom/google/android/gms/internal/ads/e0;)V

    .line 1545
    .line 1546
    .line 1547
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 1548
    .line 1549
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 1550
    .line 1551
    const-string v9, "audio/true-hd"

    .line 1552
    .line 1553
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v5

    .line 1557
    iget v9, v12, Lcom/google/android/gms/internal/ads/G1;->e:I

    .line 1558
    .line 1559
    if-eqz v5, :cond_4f

    .line 1560
    .line 1561
    const/16 v5, 0x10

    .line 1562
    .line 1563
    mul-int/lit8 v9, v9, 0x10

    .line 1564
    .line 1565
    goto :goto_24

    .line 1566
    :cond_4f
    const/16 v5, 0x10

    .line 1567
    .line 1568
    add-int/lit8 v9, v9, 0x1e

    .line 1569
    .line 1570
    :goto_24
    new-instance v11, Lcom/google/android/gms/internal/ads/K;

    .line 1571
    .line 1572
    invoke-direct {v11, v4}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1573
    .line 1574
    .line 1575
    iput v9, v11, Lcom/google/android/gms/internal/ads/K;->m:I

    .line 1576
    .line 1577
    const/4 v9, 0x2

    .line 1578
    if-ne v8, v9, :cond_53

    .line 1579
    .line 1580
    iget v9, v1, Lcom/google/android/gms/internal/ads/A1;->b:I

    .line 1581
    .line 1582
    const/16 v17, 0x8

    .line 1583
    .line 1584
    and-int/lit8 v9, v9, 0x8

    .line 1585
    .line 1586
    if-eqz v9, :cond_51

    .line 1587
    .line 1588
    const/4 v9, -0x1

    .line 1589
    if-ne v13, v9, :cond_50

    .line 1590
    .line 1591
    const/4 v9, 0x1

    .line 1592
    goto :goto_25

    .line 1593
    :cond_50
    const/4 v9, 0x2

    .line 1594
    :goto_25
    iget v4, v4, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 1595
    .line 1596
    or-int/2addr v4, v9

    .line 1597
    iput v4, v11, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 1598
    .line 1599
    :cond_51
    const-wide/16 v25, 0x0

    .line 1600
    .line 1601
    cmp-long v4, v14, v25

    .line 1602
    .line 1603
    if-lez v4, :cond_52

    .line 1604
    .line 1605
    iget v4, v12, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 1606
    .line 1607
    if-lez v4, :cond_52

    .line 1608
    .line 1609
    long-to-float v9, v14

    .line 1610
    int-to-float v4, v4

    .line 1611
    const v12, 0x49742400    # 1000000.0f

    .line 1612
    .line 1613
    .line 1614
    div-float/2addr v9, v12

    .line 1615
    div-float/2addr v4, v9

    .line 1616
    iput v4, v11, Lcom/google/android/gms/internal/ads/K;->t:F

    .line 1617
    .line 1618
    :cond_52
    :goto_26
    const/4 v4, 0x1

    .line 1619
    goto :goto_27

    .line 1620
    :cond_53
    const/16 v17, 0x8

    .line 1621
    .line 1622
    goto :goto_26

    .line 1623
    :goto_27
    if-ne v8, v4, :cond_54

    .line 1624
    .line 1625
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/T;->a()Z

    .line 1626
    .line 1627
    .line 1628
    move-result v4

    .line 1629
    if-eqz v4, :cond_54

    .line 1630
    .line 1631
    iget v4, v7, Lcom/google/android/gms/internal/ads/T;->a:I

    .line 1632
    .line 1633
    iput v4, v11, Lcom/google/android/gms/internal/ads/K;->C:I

    .line 1634
    .line 1635
    iget v4, v7, Lcom/google/android/gms/internal/ads/T;->b:I

    .line 1636
    .line 1637
    iput v4, v11, Lcom/google/android/gms/internal/ads/K;->D:I

    .line 1638
    .line 1639
    :cond_54
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/A1;->i:Ljava/util/ArrayList;

    .line 1640
    .line 1641
    const/4 v9, 0x3

    .line 1642
    new-array v12, v9, [Lcom/google/android/gms/internal/ads/Q9;

    .line 1643
    .line 1644
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1645
    .line 1646
    .line 1647
    move-result v9

    .line 1648
    if-eqz v9, :cond_55

    .line 1649
    .line 1650
    const/4 v4, 0x0

    .line 1651
    const/4 v9, 0x0

    .line 1652
    goto :goto_28

    .line 1653
    :cond_55
    new-instance v9, Lcom/google/android/gms/internal/ads/Q9;

    .line 1654
    .line 1655
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/ads/Q9;-><init>(Ljava/util/List;)V

    .line 1656
    .line 1657
    .line 1658
    const/4 v4, 0x0

    .line 1659
    :goto_28
    aput-object v9, v12, v4

    .line 1660
    .line 1661
    const/4 v9, 0x1

    .line 1662
    aput-object v2, v12, v9

    .line 1663
    .line 1664
    const/4 v9, 0x2

    .line 1665
    aput-object v0, v12, v9

    .line 1666
    .line 1667
    new-instance v9, Lcom/google/android/gms/internal/ads/Q9;

    .line 1668
    .line 1669
    new-array v14, v4, [Lcom/google/android/gms/internal/ads/K9;

    .line 1670
    .line 1671
    move-object v15, v6

    .line 1672
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    invoke-direct {v9, v5, v6, v14}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 1678
    .line 1679
    .line 1680
    if-eqz v3, :cond_58

    .line 1681
    .line 1682
    const/4 v4, 0x0

    .line 1683
    :goto_29
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/Q9;->G:[Lcom/google/android/gms/internal/ads/K9;

    .line 1684
    .line 1685
    array-length v5, v14

    .line 1686
    if-ge v4, v5, :cond_58

    .line 1687
    .line 1688
    aget-object v5, v14, v4

    .line 1689
    .line 1690
    instance-of v6, v5, Lcom/google/android/gms/internal/ads/Gu;

    .line 1691
    .line 1692
    if-eqz v6, :cond_56

    .line 1693
    .line 1694
    check-cast v5, Lcom/google/android/gms/internal/ads/Gu;

    .line 1695
    .line 1696
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Gu;->G:Ljava/lang/String;

    .line 1697
    .line 1698
    const-string v14, "com.android.capture.fps"

    .line 1699
    .line 1700
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v6

    .line 1704
    if-eqz v6, :cond_57

    .line 1705
    .line 1706
    const/4 v6, 0x2

    .line 1707
    if-ne v8, v6, :cond_56

    .line 1708
    .line 1709
    const/4 v6, 0x1

    .line 1710
    new-array v14, v6, [Lcom/google/android/gms/internal/ads/K9;

    .line 1711
    .line 1712
    const/16 v18, 0x0

    .line 1713
    .line 1714
    aput-object v5, v14, v18

    .line 1715
    .line 1716
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/Q9;->d([Lcom/google/android/gms/internal/ads/K9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v5

    .line 1720
    :goto_2a
    move-object v9, v5

    .line 1721
    goto :goto_2b

    .line 1722
    :cond_56
    const/4 v6, 0x1

    .line 1723
    goto :goto_2b

    .line 1724
    :cond_57
    const/4 v6, 0x1

    .line 1725
    const/16 v18, 0x0

    .line 1726
    .line 1727
    new-array v14, v6, [Lcom/google/android/gms/internal/ads/K9;

    .line 1728
    .line 1729
    aput-object v5, v14, v18

    .line 1730
    .line 1731
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/Q9;->d([Lcom/google/android/gms/internal/ads/K9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v5

    .line 1735
    goto :goto_2a

    .line 1736
    :goto_2b
    add-int/2addr v4, v6

    .line 1737
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    goto :goto_29

    .line 1743
    :cond_58
    const/4 v6, 0x1

    .line 1744
    const/4 v4, 0x0

    .line 1745
    const/4 v5, 0x3

    .line 1746
    :goto_2c
    if-ge v4, v5, :cond_59

    .line 1747
    .line 1748
    aget-object v14, v12, v4

    .line 1749
    .line 1750
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/Q9;->e(Lcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v9

    .line 1754
    add-int/2addr v4, v6

    .line 1755
    goto :goto_2c

    .line 1756
    :cond_59
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/Q9;->G:[Lcom/google/android/gms/internal/ads/K9;

    .line 1757
    .line 1758
    array-length v4, v4

    .line 1759
    if-lez v4, :cond_5a

    .line 1760
    .line 1761
    iput-object v9, v11, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 1762
    .line 1763
    :cond_5a
    new-instance v4, Lcom/google/android/gms/internal/ads/p0;

    .line 1764
    .line 1765
    invoke-direct {v4, v11}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1766
    .line 1767
    .line 1768
    move-object v6, v15

    .line 1769
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/e0;

    .line 1770
    .line 1771
    invoke-interface {v9, v4}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1772
    .line 1773
    .line 1774
    const/4 v4, 0x2

    .line 1775
    if-ne v8, v4, :cond_5c

    .line 1776
    .line 1777
    const/4 v4, -0x1

    .line 1778
    if-ne v13, v4, :cond_5b

    .line 1779
    .line 1780
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    .line 1781
    .line 1782
    .line 1783
    move-result v13

    .line 1784
    :cond_5b
    :goto_2d
    move-object/from16 v11, v30

    .line 1785
    .line 1786
    goto :goto_2e

    .line 1787
    :cond_5c
    const/4 v4, -0x1

    .line 1788
    goto :goto_2d

    .line 1789
    :goto_2e
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    .line 1791
    .line 1792
    move-wide/from16 v8, v28

    .line 1793
    .line 1794
    const/4 v6, 0x1

    .line 1795
    :goto_2f
    add-int/2addr v10, v6

    .line 1796
    move-object/from16 v30, v11

    .line 1797
    .line 1798
    move-object/from16 v4, v16

    .line 1799
    .line 1800
    move/from16 v11, v20

    .line 1801
    .line 1802
    const/16 v1, 0x8

    .line 1803
    .line 1804
    const/4 v5, 0x0

    .line 1805
    const/4 v6, -0x1

    .line 1806
    goto/16 :goto_22

    .line 1807
    .line 1808
    :cond_5d
    move-object/from16 v11, v30

    .line 1809
    .line 1810
    const/4 v4, -0x1

    .line 1811
    const-wide/16 v25, 0x0

    .line 1812
    .line 1813
    move-object/from16 v1, p0

    .line 1814
    .line 1815
    iput v13, v1, Lcom/google/android/gms/internal/ads/A1;->y:I

    .line 1816
    .line 1817
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/A1;->z:J

    .line 1818
    .line 1819
    const/4 v0, 0x0

    .line 1820
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/z1;

    .line 1821
    .line 1822
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v0

    .line 1826
    check-cast v0, [Lcom/google/android/gms/internal/ads/z1;

    .line 1827
    .line 1828
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/A1;->w:[Lcom/google/android/gms/internal/ads/z1;

    .line 1829
    .line 1830
    array-length v2, v0

    .line 1831
    new-array v3, v2, [[J

    .line 1832
    .line 1833
    new-array v5, v2, [I

    .line 1834
    .line 1835
    new-array v6, v2, [J

    .line 1836
    .line 1837
    new-array v2, v2, [Z

    .line 1838
    .line 1839
    const/4 v7, 0x0

    .line 1840
    :goto_30
    array-length v8, v0

    .line 1841
    if-ge v7, v8, :cond_5e

    .line 1842
    .line 1843
    aget-object v8, v0, v7

    .line 1844
    .line 1845
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 1846
    .line 1847
    iget v8, v8, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 1848
    .line 1849
    new-array v8, v8, [J

    .line 1850
    .line 1851
    aput-object v8, v3, v7

    .line 1852
    .line 1853
    aget-object v8, v0, v7

    .line 1854
    .line 1855
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 1856
    .line 1857
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 1858
    .line 1859
    const/4 v9, 0x0

    .line 1860
    aget-wide v10, v8, v9

    .line 1861
    .line 1862
    aput-wide v10, v6, v7

    .line 1863
    .line 1864
    const/4 v8, 0x1

    .line 1865
    add-int/2addr v7, v8

    .line 1866
    goto :goto_30

    .line 1867
    :cond_5e
    move-wide/from16 v14, v25

    .line 1868
    .line 1869
    const/4 v7, 0x0

    .line 1870
    :goto_31
    array-length v8, v0

    .line 1871
    if-ge v7, v8, :cond_62

    .line 1872
    .line 1873
    const-wide v8, 0x7fffffffffffffffL

    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    move-wide v9, v8

    .line 1879
    const/4 v8, 0x0

    .line 1880
    const/4 v13, -0x1

    .line 1881
    :goto_32
    array-length v11, v0

    .line 1882
    if-ge v8, v11, :cond_60

    .line 1883
    .line 1884
    aget-boolean v11, v2, v8

    .line 1885
    .line 1886
    if-nez v11, :cond_5f

    .line 1887
    .line 1888
    aget-wide v11, v6, v8

    .line 1889
    .line 1890
    cmp-long v16, v11, v9

    .line 1891
    .line 1892
    if-gtz v16, :cond_5f

    .line 1893
    .line 1894
    move v13, v8

    .line 1895
    move-wide v9, v11

    .line 1896
    :cond_5f
    const/4 v11, 0x1

    .line 1897
    add-int/2addr v8, v11

    .line 1898
    goto :goto_32

    .line 1899
    :cond_60
    const/4 v11, 0x1

    .line 1900
    aget v8, v5, v13

    .line 1901
    .line 1902
    aget-object v9, v3, v13

    .line 1903
    .line 1904
    aput-wide v14, v9, v8

    .line 1905
    .line 1906
    aget-object v10, v0, v13

    .line 1907
    .line 1908
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 1909
    .line 1910
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/G1;->d:[I

    .line 1911
    .line 1912
    aget v12, v12, v8

    .line 1913
    .line 1914
    move-object/from16 v16, v5

    .line 1915
    .line 1916
    int-to-long v4, v12

    .line 1917
    add-long/2addr v14, v4

    .line 1918
    add-int/2addr v8, v11

    .line 1919
    aput v8, v16, v13

    .line 1920
    .line 1921
    array-length v4, v9

    .line 1922
    if-ge v8, v4, :cond_61

    .line 1923
    .line 1924
    iget-object v4, v10, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 1925
    .line 1926
    aget-wide v8, v4, v8

    .line 1927
    .line 1928
    aput-wide v8, v6, v13

    .line 1929
    .line 1930
    :goto_33
    move-object/from16 v5, v16

    .line 1931
    .line 1932
    const/4 v4, -0x1

    .line 1933
    goto :goto_31

    .line 1934
    :cond_61
    aput-boolean v11, v2, v13

    .line 1935
    .line 1936
    add-int/2addr v7, v11

    .line 1937
    goto :goto_33

    .line 1938
    :cond_62
    const/4 v11, 0x1

    .line 1939
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/A1;->x:[[J

    .line 1940
    .line 1941
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/A1;->v:Lcom/google/android/gms/internal/ads/N;

    .line 1942
    .line 1943
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 1944
    .line 1945
    .line 1946
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/A1;->v:Lcom/google/android/gms/internal/ads/N;

    .line 1947
    .line 1948
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->clear()V

    .line 1952
    .line 1953
    .line 1954
    const/4 v0, 0x2

    .line 1955
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1956
    .line 1957
    :cond_63
    :goto_34
    const/4 v0, 0x4

    .line 1958
    goto/16 :goto_0

    .line 1959
    .line 1960
    :cond_64
    move-object/from16 v19, v5

    .line 1961
    .line 1962
    const/4 v11, 0x1

    .line 1963
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    if-nez v0, :cond_63

    .line 1968
    .line 1969
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v0

    .line 1973
    check-cast v0, Lcom/google/android/gms/internal/ads/o1;

    .line 1974
    .line 1975
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/o1;->e:Ljava/util/ArrayList;

    .line 1976
    .line 1977
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    .line 1979
    .line 1980
    goto :goto_34

    .line 1981
    :cond_65
    iget v0, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1982
    .line 1983
    const/4 v2, 0x2

    .line 1984
    if-eq v0, v2, :cond_66

    .line 1985
    .line 1986
    const/4 v0, 0x0

    .line 1987
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->k:I

    .line 1988
    .line 1989
    iput v0, v1, Lcom/google/android/gms/internal/ads/A1;->n:I

    .line 1990
    .line 1991
    :cond_66
    return-void
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/A1;->z:J

    return-wide v0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/A1;->j:Lcom/google/android/gms/internal/ads/PA;

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
