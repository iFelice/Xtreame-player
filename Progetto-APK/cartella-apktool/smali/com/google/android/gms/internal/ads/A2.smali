.class public final Lcom/google/android/gms/internal/ads/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/F2;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/f0;

.field public final c:Lcom/google/android/gms/internal/ads/jr;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public f:Ljava/lang/String;

.field public g:Lcom/google/android/gms/internal/ads/e0;

.field public h:I

.field public i:I

.field public j:Z

.field public k:J

.field public l:Lcom/google/android/gms/internal/ads/p0;

.field public m:I

.field public n:J


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/ads/A2;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance p3, Lcom/google/android/gms/internal/ads/f0;

    .line 16
    .line 17
    const/16 v0, 0x80

    .line 18
    .line 19
    new-array v4, v0, [B

    .line 20
    .line 21
    invoke-direct {p3, v4, v0}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/A2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 29
    .line 30
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 34
    .line 35
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A2;->d:Ljava/lang/String;

    .line 40
    .line 41
    iput p2, p0, Lcom/google/android/gms/internal/ads/A2;->e:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance p3, Lcom/google/android/gms/internal/ads/f0;

    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    new-array v4, v0, [B

    .line 52
    .line 53
    invoke-direct {p3, v4, v0}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/A2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 57
    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 59
    .line 60
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/f0;->b:[B

    .line 61
    .line 62
    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/jr;-><init>([B)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 66
    .line 67
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 68
    .line 69
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 70
    .line 71
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A2;->d:Ljava/lang/String;

    .line 76
    .line 77
    iput p2, p0, Lcom/google/android/gms/internal/ads/A2;->e:I

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/jr;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->a:I

    .line 6
    .line 7
    const-wide/32 v3, 0xf4240

    .line 8
    .line 9
    .line 10
    iget v5, v0, Lcom/google/android/gms/internal/ads/A2;->e:I

    .line 11
    .line 12
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/A2;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/A2;->b:Lcom/google/android/gms/internal/ads/f0;

    .line 15
    .line 16
    const/16 v8, 0x10

    .line 17
    .line 18
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/A2;->c:Lcom/google/android/gms/internal/ads/jr;

    .line 25
    .line 26
    const/4 v13, 0x2

    .line 27
    const/4 v14, 0x1

    .line 28
    packed-switch v2, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 32
    .line 33
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_c

    .line 41
    .line 42
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    if-eq v2, v14, :cond_3

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v15, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 53
    .line 54
    iget v14, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 55
    .line 56
    sub-int/2addr v15, v14

    .line 57
    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 62
    .line 63
    invoke-interface {v14, v2, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 64
    .line 65
    .line 66
    iget v14, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 67
    .line 68
    add-int/2addr v14, v2

    .line 69
    iput v14, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 70
    .line 71
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 72
    .line 73
    if-ne v14, v2, :cond_2

    .line 74
    .line 75
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 76
    .line 77
    cmp-long v2, v14, v9

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 84
    :goto_1
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 88
    .line 89
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 90
    .line 91
    iget v9, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 92
    .line 93
    const/16 v20, 0x1

    .line 94
    .line 95
    const/16 v22, 0x0

    .line 96
    .line 97
    const/16 v23, 0x0

    .line 98
    .line 99
    move-object/from16 v17, v2

    .line 100
    .line 101
    move-wide/from16 v18, v14

    .line 102
    .line 103
    move/from16 v21, v9

    .line 104
    .line 105
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 106
    .line 107
    .line 108
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 109
    .line 110
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/A2;->k:J

    .line 111
    .line 112
    add-long/2addr v9, v14

    .line 113
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 114
    .line 115
    iput v11, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 116
    .line 117
    :cond_1
    :goto_2
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    :cond_2
    const/4 v14, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 125
    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    iget v10, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 131
    .line 132
    rsub-int/lit8 v10, v10, 0x10

    .line 133
    .line 134
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    iget v10, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 139
    .line 140
    invoke-virtual {v1, v10, v2, v9}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 141
    .line 142
    .line 143
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 144
    .line 145
    add-int/2addr v2, v9

    .line 146
    iput v2, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 147
    .line 148
    if-ne v2, v8, :cond_1

    .line 149
    .line 150
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 151
    .line 152
    .line 153
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/nH;->a(Lcom/google/android/gms/internal/ads/f0;)LA2/i;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 158
    .line 159
    const-string v10, "audio/ac4"

    .line 160
    .line 161
    if-eqz v9, :cond_4

    .line 162
    .line 163
    iget v14, v9, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 164
    .line 165
    if-ne v14, v13, :cond_4

    .line 166
    .line 167
    iget v14, v2, LA2/i;->a:I

    .line 168
    .line 169
    iget v15, v9, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 170
    .line 171
    if-ne v14, v15, :cond_4

    .line 172
    .line 173
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-nez v9, :cond_5

    .line 180
    .line 181
    :cond_4
    new-instance v9, Lcom/google/android/gms/internal/ads/K;

    .line 182
    .line 183
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 184
    .line 185
    .line 186
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/A2;->f:Ljava/lang/String;

    .line 187
    .line 188
    iput-object v14, v9, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput v13, v9, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 194
    .line 195
    iget v10, v2, LA2/i;->a:I

    .line 196
    .line 197
    iput v10, v9, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 198
    .line 199
    iput-object v6, v9, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 200
    .line 201
    iput v5, v9, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 202
    .line 203
    new-instance v10, Lcom/google/android/gms/internal/ads/p0;

    .line 204
    .line 205
    invoke-direct {v10, v9}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 206
    .line 207
    .line 208
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 209
    .line 210
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 211
    .line 212
    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    iget v9, v2, LA2/i;->b:I

    .line 216
    .line 217
    iput v9, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 218
    .line 219
    iget v2, v2, LA2/i;->c:I

    .line 220
    .line 221
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 222
    .line 223
    iget v9, v9, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 224
    .line 225
    int-to-long v14, v2

    .line 226
    mul-long v14, v14, v3

    .line 227
    .line 228
    int-to-long v9, v9

    .line 229
    div-long/2addr v14, v9

    .line 230
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/A2;->k:J

    .line 231
    .line 232
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 236
    .line 237
    invoke-interface {v2, v8, v12}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 238
    .line 239
    .line 240
    iput v13, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-lez v2, :cond_1

    .line 248
    .line 249
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 250
    .line 251
    const/16 v9, 0xac

    .line 252
    .line 253
    if-nez v2, :cond_8

    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-ne v2, v9, :cond_7

    .line 260
    .line 261
    const/4 v2, 0x1

    .line 262
    goto :goto_4

    .line 263
    :cond_7
    const/4 v2, 0x0

    .line 264
    :goto_4
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-ne v2, v9, :cond_9

    .line 272
    .line 273
    const/4 v9, 0x1

    .line 274
    goto :goto_5

    .line 275
    :cond_9
    const/4 v9, 0x0

    .line 276
    :goto_5
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 277
    .line 278
    const/16 v9, 0x40

    .line 279
    .line 280
    const/16 v10, 0x41

    .line 281
    .line 282
    if-eq v2, v9, :cond_a

    .line 283
    .line 284
    if-ne v2, v10, :cond_6

    .line 285
    .line 286
    const/16 v2, 0x41

    .line 287
    .line 288
    :cond_a
    const/4 v14, 0x1

    .line 289
    iput v14, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 290
    .line 291
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 292
    .line 293
    const/16 v16, -0x54

    .line 294
    .line 295
    aput-byte v16, v15, v11

    .line 296
    .line 297
    if-ne v2, v10, :cond_b

    .line 298
    .line 299
    const/16 v9, 0x41

    .line 300
    .line 301
    :cond_b
    aput-byte v9, v15, v14

    .line 302
    .line 303
    iput v13, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_c
    return-void

    .line 308
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 309
    .line 310
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-lez v2, :cond_4d

    .line 318
    .line 319
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 320
    .line 321
    const/16 v9, 0xb

    .line 322
    .line 323
    if-eqz v2, :cond_48

    .line 324
    .line 325
    const/4 v10, 0x1

    .line 326
    if-eq v2, v10, :cond_f

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    iget v9, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 333
    .line 334
    iget v10, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 335
    .line 336
    sub-int/2addr v9, v10

    .line 337
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 342
    .line 343
    invoke-interface {v9, v2, v1}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 344
    .line 345
    .line 346
    iget v9, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 347
    .line 348
    add-int/2addr v9, v2

    .line 349
    iput v9, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 350
    .line 351
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 352
    .line 353
    if-ne v9, v2, :cond_d

    .line 354
    .line 355
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 356
    .line 357
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    cmp-long v2, v9, v14

    .line 363
    .line 364
    if-eqz v2, :cond_e

    .line 365
    .line 366
    const/4 v2, 0x1

    .line 367
    goto :goto_7

    .line 368
    :cond_e
    const/4 v2, 0x0

    .line 369
    :goto_7
    invoke-static {v2}, Lo3/r;->M(Z)V

    .line 370
    .line 371
    .line 372
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 373
    .line 374
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 375
    .line 376
    iget v14, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 377
    .line 378
    const/16 v20, 0x1

    .line 379
    .line 380
    const/16 v22, 0x0

    .line 381
    .line 382
    const/16 v23, 0x0

    .line 383
    .line 384
    move-object/from16 v17, v2

    .line 385
    .line 386
    move-wide/from16 v18, v9

    .line 387
    .line 388
    move/from16 v21, v14

    .line 389
    .line 390
    invoke-interface/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/e0;->b(JIIILcom/google/android/gms/internal/ads/d0;)V

    .line 391
    .line 392
    .line 393
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 394
    .line 395
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/A2;->k:J

    .line 396
    .line 397
    add-long/2addr v9, v14

    .line 398
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 399
    .line 400
    iput v11, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_f
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 404
    .line 405
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    iget v14, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 410
    .line 411
    const/16 v15, 0x80

    .line 412
    .line 413
    rsub-int v14, v14, 0x80

    .line 414
    .line 415
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    iget v14, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 420
    .line 421
    invoke-virtual {v1, v14, v2, v10}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 422
    .line 423
    .line 424
    iget v2, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 425
    .line 426
    add-int/2addr v2, v10

    .line 427
    iput v2, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 428
    .line 429
    if-ne v2, v15, :cond_47

    .line 430
    .line 431
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    const/16 v10, 0x28

    .line 439
    .line 440
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 441
    .line 442
    .line 443
    const/4 v10, 0x5

    .line 444
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 445
    .line 446
    .line 447
    move-result v14

    .line 448
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/f0;->t(I)V

    .line 449
    .line 450
    .line 451
    sget-object v2, Lcom/google/android/gms/internal/ads/nH;->f:[I

    .line 452
    .line 453
    sget-object v17, Lcom/google/android/gms/internal/ads/nH;->d:[I

    .line 454
    .line 455
    const-string v15, "audio/ac3"

    .line 456
    .line 457
    const/16 v19, -0x1

    .line 458
    .line 459
    const/16 v11, 0x8

    .line 460
    .line 461
    const/4 v4, 0x3

    .line 462
    const/16 v3, 0xa

    .line 463
    .line 464
    if-le v14, v3, :cond_3d

    .line 465
    .line 466
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 470
    .line 471
    .line 472
    move-result v14

    .line 473
    if-eqz v14, :cond_12

    .line 474
    .line 475
    const/4 v8, 0x1

    .line 476
    if-eq v14, v8, :cond_11

    .line 477
    .line 478
    if-eq v14, v13, :cond_10

    .line 479
    .line 480
    const/4 v14, -0x1

    .line 481
    goto :goto_8

    .line 482
    :cond_10
    const/4 v14, 0x2

    .line 483
    goto :goto_8

    .line 484
    :cond_11
    const/4 v14, 0x1

    .line 485
    goto :goto_8

    .line 486
    :cond_12
    const/4 v8, 0x1

    .line 487
    const/4 v14, 0x0

    .line 488
    :goto_8
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 492
    .line 493
    .line 494
    move-result v9

    .line 495
    add-int/2addr v9, v8

    .line 496
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 497
    .line 498
    .line 499
    move-result v8

    .line 500
    if-ne v8, v4, :cond_13

    .line 501
    .line 502
    sget-object v17, Lcom/google/android/gms/internal/ads/nH;->e:[I

    .line 503
    .line 504
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 505
    .line 506
    .line 507
    move-result v19

    .line 508
    aget v17, v17, v19

    .line 509
    .line 510
    const/4 v13, 0x6

    .line 511
    const/16 v19, 0x3

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_13
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 515
    .line 516
    .line 517
    move-result v19

    .line 518
    sget-object v25, Lcom/google/android/gms/internal/ads/nH;->c:[I

    .line 519
    .line 520
    aget v25, v25, v19

    .line 521
    .line 522
    aget v17, v17, v8

    .line 523
    .line 524
    move/from16 v13, v25

    .line 525
    .line 526
    :goto_9
    add-int/2addr v9, v9

    .line 527
    mul-int/lit8 v26, v13, 0x20

    .line 528
    .line 529
    mul-int v27, v9, v17

    .line 530
    .line 531
    div-int v27, v27, v26

    .line 532
    .line 533
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 534
    .line 535
    .line 536
    move-result v26

    .line 537
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 538
    .line 539
    .line 540
    move-result v28

    .line 541
    aget v2, v2, v26

    .line 542
    .line 543
    add-int v2, v2, v28

    .line 544
    .line 545
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    if-eqz v3, :cond_14

    .line 553
    .line 554
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 555
    .line 556
    .line 557
    :cond_14
    if-nez v26, :cond_16

    .line 558
    .line 559
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_15

    .line 567
    .line 568
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 569
    .line 570
    .line 571
    :cond_15
    const/4 v3, 0x0

    .line 572
    const/4 v11, 0x1

    .line 573
    const/16 v26, 0x0

    .line 574
    .line 575
    goto :goto_a

    .line 576
    :cond_16
    move/from16 v3, v26

    .line 577
    .line 578
    const/4 v11, 0x1

    .line 579
    :goto_a
    if-ne v14, v11, :cond_18

    .line 580
    .line 581
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 582
    .line 583
    .line 584
    move-result v11

    .line 585
    if-eqz v11, :cond_17

    .line 586
    .line 587
    const/16 v11, 0x10

    .line 588
    .line 589
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 590
    .line 591
    .line 592
    :goto_b
    const/4 v14, 0x1

    .line 593
    goto :goto_c

    .line 594
    :cond_17
    const/16 v11, 0x10

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_18
    const/16 v11, 0x10

    .line 598
    .line 599
    :goto_c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 600
    .line 601
    .line 602
    move-result v24

    .line 603
    if-eqz v24, :cond_32

    .line 604
    .line 605
    const/4 v11, 0x2

    .line 606
    if-le v3, v11, :cond_19

    .line 607
    .line 608
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 609
    .line 610
    .line 611
    :cond_19
    and-int/lit8 v25, v3, 0x1

    .line 612
    .line 613
    if-eqz v25, :cond_1a

    .line 614
    .line 615
    if-le v3, v11, :cond_1a

    .line 616
    .line 617
    const/4 v11, 0x6

    .line 618
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 619
    .line 620
    .line 621
    goto :goto_d

    .line 622
    :cond_1a
    const/4 v11, 0x6

    .line 623
    :goto_d
    and-int/lit8 v23, v3, 0x4

    .line 624
    .line 625
    if-eqz v23, :cond_1b

    .line 626
    .line 627
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 628
    .line 629
    .line 630
    :cond_1b
    if-eqz v28, :cond_1c

    .line 631
    .line 632
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 633
    .line 634
    .line 635
    move-result v11

    .line 636
    if-eqz v11, :cond_1c

    .line 637
    .line 638
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 639
    .line 640
    .line 641
    :cond_1c
    if-nez v14, :cond_32

    .line 642
    .line 643
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 644
    .line 645
    .line 646
    move-result v11

    .line 647
    if-eqz v11, :cond_1d

    .line 648
    .line 649
    const/4 v11, 0x6

    .line 650
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 651
    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_1d
    const/4 v11, 0x6

    .line 655
    :goto_e
    if-nez v3, :cond_1e

    .line 656
    .line 657
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 658
    .line 659
    .line 660
    move-result v14

    .line 661
    if-eqz v14, :cond_1e

    .line 662
    .line 663
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 664
    .line 665
    .line 666
    :cond_1e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 667
    .line 668
    .line 669
    move-result v14

    .line 670
    if-eqz v14, :cond_1f

    .line 671
    .line 672
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 673
    .line 674
    .line 675
    :cond_1f
    const/4 v11, 0x2

    .line 676
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 677
    .line 678
    .line 679
    move-result v14

    .line 680
    const/4 v4, 0x1

    .line 681
    if-ne v14, v4, :cond_21

    .line 682
    .line 683
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 684
    .line 685
    .line 686
    :cond_20
    :goto_f
    const/4 v14, 0x2

    .line 687
    goto/16 :goto_13

    .line 688
    .line 689
    :cond_21
    if-ne v14, v11, :cond_22

    .line 690
    .line 691
    const/16 v4, 0xc

    .line 692
    .line 693
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 694
    .line 695
    .line 696
    goto :goto_f

    .line 697
    :cond_22
    const/4 v4, 0x3

    .line 698
    if-ne v14, v4, :cond_20

    .line 699
    .line 700
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 705
    .line 706
    .line 707
    move-result v11

    .line 708
    if-eqz v11, :cond_2b

    .line 709
    .line 710
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    if-eqz v11, :cond_23

    .line 718
    .line 719
    const/4 v11, 0x4

    .line 720
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 721
    .line 722
    .line 723
    goto :goto_10

    .line 724
    :cond_23
    const/4 v11, 0x4

    .line 725
    :goto_10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 726
    .line 727
    .line 728
    move-result v14

    .line 729
    if-eqz v14, :cond_24

    .line 730
    .line 731
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 732
    .line 733
    .line 734
    :cond_24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 735
    .line 736
    .line 737
    move-result v14

    .line 738
    if-eqz v14, :cond_25

    .line 739
    .line 740
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 741
    .line 742
    .line 743
    :cond_25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 744
    .line 745
    .line 746
    move-result v14

    .line 747
    if-eqz v14, :cond_26

    .line 748
    .line 749
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 750
    .line 751
    .line 752
    :cond_26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 753
    .line 754
    .line 755
    move-result v14

    .line 756
    if-eqz v14, :cond_27

    .line 757
    .line 758
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 759
    .line 760
    .line 761
    :cond_27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 762
    .line 763
    .line 764
    move-result v14

    .line 765
    if-eqz v14, :cond_28

    .line 766
    .line 767
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 768
    .line 769
    .line 770
    :cond_28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 771
    .line 772
    .line 773
    move-result v14

    .line 774
    if-eqz v14, :cond_29

    .line 775
    .line 776
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 777
    .line 778
    .line 779
    :cond_29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 780
    .line 781
    .line 782
    move-result v14

    .line 783
    if-eqz v14, :cond_2b

    .line 784
    .line 785
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 786
    .line 787
    .line 788
    move-result v14

    .line 789
    if-eqz v14, :cond_2a

    .line 790
    .line 791
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 792
    .line 793
    .line 794
    :cond_2a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 795
    .line 796
    .line 797
    move-result v14

    .line 798
    if-eqz v14, :cond_2b

    .line 799
    .line 800
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 801
    .line 802
    .line 803
    :cond_2b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 804
    .line 805
    .line 806
    move-result v11

    .line 807
    if-eqz v11, :cond_2c

    .line 808
    .line 809
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 813
    .line 814
    .line 815
    move-result v11

    .line 816
    if-eqz v11, :cond_2c

    .line 817
    .line 818
    const/4 v11, 0x7

    .line 819
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 823
    .line 824
    .line 825
    move-result v11

    .line 826
    if-eqz v11, :cond_2c

    .line 827
    .line 828
    const/16 v11, 0x8

    .line 829
    .line 830
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 831
    .line 832
    .line 833
    :goto_11
    const/4 v14, 0x2

    .line 834
    goto :goto_12

    .line 835
    :cond_2c
    const/16 v11, 0x8

    .line 836
    .line 837
    goto :goto_11

    .line 838
    :goto_12
    add-int/2addr v4, v14

    .line 839
    mul-int/lit8 v4, v4, 0x8

    .line 840
    .line 841
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->l()V

    .line 845
    .line 846
    .line 847
    :goto_13
    if-ge v3, v14, :cond_2e

    .line 848
    .line 849
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 850
    .line 851
    .line 852
    move-result v4

    .line 853
    const/16 v11, 0xe

    .line 854
    .line 855
    if-eqz v4, :cond_2d

    .line 856
    .line 857
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 858
    .line 859
    .line 860
    :cond_2d
    if-nez v26, :cond_2e

    .line 861
    .line 862
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    if-eqz v4, :cond_2e

    .line 867
    .line 868
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 869
    .line 870
    .line 871
    :cond_2e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 872
    .line 873
    .line 874
    move-result v4

    .line 875
    if-eqz v4, :cond_31

    .line 876
    .line 877
    if-nez v19, :cond_2f

    .line 878
    .line 879
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 880
    .line 881
    .line 882
    const/4 v4, 0x0

    .line 883
    :goto_14
    const/4 v14, 0x0

    .line 884
    goto :goto_16

    .line 885
    :cond_2f
    const/4 v4, 0x0

    .line 886
    :goto_15
    if-ge v4, v13, :cond_31

    .line 887
    .line 888
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 889
    .line 890
    .line 891
    move-result v11

    .line 892
    if-eqz v11, :cond_30

    .line 893
    .line 894
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 895
    .line 896
    .line 897
    :cond_30
    add-int/lit8 v4, v4, 0x1

    .line 898
    .line 899
    goto :goto_15

    .line 900
    :cond_31
    move/from16 v4, v19

    .line 901
    .line 902
    goto :goto_14

    .line 903
    :cond_32
    move/from16 v4, v19

    .line 904
    .line 905
    :goto_16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 906
    .line 907
    .line 908
    move-result v11

    .line 909
    if-eqz v11, :cond_37

    .line 910
    .line 911
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 912
    .line 913
    .line 914
    const/4 v10, 0x2

    .line 915
    if-ne v3, v10, :cond_33

    .line 916
    .line 917
    const/4 v11, 0x4

    .line 918
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 919
    .line 920
    .line 921
    const/4 v3, 0x2

    .line 922
    :cond_33
    const/4 v11, 0x6

    .line 923
    if-lt v3, v11, :cond_34

    .line 924
    .line 925
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 926
    .line 927
    .line 928
    :cond_34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 929
    .line 930
    .line 931
    move-result v10

    .line 932
    if-eqz v10, :cond_35

    .line 933
    .line 934
    const/16 v10, 0x8

    .line 935
    .line 936
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 937
    .line 938
    .line 939
    goto :goto_17

    .line 940
    :cond_35
    const/16 v10, 0x8

    .line 941
    .line 942
    :goto_17
    if-nez v3, :cond_36

    .line 943
    .line 944
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    if-eqz v3, :cond_36

    .line 949
    .line 950
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 951
    .line 952
    .line 953
    :cond_36
    const/4 v3, 0x3

    .line 954
    if-ge v8, v3, :cond_38

    .line 955
    .line 956
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 957
    .line 958
    .line 959
    goto :goto_18

    .line 960
    :cond_37
    const/4 v3, 0x3

    .line 961
    :cond_38
    :goto_18
    if-nez v14, :cond_39

    .line 962
    .line 963
    if-eq v4, v3, :cond_39

    .line 964
    .line 965
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->u()V

    .line 966
    .line 967
    .line 968
    :cond_39
    const/4 v8, 0x2

    .line 969
    if-ne v14, v8, :cond_3b

    .line 970
    .line 971
    if-eq v4, v3, :cond_3a

    .line 972
    .line 973
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    if-eqz v3, :cond_3b

    .line 978
    .line 979
    :cond_3a
    const/4 v3, 0x6

    .line 980
    goto :goto_19

    .line 981
    :cond_3b
    const/4 v3, 0x6

    .line 982
    goto :goto_1a

    .line 983
    :goto_19
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 984
    .line 985
    .line 986
    :goto_1a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    if-eqz v4, :cond_3c

    .line 991
    .line 992
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    const/4 v4, 0x1

    .line 997
    if-ne v3, v4, :cond_3c

    .line 998
    .line 999
    const/16 v3, 0x8

    .line 1000
    .line 1001
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 1002
    .line 1003
    .line 1004
    move-result v3

    .line 1005
    if-ne v3, v4, :cond_3c

    .line 1006
    .line 1007
    const-string v3, "audio/eac3-joc"

    .line 1008
    .line 1009
    goto :goto_1b

    .line 1010
    :cond_3c
    const-string v3, "audio/eac3"

    .line 1011
    .line 1012
    :goto_1b
    mul-int/lit16 v13, v13, 0x100

    .line 1013
    .line 1014
    move/from16 v4, v17

    .line 1015
    .line 1016
    move/from16 v8, v27

    .line 1017
    .line 1018
    goto :goto_1f

    .line 1019
    :cond_3d
    const/16 v3, 0x20

    .line 1020
    .line 1021
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 1022
    .line 1023
    .line 1024
    const/4 v3, 0x2

    .line 1025
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    const/4 v3, 0x3

    .line 1030
    if-ne v4, v3, :cond_3e

    .line 1031
    .line 1032
    const/4 v3, 0x0

    .line 1033
    :goto_1c
    const/4 v8, 0x6

    .line 1034
    goto :goto_1d

    .line 1035
    :cond_3e
    move-object v3, v15

    .line 1036
    goto :goto_1c

    .line 1037
    :goto_1d
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 1038
    .line 1039
    .line 1040
    move-result v8

    .line 1041
    div-int/lit8 v9, v8, 0x2

    .line 1042
    .line 1043
    sget-object v10, Lcom/google/android/gms/internal/ads/nH;->g:[I

    .line 1044
    .line 1045
    aget v9, v10, v9

    .line 1046
    .line 1047
    mul-int/lit16 v9, v9, 0x3e8

    .line 1048
    .line 1049
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/nH;->n(II)I

    .line 1050
    .line 1051
    .line 1052
    move-result v8

    .line 1053
    const/16 v10, 0x8

    .line 1054
    .line 1055
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 1056
    .line 1057
    .line 1058
    const/4 v10, 0x3

    .line 1059
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->g(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v11

    .line 1063
    and-int/lit8 v10, v11, 0x1

    .line 1064
    .line 1065
    if-eqz v10, :cond_3f

    .line 1066
    .line 1067
    const/4 v10, 0x1

    .line 1068
    if-eq v11, v10, :cond_3f

    .line 1069
    .line 1070
    const/4 v10, 0x2

    .line 1071
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_1e

    .line 1075
    :cond_3f
    const/4 v10, 0x2

    .line 1076
    :goto_1e
    and-int/lit8 v13, v11, 0x4

    .line 1077
    .line 1078
    if-eqz v13, :cond_40

    .line 1079
    .line 1080
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 1081
    .line 1082
    .line 1083
    :cond_40
    if-ne v11, v10, :cond_41

    .line 1084
    .line 1085
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/f0;->v(I)V

    .line 1086
    .line 1087
    .line 1088
    :cond_41
    const/4 v10, 0x3

    .line 1089
    if-ge v4, v10, :cond_42

    .line 1090
    .line 1091
    aget v19, v17, v4

    .line 1092
    .line 1093
    :cond_42
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/f0;->x()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v4

    .line 1097
    aget v2, v2, v11

    .line 1098
    .line 1099
    add-int/2addr v2, v4

    .line 1100
    const/16 v13, 0x600

    .line 1101
    .line 1102
    move/from16 v4, v19

    .line 1103
    .line 1104
    move/from16 v29, v9

    .line 1105
    .line 1106
    move v9, v8

    .line 1107
    move/from16 v8, v29

    .line 1108
    .line 1109
    :goto_1f
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 1110
    .line 1111
    if-eqz v10, :cond_43

    .line 1112
    .line 1113
    iget v11, v10, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 1114
    .line 1115
    if-ne v2, v11, :cond_43

    .line 1116
    .line 1117
    iget v11, v10, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 1118
    .line 1119
    if-ne v4, v11, :cond_43

    .line 1120
    .line 1121
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 1122
    .line 1123
    invoke-static {v3, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v10

    .line 1127
    if-nez v10, :cond_45

    .line 1128
    .line 1129
    :cond_43
    new-instance v10, Lcom/google/android/gms/internal/ads/K;

    .line 1130
    .line 1131
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/A2;->f:Ljava/lang/String;

    .line 1135
    .line 1136
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 1137
    .line 1138
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    iput v2, v10, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 1142
    .line 1143
    iput v4, v10, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 1144
    .line 1145
    iput-object v6, v10, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 1146
    .line 1147
    iput v5, v10, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 1148
    .line 1149
    iput v8, v10, Lcom/google/android/gms/internal/ads/K;->h:I

    .line 1150
    .line 1151
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    if-eqz v2, :cond_44

    .line 1156
    .line 1157
    iput v8, v10, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 1158
    .line 1159
    :cond_44
    new-instance v2, Lcom/google/android/gms/internal/ads/p0;

    .line 1160
    .line 1161
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 1162
    .line 1163
    .line 1164
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 1165
    .line 1166
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 1167
    .line 1168
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 1169
    .line 1170
    .line 1171
    :cond_45
    iput v9, v0, Lcom/google/android/gms/internal/ads/A2;->m:I

    .line 1172
    .line 1173
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->l:Lcom/google/android/gms/internal/ads/p0;

    .line 1174
    .line 1175
    iget v2, v2, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 1176
    .line 1177
    int-to-long v3, v13

    .line 1178
    const-wide/32 v10, 0xf4240

    .line 1179
    .line 1180
    .line 1181
    mul-long v3, v3, v10

    .line 1182
    .line 1183
    int-to-long v8, v2

    .line 1184
    div-long/2addr v3, v8

    .line 1185
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/A2;->k:J

    .line 1186
    .line 1187
    const/4 v2, 0x0

    .line 1188
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 1192
    .line 1193
    const/16 v3, 0x80

    .line 1194
    .line 1195
    invoke-interface {v2, v3, v12}, Lcom/google/android/gms/internal/ads/e0;->f(ILcom/google/android/gms/internal/ads/jr;)V

    .line 1196
    .line 1197
    .line 1198
    const/4 v2, 0x2

    .line 1199
    iput v2, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 1200
    .line 1201
    :cond_46
    :goto_20
    move-wide v3, v10

    .line 1202
    const/16 v8, 0x10

    .line 1203
    .line 1204
    const/4 v11, 0x0

    .line 1205
    const/4 v13, 0x2

    .line 1206
    goto/16 :goto_6

    .line 1207
    .line 1208
    :cond_47
    const/4 v11, 0x0

    .line 1209
    goto/16 :goto_6

    .line 1210
    .line 1211
    :cond_48
    move-wide v10, v3

    .line 1212
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 1213
    .line 1214
    .line 1215
    move-result v2

    .line 1216
    if-lez v2, :cond_46

    .line 1217
    .line 1218
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 1219
    .line 1220
    if-nez v2, :cond_4a

    .line 1221
    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1223
    .line 1224
    .line 1225
    move-result v2

    .line 1226
    if-ne v2, v9, :cond_49

    .line 1227
    .line 1228
    const/4 v14, 0x1

    .line 1229
    goto :goto_22

    .line 1230
    :cond_49
    const/4 v14, 0x0

    .line 1231
    :goto_22
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 1232
    .line 1233
    goto :goto_21

    .line 1234
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    const/16 v3, 0x77

    .line 1239
    .line 1240
    if-ne v2, v3, :cond_4b

    .line 1241
    .line 1242
    const/4 v4, 0x0

    .line 1243
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 1244
    .line 1245
    const/4 v14, 0x1

    .line 1246
    iput v14, v0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 1247
    .line 1248
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 1249
    .line 1250
    aput-byte v9, v2, v4

    .line 1251
    .line 1252
    aput-byte v3, v2, v14

    .line 1253
    .line 1254
    const/4 v3, 0x2

    .line 1255
    iput v3, v0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 1256
    .line 1257
    goto :goto_20

    .line 1258
    :cond_4b
    const/4 v3, 0x2

    .line 1259
    const/4 v4, 0x0

    .line 1260
    const/4 v14, 0x1

    .line 1261
    if-ne v2, v9, :cond_4c

    .line 1262
    .line 1263
    const/4 v2, 0x1

    .line 1264
    goto :goto_23

    .line 1265
    :cond_4c
    const/4 v2, 0x0

    .line 1266
    :goto_23
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 1267
    .line 1268
    goto :goto_21

    .line 1269
    :cond_4d
    return-void

    .line 1270
    nop

    .line 1271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/internal/ads/N;LA1/I;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/A2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, LA1/I;->c()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, LA1/I;->d()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A2;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2}, LA1/I;->d()V

    .line 18
    .line 19
    .line 20
    iget p2, p2, LA1/I;->d:I

    .line 21
    .line 22
    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p2}, LA1/I;->c()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, LA1/I;->d()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p2, LA1/I;->e:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/A2;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2}, LA1/I;->d()V

    .line 40
    .line 41
    .line 42
    iget p2, p2, LA1/I;->d:I

    .line 43
    .line 44
    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/A2;->g:Lcom/google/android/gms/internal/ads/e0;

    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(IJ)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/A2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zze()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/A2;->a:I

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 13
    .line 14
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 15
    .line 16
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->h:I

    .line 22
    .line 23
    iput v3, p0, Lcom/google/android/gms/internal/ads/A2;->i:I

    .line 24
    .line 25
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/A2;->j:Z

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/A2;->n:J

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
