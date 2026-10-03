.class public final LK3/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/d;


# instance fields
.field public final G:J

.field public final H:J

.field public final I:I

.field public final J:Ljava/lang/Object;

.field public final K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK3/f;ILK3/a;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/F;->J:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, LK3/F;->I:I

    .line 7
    .line 8
    iput-object p3, p0, LK3/F;->K:Ljava/lang/Object;

    .line 9
    .line 10
    iput-wide p4, p0, LK3/F;->G:J

    .line 11
    .line 12
    iput-wide p6, p0, LK3/F;->H:J

    .line 13
    .line 14
    return-void
.end method

.method public static a(LK3/z;Lcom/google/android/gms/common/internal/g;I)Lcom/google/android/gms/common/internal/j;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/g;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/j;->H:Z

    .line 9
    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/common/internal/j;->J:[I

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p1, Lcom/google/android/gms/common/internal/j;->L:[I

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    array-length v3, v2

    .line 23
    if-ge v1, v3, :cond_3

    .line 24
    .line 25
    aget v3, v2, v1

    .line 26
    .line 27
    if-ne v3, p2, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    array-length v3, v2

    .line 34
    if-ge v1, v3, :cond_6

    .line 35
    .line 36
    aget v3, v2, v1

    .line 37
    .line 38
    if-ne v3, p2, :cond_5

    .line 39
    .line 40
    :cond_3
    :goto_2
    iget p0, p0, LK3/z;->R:I

    .line 41
    .line 42
    iget p2, p1, Lcom/google/android/gms/common/internal/j;->K:I

    .line 43
    .line 44
    if-ge p0, p2, :cond_4

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_4
    return-object v0

    .line 48
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final onComplete(Lg4/h;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LK3/F;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, LK3/f;

    .line 6
    .line 7
    invoke-virtual {v1}, LK3/f;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/s;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/s;->H:Z

    .line 24
    .line 25
    if-eqz v2, :cond_b

    .line 26
    .line 27
    :cond_1
    iget-object v2, v0, LK3/F;->J:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, LK3/f;

    .line 30
    .line 31
    iget-object v3, v0, LK3/F;->K:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, LK3/a;

    .line 34
    .line 35
    iget-object v2, v2, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, LK3/z;

    .line 42
    .line 43
    if-eqz v2, :cond_b

    .line 44
    .line 45
    iget-object v3, v2, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 46
    .line 47
    instance-of v4, v3, Lcom/google/android/gms/common/internal/g;

    .line 48
    .line 49
    if-eqz v4, :cond_b

    .line 50
    .line 51
    check-cast v3, Lcom/google/android/gms/common/internal/g;

    .line 52
    .line 53
    iget-wide v4, v0, LK3/F;->G:J

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    cmp-long v10, v4, v7

    .line 60
    .line 61
    if-lez v10, :cond_2

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v4, 0x0

    .line 66
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/g;->getGCoreServiceId()I

    .line 67
    .line 68
    .line 69
    move-result v20

    .line 70
    const/16 v5, 0x64

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iget-boolean v10, v1, Lcom/google/android/gms/common/internal/s;->I:Z

    .line 75
    .line 76
    and-int/2addr v4, v10

    .line 77
    iget v10, v1, Lcom/google/android/gms/common/internal/s;->J:I

    .line 78
    .line 79
    iget v11, v1, Lcom/google/android/gms/common/internal/s;->K:I

    .line 80
    .line 81
    iget v1, v1, Lcom/google/android/gms/common/internal/s;->G:I

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/g;->hasConnectionInfo()Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-eqz v12, :cond_4

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/g;->isConnecting()Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-nez v12, :cond_4

    .line 94
    .line 95
    iget v4, v0, LK3/F;->I:I

    .line 96
    .line 97
    invoke-static {v2, v3, v4}, LK3/F;->a(LK3/z;Lcom/google/android/gms/common/internal/g;I)Lcom/google/android/gms/common/internal/j;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v2, :cond_b

    .line 102
    .line 103
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/j;->I:Z

    .line 104
    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    iget-wide v3, v0, LK3/F;->G:J

    .line 108
    .line 109
    cmp-long v11, v3, v7

    .line 110
    .line 111
    if-lez v11, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const/4 v6, 0x0

    .line 115
    :goto_1
    iget v11, v2, Lcom/google/android/gms/common/internal/j;->K:I

    .line 116
    .line 117
    move v4, v6

    .line 118
    :cond_4
    move v2, v10

    .line 119
    move v3, v11

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const/16 v10, 0x1388

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    const/16 v2, 0x1388

    .line 125
    .line 126
    const/16 v3, 0x64

    .line 127
    .line 128
    :goto_2
    iget-object v6, v0, LK3/F;->J:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v6, LK3/f;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lg4/h;->h()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    const/4 v11, -0x1

    .line 137
    if-eqz v10, :cond_6

    .line 138
    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move-object/from16 v9, p1

    .line 143
    .line 144
    check-cast v9, Lg4/r;

    .line 145
    .line 146
    iget-boolean v9, v9, Lg4/r;->d:Z

    .line 147
    .line 148
    if-eqz v9, :cond_7

    .line 149
    .line 150
    const/16 v12, 0x64

    .line 151
    .line 152
    :goto_3
    const/4 v13, -0x1

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lg4/h;->e()Ljava/lang/Exception;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    instance-of v9, v5, Lcom/google/android/gms/common/api/h;

    .line 159
    .line 160
    if-eqz v9, :cond_9

    .line 161
    .line 162
    check-cast v5, Lcom/google/android/gms/common/api/h;

    .line 163
    .line 164
    iget-object v5, v5, Lcom/google/android/gms/common/api/h;->G:Lcom/google/android/gms/common/api/Status;

    .line 165
    .line 166
    iget v9, v5, Lcom/google/android/gms/common/api/Status;->G:I

    .line 167
    .line 168
    iget-object v5, v5, Lcom/google/android/gms/common/api/Status;->J:LJ3/b;

    .line 169
    .line 170
    if-nez v5, :cond_8

    .line 171
    .line 172
    move v12, v9

    .line 173
    goto :goto_3

    .line 174
    :cond_8
    iget v5, v5, LJ3/b;->H:I

    .line 175
    .line 176
    move v13, v5

    .line 177
    move v12, v9

    .line 178
    goto :goto_4

    .line 179
    :cond_9
    const/16 v9, 0x65

    .line 180
    .line 181
    const/16 v12, 0x65

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :goto_4
    if-eqz v4, :cond_a

    .line 185
    .line 186
    iget-wide v7, v0, LK3/F;->G:J

    .line 187
    .line 188
    iget-wide v4, v0, LK3/F;->H:J

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v9

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 195
    .line 196
    .line 197
    move-result-wide v14

    .line 198
    sub-long/2addr v14, v4

    .line 199
    long-to-int v4, v14

    .line 200
    move/from16 v21, v4

    .line 201
    .line 202
    move-wide v14, v7

    .line 203
    move-wide/from16 v16, v9

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_a
    move-wide v14, v7

    .line 207
    move-wide/from16 v16, v14

    .line 208
    .line 209
    const/16 v21, -0x1

    .line 210
    .line 211
    :goto_5
    iget v11, v0, LK3/F;->I:I

    .line 212
    .line 213
    new-instance v4, Lcom/google/android/gms/common/internal/q;

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    move-object v10, v4

    .line 220
    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/common/internal/q;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 221
    .line 222
    .line 223
    int-to-long v14, v2

    .line 224
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    new-instance v2, LK3/G;

    .line 228
    .line 229
    move-object v11, v2

    .line 230
    move-object v12, v4

    .line 231
    move v13, v1

    .line 232
    move/from16 v16, v3

    .line 233
    .line 234
    invoke-direct/range {v11 .. v16}, LK3/G;-><init>(Lcom/google/android/gms/common/internal/q;IJI)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v6, LK3/f;->S:LX3/d;

    .line 238
    .line 239
    const/16 v3, 0x12

    .line 240
    .line 241
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    .line 247
    .line 248
    :cond_b
    :goto_6
    return-void
.end method
