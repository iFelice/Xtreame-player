.class public final Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:LQ6/G;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, LQ6/G;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:LQ6/G;

    .line 12
    .line 13
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "file!!.channel"

    .line 27
    .line 28
    invoke-static {p1, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lokhttp3/internal/cache2/Relay;->setSourceCount(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v0}, Lokhttp3/internal/cache2/Relay;->setFile(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    move-object v0, v2

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit v1

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_1
    monitor-exit v1

    .line 46
    throw v0
.end method

.method public read(LQ6/j;J)J
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    const-string v0, "sink"

    .line 6
    .line 7
    move-object/from16 v5, p1

    .line 8
    .line 9
    invoke-static {v5, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 13
    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    iget-object v8, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 17
    .line 18
    monitor-enter v8

    .line 19
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const-wide/16 v11, -0x1

    .line 27
    .line 28
    cmp-long v4, v9, v6

    .line 29
    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getComplete()Z

    .line 33
    .line 34
    .line 35
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    monitor-exit v8

    .line 39
    return-wide v11

    .line 40
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getUpstreamReader()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:LQ6/G;

    .line 47
    .line 48
    invoke-virtual {v0, v8}, LQ6/G;->waitUntilNotified(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v8, v4}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-wide v9, v4, LQ6/j;->H:J

    .line 73
    .line 74
    sub-long/2addr v6, v9

    .line 75
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    cmp-long v4, v9, v6

    .line 78
    .line 79
    if-gez v4, :cond_6

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    :goto_1
    monitor-exit v8

    .line 83
    const-wide/16 v8, 0x20

    .line 84
    .line 85
    if-ne v4, v0, :cond_3

    .line 86
    .line 87
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 88
    .line 89
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    iget-wide v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 94
    .line 95
    sub-long/2addr v6, v10

    .line 96
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v10

    .line 100
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 101
    .line 102
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-wide v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 106
    .line 107
    add-long/2addr v3, v8

    .line 108
    move-object/from16 v5, p1

    .line 109
    .line 110
    move-wide v6, v10

    .line 111
    invoke-virtual/range {v2 .. v7}, Lokhttp3/internal/cache2/FileOperator;->read(JLQ6/j;J)V

    .line 112
    .line 113
    .line 114
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 115
    .line 116
    add-long/2addr v2, v10

    .line 117
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 118
    .line 119
    return-wide v10

    .line 120
    :cond_3
    const/4 v10, 0x0

    .line 121
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 122
    .line 123
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstream()LQ6/D;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 131
    .line 132
    invoke-virtual {v4}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()LQ6/j;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 137
    .line 138
    invoke-virtual {v6}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-interface {v0, v4, v6, v7}, LQ6/D;->read(LQ6/j;J)J

    .line 143
    .line 144
    .line 145
    move-result-wide v14

    .line 146
    cmp-long v0, v14, v11

    .line 147
    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 151
    .line 152
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 157
    .line 158
    .line 159
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 160
    .line 161
    monitor-enter v2

    .line 162
    :try_start_3
    invoke-virtual {v2, v10}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .line 167
    .line 168
    monitor-exit v2

    .line 169
    return-wide v11

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    monitor-exit v2

    .line 172
    throw v0

    .line 173
    :catchall_2
    move-exception v0

    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :cond_4
    :try_start_4
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v11

    .line 180
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 181
    .line 182
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()LQ6/j;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-wide/16 v3, 0x0

    .line 187
    .line 188
    move-object/from16 v5, p1

    .line 189
    .line 190
    move-wide v6, v11

    .line 191
    invoke-virtual/range {v2 .. v7}, LQ6/j;->O(JLQ6/j;J)V

    .line 192
    .line 193
    .line 194
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 195
    .line 196
    add-long/2addr v2, v11

    .line 197
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 198
    .line 199
    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 200
    .line 201
    invoke-static {v13}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 205
    .line 206
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    add-long/2addr v2, v8

    .line 211
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 212
    .line 213
    invoke-virtual {v0}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()LQ6/j;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, LQ6/j;->E()LQ6/j;

    .line 218
    .line 219
    .line 220
    move-result-object v16

    .line 221
    move-wide v4, v14

    .line 222
    move-wide v14, v2

    .line 223
    move-wide/from16 v17, v4

    .line 224
    .line 225
    invoke-virtual/range {v13 .. v18}, Lokhttp3/internal/cache2/FileOperator;->write(JLQ6/j;J)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 229
    .line 230
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 231
    :try_start_5
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getUpstreamBuffer()LQ6/j;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v0, v3, v4, v5}, LQ6/j;->write(LQ6/j;J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-wide v6, v0, LQ6/j;->H:J

    .line 247
    .line 248
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    .line 249
    .line 250
    .line 251
    move-result-wide v8

    .line 252
    cmp-long v0, v6, v8

    .line 253
    .line 254
    if-lez v0, :cond_5

    .line 255
    .line 256
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    iget-wide v6, v3, LQ6/j;->H:J

    .line 265
    .line 266
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getBufferMaxSize()J

    .line 267
    .line 268
    .line 269
    move-result-wide v8

    .line 270
    sub-long/2addr v6, v8

    .line 271
    invoke-virtual {v0, v6, v7}, LQ6/j;->b(J)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :catchall_3
    move-exception v0

    .line 276
    goto :goto_3

    .line 277
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 278
    .line 279
    .line 280
    move-result-wide v6

    .line 281
    add-long/2addr v6, v4

    .line 282
    invoke-virtual {v2, v6, v7}, Lokhttp3/internal/cache2/Relay;->setUpstreamPos(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 283
    .line 284
    .line 285
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 286
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 287
    .line 288
    monitor-enter v2

    .line 289
    :try_start_7
    invoke-virtual {v2, v10}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 293
    .line 294
    .line 295
    monitor-exit v2

    .line 296
    return-wide v11

    .line 297
    :catchall_4
    move-exception v0

    .line 298
    monitor-exit v2

    .line 299
    throw v0

    .line 300
    :goto_3
    :try_start_8
    monitor-exit v2

    .line 301
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 302
    :goto_4
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    .line 303
    .line 304
    monitor-enter v2

    .line 305
    :try_start_9
    invoke-virtual {v2, v10}, Lokhttp3/internal/cache2/Relay;->setUpstreamReader(Ljava/lang/Thread;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 309
    .line 310
    .line 311
    monitor-exit v2

    .line 312
    throw v0

    .line 313
    :catchall_5
    move-exception v0

    .line 314
    monitor-exit v2

    .line 315
    throw v0

    .line 316
    :cond_6
    :try_start_a
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getUpstreamPos()J

    .line 317
    .line 318
    .line 319
    move-result-wide v9

    .line 320
    iget-wide v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 321
    .line 322
    sub-long/2addr v9, v11

    .line 323
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 324
    .line 325
    .line 326
    move-result-wide v9

    .line 327
    invoke-virtual {v8}, Lokhttp3/internal/cache2/Relay;->getBuffer()LQ6/j;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    iget-wide v3, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 332
    .line 333
    sub-long/2addr v3, v6

    .line 334
    move-object/from16 v5, p1

    .line 335
    .line 336
    move-wide v6, v9

    .line 337
    invoke-virtual/range {v2 .. v7}, LQ6/j;->O(JLQ6/j;J)V

    .line 338
    .line 339
    .line 340
    iget-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 341
    .line 342
    add-long/2addr v2, v9

    .line 343
    iput-wide v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 344
    .line 345
    monitor-exit v8

    .line 346
    return-wide v9

    .line 347
    :goto_5
    monitor-exit v8

    .line 348
    throw v0

    .line 349
    :cond_7
    const-string v0, "Check failed."

    .line 350
    .line 351
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v2
.end method

.method public timeout()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:LQ6/G;

    .line 2
    .line 3
    return-object v0
.end method
