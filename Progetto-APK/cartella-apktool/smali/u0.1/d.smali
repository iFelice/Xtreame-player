.class public final Lu0/d;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field public final synthetic b:Lu0/e;


# direct methods
.method public constructor <init>(Lu0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lu0/d;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final declared-synchronized onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lu0/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    move-object p1, p3

    .line 13
    check-cast p1, Lorg/chromium/net/NetworkException;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->getErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x1

    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 23
    .line 24
    new-instance p2, Ljava/net/UnknownHostException;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p1, Lu0/e;->A:Ljava/io/IOException;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 35
    .line 36
    iput-object p3, p1, Lu0/e;->A:Ljava/io/IOException;

    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 39
    .line 40
    iget-object p1, p1, Lu0/e;->o:Lp0/i;

    .line 41
    .line 42
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lu0/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 9
    .line 10
    iget-object p1, p1, Lu0/e;->o:Lp0/i;

    .line 11
    .line 12
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final declared-synchronized onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, v1, Lu0/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 11
    .line 12
    iget-object v0, v0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 18
    .line 19
    iget-object v0, v0, Lu0/e;->w:Lu0/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 25
    .line 26
    iget-object v0, v0, Lu0/e;->x:Ls0/m;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v3, v0, Ls0/m;->c:I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x2

    .line 39
    if-ne v3, v5, :cond_2

    .line 40
    .line 41
    const/16 v3, 0x133

    .line 42
    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    .line 45
    const/16 v3, 0x134

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    :cond_1
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 50
    .line 51
    new-instance v3, Ls0/A;

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {v3, v2, v4, v5}, Ls0/A;-><init>(ILs0/j;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Lu0/e;->A:Ljava/io/IOException;

    .line 66
    .line 67
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 68
    .line 69
    iget-object v0, v0, Lu0/e;->o:Lp0/i;

    .line 70
    .line 71
    invoke-virtual {v0}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_2
    :try_start_2
    iget-object v3, v1, Lu0/d;->b:Lu0/e;

    .line 80
    .line 81
    iget-boolean v6, v3, Lu0/e;->j:Z

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    iget-object v6, v3, Lu0/e;->p:Lp0/G;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    iget v8, v3, Lu0/e;->h:I

    .line 95
    .line 96
    int-to-long v8, v8

    .line 97
    add-long/2addr v6, v8

    .line 98
    iput-wide v6, v3, Lu0/e;->C:J

    .line 99
    .line 100
    :cond_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    iget-object v6, v1, Lu0/d;->b:Lu0/e;

    .line 107
    .line 108
    iget-boolean v6, v6, Lu0/e;->k:Z

    .line 109
    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    new-instance v3, Ljava/net/CookieManager;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-static {v6, v7, v3}, Ls0/I;->e(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v6, v7, v3}, Ls0/I;->c(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iget-object v6, v1, Lu0/d;->b:Lu0/e;

    .line 133
    .line 134
    iget-boolean v7, v6, Lu0/e;->s:Z

    .line 135
    .line 136
    const/4 v8, 0x1

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    iget v7, v0, Ls0/m;->c:I

    .line 140
    .line 141
    if-ne v7, v5, :cond_5

    .line 142
    .line 143
    const/16 v7, 0x12e

    .line 144
    .line 145
    if-ne v2, v7, :cond_5

    .line 146
    .line 147
    const/4 v2, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    const/4 v2, 0x0

    .line 150
    :goto_0
    if-nez v2, :cond_7

    .line 151
    .line 152
    iget-boolean v6, v6, Lu0/e;->k:Z

    .line 153
    .line 154
    if-eqz v6, :cond_6

    .line 155
    .line 156
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :cond_7
    if-nez v2, :cond_8

    .line 168
    .line 169
    :try_start_3
    iget v2, v0, Ls0/m;->c:I

    .line 170
    .line 171
    if-ne v2, v5, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0}, Ls0/m;->a()Ls0/l;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iput-object v5, v2, Ls0/l;->a:Landroid/net/Uri;

    .line 182
    .line 183
    iput v8, v2, Ls0/l;->c:I

    .line 184
    .line 185
    iput-object v4, v2, Ls0/l;->d:[B

    .line 186
    .line 187
    invoke-virtual {v2}, Ls0/l;->a()Ls0/m;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_1

    .line 192
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    new-instance v2, Ls0/m;

    .line 197
    .line 198
    iget v5, v0, Ls0/m;->i:I

    .line 199
    .line 200
    iget-object v6, v0, Ls0/m;->j:Ljava/lang/Object;

    .line 201
    .line 202
    iget-wide v11, v0, Ls0/m;->b:J

    .line 203
    .line 204
    iget v13, v0, Ls0/m;->c:I

    .line 205
    .line 206
    iget-object v14, v0, Ls0/m;->d:[B

    .line 207
    .line 208
    iget-object v15, v0, Ls0/m;->e:Ljava/util/Map;

    .line 209
    .line 210
    move/from16 v21, v5

    .line 211
    .line 212
    iget-wide v4, v0, Ls0/m;->f:J

    .line 213
    .line 214
    iget-wide v7, v0, Ls0/m;->g:J

    .line 215
    .line 216
    iget-object v9, v0, Ls0/m;->h:Ljava/lang/String;

    .line 217
    .line 218
    move-object/from16 v20, v9

    .line 219
    .line 220
    move-object v9, v2

    .line 221
    move-wide/from16 v16, v4

    .line 222
    .line 223
    move-wide/from16 v18, v7

    .line 224
    .line 225
    move-object/from16 v22, v6

    .line 226
    .line 227
    invoke-direct/range {v9 .. v22}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_9

    .line 235
    .line 236
    new-instance v4, Ljava/util/HashMap;

    .line 237
    .line 238
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Ls0/m;->e:Ljava/util/Map;

    .line 242
    .line 243
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 244
    .line 245
    .line 246
    const-string v0, "Cookie"

    .line 247
    .line 248
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ls0/m;->a()Ls0/l;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v4, v0, Ls0/l;->e:Ljava/util/Map;

    .line 256
    .line 257
    invoke-virtual {v0}, Ls0/l;->a()Ls0/m;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    :cond_9
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 262
    .line 263
    iget-object v3, v0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 264
    .line 265
    if-eqz v3, :cond_a

    .line 266
    .line 267
    invoke-virtual {v3}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 268
    .line 269
    .line 270
    const/4 v3, 0x0

    .line 271
    iput-object v3, v0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 272
    .line 273
    :cond_a
    iget-object v3, v0, Lu0/e;->w:Lu0/d;

    .line 274
    .line 275
    if-eqz v3, :cond_b

    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    iput-boolean v4, v3, Lu0/d;->a:Z

    .line 279
    .line 280
    const/4 v3, 0x0

    .line 281
    iput-object v3, v0, Lu0/e;->w:Lu0/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    .line 283
    :cond_b
    :try_start_4
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Lu0/e;->w(Ls0/m;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    .line 287
    .line 288
    :try_start_5
    iget-object v0, v1, Lu0/d;->b:Lu0/e;

    .line 289
    .line 290
    iget-object v0, v0, Lu0/e;->v:Lorg/chromium/net/UrlRequest;

    .line 291
    .line 292
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    .line 294
    .line 295
    monitor-exit p0

    .line 296
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    :try_start_6
    iget-object v2, v1, Lu0/d;->b:Lu0/e;

    .line 299
    .line 300
    iput-object v0, v2, Lu0/e;->A:Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 301
    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 304
    :goto_2
    monitor-exit p0

    .line 305
    throw v0
.end method

.method public final declared-synchronized onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lu0/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p1, v0, v1}, Ls0/I;->e(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 24
    .line 25
    iput-object p2, p1, Lu0/e;->z:Lorg/chromium/net/UrlResponseInfo;

    .line 26
    .line 27
    iget-object p1, p1, Lu0/e;->o:Lp0/i;

    .line 28
    .line 29
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final declared-synchronized onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lu0/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lu0/d;->b:Lu0/e;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, Lu0/e;->B:Z

    .line 12
    .line 13
    iget-object p1, p1, Lu0/e;->o:Lp0/i;

    .line 14
    .line 15
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method
