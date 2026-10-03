.class public final Ls0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/http/UrlRequest$Callback;


# instance fields
.field public volatile a:Z

.field public final synthetic b:Ls0/H;


# direct methods
.method public constructor <init>(Ls0/H;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Ls0/E;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final declared-synchronized onCanceled(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final declared-synchronized onFailed(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Landroid/net/http/HttpException;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Ls0/E;->a:Z
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
    invoke-static {p3}, Ls0/B;->i(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p3}, Ls0/B;->b(Ljava/lang/Object;)Landroid/net/http/NetworkException;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Ls0/B;->a(Landroid/net/http/NetworkException;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x1

    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 26
    .line 27
    new-instance p2, Ljava/net/UnknownHostException;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p2, p1, Ls0/H;->y:Ljava/io/IOException;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 38
    .line 39
    iput-object p3, p1, Ls0/H;->y:Ljava/io/IOException;

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 42
    .line 43
    iget-object p1, p1, Ls0/H;->o:Lp0/i;

    .line 44
    .line 45
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public final declared-synchronized onReadCompleted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Ls0/E;->a:Z
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
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 9
    .line 10
    iget-object p1, p1, Ls0/H;->o:Lp0/i;

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

.method public final declared-synchronized onRedirectReceived(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, v1, Ls0/E;->a:Z
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
    iget-object v0, v1, Ls0/E;->b:Ls0/H;

    .line 11
    .line 12
    iget-object v0, v0, Ls0/H;->u:Ls0/m;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static/range {p2 .. p2}, LL1/d;->b(Landroid/net/http/UrlResponseInfo;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, v0, Ls0/m;->c:I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    if-ne v3, v5, :cond_2

    .line 26
    .line 27
    const/16 v3, 0x133

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x134

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object v0, v1, Ls0/E;->b:Ls0/H;

    .line 36
    .line 37
    new-instance v3, Ls0/A;

    .line 38
    .line 39
    invoke-static/range {p2 .. p2}, Ls0/B;->j(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static/range {p2 .. p2}, LL1/d;->h(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, LL1/d;->s(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v3, v2, v4, v5}, Ls0/A;-><init>(ILs0/j;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v0, Ls0/H;->y:Ljava/io/IOException;

    .line 56
    .line 57
    iget-object v0, v1, Ls0/E;->b:Ls0/H;

    .line 58
    .line 59
    iget-object v0, v0, Ls0/H;->o:Lp0/i;

    .line 60
    .line 61
    invoke-virtual {v0}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_2
    :try_start_2
    iget-object v3, v1, Ls0/E;->b:Ls0/H;

    .line 70
    .line 71
    iget-boolean v6, v3, Ls0/H;->j:Z

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    iget-object v6, v3, Ls0/H;->p:Lp0/G;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    iget v8, v3, Ls0/H;->h:I

    .line 85
    .line 86
    int-to-long v8, v8

    .line 87
    add-long/2addr v6, v8

    .line 88
    iput-wide v6, v3, Ls0/H;->A:J

    .line 89
    .line 90
    :cond_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    iget-object v6, v1, Ls0/E;->b:Ls0/H;

    .line 97
    .line 98
    iget-boolean v6, v6, Ls0/H;->k:Z

    .line 99
    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    new-instance v3, Ljava/net/CookieManager;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-static/range {p2 .. p2}, LL1/d;->r(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static/range {p2 .. p2}, LL1/d;->h(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, LL1/d;->s(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v6, v7, v3}, Ls0/I;->e(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v6, v7, v3}, Ls0/I;->c(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget-object v6, v1, Ls0/E;->b:Ls0/H;

    .line 127
    .line 128
    iget-boolean v7, v6, Ls0/H;->r:Z

    .line 129
    .line 130
    const/4 v8, 0x1

    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    iget v7, v0, Ls0/m;->c:I

    .line 134
    .line 135
    if-ne v7, v5, :cond_5

    .line 136
    .line 137
    const/16 v7, 0x12e

    .line 138
    .line 139
    if-ne v2, v7, :cond_5

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_5
    const/4 v2, 0x0

    .line 144
    :goto_0
    if-nez v2, :cond_7

    .line 145
    .line 146
    iget-boolean v6, v6, Ls0/H;->k:Z

    .line 147
    .line 148
    if-eqz v6, :cond_6

    .line 149
    .line 150
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_7

    .line 155
    .line 156
    :cond_6
    invoke-static/range {p1 .. p1}, Ls0/B;->f(Landroid/net/http/UrlRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .line 158
    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 161
    :cond_7
    :try_start_3
    invoke-static/range {p1 .. p1}, Ls0/B;->k(Landroid/net/http/UrlRequest;)V

    .line 162
    .line 163
    .line 164
    if-nez v2, :cond_8

    .line 165
    .line 166
    iget v2, v0, Ls0/m;->c:I

    .line 167
    .line 168
    if-ne v2, v5, :cond_8

    .line 169
    .line 170
    invoke-virtual {v0}, Ls0/m;->a()Ls0/l;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iput-object v5, v2, Ls0/l;->a:Landroid/net/Uri;

    .line 179
    .line 180
    iput v8, v2, Ls0/l;->c:I

    .line 181
    .line 182
    iput-object v4, v2, Ls0/l;->d:[B

    .line 183
    .line 184
    invoke-virtual {v2}, Ls0/l;->a()Ls0/m;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    goto :goto_1

    .line 189
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    new-instance v2, Ls0/m;

    .line 194
    .line 195
    iget v4, v0, Ls0/m;->i:I

    .line 196
    .line 197
    iget-object v5, v0, Ls0/m;->j:Ljava/lang/Object;

    .line 198
    .line 199
    iget-wide v11, v0, Ls0/m;->b:J

    .line 200
    .line 201
    iget v13, v0, Ls0/m;->c:I

    .line 202
    .line 203
    iget-object v14, v0, Ls0/m;->d:[B

    .line 204
    .line 205
    iget-object v15, v0, Ls0/m;->e:Ljava/util/Map;

    .line 206
    .line 207
    iget-wide v6, v0, Ls0/m;->f:J

    .line 208
    .line 209
    iget-wide v8, v0, Ls0/m;->g:J

    .line 210
    .line 211
    move-wide/from16 v16, v8

    .line 212
    .line 213
    iget-object v8, v0, Ls0/m;->h:Ljava/lang/String;

    .line 214
    .line 215
    move-wide/from16 v18, v16

    .line 216
    .line 217
    move-object v9, v2

    .line 218
    move-wide/from16 v16, v6

    .line 219
    .line 220
    move-object/from16 v20, v8

    .line 221
    .line 222
    move/from16 v21, v4

    .line 223
    .line 224
    move-object/from16 v22, v5

    .line 225
    .line 226
    invoke-direct/range {v9 .. v22}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-nez v4, :cond_9

    .line 234
    .line 235
    new-instance v4, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v0, v0, Ls0/m;->e:Ljava/util/Map;

    .line 241
    .line 242
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 243
    .line 244
    .line 245
    const-string v0, "Cookie"

    .line 246
    .line 247
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ls0/m;->a()Ls0/l;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v4, v0, Ls0/l;->e:Ljava/util/Map;

    .line 255
    .line 256
    invoke-virtual {v0}, Ls0/l;->a()Ls0/m;

    .line 257
    .line 258
    .line 259
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    :cond_9
    :try_start_4
    iget-object v0, v1, Ls0/E;->b:Ls0/H;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ls0/H;->w(Ls0/m;)Ls0/G;

    .line 263
    .line 264
    .line 265
    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    :try_start_5
    iget-object v2, v1, Ls0/E;->b:Ls0/H;

    .line 267
    .line 268
    iget-object v2, v2, Ls0/H;->v:Ls0/G;

    .line 269
    .line 270
    if-eqz v2, :cond_a

    .line 271
    .line 272
    iget-object v3, v2, Ls0/G;->b:Ls0/E;

    .line 273
    .line 274
    const/4 v4, 0x1

    .line 275
    iput-boolean v4, v3, Ls0/E;->a:Z

    .line 276
    .line 277
    iget-object v2, v2, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 278
    .line 279
    invoke-static {v2}, Ls0/B;->k(Landroid/net/http/UrlRequest;)V

    .line 280
    .line 281
    .line 282
    :cond_a
    iget-object v2, v1, Ls0/E;->b:Ls0/H;

    .line 283
    .line 284
    iput-object v0, v2, Ls0/H;->v:Ls0/G;

    .line 285
    .line 286
    iget-object v0, v0, Ls0/G;->a:Landroid/net/http/UrlRequest;

    .line 287
    .line 288
    invoke-static {v0}, Ls0/B;->l(Landroid/net/http/UrlRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    .line 290
    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    :try_start_6
    iget-object v2, v1, Ls0/E;->b:Ls0/H;

    .line 295
    .line 296
    iput-object v0, v2, Ls0/H;->y:Ljava/io/IOException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 297
    .line 298
    monitor-exit p0

    .line 299
    return-void

    .line 300
    :goto_2
    monitor-exit p0

    .line 301
    throw v0
.end method

.method public final declared-synchronized onResponseStarted(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Ls0/E;->a:Z
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
    invoke-static {p2}, LL1/d;->r(Landroid/net/http/UrlResponseInfo;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2}, LL1/d;->h(Landroid/net/http/UrlResponseInfo;)Landroid/net/http/HeaderBlock;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, LL1/d;->s(Landroid/net/http/HeaderBlock;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p1, v0, v1}, Ls0/I;->e(Ljava/lang/String;Ljava/util/Map;Ljava/net/CookieHandler;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 28
    .line 29
    iput-object p2, p1, Ls0/H;->x:Landroid/net/http/UrlResponseInfo;

    .line 30
    .line 31
    iget-object p1, p1, Ls0/H;->o:Lp0/i;

    .line 32
    .line 33
    invoke-virtual {p1}, Lp0/i;->f()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public final declared-synchronized onSucceeded(Landroid/net/http/UrlRequest;Landroid/net/http/UrlResponseInfo;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Ls0/E;->a:Z
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
    iget-object p1, p0, Ls0/E;->b:Ls0/H;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p1, Ls0/H;->z:Z

    .line 12
    .line 13
    iget-object p1, p1, Ls0/H;->o:Lp0/i;

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
