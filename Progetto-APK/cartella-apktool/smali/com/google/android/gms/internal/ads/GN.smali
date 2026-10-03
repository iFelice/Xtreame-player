.class public final Lcom/google/android/gms/internal/ads/GN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/google/android/gms/internal/ads/RI;

.field public final c:Lcom/google/android/gms/internal/ads/bD;

.field public final d:Lcom/google/android/gms/internal/ads/N;

.field public final e:LG/c;

.field public final f:LW0/w;

.field public volatile g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/google/android/gms/internal/ads/CD;

.field public k:Lcom/google/android/gms/internal/ads/e0;

.field public l:Z

.field public final synthetic m:Lcom/google/android/gms/internal/ads/KN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/KN;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/bD;Lcom/google/android/gms/internal/ads/N;LG/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GN;->a:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/RI;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/RI;-><init>(Lcom/google/android/gms/internal/ads/kC;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/GN;->d:Lcom/google/android/gms/internal/ads/N;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/GN;->e:LG/c;

    .line 20
    .line 21
    new-instance p1, LW0/w;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/GN;->h:Z

    .line 30
    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/pN;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 34
    .line 35
    .line 36
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/GN;->b(J)Lcom/google/android/gms/internal/ads/CD;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GN;->j:Lcom/google/android/gms/internal/ads/CD;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Invalid metadata interval: "

    .line 4
    .line 5
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/GN;->g:Z

    .line 6
    .line 7
    if-nez v2, :cond_18

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 14
    .line 15
    iget-wide v13, v6, LW0/w;->a:J

    .line 16
    .line 17
    invoke-virtual {v1, v13, v14}, Lcom/google/android/gms/internal/ads/GN;->b(J)Lcom/google/android/gms/internal/ads/CD;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/GN;->j:Lcom/google/android/gms/internal/ads/CD;

    .line 22
    .line 23
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 24
    .line 25
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/RI;->a(Lcom/google/android/gms/internal/ads/CD;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/GN;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    if-eqz v8, :cond_2

    .line 32
    .line 33
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    cmp-long v6, v4, v2

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, v2, LW0/w;->a:J

    .line 50
    .line 51
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/RI;->zzd()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    return-void

    .line 57
    :cond_2
    cmp-long v8, v6, v2

    .line 58
    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    add-long/2addr v6, v13

    .line 62
    :try_start_2
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 63
    .line 64
    new-instance v9, Lcom/google/android/gms/internal/ads/EN;

    .line 65
    .line 66
    invoke-direct {v9, v8, v5}, Lcom/google/android/gms/internal/ads/EN;-><init>(Lcom/google/android/gms/internal/ads/KN;I)V

    .line 67
    .line 68
    .line 69
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    move-wide v15, v6

    .line 75
    goto :goto_1

    .line 76
    :goto_0
    const/4 v2, 0x0

    .line 77
    goto/16 :goto_10

    .line 78
    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_0

    .line 81
    :goto_1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 82
    .line 83
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 84
    .line 85
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/RI;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 86
    .line 87
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/kC;->zze()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    const-string v8, "icy-br"

    .line 92
    .line 93
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    const-string v9, "IcyHeaders"

    .line 100
    .line 101
    const/4 v10, -0x1

    .line 102
    if-eqz v8, :cond_5

    .line 103
    .line 104
    :try_start_3
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v11
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    mul-int/lit16 v11, v11, 0x3e8

    .line 115
    .line 116
    if-lez v11, :cond_4

    .line 117
    .line 118
    move/from16 v18, v11

    .line 119
    .line 120
    const/4 v2, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "Invalid bitrate: "

    .line 128
    .line 129
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_5
    const/4 v2, 0x0

    .line 143
    const/16 v18, -0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_1
    const/4 v11, -0x1

    .line 147
    :catch_2
    :try_start_6
    const-string v2, "Invalid bitrate header: "

    .line 148
    .line 149
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move/from16 v18, v11

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    :goto_2
    const-string v3, "icy-genre"

    .line 164
    .line 165
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Ljava/util/List;

    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Ljava/lang/String;

    .line 179
    .line 180
    move-object/from16 v20, v2

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    move-object/from16 v20, v8

    .line 185
    .line 186
    :goto_3
    const-string v3, "icy-name"

    .line 187
    .line 188
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Ljava/util/List;

    .line 193
    .line 194
    if-eqz v3, :cond_7

    .line 195
    .line 196
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    .line 202
    move-object/from16 v21, v2

    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_4

    .line 206
    :cond_7
    move-object/from16 v21, v8

    .line 207
    .line 208
    :goto_4
    const-string v3, "icy-url"

    .line 209
    .line 210
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/util/List;

    .line 215
    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/lang/String;

    .line 223
    .line 224
    move-object/from16 v22, v2

    .line 225
    .line 226
    const/4 v2, 0x1

    .line 227
    goto :goto_5

    .line 228
    :cond_8
    move-object/from16 v22, v8

    .line 229
    .line 230
    :goto_5
    const-string v3, "icy-pub"

    .line 231
    .line 232
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Ljava/util/List;

    .line 237
    .line 238
    if-eqz v3, :cond_9

    .line 239
    .line 240
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Ljava/lang/String;

    .line 245
    .line 246
    const-string v3, "1"

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    move/from16 v23, v2

    .line 253
    .line 254
    const/4 v2, 0x1

    .line 255
    goto :goto_6

    .line 256
    :cond_9
    const/16 v23, 0x0

    .line 257
    .line 258
    :goto_6
    const-string v3, "icy-metaint"

    .line 259
    .line 260
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Ljava/util/List;

    .line 265
    .line 266
    if-eqz v3, :cond_b

    .line 267
    .line 268
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 273
    .line 274
    :try_start_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v7
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 278
    if-lez v7, :cond_a

    .line 279
    .line 280
    move/from16 v19, v7

    .line 281
    .line 282
    const/4 v2, 0x1

    .line 283
    goto :goto_7

    .line 284
    :cond_a
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 300
    .line 301
    .line 302
    :cond_b
    const/16 v19, -0x1

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :catch_3
    const/4 v7, -0x1

    .line 306
    :catch_4
    :try_start_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    move/from16 v19, v7

    .line 318
    .line 319
    :goto_7
    if-eqz v2, :cond_c

    .line 320
    .line 321
    new-instance v8, Lcom/google/android/gms/internal/ads/I0;

    .line 322
    .line 323
    move-object/from16 v17, v8

    .line 324
    .line 325
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/I0;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    .line 327
    .line 328
    :cond_c
    iput-object v8, v6, Lcom/google/android/gms/internal/ads/KN;->V:Lcom/google/android/gms/internal/ads/I0;

    .line 329
    .line 330
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 331
    .line 332
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 333
    .line 334
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/KN;->V:Lcom/google/android/gms/internal/ads/I0;

    .line 335
    .line 336
    if-eqz v3, :cond_d

    .line 337
    .line 338
    iget v3, v3, Lcom/google/android/gms/internal/ads/I0;->L:I

    .line 339
    .line 340
    if-eq v3, v10, :cond_d

    .line 341
    .line 342
    new-instance v6, Lcom/google/android/gms/internal/ads/oN;

    .line 343
    .line 344
    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/gms/internal/ads/oN;-><init>(Lcom/google/android/gms/internal/ads/RI;ILcom/google/android/gms/internal/ads/GN;)V

    .line 345
    .line 346
    .line 347
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    new-instance v3, Lcom/google/android/gms/internal/ads/IN;

    .line 353
    .line 354
    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/internal/ads/IN;-><init>(IZ)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/KN;->o(Lcom/google/android/gms/internal/ads/IN;)Lcom/google/android/gms/internal/ads/e0;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->k:Lcom/google/android/gms/internal/ads/e0;

    .line 362
    .line 363
    sget-object v3, Lcom/google/android/gms/internal/ads/KN;->t0:Lcom/google/android/gms/internal/ads/p0;

    .line 364
    .line 365
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 366
    .line 367
    .line 368
    move-object v8, v6

    .line 369
    goto :goto_8

    .line 370
    :cond_d
    move-object v8, v2

    .line 371
    :goto_8
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 372
    .line 373
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/GN;->a:Landroid/net/Uri;

    .line 374
    .line 375
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 376
    .line 377
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/RI;->a:Lcom/google/android/gms/internal/ads/kC;

    .line 378
    .line 379
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/kC;->zze()Ljava/util/Map;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->d:Lcom/google/android/gms/internal/ads/N;

    .line 384
    .line 385
    move-wide v11, v13

    .line 386
    move-wide v5, v13

    .line 387
    move-wide v13, v15

    .line 388
    move-object v15, v2

    .line 389
    invoke-virtual/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/bD;->u(Lcom/google/android/gms/internal/ads/kC;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/N;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 393
    .line 394
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/KN;->V:Lcom/google/android/gms/internal/ads/I0;

    .line 395
    .line 396
    if-eqz v2, :cond_f

    .line 397
    .line 398
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 399
    .line 400
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v2, Lcom/google/android/gms/internal/ads/L;

    .line 403
    .line 404
    if-nez v2, :cond_e

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_e
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/j1;

    .line 408
    .line 409
    if-eqz v7, :cond_f

    .line 410
    .line 411
    check-cast v2, Lcom/google/android/gms/internal/ads/j1;

    .line 412
    .line 413
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/j1;->o:Z

    .line 414
    .line 415
    :cond_f
    :goto_9
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/GN;->h:Z

    .line 416
    .line 417
    if-eqz v2, :cond_10

    .line 418
    .line 419
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 420
    .line 421
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 422
    .line 423
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v2, Lcom/google/android/gms/internal/ads/L;

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    invoke-interface {v2, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/L;->e(JJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 431
    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    :try_start_a
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/GN;->h:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 435
    .line 436
    :goto_a
    move-wide v13, v5

    .line 437
    const/4 v3, 0x0

    .line 438
    goto :goto_b

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    goto/16 :goto_10

    .line 441
    .line 442
    :cond_10
    const/4 v2, 0x0

    .line 443
    goto :goto_a

    .line 444
    :cond_11
    :goto_b
    if-nez v3, :cond_14

    .line 445
    .line 446
    :try_start_b
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/GN;->g:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 447
    .line 448
    if-nez v5, :cond_13

    .line 449
    .line 450
    :try_start_c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/GN;->e:LG/c;

    .line 451
    .line 452
    monitor-enter v5
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 453
    :goto_c
    :try_start_d
    iget-boolean v6, v5, LG/c;->H:Z

    .line 454
    .line 455
    if-nez v6, :cond_12

    .line 456
    .line 457
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 458
    .line 459
    .line 460
    goto :goto_c

    .line 461
    :catchall_2
    move-exception v0

    .line 462
    goto :goto_d

    .line 463
    :cond_12
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 464
    :try_start_f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 465
    .line 466
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 467
    .line 468
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v7, Lcom/google/android/gms/internal/ads/L;

    .line 471
    .line 472
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v5, Lcom/google/android/gms/internal/ads/M;

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    invoke-interface {v7, v5, v6}, Lcom/google/android/gms/internal/ads/L;->c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 487
    .line 488
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 489
    .line 490
    .line 491
    move-result-wide v5

    .line 492
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 493
    .line 494
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/KN;->M:J

    .line 495
    .line 496
    add-long/2addr v7, v13

    .line 497
    cmp-long v9, v5, v7

    .line 498
    .line 499
    if-lez v9, :cond_11

    .line 500
    .line 501
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->e:LG/c;

    .line 502
    .line 503
    invoke-virtual {v7}, LG/c;->d()Z

    .line 504
    .line 505
    .line 506
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/GN;->m:Lcom/google/android/gms/internal/ads/KN;

    .line 507
    .line 508
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 509
    .line 510
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/KN;->S:Lcom/google/android/gms/internal/ads/EN;

    .line 511
    .line 512
    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 513
    .line 514
    .line 515
    move-wide v13, v5

    .line 516
    goto :goto_b

    .line 517
    :catchall_3
    move-exception v0

    .line 518
    move v5, v3

    .line 519
    goto :goto_11

    .line 520
    :goto_d
    :try_start_10
    monitor-exit v5

    .line 521
    throw v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 522
    :catch_5
    :try_start_11
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 523
    .line 524
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 525
    .line 526
    .line 527
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 528
    :cond_13
    const/4 v3, 0x0

    .line 529
    :cond_14
    if-ne v3, v4, :cond_15

    .line 530
    .line 531
    const/4 v5, 0x0

    .line 532
    goto :goto_e

    .line 533
    :cond_15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 534
    .line 535
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 536
    .line 537
    .line 538
    move-result-wide v4

    .line 539
    const-wide/16 v6, -0x1

    .line 540
    .line 541
    cmp-long v8, v4, v6

    .line 542
    .line 543
    if-eqz v8, :cond_16

    .line 544
    .line 545
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 546
    .line 547
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 548
    .line 549
    .line 550
    move-result-wide v5

    .line 551
    iput-wide v5, v4, LW0/w;->a:J

    .line 552
    .line 553
    :cond_16
    move v5, v3

    .line 554
    :goto_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 555
    .line 556
    :try_start_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/RI;->zzd()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 557
    .line 558
    .line 559
    goto :goto_f

    .line 560
    :catch_6
    nop

    .line 561
    :goto_f
    if-eqz v5, :cond_0

    .line 562
    .line 563
    goto :goto_12

    .line 564
    :goto_10
    const/4 v5, 0x0

    .line 565
    :goto_11
    if-eq v5, v4, :cond_17

    .line 566
    .line 567
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->c:Lcom/google/android/gms/internal/ads/bD;

    .line 568
    .line 569
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 570
    .line 571
    .line 572
    move-result-wide v3

    .line 573
    const-wide/16 v5, -0x1

    .line 574
    .line 575
    cmp-long v7, v3, v5

    .line 576
    .line 577
    if-eqz v7, :cond_17

    .line 578
    .line 579
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 580
    .line 581
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 582
    .line 583
    .line 584
    move-result-wide v4

    .line 585
    iput-wide v4, v3, LW0/w;->a:J

    .line 586
    .line 587
    :cond_17
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 588
    .line 589
    :try_start_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/RI;->zzd()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 590
    .line 591
    .line 592
    :catch_7
    throw v0

    .line 593
    :cond_18
    :goto_12
    return-void
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/CD;
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/KN;->s0:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/GN;->a:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v8, Lcom/google/android/gms/internal/ads/CD;

    .line 11
    .line 12
    const-wide/16 v5, -0x1

    .line 13
    .line 14
    const/4 v7, 0x6

    .line 15
    move-object v0, v8

    .line 16
    move-wide v3, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/CD;-><init>(Landroid/net/Uri;Ljava/util/Map;JJI)V

    .line 18
    .line 19
    .line 20
    return-object v8

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p2, "The uri must be set."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
