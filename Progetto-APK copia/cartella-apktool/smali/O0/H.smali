.class public final LO0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/j;


# instance fields
.field public final G:J

.field public final H:Landroid/net/Uri;

.field public final I:Ls0/M;

.field public final J:Lm2/u;

.field public final K:LW0/u;

.field public final L:Lp0/i;

.field public final M:LW0/w;

.field public volatile N:Z

.field public O:Z

.field public P:J

.field public Q:Ls0/m;

.field public R:LW0/L;

.field public S:Z

.field public final synthetic T:LO0/L;


# direct methods
.method public constructor <init>(LO0/L;Landroid/net/Uri;Ls0/i;Lm2/u;LW0/u;Lp0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/H;->T:LO0/L;

    .line 5
    .line 6
    iput-object p2, p0, LO0/H;->H:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Ls0/M;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ls0/M;-><init>(Ls0/i;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LO0/H;->I:Ls0/M;

    .line 14
    .line 15
    iput-object p4, p0, LO0/H;->J:Lm2/u;

    .line 16
    .line 17
    iput-object p5, p0, LO0/H;->K:LW0/u;

    .line 18
    .line 19
    iput-object p6, p0, LO0/H;->L:Lp0/i;

    .line 20
    .line 21
    new-instance p1, LW0/w;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, LO0/H;->M:LW0/w;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, LO0/H;->O:Z

    .line 30
    .line 31
    sget-object p1, LO0/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    iput-wide p1, p0, LO0/H;->G:J

    .line 38
    .line 39
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, LO0/H;->a(J)Ls0/m;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, LO0/H;->Q:Ls0/m;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LO0/H;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public final a(J)Ls0/m;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, LO0/H;->T:LO0/L;

    .line 7
    .line 8
    iget-object v13, v1, LO0/L;->O:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v8, LO0/L;->x0:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v3, v0, LO0/H;->H:Landroid/net/Uri;

    .line 13
    .line 14
    const-string v1, "The uri must be set."

    .line 15
    .line 16
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ls0/m;

    .line 20
    .line 21
    const/4 v14, 0x6

    .line 22
    const/4 v15, 0x0

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    const-wide/16 v11, -0x1

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    move-wide/from16 v9, p1

    .line 31
    .line 32
    invoke-direct/range {v2 .. v15}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final p()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-nez v2, :cond_d

    .line 6
    .line 7
    iget-boolean v3, v1, LO0/H;->N:Z

    .line 8
    .line 9
    if-nez v3, :cond_d

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    :try_start_0
    iget-object v6, v1, LO0/H;->M:LW0/w;

    .line 15
    .line 16
    iget-wide v13, v6, LW0/w;->a:J

    .line 17
    .line 18
    invoke-virtual {v1, v13, v14}, LO0/H;->a(J)Ls0/m;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iput-object v6, v1, LO0/H;->Q:Ls0/m;

    .line 23
    .line 24
    iget-object v7, v1, LO0/H;->I:Ls0/M;

    .line 25
    .line 26
    invoke-virtual {v7, v6}, Ls0/M;->a(Ls0/m;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    iget-boolean v8, v1, LO0/H;->N:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v8, :cond_2

    .line 33
    .line 34
    if-ne v2, v5, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, v1, LO0/H;->J:Lm2/u;

    .line 38
    .line 39
    invoke-virtual {v0}, Lm2/u;->p()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    cmp-long v0, v5, v3

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, v1, LO0/H;->M:LW0/w;

    .line 48
    .line 49
    iget-object v2, v1, LO0/H;->J:Lm2/u;

    .line 50
    .line 51
    invoke-virtual {v2}, Lm2/u;->p()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v0, LW0/w;->a:J

    .line 56
    .line 57
    :cond_1
    :goto_1
    iget-object v0, v1, LO0/H;->I:Ls0/M;

    .line 58
    .line 59
    invoke-static {v0}, Ln0/c;->d(Ls0/i;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_2
    cmp-long v8, v6, v3

    .line 65
    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    add-long/2addr v6, v13

    .line 69
    :try_start_1
    iget-object v8, v1, LO0/H;->T:LO0/L;

    .line 70
    .line 71
    iget-object v9, v8, LO0/L;->Y:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v10, LO0/F;

    .line 74
    .line 75
    const/4 v11, 0x2

    .line 76
    invoke-direct {v10, v8, v11}, LO0/F;-><init>(LO0/L;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    move-wide v15, v6

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :goto_2
    iget-object v6, v1, LO0/H;->T:LO0/L;

    .line 88
    .line 89
    iget-object v7, v1, LO0/H;->I:Ls0/M;

    .line 90
    .line 91
    iget-object v7, v7, Ls0/M;->a:Ls0/i;

    .line 92
    .line 93
    invoke-interface {v7}, Ls0/i;->k()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static {v7}, Lh1/b;->a(Ljava/util/Map;)Lh1/b;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iput-object v7, v6, LO0/L;->a0:Lh1/b;

    .line 102
    .line 103
    iget-object v6, v1, LO0/H;->I:Ls0/M;

    .line 104
    .line 105
    iget-object v7, v1, LO0/H;->T:LO0/L;

    .line 106
    .line 107
    iget-object v7, v7, LO0/L;->a0:Lh1/b;

    .line 108
    .line 109
    if-eqz v7, :cond_4

    .line 110
    .line 111
    iget v7, v7, Lh1/b;->f:I

    .line 112
    .line 113
    const/4 v8, -0x1

    .line 114
    if-eq v7, v8, :cond_4

    .line 115
    .line 116
    new-instance v8, LO0/o;

    .line 117
    .line 118
    invoke-direct {v8, v6, v7, v1}, LO0/o;-><init>(Ls0/M;ILO0/H;)V

    .line 119
    .line 120
    .line 121
    iget-object v6, v1, LO0/H;->T:LO0/L;

    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    new-instance v7, LO0/J;

    .line 127
    .line 128
    invoke-direct {v7, v0, v5}, LO0/J;-><init>(IZ)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v7}, LO0/L;->D(LO0/J;)LW0/L;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iput-object v6, v1, LO0/H;->R:LW0/L;

    .line 136
    .line 137
    sget-object v7, LO0/L;->y0:Lm0/t;

    .line 138
    .line 139
    invoke-interface {v6, v7}, LW0/L;->b(Lm0/t;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move-object v8, v6

    .line 144
    :goto_3
    iget-object v7, v1, LO0/H;->J:Lm2/u;

    .line 145
    .line 146
    iget-object v9, v1, LO0/H;->H:Landroid/net/Uri;

    .line 147
    .line 148
    iget-object v6, v1, LO0/H;->I:Ls0/M;

    .line 149
    .line 150
    iget-object v6, v6, Ls0/M;->a:Ls0/i;

    .line 151
    .line 152
    invoke-interface {v6}, Ls0/i;->k()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    iget-object v6, v1, LO0/H;->K:LW0/u;

    .line 157
    .line 158
    move-wide v11, v13

    .line 159
    move-wide v3, v13

    .line 160
    move-wide v13, v15

    .line 161
    move-object v15, v6

    .line 162
    invoke-virtual/range {v7 .. v15}, Lm2/u;->G(Ls0/i;Landroid/net/Uri;Ljava/util/Map;JJLW0/u;)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v1, LO0/H;->T:LO0/L;

    .line 166
    .line 167
    iget-object v6, v6, LO0/L;->a0:Lh1/b;

    .line 168
    .line 169
    if-eqz v6, :cond_6

    .line 170
    .line 171
    iget-object v6, v1, LO0/H;->J:Lm2/u;

    .line 172
    .line 173
    iget-object v6, v6, Lm2/u;->I:Ljava/lang/Object;

    .line 174
    .line 175
    move-object v7, v6

    .line 176
    check-cast v7, LW0/s;

    .line 177
    .line 178
    if-nez v7, :cond_5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    check-cast v6, LW0/s;

    .line 182
    .line 183
    invoke-interface {v6}, LW0/s;->b()LW0/s;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    instance-of v7, v6, Ln1/d;

    .line 188
    .line 189
    if-eqz v7, :cond_6

    .line 190
    .line 191
    check-cast v6, Ln1/d;

    .line 192
    .line 193
    iput-boolean v5, v6, Ln1/d;->s:Z

    .line 194
    .line 195
    :cond_6
    :goto_4
    iget-boolean v6, v1, LO0/H;->O:Z

    .line 196
    .line 197
    if-eqz v6, :cond_7

    .line 198
    .line 199
    iget-object v6, v1, LO0/H;->J:Lm2/u;

    .line 200
    .line 201
    iget-wide v7, v1, LO0/H;->P:J

    .line 202
    .line 203
    iget-object v6, v6, Lm2/u;->I:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v6, LW0/s;

    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-interface {v6, v3, v4, v7, v8}, LW0/s;->i(JJ)V

    .line 211
    .line 212
    .line 213
    iput-boolean v0, v1, LO0/H;->O:Z

    .line 214
    .line 215
    :cond_7
    :goto_5
    move-wide v13, v3

    .line 216
    :cond_8
    if-nez v2, :cond_9

    .line 217
    .line 218
    iget-boolean v3, v1, LO0/H;->N:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    if-nez v3, :cond_9

    .line 221
    .line 222
    :try_start_2
    iget-object v3, v1, LO0/H;->L:Lp0/i;

    .line 223
    .line 224
    invoke-virtual {v3}, Lp0/i;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    .line 226
    .line 227
    :try_start_3
    iget-object v3, v1, LO0/H;->J:Lm2/u;

    .line 228
    .line 229
    iget-object v4, v1, LO0/H;->M:LW0/w;

    .line 230
    .line 231
    iget-object v6, v3, Lm2/u;->I:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v6, LW0/s;

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    iget-object v3, v3, Lm2/u;->J:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v3, LW0/t;

    .line 241
    .line 242
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-interface {v6, v3, v4}, LW0/s;->h(LW0/t;LW0/w;)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    iget-object v3, v1, LO0/H;->J:Lm2/u;

    .line 250
    .line 251
    invoke-virtual {v3}, Lm2/u;->p()J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    iget-object v6, v1, LO0/H;->T:LO0/L;

    .line 256
    .line 257
    iget-wide v6, v6, LO0/L;->P:J

    .line 258
    .line 259
    add-long/2addr v6, v13

    .line 260
    cmp-long v8, v3, v6

    .line 261
    .line 262
    if-lez v8, :cond_8

    .line 263
    .line 264
    iget-object v6, v1, LO0/H;->L:Lp0/i;

    .line 265
    .line 266
    invoke-virtual {v6}, Lp0/i;->e()V

    .line 267
    .line 268
    .line 269
    iget-object v6, v1, LO0/H;->T:LO0/L;

    .line 270
    .line 271
    iget-object v7, v6, LO0/L;->Y:Landroid/os/Handler;

    .line 272
    .line 273
    iget-object v6, v6, LO0/L;->X:LO0/F;

    .line 274
    .line 275
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    :cond_9
    if-ne v2, v5, :cond_a

    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    goto :goto_6

    .line 289
    :cond_a
    iget-object v3, v1, LO0/H;->J:Lm2/u;

    .line 290
    .line 291
    invoke-virtual {v3}, Lm2/u;->p()J

    .line 292
    .line 293
    .line 294
    move-result-wide v3

    .line 295
    const-wide/16 v5, -0x1

    .line 296
    .line 297
    cmp-long v7, v3, v5

    .line 298
    .line 299
    if-eqz v7, :cond_b

    .line 300
    .line 301
    iget-object v3, v1, LO0/H;->M:LW0/w;

    .line 302
    .line 303
    iget-object v4, v1, LO0/H;->J:Lm2/u;

    .line 304
    .line 305
    invoke-virtual {v4}, Lm2/u;->p()J

    .line 306
    .line 307
    .line 308
    move-result-wide v4

    .line 309
    iput-wide v4, v3, LW0/w;->a:J

    .line 310
    .line 311
    :cond_b
    :goto_6
    iget-object v3, v1, LO0/H;->I:Ls0/M;

    .line 312
    .line 313
    invoke-static {v3}, Ln0/c;->d(Ls0/i;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :goto_7
    if-eq v2, v5, :cond_c

    .line 319
    .line 320
    iget-object v2, v1, LO0/H;->J:Lm2/u;

    .line 321
    .line 322
    invoke-virtual {v2}, Lm2/u;->p()J

    .line 323
    .line 324
    .line 325
    move-result-wide v2

    .line 326
    const-wide/16 v4, -0x1

    .line 327
    .line 328
    cmp-long v6, v2, v4

    .line 329
    .line 330
    if-eqz v6, :cond_c

    .line 331
    .line 332
    iget-object v2, v1, LO0/H;->M:LW0/w;

    .line 333
    .line 334
    iget-object v3, v1, LO0/H;->J:Lm2/u;

    .line 335
    .line 336
    invoke-virtual {v3}, Lm2/u;->p()J

    .line 337
    .line 338
    .line 339
    move-result-wide v3

    .line 340
    iput-wide v3, v2, LW0/w;->a:J

    .line 341
    .line 342
    :cond_c
    iget-object v2, v1, LO0/H;->I:Ls0/M;

    .line 343
    .line 344
    invoke-static {v2}, Ln0/c;->d(Ls0/i;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_d
    :goto_8
    return-void
.end method
