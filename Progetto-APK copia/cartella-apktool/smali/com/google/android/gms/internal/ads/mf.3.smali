.class public final Lcom/google/android/gms/internal/ads/mf;
.super Lcom/google/android/gms/internal/ads/jf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lJ;


# instance fields
.field public J:Ljava/lang/String;

.field public final K:Lcom/google/android/gms/internal/ads/Ne;

.field public L:Z

.field public final M:Lcom/google/android/gms/internal/ads/A0;

.field public final N:LW0/w;

.field public O:Ljava/nio/ByteBuffer;

.field public P:Z

.field public final Q:Ljava/lang/Object;

.field public final R:Ljava/lang/String;

.field public final S:I

.field public T:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Ne;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jf;-><init>(Lcom/google/android/gms/internal/ads/Oe;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/A0;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/A0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->M:Lcom/google/android/gms/internal/ads/A0;

    .line 12
    .line 13
    new-instance p2, LW0/w;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->N:LW0/w;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->Q:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Oe;->zzr()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    sget-object p2, Lcom/google/android/gms/internal/ads/rz;->G:Lcom/google/android/gms/internal/ads/rz;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Az;

    .line 37
    .line 38
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/Az;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object p2, v0

    .line 42
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/wz;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->R:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Oe;->zzf()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/google/android/gms/internal/ads/mf;->S:I

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/internal/ads/CD;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/CD;ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/CD;Z)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/rF;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/rF;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/mf;->M:Lcom/google/android/gms/internal/ads/A0;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mf;->L:Z

    return-void
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    iput-object v9, v8, Lcom/google/android/gms/internal/ads/mf;->J:Ljava/lang/String;

    .line 6
    .line 7
    const-string v10, "error"

    .line 8
    .line 9
    const-string v0, "MD5"

    .line 10
    .line 11
    invoke-static {v9, v0}, Lp3/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "cache:"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/WD;

    .line 26
    .line 27
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/WD;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/jf;->H:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/mf;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 33
    .line 34
    iget v2, v0, Lcom/google/android/gms/internal/ads/Ne;->d:I

    .line 35
    .line 36
    iget v3, v0, Lcom/google/android/gms/internal/ads/Ne;->e:I

    .line 37
    .line 38
    new-instance v6, Lcom/google/android/gms/internal/ads/rF;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    move-object v0, v6

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/rF;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/WD;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/Nz;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/mf;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ne;->i:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/Xe;

    .line 55
    .line 56
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/jf;->G:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/mf;->R:Ljava/lang/String;

    .line 59
    .line 60
    iget v3, v8, Lcom/google/android/gms/internal/ads/mf;->S:I

    .line 61
    .line 62
    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/gms/internal/ads/Xe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rF;Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    move-object v6, v0

    .line 66
    goto :goto_1

    .line 67
    :goto_0
    move-object/from16 v16, v10

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v7, Lcom/google/android/gms/internal/ads/CD;

    .line 78
    .line 79
    const-wide/16 v4, -0x1

    .line 80
    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    move-object v0, v7

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/CD;-><init>(Landroid/net/Uri;JJ)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/kC;->a(Lcom/google/android/gms/internal/ads/CD;)J

    .line 88
    .line 89
    .line 90
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/jf;->I:Ljava/lang/ref/WeakReference;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/android/gms/internal/ads/Oe;

    .line 97
    .line 98
    if-eqz v0, :cond_1

    .line 99
    .line 100
    invoke-interface {v0, v11, v8}, Lcom/google/android/gms/internal/ads/Oe;->h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jf;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 104
    .line 105
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->w:Lcom/google/android/gms/internal/ads/J7;

    .line 115
    .line 116
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 117
    .line 118
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 119
    .line 120
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->v:Lcom/google/android/gms/internal/ads/J7;

    .line 131
    .line 132
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/mf;->K:Lcom/google/android/gms/internal/ads/Ne;

    .line 145
    .line 146
    iget v7, v7, Lcom/google/android/gms/internal/ads/Ne;->c:I

    .line 147
    .line 148
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    const/16 v7, 0x2000

    .line 155
    .line 156
    new-array v13, v7, [B

    .line 157
    .line 158
    move-wide v14, v0

    .line 159
    :goto_2
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-interface {v6, v13, v7, v12}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 171
    .line 172
    .line 173
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v7, -0x1

    .line 175
    move-object/from16 v16, v10

    .line 176
    .line 177
    const/4 v10, 0x1

    .line 178
    if-ne v12, v7, :cond_2

    .line 179
    .line 180
    :try_start_1
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/mf;->T:Z

    .line 181
    .line 182
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/mf;->N:LW0/w;

    .line 183
    .line 184
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, LW0/w;->a(Ljava/nio/ByteBuffer;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    long-to-int v1, v0

    .line 191
    int-to-long v5, v1

    .line 192
    sget-object v0, Lp3/d;->b:LE1/W;

    .line 193
    .line 194
    new-instance v12, Lcom/google/android/gms/internal/ads/hf;

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    move-object v1, v12

    .line 198
    move-object/from16 v2, p0

    .line 199
    .line 200
    move-object/from16 v3, p1

    .line 201
    .line 202
    move-object v4, v11

    .line 203
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/hf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    :goto_3
    const/4 v0, 0x1

    .line 210
    goto :goto_5

    .line 211
    :catch_1
    move-exception v0

    .line 212
    goto/16 :goto_7

    .line 213
    .line 214
    :cond_2
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/mf;->Q:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :try_start_2
    iget-boolean v10, v8, Lcom/google/android/gms/internal/ads/mf;->L:Z

    .line 218
    .line 219
    if-nez v10, :cond_3

    .line 220
    .line 221
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    move-object/from16 v17, v6

    .line 224
    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-virtual {v10, v13, v6, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :cond_3
    move-object/from16 v17, v6

    .line 234
    .line 235
    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :try_start_3
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-gtz v6, :cond_4

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/mf;->v()V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :goto_5
    return v0

    .line 249
    :cond_4
    iget-boolean v6, v8, Lcom/google/android/gms/internal/ads/mf;->L:Z

    .line 250
    .line 251
    if-nez v6, :cond_7

    .line 252
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    .line 255
    .line 256
    move-result-wide v6

    .line 257
    sub-long v18, v6, v14

    .line 258
    .line 259
    cmp-long v10, v18, v4

    .line 260
    .line 261
    if-ltz v10, :cond_5

    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/mf;->v()V

    .line 264
    .line 265
    .line 266
    move-wide v14, v6

    .line 267
    :cond_5
    sub-long/2addr v6, v0

    .line 268
    const-wide/16 v18, 0x3e8

    .line 269
    .line 270
    mul-long v18, v18, v2

    .line 271
    .line 272
    cmp-long v10, v6, v18

    .line 273
    .line 274
    if-gtz v10, :cond_6

    .line 275
    .line 276
    move-object/from16 v10, v16

    .line 277
    .line 278
    move-object/from16 v6, v17

    .line 279
    .line 280
    const/16 v7, 0x2000

    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_6
    const-string v10, "downloadTimeout"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 284
    .line 285
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v1, "Timeout exceeded. Limit: "

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, " sec"

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-instance v1, Ljava/io/IOException;

    .line 308
    .line 309
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    :catch_2
    move-exception v0

    .line 314
    goto :goto_8

    .line 315
    :cond_7
    :try_start_5
    const-string v10, "externalAbort"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 316
    .line 317
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    .line 318
    .line 319
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v3, "Precache abort at "

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, " bytes"

    .line 339
    .line 340
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 351
    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 352
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 353
    :goto_7
    move-object/from16 v10, v16

    .line 354
    .line 355
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const-string v2, ":"

    .line 368
    .line 369
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v2, "Failed to preload url "

    .line 376
    .line 377
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v2, " Exception: "

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8, v9, v11, v10, v0}, Lcom/google/android/gms/internal/ads/jf;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const/4 v1, 0x0

    .line 402
    return v1
.end method

.method public final u()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mf;->Q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/mf;->P:Z

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mf;->P:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/mf;->L:Z

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    return-object v0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v1
.end method

.method public final v()V
    .locals 17

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/mf;->M:Lcom/google/android/gms/internal/ads/A0;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/android/gms/internal/ads/rF;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rF;->zze()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/util/Map$Entry;

    .line 49
    .line 50
    :try_start_0
    const-string v5, "content-length"

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/A0;->G:J

    .line 81
    .line 82
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/A0;->G:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    nop

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/A0;->G:J

    .line 96
    .line 97
    long-to-int v5, v0

    .line 98
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/mf;->N:LW0/w;

    .line 99
    .line 100
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, LW0/w;->a(Ljava/nio/ByteBuffer;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    long-to-int v1, v0

    .line 107
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/mf;->O:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    int-to-float v0, v4

    .line 114
    int-to-float v2, v5

    .line 115
    int-to-float v6, v1

    .line 116
    div-float/2addr v0, v2

    .line 117
    mul-float v0, v0, v6

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    sget-object v2, Lcom/google/android/gms/internal/ads/vf;->a0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    sget-object v2, Lcom/google/android/gms/internal/ads/vf;->b0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/mf;->J:Ljava/lang/String;

    .line 136
    .line 137
    const-string v6, "MD5"

    .line 138
    .line 139
    invoke-static {v2, v6}, Lp3/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const-string v7, "cache:"

    .line 148
    .line 149
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    int-to-long v7, v0

    .line 154
    if-lez v0, :cond_3

    .line 155
    .line 156
    const/4 v0, 0x1

    .line 157
    const/4 v10, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const/4 v10, 0x0

    .line 160
    :goto_2
    int-to-long v14, v1

    .line 161
    sget-object v9, Lp3/d;->b:LE1/W;

    .line 162
    .line 163
    new-instance v3, Lcom/google/android/gms/internal/ads/ff;

    .line 164
    .line 165
    move-object v0, v3

    .line 166
    move-object/from16 v1, p0

    .line 167
    .line 168
    move-object v13, v3

    .line 169
    move-object v3, v6

    .line 170
    move-wide v6, v7

    .line 171
    move-object/from16 v16, v9

    .line 172
    .line 173
    move-wide v8, v14

    .line 174
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v0, v16

    .line 178
    .line 179
    invoke-virtual {v0, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    .line 181
    .line 182
    return-void
.end method
