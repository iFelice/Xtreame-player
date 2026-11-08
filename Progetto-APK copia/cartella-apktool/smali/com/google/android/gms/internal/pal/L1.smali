.class public final Lcom/google/android/gms/internal/pal/L1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# static fields
.field public static final j:Lcom/google/android/gms/internal/pal/r1;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Lcom/google/android/gms/internal/pal/F2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/r1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/r1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/L1;->j:Lcom/google/android/gms/internal/pal/r1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;ILandroid/content/Context;Lcom/google/android/gms/internal/pal/F2;)V
    .locals 7

    .line 1
    const/16 v6, 0x1b

    .line 2
    .line 3
    const-string v2, "hhtrMjcGMTQSGdrv1+l2gakNTe0Pfchc8VT5kRHtsehlafuJ8JEE4iewNV4y5I/U"

    .line 4
    .line 5
    const-string v3, "o5W1eROpLyVNcsDGW3Y0lGc2x/V+mDPvMXouv3gbW6M="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/L1;->h:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/google/android/gms/internal/pal/L1;->i:Lcom/google/android/gms/internal/pal/F2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/L1;->j:Lcom/google/android/gms/internal/pal/r1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/L1;->h:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/r1;->d(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/pal/d1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v1, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "E"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_e

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto/16 :goto_b

    .line 54
    .line 55
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/L1;->i:Lcom/google/android/gms/internal/pal/F2;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->r()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->p()Lcom/google/android/gms/internal/pal/o4;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/o4;->o()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->p()Lcom/google/android/gms/internal/pal/o4;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/o4;->o()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move-object v1, v3

    .line 90
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v4, 0x1

    .line 95
    const/4 v5, 0x4

    .line 96
    const/4 v6, 0x3

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    goto :goto_5

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/L1;->i:Lcom/google/android/gms/internal/pal/F2;

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->r()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->p()Lcom/google/android/gms/internal/pal/o4;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/internal/pal/o4;->o()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-nez v7, :cond_3

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->p()Lcom/google/android/gms/internal/pal/o4;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/internal/pal/o4;->o()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move-object v7, v3

    .line 135
    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_4

    .line 140
    .line 141
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    if-eqz v1, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->q()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_5

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->o()Lcom/google/android/gms/internal/pal/r3;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/r3;->o()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v1, v5, :cond_5

    .line 161
    .line 162
    const/4 v1, 0x1

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    const/4 v1, 0x0

    .line 165
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 176
    .line 177
    iget-boolean v1, v1, Lcom/google/android/gms/internal/pal/A1;->n:Z

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    .line 181
    const/4 v1, 0x4

    .line 182
    goto :goto_5

    .line 183
    :cond_6
    const/4 v1, 0x3

    .line 184
    :goto_5
    if-ne v1, v6, :cond_7

    .line 185
    .line 186
    const/4 v7, 0x1

    .line 187
    goto :goto_6

    .line 188
    :cond_7
    const/4 v7, 0x0

    .line 189
    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    sget-object v8, Lcom/google/android/gms/internal/pal/l2;->b:LO1/y;

    .line 194
    .line 195
    sget-object v9, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 196
    .line 197
    iget-object v10, v9, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 198
    .line 199
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    check-cast v8, Ljava/lang/Boolean;

    .line 204
    .line 205
    sget-object v10, Lcom/google/android/gms/internal/pal/l2;->a:LO1/y;

    .line 206
    .line 207
    iget-object v9, v9, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 208
    .line 209
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    if-eqz v9, :cond_8

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/L1;->c()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    goto :goto_7

    .line 226
    :cond_8
    move-object v9, v3

    .line 227
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_9

    .line 232
    .line 233
    iget-object v8, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 234
    .line 235
    iget-boolean v8, v8, Lcom/google/android/gms/internal/pal/A1;->n:Z

    .line 236
    .line 237
    if-eqz v8, :cond_9

    .line 238
    .line 239
    invoke-static {v9}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eqz v8, :cond_9

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/L1;->d()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    :cond_9
    iget-object v8, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 250
    .line 251
    new-array v10, v6, [Ljava/lang/Object;

    .line 252
    .line 253
    iget-object v11, p0, Lcom/google/android/gms/internal/pal/L1;->h:Landroid/content/Context;

    .line 254
    .line 255
    aput-object v11, v10, v2

    .line 256
    .line 257
    aput-object v7, v10, v4

    .line 258
    .line 259
    const/4 v4, 0x2

    .line 260
    aput-object v9, v10, v4

    .line 261
    .line 262
    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Ljava/lang/String;

    .line 267
    .line 268
    new-instance v4, Lcom/google/android/gms/internal/pal/d1;

    .line 269
    .line 270
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/pal/d1;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v3, v4, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_a

    .line 280
    .line 281
    iget-object v3, v4, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 282
    .line 283
    const-string v7, "E"

    .line 284
    .line 285
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_d

    .line 290
    .line 291
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 292
    .line 293
    if-eq v1, v6, :cond_c

    .line 294
    .line 295
    if-eq v1, v5, :cond_b

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/L1;->i:Lcom/google/android/gms/internal/pal/F2;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/F2;->p()Lcom/google/android/gms/internal/pal/o4;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/o4;->o()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iput-object v1, v4, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/L1;->d()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/C1;->c(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_d

    .line 320
    .line 321
    iput-object v1, v4, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 322
    .line 323
    :cond_d
    :goto_8
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    check-cast v1, Lcom/google/android/gms/internal/pal/d1;

    .line 331
    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 334
    .line 335
    monitor-enter v3

    .line 336
    if-eqz v1, :cond_14

    .line 337
    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 339
    .line 340
    iget-object v4, v1, Lcom/google/android/gms/internal/pal/d1;->a:Ljava/lang/String;

    .line 341
    .line 342
    iget-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 343
    .line 344
    if-eqz v5, :cond_f

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 347
    .line 348
    .line 349
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 350
    .line 351
    :cond_f
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 352
    .line 353
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 354
    .line 355
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/pal/m0;->t0(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 359
    .line 360
    iget-wide v4, v1, Lcom/google/android/gms/internal/pal/d1;->b:J

    .line 361
    .line 362
    iget-boolean v6, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 363
    .line 364
    if-eqz v6, :cond_10

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 367
    .line 368
    .line 369
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 370
    .line 371
    :cond_10
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 372
    .line 373
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 374
    .line 375
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/pal/m0;->m(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 379
    .line 380
    iget-object v4, v1, Lcom/google/android/gms/internal/pal/d1;->c:Ljava/lang/String;

    .line 381
    .line 382
    iget-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 383
    .line 384
    if-eqz v5, :cond_11

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 387
    .line 388
    .line 389
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 390
    .line 391
    :cond_11
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 392
    .line 393
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 394
    .line 395
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/pal/m0;->y0(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 399
    .line 400
    iget-object v4, v1, Lcom/google/android/gms/internal/pal/d1;->d:Ljava/lang/String;

    .line 401
    .line 402
    iget-boolean v5, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 403
    .line 404
    if-eqz v5, :cond_12

    .line 405
    .line 406
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 407
    .line 408
    .line 409
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 410
    .line 411
    :cond_12
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 412
    .line 413
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 414
    .line 415
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/pal/m0;->v(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 419
    .line 420
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/d1;->e:Ljava/lang/String;

    .line 421
    .line 422
    iget-boolean v4, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 423
    .line 424
    if-eqz v4, :cond_13

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 427
    .line 428
    .line 429
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 430
    .line 431
    :cond_13
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 432
    .line 433
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 434
    .line 435
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/m0;->w(Lcom/google/android/gms/internal/pal/m0;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    goto :goto_a

    .line 441
    :cond_14
    :goto_9
    monitor-exit v3

    .line 442
    return-void

    .line 443
    :goto_a
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    throw v0

    .line 445
    :goto_b
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "X.509"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/pal/l2;->c:LO1/y;

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 11
    .line 12
    iget-object v4, v3, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/C1;->d(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 42
    .line 43
    const-string v5, "user"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    sget-object v2, Lcom/google/android/gms/internal/pal/l2;->d:LO1/y;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/pal/k2;->a(LO1/y;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/C1;->d(Ljava/lang/String;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/L1;->h:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v5, 0x1e

    .line 91
    .line 92
    if-gt v3, v5, :cond_1

    .line 93
    .line 94
    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 95
    .line 96
    const-string v5, "S"

    .line 97
    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/pal/l3;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v5, Lcom/google/android/gms/internal/pal/Z1;

    .line 115
    .line 116
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/pal/Z1;-><init>(Lcom/google/android/gms/internal/pal/l3;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2, v4, v5}, LN/f;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/pal/Z1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/j3;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :catch_0
    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->k:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->j:Lcom/google/android/gms/internal/pal/m0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/m0;->U()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/m0;->e0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object v0

    .line 27
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method
