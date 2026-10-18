.class public abstract LT0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static c:Z

.field public static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LT0/c;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LT0/c;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static a()J
    .locals 25

    .line 1
    new-instance v1, Ljava/net/DatagramSocket;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v2, LT0/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    const/16 v0, 0x3e8

    .line 11
    .line 12
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, LT0/c;->c()V

    .line 16
    .line 17
    .line 18
    const-string v0, "time.android.com"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    array-length v3, v2

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    move-object v5, v0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_0
    if-ge v6, v3, :cond_2

    .line 31
    .line 32
    aget-object v0, v2, v6

    .line 33
    .line 34
    const/16 v8, 0x30

    .line 35
    .line 36
    new-array v9, v8, [B

    .line 37
    .line 38
    new-instance v10, Ljava/net/DatagramPacket;

    .line 39
    .line 40
    const/16 v11, 0x7b

    .line 41
    .line 42
    invoke-direct {v10, v9, v8, v0, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x1b

    .line 46
    .line 47
    aput-byte v0, v9, v4

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    const-wide/16 v15, 0x0

    .line 58
    .line 59
    const/16 v0, 0x28

    .line 60
    .line 61
    cmp-long v18, v11, v15

    .line 62
    .line 63
    if-nez v18, :cond_0

    .line 64
    .line 65
    invoke-static {v9, v0, v8, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 66
    .line 67
    .line 68
    move-object/from16 v24, v5

    .line 69
    .line 70
    move-object/from16 v22, v9

    .line 71
    .line 72
    move-object v9, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const-wide/16 v15, 0x3e8

    .line 75
    .line 76
    div-long v18, v11, v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->signum(J)I

    .line 79
    .line 80
    .line 81
    mul-long v20, v18, v15

    .line 82
    .line 83
    sub-long v20, v11, v20

    .line 84
    .line 85
    const-wide v22, 0x83aa7e80L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    move-object/from16 v24, v5

    .line 91
    .line 92
    add-long v4, v18, v22

    .line 93
    .line 94
    move-object/from16 v18, v1

    .line 95
    .line 96
    const/16 v17, 0x18

    .line 97
    .line 98
    shr-long v0, v4, v17

    .line 99
    .line 100
    long-to-int v1, v0

    .line 101
    int-to-byte v0, v1

    .line 102
    const/16 v1, 0x28

    .line 103
    .line 104
    :try_start_3
    aput-byte v0, v9, v1

    .line 105
    .line 106
    const/16 v0, 0x10

    .line 107
    .line 108
    move-object/from16 v22, v9

    .line 109
    .line 110
    shr-long v8, v4, v0

    .line 111
    .line 112
    long-to-int v9, v8

    .line 113
    int-to-byte v8, v9

    .line 114
    const/16 v9, 0x29

    .line 115
    .line 116
    aput-byte v8, v22, v9

    .line 117
    .line 118
    const/16 v8, 0x8

    .line 119
    .line 120
    move-object v9, v2

    .line 121
    shr-long v1, v4, v8

    .line 122
    .line 123
    long-to-int v2, v1

    .line 124
    int-to-byte v1, v2

    .line 125
    const/16 v2, 0x2a

    .line 126
    .line 127
    aput-byte v1, v22, v2

    .line 128
    .line 129
    long-to-int v1, v4

    .line 130
    int-to-byte v1, v1

    .line 131
    const/16 v2, 0x2b

    .line 132
    .line 133
    aput-byte v1, v22, v2

    .line 134
    .line 135
    const-wide v1, 0x100000000L

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    mul-long v20, v20, v1

    .line 141
    .line 142
    div-long v20, v20, v15

    .line 143
    .line 144
    const/16 v1, 0x18

    .line 145
    .line 146
    shr-long v4, v20, v1

    .line 147
    .line 148
    long-to-int v1, v4

    .line 149
    int-to-byte v1, v1

    .line 150
    const/16 v2, 0x2c

    .line 151
    .line 152
    aput-byte v1, v22, v2

    .line 153
    .line 154
    shr-long v0, v20, v0

    .line 155
    .line 156
    long-to-int v1, v0

    .line 157
    int-to-byte v0, v1

    .line 158
    const/16 v1, 0x2d

    .line 159
    .line 160
    aput-byte v0, v22, v1

    .line 161
    .line 162
    shr-long v0, v20, v8

    .line 163
    .line 164
    long-to-int v1, v0

    .line 165
    int-to-byte v0, v1

    .line 166
    const/16 v1, 0x2e

    .line 167
    .line 168
    aput-byte v0, v22, v1

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    mul-double v0, v0, v4

    .line 180
    .line 181
    double-to-int v0, v0

    .line 182
    int-to-byte v0, v0

    .line 183
    const/16 v1, 0x2f

    .line 184
    .line 185
    aput-byte v0, v22, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    move-object/from16 v1, v18

    .line 188
    .line 189
    :goto_1
    :try_start_4
    invoke-virtual {v1, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/net/DatagramPacket;

    .line 193
    .line 194
    move-object/from16 v4, v22

    .line 195
    .line 196
    const/16 v2, 0x30

    .line 197
    .line 198
    invoke-direct {v0, v4, v2}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    .line 200
    .line 201
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    .line 203
    .line 204
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    sub-long v5, v2, v13

    .line 209
    .line 210
    add-long/2addr v5, v11

    .line 211
    const/4 v8, 0x0

    .line 212
    aget-byte v0, v4, v8

    .line 213
    .line 214
    shr-int/lit8 v7, v0, 0x6

    .line 215
    .line 216
    and-int/lit8 v7, v7, 0x3

    .line 217
    .line 218
    int-to-byte v7, v7

    .line 219
    and-int/lit8 v0, v0, 0x7

    .line 220
    .line 221
    int-to-byte v0, v0

    .line 222
    const/4 v8, 0x1

    .line 223
    aget-byte v8, v4, v8

    .line 224
    .line 225
    and-int/lit16 v8, v8, 0xff

    .line 226
    .line 227
    const/16 v9, 0x18

    .line 228
    .line 229
    invoke-static {v9, v4}, LT0/c;->e(I[B)J

    .line 230
    .line 231
    .line 232
    move-result-wide v9

    .line 233
    const/16 v11, 0x20

    .line 234
    .line 235
    invoke-static {v11, v4}, LT0/c;->e(I[B)J

    .line 236
    .line 237
    .line 238
    move-result-wide v11

    .line 239
    const/16 v13, 0x28

    .line 240
    .line 241
    invoke-static {v13, v4}, LT0/c;->e(I[B)J

    .line 242
    .line 243
    .line 244
    move-result-wide v13

    .line 245
    invoke-static {v7, v0, v8, v13, v14}, LT0/c;->b(BBIJ)V

    .line 246
    .line 247
    .line 248
    sub-long/2addr v11, v9

    .line 249
    sub-long/2addr v13, v5

    .line 250
    add-long/2addr v13, v11

    .line 251
    const-wide/16 v7, 0x2

    .line 252
    .line 253
    div-long/2addr v13, v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    add-long/2addr v5, v13

    .line 255
    sub-long/2addr v5, v2

    .line 256
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 257
    .line 258
    .line 259
    return-wide v5

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    :goto_2
    move-object v2, v0

    .line 262
    goto :goto_4

    .line 263
    :catch_0
    move-exception v0

    .line 264
    const/4 v8, 0x0

    .line 265
    move-object v2, v0

    .line 266
    if-nez v24, :cond_1

    .line 267
    .line 268
    move-object v5, v2

    .line 269
    goto :goto_3

    .line 270
    :cond_1
    move-object/from16 v4, v24

    .line 271
    .line 272
    :try_start_7
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    move-object v5, v4

    .line 276
    :goto_3
    add-int/lit8 v0, v7, 0x1

    .line 277
    .line 278
    const/16 v2, 0xa

    .line 279
    .line 280
    if-ge v7, v2, :cond_3

    .line 281
    .line 282
    add-int/lit8 v6, v6, 0x1

    .line 283
    .line 284
    move v7, v0

    .line 285
    move-object v2, v9

    .line 286
    const/4 v4, 0x0

    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :catchall_1
    move-exception v0

    .line 290
    move-object/from16 v1, v18

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_2
    move-object v4, v5

    .line 294
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 298
    :catchall_2
    move-exception v0

    .line 299
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 300
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 301
    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :catchall_3
    move-exception v0

    .line 306
    move-object v1, v0

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    :goto_5
    throw v2
.end method

.method public static b(BBIJ)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 p0, 0x4

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x5

    .line 8
    if-ne p1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 12
    .line 13
    const-string p2, "SNTP: Untrusted mode: "

    .line 14
    .line 15
    invoke-static {p2, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 24
    .line 25
    const/16 p0, 0xf

    .line 26
    .line 27
    if-gt p2, p0, :cond_3

    .line 28
    .line 29
    const-wide/16 p0, 0x0

    .line 30
    .line 31
    cmp-long p2, p3, p0

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string p1, "SNTP: Zero transmitTime"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 45
    .line 46
    const-string p1, "SNTP: Untrusted stratum: "

    .line 47
    .line 48
    invoke-static {p1, p2}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 57
    .line 58
    const-string p1, "SNTP: Unsynchronized server"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static c()V
    .locals 2

    .line 1
    sget-object v0, LT0/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v1
.end method

.method public static d(I[B)J
    .locals 5

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    add-int/lit8 v1, p0, 0x1

    .line 4
    .line 5
    aget-byte v1, p1, v1

    .line 6
    .line 7
    add-int/lit8 v2, p0, 0x2

    .line 8
    .line 9
    aget-byte v2, p1, v2

    .line 10
    .line 11
    add-int/lit8 p0, p0, 0x3

    .line 12
    .line 13
    aget-byte p0, p1, p0

    .line 14
    .line 15
    and-int/lit16 p1, v0, 0x80

    .line 16
    .line 17
    const/16 v3, 0x80

    .line 18
    .line 19
    if-ne p1, v3, :cond_0

    .line 20
    .line 21
    and-int/lit8 p1, v0, 0x7f

    .line 22
    .line 23
    add-int/lit16 v0, p1, 0x80

    .line 24
    .line 25
    :cond_0
    and-int/lit16 p1, v1, 0x80

    .line 26
    .line 27
    if-ne p1, v3, :cond_1

    .line 28
    .line 29
    and-int/lit8 p1, v1, 0x7f

    .line 30
    .line 31
    add-int/lit16 v1, p1, 0x80

    .line 32
    .line 33
    :cond_1
    and-int/lit16 p1, v2, 0x80

    .line 34
    .line 35
    if-ne p1, v3, :cond_2

    .line 36
    .line 37
    and-int/lit8 p1, v2, 0x7f

    .line 38
    .line 39
    add-int/lit16 v2, p1, 0x80

    .line 40
    .line 41
    :cond_2
    and-int/lit16 p1, p0, 0x80

    .line 42
    .line 43
    if-ne p1, v3, :cond_3

    .line 44
    .line 45
    and-int/lit8 p0, p0, 0x7f

    .line 46
    .line 47
    add-int/2addr p0, v3

    .line 48
    :cond_3
    int-to-long v3, v0

    .line 49
    const/16 p1, 0x18

    .line 50
    .line 51
    shl-long/2addr v3, p1

    .line 52
    int-to-long v0, v1

    .line 53
    const/16 p1, 0x10

    .line 54
    .line 55
    shl-long/2addr v0, p1

    .line 56
    add-long/2addr v3, v0

    .line 57
    int-to-long v0, v2

    .line 58
    const/16 p1, 0x8

    .line 59
    .line 60
    shl-long/2addr v0, p1

    .line 61
    add-long/2addr v3, v0

    .line 62
    int-to-long p0, p0

    .line 63
    add-long/2addr v3, p0

    .line 64
    return-wide v3
.end method

.method public static e(I[B)J
    .locals 5

    .line 1
    invoke-static {p0, p1}, LT0/c;->d(I[B)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p0, p0, 0x4

    .line 6
    .line 7
    invoke-static {p0, p1}, LT0/c;->d(I[B)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    cmp-long v4, p0, v2

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-wide v2

    .line 22
    :cond_0
    const-wide v2, 0x83aa7e80L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    sub-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    mul-long v0, v0, v2

    .line 31
    .line 32
    mul-long p0, p0, v2

    .line 33
    .line 34
    const-wide v2, 0x100000000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    div-long/2addr p0, v2

    .line 40
    add-long/2addr p0, v0

    .line 41
    return-wide p0
.end method
