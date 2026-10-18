.class public final Lcom/google/android/gms/internal/ads/C2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# static fields
.field public static final w:[B


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/gms/internal/ads/f0;

.field public final c:Lcom/google/android/gms/internal/ads/jr;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/internal/ads/e0;

.field public h:Lcom/google/android/gms/internal/ads/e0;

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:J

.field public s:I

.field public t:J

.field public u:Lcom/google/android/gms/internal/ads/e0;

.field public v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/C2;->w:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/f0;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/C2;->w:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 33
    .line 34
    const/16 v0, 0x100

    .line 35
    .line 36
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->n:I

    .line 40
    .line 41
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 42
    .line 43
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/C2;->r:J

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 51
    .line 52
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/C2;->a:Z

    .line 53
    .line 54
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/C2;->d:Ljava/lang/String;

    .line 55
    .line 56
    iput p1, p0, Lcom/google/android/gms/internal/ads/C2;->e:I

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/C2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 9
    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget v6, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-lez v6, :cond_1e

    .line 20
    .line 21
    iget v6, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 22
    .line 23
    const/16 v7, 0x100

    .line 24
    .line 25
    const/4 v8, 0x3

    .line 26
    const/4 v9, 0x4

    .line 27
    const/16 v10, 0xd

    .line 28
    .line 29
    const/4 v11, 0x7

    .line 30
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/C2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 31
    .line 32
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/C2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 33
    .line 34
    if-eqz v6, :cond_b

    .line 35
    .line 36
    if-eq v6, v5, :cond_8

    .line 37
    .line 38
    const/16 v14, 0xa

    .line 39
    .line 40
    if-eq v6, v4, :cond_7

    .line 41
    .line 42
    if-eq v6, v8, :cond_2

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget v8, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 49
    .line 50
    iget v9, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 51
    .line 52
    sub-int/2addr v8, v9

    .line 53
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/C2;->u:Lcom/google/android/gms/internal/ads/e0;

    .line 58
    .line 59
    invoke-interface {v8, v6, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 60
    .line 61
    .line 62
    iget v8, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 63
    .line 64
    add-int/2addr v8, v6

    .line 65
    iput v8, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 66
    .line 67
    iget v6, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 68
    .line 69
    if-ne v8, v6, :cond_0

    .line 70
    .line 71
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 72
    .line 73
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    cmp-long v6, v8, v10

    .line 79
    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const/4 v6, 0x0

    .line 85
    :goto_1
    invoke-static {v6}, Lo3/r;->M(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/C2;->u:Lcom/google/android/gms/internal/ads/e0;

    .line 89
    .line 90
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 91
    .line 92
    iget v12, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 93
    .line 94
    const/4 v14, 0x0

    .line 95
    const/4 v11, 0x1

    .line 96
    const/4 v13, 0x0

    .line 97
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 98
    .line 99
    .line 100
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 101
    .line 102
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/C2;->v:J

    .line 103
    .line 104
    add-long/2addr v8, v10

    .line 105
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 106
    .line 107
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 108
    .line 109
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 110
    .line 111
    iput v7, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/C2;->l:Z

    .line 115
    .line 116
    const/4 v7, 0x5

    .line 117
    if-eq v5, v6, :cond_3

    .line 118
    .line 119
    const/4 v6, 0x5

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const/4 v6, 0x7

    .line 122
    :goto_2
    iget-object v12, v13, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    iget v3, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 129
    .line 130
    sub-int v3, v6, v3

    .line 131
    .line 132
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iget v15, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 137
    .line 138
    invoke-virtual {v1, v15, v12, v3}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 139
    .line 140
    .line 141
    iget v12, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 142
    .line 143
    add-int/2addr v12, v3

    .line 144
    iput v12, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 145
    .line 146
    if-ne v12, v6, :cond_0

    .line 147
    .line 148
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 149
    .line 150
    .line 151
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/C2;->q:Z

    .line 152
    .line 153
    if-nez v3, :cond_5

    .line 154
    .line 155
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    add-int/2addr v3, v5

    .line 160
    if-eq v3, v4, :cond_4

    .line 161
    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v12, "Detected audio object type: "

    .line 165
    .line 166
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ", but assuming AAC LC."

    .line 173
    .line 174
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const-string v6, "AdtsReader"

    .line 182
    .line 183
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iget v6, v0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 194
    .line 195
    shr-int/lit8 v7, v6, 0x1

    .line 196
    .line 197
    and-int/2addr v7, v11

    .line 198
    or-int/lit8 v7, v7, 0x10

    .line 199
    .line 200
    int-to-byte v7, v7

    .line 201
    shl-int/2addr v6, v11

    .line 202
    shl-int/2addr v3, v8

    .line 203
    and-int/lit16 v6, v6, 0x80

    .line 204
    .line 205
    and-int/lit8 v3, v3, 0x78

    .line 206
    .line 207
    or-int/2addr v3, v6

    .line 208
    int-to-byte v3, v3

    .line 209
    new-array v6, v4, [B

    .line 210
    .line 211
    aput-byte v7, v6, v2

    .line 212
    .line 213
    aput-byte v3, v6, v5

    .line 214
    .line 215
    new-instance v3, Lcom/google/android/gms/internal/ads/f0;

    .line 216
    .line 217
    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/nH;->c(Lcom/google/android/gms/internal/ads/f0;Z)LW0/r;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 225
    .line 226
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 227
    .line 228
    .line 229
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/C2;->f:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v8, v7, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 232
    .line 233
    const-string v8, "audio/mp4a-latm"

    .line 234
    .line 235
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v8, v3, LW0/r;->a:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v8, v7, Lcom/google/android/gms/internal/ads/K;->i:Ljava/lang/String;

    .line 241
    .line 242
    iget v8, v3, LW0/r;->c:I

    .line 243
    .line 244
    iput v8, v7, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 245
    .line 246
    iget v3, v3, LW0/r;->b:I

    .line 247
    .line 248
    iput v3, v7, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 249
    .line 250
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/K;->o:Ljava/util/List;

    .line 255
    .line 256
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->d:Ljava/lang/String;

    .line 257
    .line 258
    iput-object v3, v7, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 259
    .line 260
    iget v3, v0, Lcom/google/android/gms/internal/ads/C2;->e:I

    .line 261
    .line 262
    iput v3, v7, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 263
    .line 264
    new-instance v3, Lcom/google/android/gms/internal/ads/p0;

    .line 265
    .line 266
    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 267
    .line 268
    .line 269
    iget v6, v3, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 270
    .line 271
    int-to-long v6, v6

    .line 272
    const-wide/32 v11, 0x3d090000

    .line 273
    .line 274
    .line 275
    div-long/2addr v11, v6

    .line 276
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/C2;->r:J

    .line 277
    .line 278
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/C2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 279
    .line 280
    invoke-interface {v6, v3}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 281
    .line 282
    .line 283
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/C2;->q:Z

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_5
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 287
    .line 288
    .line 289
    :goto_3
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    add-int/lit8 v6, v3, -0x7

    .line 297
    .line 298
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/C2;->l:Z

    .line 299
    .line 300
    if-eqz v7, :cond_6

    .line 301
    .line 302
    add-int/lit8 v6, v3, -0x9

    .line 303
    .line 304
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 305
    .line 306
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/C2;->r:J

    .line 307
    .line 308
    iput v9, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 309
    .line 310
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 311
    .line 312
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->u:Lcom/google/android/gms/internal/ads/e0;

    .line 313
    .line 314
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/C2;->v:J

    .line 315
    .line 316
    iput v6, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_7
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    iget v7, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 327
    .line 328
    rsub-int/lit8 v7, v7, 0xa

    .line 329
    .line 330
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    iget v7, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 335
    .line 336
    invoke-virtual {v1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 337
    .line 338
    .line 339
    iget v3, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 340
    .line 341
    add-int/2addr v3, v6

    .line 342
    iput v3, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 343
    .line 344
    if-ne v3, v14, :cond_0

    .line 345
    .line 346
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 347
    .line 348
    invoke-interface {v3, v14, v12}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 349
    .line 350
    .line 351
    const/4 v3, 0x6

    .line 352
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 353
    .line 354
    .line 355
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 356
    .line 357
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/jr;->v()I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    add-int/2addr v6, v14

    .line 362
    iput v9, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 363
    .line 364
    iput v14, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 365
    .line 366
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/C2;->u:Lcom/google/android/gms/internal/ads/e0;

    .line 367
    .line 368
    const-wide/16 v7, 0x0

    .line 369
    .line 370
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/C2;->v:J

    .line 371
    .line 372
    iput v6, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_0

    .line 381
    .line 382
    iget-object v3, v13, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 383
    .line 384
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 385
    .line 386
    iget v10, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 387
    .line 388
    aget-byte v6, v6, v10

    .line 389
    .line 390
    aput-byte v6, v3, v2

    .line 391
    .line 392
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    iget v6, v0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 400
    .line 401
    const/4 v9, -0x1

    .line 402
    if-eq v6, v9, :cond_9

    .line 403
    .line 404
    if-eq v3, v6, :cond_9

    .line 405
    .line 406
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 407
    .line 408
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 409
    .line 410
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 411
    .line 412
    iput v7, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_9
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 417
    .line 418
    if-nez v6, :cond_a

    .line 419
    .line 420
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 421
    .line 422
    iget v6, v0, Lcom/google/android/gms/internal/ads/C2;->p:I

    .line 423
    .line 424
    iput v6, v0, Lcom/google/android/gms/internal/ads/C2;->n:I

    .line 425
    .line 426
    iput v3, v0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 427
    .line 428
    :cond_a
    iput v8, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 429
    .line 430
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 431
    .line 432
    goto/16 :goto_0

    .line 433
    .line 434
    :cond_b
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 435
    .line 436
    iget v6, v1, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 437
    .line 438
    iget v14, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 439
    .line 440
    :goto_4
    if-ge v6, v14, :cond_1d

    .line 441
    .line 442
    add-int/lit8 v15, v6, 0x1

    .line 443
    .line 444
    aget-byte v7, v3, v6

    .line 445
    .line 446
    and-int/lit16 v8, v7, 0xff

    .line 447
    .line 448
    iget v11, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 449
    .line 450
    const/16 v10, 0x200

    .line 451
    .line 452
    if-ne v11, v10, :cond_c

    .line 453
    .line 454
    int-to-byte v11, v8

    .line 455
    and-int/lit16 v11, v11, 0xff

    .line 456
    .line 457
    const v16, 0xff00

    .line 458
    .line 459
    .line 460
    or-int v11, v11, v16

    .line 461
    .line 462
    const v17, 0xfff6

    .line 463
    .line 464
    .line 465
    and-int v11, v11, v17

    .line 466
    .line 467
    const v10, 0xfff0

    .line 468
    .line 469
    .line 470
    if-ne v11, v10, :cond_c

    .line 471
    .line 472
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 473
    .line 474
    if-nez v11, :cond_f

    .line 475
    .line 476
    const/4 v11, -0x1

    .line 477
    add-int/lit8 v18, v6, -0x1

    .line 478
    .line 479
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 480
    .line 481
    .line 482
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 483
    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 485
    .line 486
    .line 487
    move-result v10

    .line 488
    if-ge v10, v5, :cond_d

    .line 489
    .line 490
    :cond_c
    move-object/from16 v19, v3

    .line 491
    .line 492
    const/4 v3, -0x1

    .line 493
    goto/16 :goto_b

    .line 494
    .line 495
    :cond_d
    invoke-virtual {v1, v2, v11, v5}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 502
    .line 503
    .line 504
    move-result v10

    .line 505
    iget v11, v0, Lcom/google/android/gms/internal/ads/C2;->n:I

    .line 506
    .line 507
    const/4 v9, -0x1

    .line 508
    if-eq v11, v9, :cond_e

    .line 509
    .line 510
    if-ne v10, v11, :cond_c

    .line 511
    .line 512
    :cond_e
    iget v11, v0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 513
    .line 514
    if-eq v11, v9, :cond_11

    .line 515
    .line 516
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 517
    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 519
    .line 520
    .line 521
    move-result v11

    .line 522
    if-ge v11, v5, :cond_10

    .line 523
    .line 524
    :cond_f
    :goto_5
    const/4 v3, -0x1

    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_10
    invoke-virtual {v1, v2, v9, v5}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 531
    .line 532
    .line 533
    const/4 v9, 0x4

    .line 534
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    iget v4, v0, Lcom/google/android/gms/internal/ads/C2;->o:I

    .line 539
    .line 540
    if-ne v11, v4, :cond_c

    .line 541
    .line 542
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_11
    const/4 v9, 0x4

    .line 547
    :goto_6
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 548
    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    if-ge v11, v9, :cond_12

    .line 554
    .line 555
    goto :goto_5

    .line 556
    :cond_12
    invoke-virtual {v1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 557
    .line 558
    .line 559
    const/16 v4, 0xe

    .line 560
    .line 561
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 562
    .line 563
    .line 564
    const/16 v4, 0xd

    .line 565
    .line 566
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    const/4 v4, 0x7

    .line 571
    if-lt v11, v4, :cond_c

    .line 572
    .line 573
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 574
    .line 575
    iget v9, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 576
    .line 577
    add-int v11, v18, v11

    .line 578
    .line 579
    if-ge v11, v9, :cond_f

    .line 580
    .line 581
    aget-byte v2, v4, v11

    .line 582
    .line 583
    move-object/from16 v19, v3

    .line 584
    .line 585
    const/4 v3, -0x1

    .line 586
    if-ne v2, v3, :cond_13

    .line 587
    .line 588
    add-int/2addr v11, v5

    .line 589
    if-eq v11, v9, :cond_14

    .line 590
    .line 591
    aget-byte v2, v4, v11

    .line 592
    .line 593
    and-int/lit16 v4, v2, 0xff

    .line 594
    .line 595
    or-int v4, v4, v16

    .line 596
    .line 597
    and-int v4, v4, v17

    .line 598
    .line 599
    const v9, 0xfff0

    .line 600
    .line 601
    .line 602
    if-ne v4, v9, :cond_17

    .line 603
    .line 604
    and-int/lit8 v2, v2, 0x8

    .line 605
    .line 606
    const/4 v4, 0x3

    .line 607
    shr-int/2addr v2, v4

    .line 608
    if-ne v2, v10, :cond_17

    .line 609
    .line 610
    goto :goto_7

    .line 611
    :cond_13
    const/16 v10, 0x49

    .line 612
    .line 613
    if-ne v2, v10, :cond_17

    .line 614
    .line 615
    add-int/lit8 v2, v11, 0x1

    .line 616
    .line 617
    if-eq v2, v9, :cond_14

    .line 618
    .line 619
    aget-byte v2, v4, v2

    .line 620
    .line 621
    const/16 v10, 0x44

    .line 622
    .line 623
    if-ne v2, v10, :cond_17

    .line 624
    .line 625
    const/4 v2, 0x2

    .line 626
    add-int/2addr v11, v2

    .line 627
    if-eq v11, v9, :cond_14

    .line 628
    .line 629
    aget-byte v2, v4, v11

    .line 630
    .line 631
    const/16 v4, 0x33

    .line 632
    .line 633
    if-ne v2, v4, :cond_17

    .line 634
    .line 635
    :cond_14
    :goto_7
    and-int/lit8 v2, v7, 0x8

    .line 636
    .line 637
    const/4 v4, 0x3

    .line 638
    shr-int/2addr v2, v4

    .line 639
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->p:I

    .line 640
    .line 641
    and-int/lit8 v2, v7, 0x1

    .line 642
    .line 643
    xor-int/2addr v2, v5

    .line 644
    if-eq v5, v2, :cond_15

    .line 645
    .line 646
    const/4 v2, 0x0

    .line 647
    goto :goto_8

    .line 648
    :cond_15
    const/4 v2, 0x1

    .line 649
    :goto_8
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/C2;->l:Z

    .line 650
    .line 651
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 652
    .line 653
    if-nez v2, :cond_16

    .line 654
    .line 655
    iput v5, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 656
    .line 657
    const/4 v2, 0x0

    .line 658
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_16
    const/4 v2, 0x0

    .line 662
    const/4 v4, 0x3

    .line 663
    iput v4, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 664
    .line 665
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 666
    .line 667
    :goto_9
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 668
    .line 669
    .line 670
    :goto_a
    const/4 v2, 0x0

    .line 671
    const/4 v4, 0x2

    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :cond_17
    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 675
    .line 676
    or-int v4, v2, v8

    .line 677
    .line 678
    const/16 v7, 0x149

    .line 679
    .line 680
    if-eq v4, v7, :cond_1c

    .line 681
    .line 682
    const/16 v7, 0x1ff

    .line 683
    .line 684
    if-eq v4, v7, :cond_1b

    .line 685
    .line 686
    const/16 v7, 0x344

    .line 687
    .line 688
    if-eq v4, v7, :cond_1a

    .line 689
    .line 690
    const/16 v7, 0x433

    .line 691
    .line 692
    if-eq v4, v7, :cond_19

    .line 693
    .line 694
    const/16 v4, 0x100

    .line 695
    .line 696
    if-eq v2, v4, :cond_18

    .line 697
    .line 698
    iput v4, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 699
    .line 700
    :goto_c
    move-object/from16 v3, v19

    .line 701
    .line 702
    const/4 v2, 0x0

    .line 703
    const/4 v4, 0x2

    .line 704
    const/16 v7, 0x100

    .line 705
    .line 706
    const/4 v8, 0x3

    .line 707
    const/4 v9, 0x4

    .line 708
    const/16 v10, 0xd

    .line 709
    .line 710
    const/4 v11, 0x7

    .line 711
    goto/16 :goto_4

    .line 712
    .line 713
    :cond_18
    const/4 v2, 0x2

    .line 714
    const/4 v7, 0x3

    .line 715
    const/4 v8, 0x0

    .line 716
    goto :goto_e

    .line 717
    :cond_19
    const/4 v2, 0x2

    .line 718
    iput v2, v0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 719
    .line 720
    const/4 v7, 0x3

    .line 721
    iput v7, v0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 722
    .line 723
    const/4 v8, 0x0

    .line 724
    iput v8, v0, Lcom/google/android/gms/internal/ads/C2;->s:I

    .line 725
    .line 726
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 730
    .line 731
    .line 732
    goto :goto_a

    .line 733
    :cond_1a
    const/4 v2, 0x2

    .line 734
    const/16 v4, 0x100

    .line 735
    .line 736
    const/4 v7, 0x3

    .line 737
    const/4 v8, 0x0

    .line 738
    const/16 v6, 0x400

    .line 739
    .line 740
    :goto_d
    iput v6, v0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 741
    .line 742
    goto :goto_e

    .line 743
    :cond_1b
    const/4 v2, 0x2

    .line 744
    const/16 v4, 0x100

    .line 745
    .line 746
    const/16 v6, 0x200

    .line 747
    .line 748
    const/4 v7, 0x3

    .line 749
    const/4 v8, 0x0

    .line 750
    goto :goto_d

    .line 751
    :cond_1c
    const/4 v2, 0x2

    .line 752
    const/16 v4, 0x100

    .line 753
    .line 754
    const/4 v7, 0x3

    .line 755
    const/4 v8, 0x0

    .line 756
    const/16 v6, 0x300

    .line 757
    .line 758
    goto :goto_d

    .line 759
    :goto_e
    move v6, v15

    .line 760
    goto :goto_c

    .line 761
    :cond_1d
    const/4 v2, 0x2

    .line 762
    const/4 v3, -0x1

    .line 763
    const/4 v8, 0x0

    .line 764
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 765
    .line 766
    .line 767
    goto :goto_a

    .line 768
    :cond_1e
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, LA1/I;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, LA1/I;->d()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C2;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, LA1/I;->d()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, LA1/I;->d:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C2;->u:Lcom/google/android/gms/internal/ads/e0;

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/C2;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, LA1/I;->c()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, LA1/I;->d()V

    .line 33
    .line 34
    .line 35
    iget v0, p2, LA1/I;->d:I

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, LA1/I;->d()V

    .line 50
    .line 51
    .line 52
    iget-object p2, p2, LA1/I;->e:Ljava/lang/String;

    .line 53
    .line 54
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 55
    .line 56
    const-string p2, "application/id3"

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 62
    .line 63
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/I;

    .line 71
    .line 72
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/I;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C2;->h:Lcom/google/android/gms/internal/ads/e0;

    .line 76
    .line 77
    return-void
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/C2;->t:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/C2;->m:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->i:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->j:I

    .line 14
    .line 15
    const/16 v0, 0x100

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/C2;->k:I

    .line 18
    .line 19
    return-void
.end method
