.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:LQ6/G;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, LQ6/G;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:LQ6/G;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public read(LQ6/j;J)J
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_d

    .line 17
    .line 18
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 19
    .line 20
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_c

    .line 29
    .line 30
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 31
    .line 32
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)LQ6/l;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v6}, LQ6/D;->timeout()LQ6/G;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:LQ6/G;

    .line 41
    .line 42
    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 43
    .line 44
    invoke-virtual {v6}, LQ6/G;->timeoutNanos()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    sget-object v11, LQ6/G;->Companion:LQ6/F;

    .line 49
    .line 50
    invoke-virtual {v7}, LQ6/G;->timeoutNanos()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v6}, LQ6/G;->timeoutNanos()J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    cmp-long v11, v12, v4

    .line 62
    .line 63
    if-nez v11, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    cmp-long v11, v14, v4

    .line 67
    .line 68
    if-nez v11, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    cmp-long v11, v12, v14

    .line 72
    .line 73
    if-gez v11, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    move-wide v12, v14

    .line 77
    :goto_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    invoke-virtual {v6, v12, v13, v11}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, LQ6/G;->hasDeadline()Z

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    if-eqz v12, :cond_7

    .line 87
    .line 88
    invoke-virtual {v6}, LQ6/G;->deadlineNanoTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v13

    .line 92
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_3

    .line 97
    .line 98
    invoke-virtual {v6}, LQ6/G;->deadlineNanoTime()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    move-wide/from16 v16, v13

    .line 103
    .line 104
    invoke-virtual {v7}, LQ6/G;->deadlineNanoTime()J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    invoke-virtual {v6, v4, v5}, LQ6/G;->deadlineNanoTime(J)LQ6/G;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-wide/from16 v16, v13

    .line 117
    .line 118
    :goto_2
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    const-wide/16 v4, 0x0

    .line 123
    .line 124
    cmp-long v12, v2, v4

    .line 125
    .line 126
    if-nez v12, :cond_4

    .line 127
    .line 128
    const-wide/16 v13, -0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)LQ6/l;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-interface {v4, v0, v2, v3}, LQ6/D;->read(LQ6/j;J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_3
    invoke-virtual {v6, v9, v10, v11}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    move-wide/from16 v2, v16

    .line 149
    .line 150
    invoke-virtual {v6, v2, v3}, LQ6/G;->deadlineNanoTime(J)LQ6/G;

    .line 151
    .line 152
    .line 153
    :cond_5
    return-wide v13

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    move-wide/from16 v2, v16

    .line 156
    .line 157
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    .line 159
    invoke-virtual {v6, v9, v10, v4}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_6

    .line 167
    .line 168
    invoke-virtual {v6, v2, v3}, LQ6/G;->deadlineNanoTime(J)LQ6/G;

    .line 169
    .line 170
    .line 171
    :cond_6
    throw v0

    .line 172
    :cond_7
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_8

    .line 177
    .line 178
    invoke-virtual {v7}, LQ6/G;->deadlineNanoTime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    invoke-virtual {v6, v4, v5}, LQ6/G;->deadlineNanoTime(J)LQ6/G;

    .line 183
    .line 184
    .line 185
    :cond_8
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    const-wide/16 v4, 0x0

    .line 190
    .line 191
    cmp-long v12, v2, v4

    .line 192
    .line 193
    if-nez v12, :cond_9

    .line 194
    .line 195
    const-wide/16 v13, -0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_9
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)LQ6/l;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-interface {v4, v0, v2, v3}, LQ6/D;->read(LQ6/j;J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :goto_4
    invoke-virtual {v6, v9, v10, v11}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    invoke-virtual {v6}, LQ6/G;->clearDeadline()LQ6/G;

    .line 216
    .line 217
    .line 218
    :cond_a
    return-wide v13

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 221
    .line 222
    invoke-virtual {v6, v9, v10, v2}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, LQ6/G;->hasDeadline()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_b

    .line 230
    .line 231
    invoke-virtual {v6}, LQ6/G;->clearDeadline()LQ6/G;

    .line 232
    .line 233
    .line 234
    :cond_b
    throw v0

    .line 235
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string v2, "closed"

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_d
    const-string v0, "byteCount < 0: "

    .line 248
    .line 249
    invoke-static {v0, v2, v3}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v2
.end method

.method public timeout()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:LQ6/G;

    .line 2
    .line 3
    return-object v0
.end method
