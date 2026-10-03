.class public final Lcom/google/android/gms/internal/ads/GO;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/GN;

.field public H:Lcom/google/android/gms/internal/ads/FO;

.field public I:Ljava/io/IOException;

.field public J:I

.field public K:Ljava/lang/Thread;

.field public L:Z

.field public volatile M:Z

.field public final synthetic N:Lcom/google/android/gms/internal/ads/JO;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/JO;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/GN;Lcom/google/android/gms/internal/ads/FO;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/GO;->H:Lcom/google/android/gms/internal/ads/FO;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/GO;->L:Z

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-enter p0

    .line 26
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/GO;->L:Z

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 29
    .line 30
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/GN;->g:Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GO;->K:Ljava/lang/Thread;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 46
    .line 47
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/GO;->H:Lcom/google/android/gms/internal/ads/FO;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 58
    .line 59
    check-cast p1, Lcom/google/android/gms/internal/ads/KN;

    .line 60
    .line 61
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/KN;->c(Lcom/google/android/gms/internal/ads/GN;Z)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/GO;->H:Lcom/google/android/gms/internal/ads/FO;

    .line 65
    .line 66
    :cond_3
    return-void

    .line 67
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    iget v2, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v2, v4, :cond_1

    .line 16
    .line 17
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 18
    .line 19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->a:Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const/4 v5, 0x4

    .line 33
    if-eq v2, v5, :cond_16

    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 36
    .line 37
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->H:Lcom/google/android/gms/internal/ads/FO;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/GO;->L:Z

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 53
    .line 54
    check-cast v2, Lcom/google/android/gms/internal/ads/KN;

    .line 55
    .line 56
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/internal/ads/KN;->c(Lcom/google/android/gms/internal/ads/GN;Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget v5, v0, Landroid/os/Message;->what:I

    .line 61
    .line 62
    const/4 v7, 0x2

    .line 63
    if-eq v5, v7, :cond_15

    .line 64
    .line 65
    const/4 v8, 0x3

    .line 66
    if-eq v5, v8, :cond_3

    .line 67
    .line 68
    goto/16 :goto_a

    .line 69
    .line 70
    :cond_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Ljava/io/IOException;

    .line 73
    .line 74
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 75
    .line 76
    iget v5, v1, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 77
    .line 78
    add-int/lit8 v9, v5, 0x1

    .line 79
    .line 80
    iput v9, v1, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 81
    .line 82
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 83
    .line 84
    check-cast v2, Lcom/google/android/gms/internal/ads/KN;

    .line 85
    .line 86
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 87
    .line 88
    new-instance v11, Lcom/google/android/gms/internal/ads/pN;

    .line 89
    .line 90
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/RI;->b:Landroid/net/Uri;

    .line 91
    .line 92
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    sget v10, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 96
    .line 97
    instance-of v10, v0, Lcom/google/android/gms/internal/ads/Ka;

    .line 98
    .line 99
    const/16 v12, 0x1388

    .line 100
    .line 101
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    if-nez v10, :cond_4

    .line 107
    .line 108
    instance-of v10, v0, Ljava/io/FileNotFoundException;

    .line 109
    .line 110
    if-nez v10, :cond_4

    .line 111
    .line 112
    instance-of v10, v0, Lcom/google/android/gms/internal/ads/sG;

    .line 113
    .line 114
    if-nez v10, :cond_4

    .line 115
    .line 116
    instance-of v10, v0, Lcom/google/android/gms/internal/ads/IO;

    .line 117
    .line 118
    if-nez v10, :cond_4

    .line 119
    .line 120
    move-object v10, v0

    .line 121
    :goto_0
    if-eqz v10, :cond_6

    .line 122
    .line 123
    instance-of v15, v10, Lcom/google/android/gms/internal/ads/xC;

    .line 124
    .line 125
    if-eqz v15, :cond_5

    .line 126
    .line 127
    move-object v15, v10

    .line 128
    check-cast v15, Lcom/google/android/gms/internal/ads/xC;

    .line 129
    .line 130
    iget v15, v15, Lcom/google/android/gms/internal/ads/xC;->G:I

    .line 131
    .line 132
    const/16 v3, 0x7d8

    .line 133
    .line 134
    if-ne v15, v3, :cond_5

    .line 135
    .line 136
    :cond_4
    move-object/from16 p1, v11

    .line 137
    .line 138
    move-wide v7, v13

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    const/4 v3, 0x0

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    mul-int/lit16 v5, v5, 0x3e8

    .line 147
    .line 148
    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    int-to-long v7, v3

    .line 153
    move-object/from16 p1, v11

    .line 154
    .line 155
    :goto_1
    const-wide/16 v10, 0x0

    .line 156
    .line 157
    cmp-long v15, v7, v13

    .line 158
    .line 159
    if-nez v15, :cond_7

    .line 160
    .line 161
    sget-object v7, Lcom/google/android/gms/internal/ads/JO;->f:LS0/g;

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/KN;->m()I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    iget v3, v2, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 169
    .line 170
    if-le v15, v3, :cond_8

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_8
    const/4 v3, 0x0

    .line 175
    :goto_2
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/KN;->k0:Z

    .line 176
    .line 177
    if-nez v5, :cond_c

    .line 178
    .line 179
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 180
    .line 181
    if-eqz v5, :cond_9

    .line 182
    .line 183
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Y;->zza()J

    .line 184
    .line 185
    .line 186
    move-result-wide v16

    .line 187
    cmp-long v5, v16, v13

    .line 188
    .line 189
    if-eqz v5, :cond_9

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 193
    .line 194
    if-eqz v5, :cond_a

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/KN;->v()Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_a

    .line 201
    .line 202
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 203
    .line 204
    sget-object v7, Lcom/google/android/gms/internal/ads/JO;->e:LS0/g;

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_a
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 208
    .line 209
    iput-wide v10, v2, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 210
    .line 211
    iput v6, v2, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 212
    .line 213
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 214
    .line 215
    array-length v15, v5

    .line 216
    const/4 v12, 0x0

    .line 217
    :goto_3
    if-ge v12, v15, :cond_b

    .line 218
    .line 219
    aget-object v13, v5, v12

    .line 220
    .line 221
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/TN;->o(Z)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_b
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 233
    .line 234
    iput-wide v10, v5, LW0/w;->a:J

    .line 235
    .line 236
    iput-wide v10, v9, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 237
    .line 238
    iput-boolean v4, v9, Lcom/google/android/gms/internal/ads/GN;->h:Z

    .line 239
    .line 240
    iput-boolean v6, v9, Lcom/google/android/gms/internal/ads/GN;->l:Z

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_c
    :goto_4
    iput v15, v2, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 244
    .line 245
    :goto_5
    new-instance v5, LS0/g;

    .line 246
    .line 247
    invoke-direct {v5, v3, v7, v8, v6}, LS0/g;-><init>(IJI)V

    .line 248
    .line 249
    .line 250
    move-object v7, v5

    .line 251
    :goto_6
    iget v3, v7, LS0/g;->a:I

    .line 252
    .line 253
    if-eqz v3, :cond_e

    .line 254
    .line 255
    if-ne v3, v4, :cond_d

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_d
    const/4 v3, 0x0

    .line 259
    goto :goto_8

    .line 260
    :cond_e
    :goto_7
    const/4 v3, 0x1

    .line 261
    :goto_8
    xor-int/2addr v3, v4

    .line 262
    iget-wide v8, v9, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 263
    .line 264
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 265
    .line 266
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 267
    .line 268
    .line 269
    move-result-wide v21

    .line 270
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v23

    .line 274
    new-instance v5, Lcom/google/android/gms/internal/ads/nL;

    .line 275
    .line 276
    const/16 v19, -0x1

    .line 277
    .line 278
    const/16 v20, 0x0

    .line 279
    .line 280
    move-object/from16 v18, v5

    .line 281
    .line 282
    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/nL;-><init>(ILcom/google/android/gms/internal/ads/p0;JJ)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 286
    .line 287
    move-object/from16 v8, p1

    .line 288
    .line 289
    invoke-virtual {v2, v8, v5, v0, v3}, Lcom/google/android/gms/internal/ads/f8;->n(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;Ljava/io/IOException;Z)V

    .line 290
    .line 291
    .line 292
    iget v0, v7, LS0/g;->a:I

    .line 293
    .line 294
    const/4 v2, 0x3

    .line 295
    if-ne v0, v2, :cond_f

    .line 296
    .line 297
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 298
    .line 299
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 300
    .line 301
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 302
    .line 303
    return-void

    .line 304
    :cond_f
    const/4 v2, 0x2

    .line 305
    if-eq v0, v2, :cond_14

    .line 306
    .line 307
    if-ne v0, v4, :cond_10

    .line 308
    .line 309
    iput v4, v1, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 310
    .line 311
    :cond_10
    iget-wide v2, v7, LS0/g;->b:J

    .line 312
    .line 313
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    cmp-long v0, v2, v7

    .line 319
    .line 320
    if-eqz v0, :cond_11

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_11
    iget v0, v1, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 324
    .line 325
    add-int/lit8 v0, v0, -0x1

    .line 326
    .line 327
    mul-int/lit16 v0, v0, 0x3e8

    .line 328
    .line 329
    const/16 v2, 0x1388

    .line 330
    .line 331
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    int-to-long v2, v0

    .line 336
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 337
    .line 338
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 339
    .line 340
    if-nez v5, :cond_12

    .line 341
    .line 342
    const/4 v6, 0x1

    .line 343
    :cond_12
    invoke-static {v6}, Lo3/r;->M(Z)V

    .line 344
    .line 345
    .line 346
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 347
    .line 348
    cmp-long v5, v2, v10

    .line 349
    .line 350
    if-lez v5, :cond_13

    .line 351
    .line 352
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_13
    const/4 v2, 0x0

    .line 357
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->a:Ljava/util/concurrent/ExecutorService;

    .line 360
    .line 361
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    .line 363
    .line 364
    :cond_14
    :goto_a
    return-void

    .line 365
    :cond_15
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 366
    .line 367
    check-cast v2, Lcom/google/android/gms/internal/ads/KN;

    .line 368
    .line 369
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/KN;->l(Lcom/google/android/gms/internal/ads/GN;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v2, "LoadTask"

    .line 375
    .line 376
    const-string v3, "Unexpected exception handling load completed"

    .line 377
    .line 378
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->N:Lcom/google/android/gms/internal/ads/JO;

    .line 382
    .line 383
    new-instance v3, Lcom/google/android/gms/internal/ads/IO;

    .line 384
    .line 385
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/IO;-><init>(Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 389
    .line 390
    return-void

    .line 391
    :cond_16
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Ljava/lang/Error;

    .line 394
    .line 395
    throw v0
.end method

.method public final run()V
    .locals 4

    .line 1
    const-string v0, "load:"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/GO;->L:Z

    .line 6
    .line 7
    xor-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/GO;->K:Ljava/lang/Thread;

    .line 14
    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GO;->G:Lcom/google/android/gms/internal/ads/GN;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GN;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :catch_2
    move-exception v0

    .line 49
    goto :goto_3

    .line 50
    :catch_3
    move-exception v0

    .line 51
    goto :goto_4

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :try_start_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/GO;->K:Ljava/lang/Thread;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 62
    .line 63
    .line 64
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 76
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 77
    :catchall_2
    move-exception v0

    .line 78
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 79
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    .line 80
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    const-string v1, "LoadTask"

    .line 85
    .line 86
    const-string v2, "Unexpected error loading stream"

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    :cond_1
    throw v0

    .line 100
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const-string v2, "LoadTask"

    .line 105
    .line 106
    const-string v3, "OutOfMemory error loading stream"

    .line 107
    .line 108
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/google/android/gms/internal/ads/IO;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/IO;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :goto_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 125
    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    const-string v2, "LoadTask"

    .line 129
    .line 130
    const-string v3, "Unexpected exception loading stream"

    .line 131
    .line 132
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lcom/google/android/gms/internal/ads/IO;

    .line 136
    .line 137
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/IO;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :goto_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/GO;->M:Z

    .line 149
    .line 150
    if-nez v2, :cond_2

    .line 151
    .line 152
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .line 158
    .line 159
    :cond_2
    return-void
.end method
