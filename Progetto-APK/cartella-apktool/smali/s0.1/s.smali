.class public final Ls0/s;
.super Ls0/c;
.source "SourceFile"


# instance fields
.field public final e:Z

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lm2/l;

.field public final k:Lm2/l;

.field public final l:Ly4/l;

.field public final m:Z

.field public n:Ls0/m;

.field public o:Ljava/net/HttpURLConnection;

.field public p:Ljava/io/InputStream;

.field public q:Z

.field public r:I

.field public s:J

.field public t:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLm2/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ls0/c;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ls0/s;->i:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Ls0/s;->g:I

    .line 8
    .line 9
    iput p3, p0, Ls0/s;->h:I

    .line 10
    .line 11
    iput-boolean p4, p0, Ls0/s;->e:Z

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Ls0/s;->f:Z

    .line 15
    .line 16
    iput-object p5, p0, Ls0/s;->j:Lm2/l;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Ls0/s;->l:Ly4/l;

    .line 20
    .line 21
    new-instance p2, Lm2/l;

    .line 22
    .line 23
    const/4 p3, 0x3

    .line 24
    invoke-direct {p2, p3}, Lm2/l;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Ls0/s;->k:Lm2/l;

    .line 28
    .line 29
    iput-boolean p1, p0, Ls0/s;->m:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v2, 0x1000

    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    :goto_0
    cmp-long v4, p1, v0

    .line 13
    .line 14
    if-lez v4, :cond_3

    .line 15
    .line 16
    int-to-long v4, v2

    .line 17
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    long-to-int v5, v4

    .line 22
    iget-object v4, p0, Ls0/s;->p:Ljava/io/InputStream;

    .line 23
    .line 24
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v4, v5, :cond_1

    .line 43
    .line 44
    int-to-long v5, v4

    .line 45
    sub-long/2addr p1, v5

    .line 46
    invoke-virtual {p0, v4}, Ls0/c;->s(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ls0/y;

    .line 51
    .line 52
    invoke-direct {p1}, Ls0/y;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    new-instance p1, Ls0/y;

    .line 57
    .line 58
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x7d0

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {p1, p2, v0, v1}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    return-void
.end method

.method public final a(Ls0/m;)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iput-object v0, v1, Ls0/s;->n:Ls0/m;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    iput-wide v2, v1, Ls0/s;->t:J

    .line 10
    .line 11
    iput-wide v2, v1, Ls0/s;->s:J

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Ls0/c;->u()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ls0/s;->z(Ls0/m;)Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iput-object v5, v1, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iput v6, v1, Ls0/s;->r:I

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 30
    .line 31
    .line 32
    iget v6, v1, Ls0/s;->r:I

    .line 33
    .line 34
    const-string v7, "Content-Range"

    .line 35
    .line 36
    const/16 v8, 0xc8

    .line 37
    .line 38
    const-wide/16 v9, -0x1

    .line 39
    .line 40
    iget-wide v11, v0, Ls0/m;->f:J

    .line 41
    .line 42
    iget-wide v13, v0, Ls0/m;->g:J

    .line 43
    .line 44
    if-lt v6, v8, :cond_9

    .line 45
    .line 46
    const/16 v15, 0x12b

    .line 47
    .line 48
    if-le v6, v15, :cond_0

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v15, v1, Ls0/s;->l:Ly4/l;

    .line 57
    .line 58
    if-eqz v15, :cond_2

    .line 59
    .line 60
    invoke-interface {v15, v6}, Ly4/l;->apply(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    if-eqz v15, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ls0/s;->w()V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ls0/z;

    .line 71
    .line 72
    invoke-direct {v0, v6}, Ls0/z;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    :goto_0
    iget v6, v1, Ls0/s;->r:I

    .line 77
    .line 78
    if-ne v6, v8, :cond_3

    .line 79
    .line 80
    cmp-long v6, v11, v2

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    move-wide v2, v11

    .line 85
    :cond_3
    const-string v6, "Content-Encoding"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v8, "gzip"

    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_6

    .line 98
    .line 99
    cmp-long v8, v13, v9

    .line 100
    .line 101
    if-eqz v8, :cond_4

    .line 102
    .line 103
    iput-wide v13, v1, Ls0/s;->s:J

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string v8, "Content-Length"

    .line 107
    .line 108
    invoke-virtual {v5, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-static {v8, v7}, Ls0/I;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    cmp-long v11, v7, v9

    .line 121
    .line 122
    if-eqz v11, :cond_5

    .line 123
    .line 124
    sub-long v9, v7, v2

    .line 125
    .line 126
    :cond_5
    iput-wide v9, v1, Ls0/s;->s:J

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iput-wide v13, v1, Ls0/s;->s:J

    .line 130
    .line 131
    :goto_1
    const/16 v7, 0x7d0

    .line 132
    .line 133
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iput-object v5, v1, Ls0/s;->p:Ljava/io/InputStream;

    .line 138
    .line 139
    if-eqz v6, :cond_7

    .line 140
    .line 141
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    .line 142
    .line 143
    iget-object v6, v1, Ls0/s;->p:Ljava/io/InputStream;

    .line 144
    .line 145
    invoke-direct {v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .line 147
    .line 148
    iput-object v5, v1, Ls0/s;->p:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    :goto_2
    iput-boolean v4, v1, Ls0/s;->q:Z

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 156
    .line 157
    .line 158
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ls0/s;->A(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .line 160
    .line 161
    iget-wide v2, v1, Ls0/s;->s:J

    .line 162
    .line 163
    return-wide v2

    .line 164
    :catch_1
    move-exception v0

    .line 165
    move-object v2, v0

    .line 166
    invoke-virtual/range {p0 .. p0}, Ls0/s;->w()V

    .line 167
    .line 168
    .line 169
    instance-of v0, v2, Ls0/y;

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    move-object v0, v2

    .line 174
    check-cast v0, Ls0/y;

    .line 175
    .line 176
    throw v0

    .line 177
    :cond_8
    new-instance v0, Ls0/y;

    .line 178
    .line 179
    invoke-direct {v0, v2, v7, v4}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ls0/s;->w()V

    .line 184
    .line 185
    .line 186
    new-instance v2, Ls0/y;

    .line 187
    .line 188
    invoke-direct {v2, v0, v7, v4}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 189
    .line 190
    .line 191
    throw v2

    .line 192
    :cond_9
    :goto_4
    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget v8, v1, Ls0/s;->r:I

    .line 197
    .line 198
    const/16 v15, 0x1a0

    .line 199
    .line 200
    if-ne v8, v15, :cond_b

    .line 201
    .line 202
    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-static {v7}, Ls0/I;->d(Ljava/lang/String;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v7

    .line 210
    cmp-long v16, v11, v7

    .line 211
    .line 212
    if-nez v16, :cond_b

    .line 213
    .line 214
    iput-boolean v4, v1, Ls0/s;->q:Z

    .line 215
    .line 216
    invoke-virtual/range {p0 .. p1}, Ls0/c;->v(Ls0/m;)V

    .line 217
    .line 218
    .line 219
    cmp-long v0, v13, v9

    .line 220
    .line 221
    if-eqz v0, :cond_a

    .line 222
    .line 223
    move-wide v2, v13

    .line 224
    :cond_a
    return-wide v2

    .line 225
    :cond_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    :try_start_3
    invoke-static {v0}, LA4/e;->b(Ljava/io/InputStream;)[B

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_c
    sget-object v0, Lp0/M;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :catch_2
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 239
    .line 240
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ls0/s;->w()V

    .line 241
    .line 242
    .line 243
    iget v0, v1, Ls0/s;->r:I

    .line 244
    .line 245
    if-ne v0, v15, :cond_d

    .line 246
    .line 247
    new-instance v0, Ls0/j;

    .line 248
    .line 249
    const/16 v2, 0x7d8

    .line 250
    .line 251
    invoke-direct {v0, v2}, Ls0/j;-><init>(I)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    const/4 v0, 0x0

    .line 256
    :goto_6
    new-instance v2, Ls0/A;

    .line 257
    .line 258
    iget v3, v1, Ls0/s;->r:I

    .line 259
    .line 260
    invoke-direct {v2, v3, v0, v6}, Ls0/A;-><init>(ILs0/j;Ljava/util/Map;)V

    .line 261
    .line 262
    .line 263
    throw v2

    .line 264
    :catch_3
    move-exception v0

    .line 265
    invoke-virtual/range {p0 .. p0}, Ls0/s;->w()V

    .line 266
    .line 267
    .line 268
    invoke-static {v0, v4}, Ls0/y;->b(Ljava/io/IOException;I)Ls0/y;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    throw v0
.end method

.method public final close()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Ls0/s;->p:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    new-instance v3, Ls0/y;

    .line 15
    .line 16
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v4, 0x7d0

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    invoke-direct {v3, v2, v4, v5}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Ls0/s;->p:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-virtual {p0}, Ls0/s;->w()V

    .line 28
    .line 29
    .line 30
    iget-boolean v2, p0, Ls0/s;->q:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Ls0/s;->q:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Ls0/c;->t()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 40
    .line 41
    iput-object v1, p0, Ls0/s;->n:Ls0/m;

    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    iput-object v1, p0, Ls0/s;->p:Ljava/io/InputStream;

    .line 45
    .line 46
    invoke-virtual {p0}, Ls0/s;->w()V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, p0, Ls0/s;->q:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iput-boolean v0, p0, Ls0/s;->q:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Ls0/c;->t()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iput-object v1, p0, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 59
    .line 60
    iput-object v1, p0, Ls0/s;->n:Ls0/m;

    .line 61
    .line 62
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Ls0/s;->n:Ls0/m;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Ls0/m;->a:Landroid/net/Uri;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lz4/i0;->M:Lz4/i0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v1, Ls0/r;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {v1, v0}, Ls0/r;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final q([BII)I
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Ls0/s;->s:J

    .line 6
    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-wide v2, p0, Ls0/s;->t:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v5, v0, v2

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    :goto_0
    const/4 p1, -0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    int-to-long v2, p3

    .line 26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    long-to-int p3, v0

    .line 31
    :cond_2
    iget-object v0, p0, Ls0/s;->p:Ljava/io/InputStream;

    .line 32
    .line 33
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v4, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-wide p2, p0, Ls0/s;->t:J

    .line 43
    .line 44
    int-to-long v0, p1

    .line 45
    add-long/2addr p2, v0

    .line 46
    iput-wide p2, p0, Ls0/s;->t:J

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ls0/c;->s(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :goto_1
    return p1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 54
    .line 55
    const/4 p2, 0x2

    .line 56
    invoke-static {p1, p2}, Ls0/y;->b(Ljava/io/IOException;I)Ls0/y;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    throw p1
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls0/s;->o:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "DefaultHttpDataSource"

    .line 11
    .line 12
    const-string v2, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method public final x(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 1
    const/16 v0, 0x7d1

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v3, "https"

    .line 16
    .line 17
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string v3, "http"

    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ls0/y;

    .line 33
    .line 34
    const-string v1, "Unsupported protocol redirect: "

    .line 35
    .line 36
    invoke-static {v1, p2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2, v0}, Ls0/y;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    iget-boolean v3, p0, Ls0/s;->e:Z

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    iget-boolean v3, p0, Ls0/s;->f:Z

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    move-object v2, v3

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ls0/y;

    .line 83
    .line 84
    invoke-direct {p2, p1, v0, v1}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :cond_2
    new-instance v1, Ls0/y;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "Disallowed cross-protocol redirect ("

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " to "

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, ")"

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {v1, p1, v0}, Ls0/y;-><init>(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_3
    :goto_1
    return-object v2

    .line 126
    :catch_1
    move-exception p1

    .line 127
    new-instance p2, Ls0/y;

    .line 128
    .line 129
    invoke-direct {p2, p1, v0, v1}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 130
    .line 131
    .line 132
    throw p2

    .line 133
    :cond_4
    new-instance p1, Ls0/y;

    .line 134
    .line 135
    const-string p2, "Null location redirect"

    .line 136
    .line 137
    invoke-direct {p1, p2, v0}, Ls0/y;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public final y(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    iget v0, p0, Ls0/s;->g:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Ls0/s;->h:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Ls0/s;->j:Lm2/l;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lm2/l;->k()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Ls0/s;->k:Lm2/l;

    .line 34
    .line 35
    invoke-virtual {v1}, Lm2/l;->k()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p10

    .line 49
    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p10

    .line 53
    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p4, p5, p6, p7}, Ls0/I;->a(JJ)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    if-eqz p4, :cond_2

    .line 86
    .line 87
    const-string p5, "Range"

    .line 88
    .line 89
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p4, p0, Ls0/s;->i:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz p4, :cond_3

    .line 95
    .line 96
    const-string p5, "User-Agent"

    .line 97
    .line 98
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    if-eqz p8, :cond_4

    .line 102
    .line 103
    const-string p4, "gzip"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string p4, "identity"

    .line 107
    .line 108
    :goto_1
    const-string p5, "Accept-Encoding"

    .line 109
    .line 110
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 114
    .line 115
    .line 116
    if-eqz p3, :cond_5

    .line 117
    .line 118
    const/4 p4, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    const/4 p4, 0x0

    .line 121
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Ls0/m;->b(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-eqz p3, :cond_6

    .line 132
    .line 133
    array-length p2, p3

    .line 134
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-object p1
.end method

.method public final z(Ls0/m;)Ljava/net/HttpURLConnection;
    .locals 25

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    new-instance v1, Ljava/net/URL;

    .line 6
    .line 7
    iget-object v0, v12, Ls0/m;->a:Landroid/net/Uri;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, v12, Ls0/m;->i:I

    .line 17
    .line 18
    const/4 v13, 0x1

    .line 19
    and-int/2addr v0, v13

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v0, v13, :cond_0

    .line 22
    .line 23
    const/4 v14, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v14, 0x0

    .line 26
    :goto_0
    iget-boolean v0, v11, Ls0/s;->e:Z

    .line 27
    .line 28
    iget-boolean v15, v11, Ls0/s;->m:Z

    .line 29
    .line 30
    iget v3, v12, Ls0/m;->c:I

    .line 31
    .line 32
    iget-object v4, v12, Ls0/m;->d:[B

    .line 33
    .line 34
    iget-wide v9, v12, Ls0/m;->f:J

    .line 35
    .line 36
    iget-wide v6, v12, Ls0/m;->g:J

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-boolean v0, v11, Ls0/s;->f:Z

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    if-nez v15, :cond_1

    .line 45
    .line 46
    const/4 v13, 0x1

    .line 47
    iget-object v12, v12, Ls0/m;->e:Ljava/util/Map;

    .line 48
    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move v2, v3

    .line 52
    move-object v3, v4

    .line 53
    move-wide v4, v9

    .line 54
    move v8, v14

    .line 55
    move v9, v13

    .line 56
    move-object v10, v12

    .line 57
    invoke-virtual/range {v0 .. v10}, Ls0/s;->y(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_1
    move-object v8, v1

    .line 63
    move-object/from16 v16, v4

    .line 64
    .line 65
    move v4, v3

    .line 66
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .line 67
    .line 68
    const/16 v0, 0x14

    .line 69
    .line 70
    if-gt v2, v0, :cond_8

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    iget-object v3, v12, Ls0/m;->e:Ljava/util/Map;

    .line 75
    .line 76
    move-object/from16 v0, p0

    .line 77
    .line 78
    move-object v1, v8

    .line 79
    move v2, v4

    .line 80
    move-object/from16 v18, v3

    .line 81
    .line 82
    move-object/from16 v3, v16

    .line 83
    .line 84
    move v12, v4

    .line 85
    move/from16 v19, v5

    .line 86
    .line 87
    move-wide v4, v9

    .line 88
    move-wide/from16 v20, v6

    .line 89
    .line 90
    move-object/from16 v22, v8

    .line 91
    .line 92
    move v8, v14

    .line 93
    move-wide/from16 v23, v9

    .line 94
    .line 95
    move/from16 v9, v17

    .line 96
    .line 97
    move-object/from16 v10, v18

    .line 98
    .line 99
    invoke-virtual/range {v0 .. v10}, Ls0/s;->y(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const-string v2, "Location"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const/16 v3, 0x12f

    .line 114
    .line 115
    const/16 v4, 0x12d

    .line 116
    .line 117
    const/16 v5, 0x12c

    .line 118
    .line 119
    const/16 v6, 0x12e

    .line 120
    .line 121
    if-eq v12, v13, :cond_2

    .line 122
    .line 123
    const/4 v7, 0x3

    .line 124
    if-ne v12, v7, :cond_4

    .line 125
    .line 126
    :cond_2
    if-eq v1, v5, :cond_3

    .line 127
    .line 128
    if-eq v1, v4, :cond_3

    .line 129
    .line 130
    if-eq v1, v6, :cond_3

    .line 131
    .line 132
    if-eq v1, v3, :cond_3

    .line 133
    .line 134
    const/16 v7, 0x133

    .line 135
    .line 136
    if-eq v1, v7, :cond_3

    .line 137
    .line 138
    const/16 v7, 0x134

    .line 139
    .line 140
    if-ne v1, v7, :cond_4

    .line 141
    .line 142
    :cond_3
    move-object/from16 v1, v22

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_4
    const/4 v7, 0x2

    .line 146
    if-ne v12, v7, :cond_7

    .line 147
    .line 148
    if-eq v1, v5, :cond_5

    .line 149
    .line 150
    if-eq v1, v4, :cond_5

    .line 151
    .line 152
    if-eq v1, v6, :cond_5

    .line 153
    .line 154
    if-ne v1, v3, :cond_7

    .line 155
    .line 156
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 157
    .line 158
    .line 159
    if-eqz v15, :cond_6

    .line 160
    .line 161
    if-ne v1, v6, :cond_6

    .line 162
    .line 163
    move v4, v12

    .line 164
    move-object/from16 v1, v22

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    const/16 v16, 0x0

    .line 168
    .line 169
    move-object/from16 v1, v22

    .line 170
    .line 171
    const/4 v4, 0x1

    .line 172
    :goto_2
    invoke-virtual {v11, v1, v2}, Ls0/s;->x(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    move-object v8, v0

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    return-object v0

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v1, v2}, Ls0/s;->x(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object v8, v0

    .line 187
    move v4, v12

    .line 188
    :goto_4
    move-object/from16 v12, p1

    .line 189
    .line 190
    move/from16 v2, v19

    .line 191
    .line 192
    move-wide/from16 v6, v20

    .line 193
    .line 194
    move-wide/from16 v9, v23

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :cond_8
    move/from16 v19, v5

    .line 199
    .line 200
    new-instance v0, Ls0/y;

    .line 201
    .line 202
    new-instance v1, Ljava/net/NoRouteToHostException;

    .line 203
    .line 204
    const-string v2, "Too many redirects: "

    .line 205
    .line 206
    move/from16 v3, v19

    .line 207
    .line 208
    invoke-static {v2, v3}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/16 v2, 0x7d1

    .line 216
    .line 217
    invoke-direct {v0, v1, v2, v13}, Ls0/y;-><init>(Ljava/io/IOException;II)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method
