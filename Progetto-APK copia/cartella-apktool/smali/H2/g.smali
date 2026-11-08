.class public final LH2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/V;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LH2/g;->G:I

    .line 3
    iput-object p1, p0, LH2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LH2/g;->G:I

    iput-object p1, p0, LH2/g;->H:Ljava/lang/Object;

    return-void
.end method

.method private final a(Landroid/os/Message;)Z
    .locals 6

    .line 1
    const-string v0, "Timeout waiting for ServiceConnection callback "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v1, p0, LH2/g;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/common/internal/V;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/common/internal/T;

    .line 22
    .line 23
    iget-object v2, p0, LH2/g;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/common/internal/V;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/gms/common/internal/U;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget v4, v2, Lcom/google/android/gms/common/internal/U;->b:I

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    if-ne v4, v5, :cond_3

    .line 41
    .line 42
    const-string v4, "GmsClientSupervisor"

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v5, Ljava/lang/Exception;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    iget-object v0, v2, Lcom/google/android/gms/common/internal/U;->f:Landroid/content/ComponentName;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    :cond_1
    if-nez v0, :cond_2

    .line 69
    .line 70
    new-instance v0, Landroid/content/ComponentName;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/google/android/gms/common/internal/T;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const-string v4, "unknown"

    .line 78
    .line 79
    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/internal/U;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    monitor-exit v1

    .line 89
    return v3

    .line 90
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p1

    .line 92
    :cond_4
    iget-object v0, p0, LH2/g;->H:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lcom/google/android/gms/common/internal/V;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 97
    .line 98
    monitor-enter v0

    .line 99
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Lcom/google/android/gms/common/internal/T;

    .line 102
    .line 103
    iget-object v1, p0, LH2/g;->H:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lcom/google/android/gms/common/internal/V;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/google/android/gms/common/internal/U;

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-object v4, v1, Lcom/google/android/gms/common/internal/U;->a:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    iget-boolean v4, v1, Lcom/google/android/gms/common/internal/U;->c:Z

    .line 126
    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    iget-object v4, v1, Lcom/google/android/gms/common/internal/U;->e:Lcom/google/android/gms/common/internal/T;

    .line 130
    .line 131
    iget-object v5, v1, Lcom/google/android/gms/common/internal/U;->g:Lcom/google/android/gms/common/internal/V;

    .line 132
    .line 133
    iget-object v5, v5, Lcom/google/android/gms/common/internal/V;->f:LX3/d;

    .line 134
    .line 135
    invoke-virtual {v5, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, v1, Lcom/google/android/gms/common/internal/U;->g:Lcom/google/android/gms/common/internal/V;

    .line 139
    .line 140
    iget-object v5, v4, Lcom/google/android/gms/common/internal/V;->g:LO3/a;

    .line 141
    .line 142
    iget-object v4, v4, Lcom/google/android/gms/common/internal/V;->e:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {v5, v4, v1}, LO3/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 145
    .line 146
    .line 147
    iput-boolean v2, v1, Lcom/google/android/gms/common/internal/U;->c:Z

    .line 148
    .line 149
    const/4 v2, 0x2

    .line 150
    iput v2, v1, Lcom/google/android/gms/common/internal/U;->b:I

    .line 151
    .line 152
    :cond_5
    iget-object v1, p0, LH2/g;->H:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Lcom/google/android/gms/common/internal/V;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/google/android/gms/common/internal/V;->d:Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    :goto_2
    monitor-exit v0

    .line 165
    return v3

    .line 166
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    throw p1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, LH2/g;->G:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v9, 0x1

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget v0, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iget-object v2, v1, LH2/g;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, LP5/b;

    .line 18
    .line 19
    sget-object v3, LP5/b;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-ne v0, v9, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, LP5/b;->b()V

    .line 27
    .line 28
    .line 29
    const/4 v8, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v8, 0x0

    .line 32
    :goto_0
    return v8

    .line 33
    :pswitch_0
    iget v2, v0, Landroid/os/Message;->what:I

    .line 34
    .line 35
    iget-object v3, v1, LH2/g;->H:Ljava/lang/Object;

    .line 36
    .line 37
    const v10, 0x7f0b05c2

    .line 38
    .line 39
    .line 40
    if-ne v2, v10, :cond_13

    .line 41
    .line 42
    check-cast v3, LO5/o;

    .line 43
    .line 44
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, LO5/u;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    iget-object v2, v3, LO5/o;->f:Landroid/graphics/Rect;

    .line 56
    .line 57
    iput-object v2, v0, LO5/u;->d:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget-object v12, v0, LO5/u;->a:LP2/b;

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    move-object v2, v7

    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    iget v2, v0, LO5/u;->c:I

    .line 67
    .line 68
    const/16 v13, 0x5a

    .line 69
    .line 70
    const/4 v14, 0x4

    .line 71
    if-eq v2, v13, :cond_7

    .line 72
    .line 73
    const/16 v13, 0xb4

    .line 74
    .line 75
    if-eq v2, v13, :cond_5

    .line 76
    .line 77
    const/16 v13, 0x10e

    .line 78
    .line 79
    if-eq v2, v13, :cond_2

    .line 80
    .line 81
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-object v2, v12

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_2
    new-instance v2, LP2/b;

    .line 88
    .line 89
    iget-object v13, v12, LP2/b;->b:[B

    .line 90
    .line 91
    iget v15, v12, LP2/b;->c:I

    .line 92
    .line 93
    iget v8, v12, LP2/b;->d:I

    .line 94
    .line 95
    mul-int v4, v15, v8

    .line 96
    .line 97
    new-array v5, v4, [B

    .line 98
    .line 99
    sub-int/2addr v4, v9

    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_1
    if-ge v6, v15, :cond_4

    .line 102
    .line 103
    add-int/lit8 v16, v8, -0x1

    .line 104
    .line 105
    :goto_2
    if-ltz v16, :cond_3

    .line 106
    .line 107
    mul-int v17, v16, v15

    .line 108
    .line 109
    add-int v17, v17, v6

    .line 110
    .line 111
    aget-byte v17, v13, v17

    .line 112
    .line 113
    aput-byte v17, v5, v4

    .line 114
    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 116
    .line 117
    add-int/lit8 v16, v16, -0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget v4, v12, LP2/b;->d:I

    .line 124
    .line 125
    iget v6, v12, LP2/b;->c:I

    .line 126
    .line 127
    invoke-direct {v2, v4, v5, v6, v14}, LP2/b;-><init>(I[BII)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_5
    new-instance v2, LP2/b;

    .line 132
    .line 133
    iget-object v4, v12, LP2/b;->b:[B

    .line 134
    .line 135
    iget v5, v12, LP2/b;->c:I

    .line 136
    .line 137
    iget v6, v12, LP2/b;->d:I

    .line 138
    .line 139
    mul-int v5, v5, v6

    .line 140
    .line 141
    new-array v6, v5, [B

    .line 142
    .line 143
    add-int/lit8 v8, v5, -0x1

    .line 144
    .line 145
    const/4 v13, 0x0

    .line 146
    :goto_3
    if-ge v13, v5, :cond_6

    .line 147
    .line 148
    aget-byte v15, v4, v13

    .line 149
    .line 150
    aput-byte v15, v6, v8

    .line 151
    .line 152
    add-int/lit8 v8, v8, -0x1

    .line 153
    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    iget v4, v12, LP2/b;->c:I

    .line 158
    .line 159
    iget v5, v12, LP2/b;->d:I

    .line 160
    .line 161
    invoke-direct {v2, v4, v6, v5, v14}, LP2/b;-><init>(I[BII)V

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_7
    new-instance v2, LP2/b;

    .line 166
    .line 167
    iget-object v4, v12, LP2/b;->b:[B

    .line 168
    .line 169
    iget v5, v12, LP2/b;->c:I

    .line 170
    .line 171
    iget v6, v12, LP2/b;->d:I

    .line 172
    .line 173
    mul-int v8, v5, v6

    .line 174
    .line 175
    new-array v8, v8, [B

    .line 176
    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v15, 0x0

    .line 179
    :goto_4
    if-ge v13, v5, :cond_9

    .line 180
    .line 181
    add-int/lit8 v16, v6, -0x1

    .line 182
    .line 183
    :goto_5
    if-ltz v16, :cond_8

    .line 184
    .line 185
    mul-int v17, v16, v5

    .line 186
    .line 187
    add-int v17, v17, v13

    .line 188
    .line 189
    aget-byte v17, v4, v17

    .line 190
    .line 191
    aput-byte v17, v8, v15

    .line 192
    .line 193
    add-int/lit8 v15, v15, 0x1

    .line 194
    .line 195
    add-int/lit8 v16, v16, -0x1

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    iget v4, v12, LP2/b;->d:I

    .line 202
    .line 203
    iget v5, v12, LP2/b;->c:I

    .line 204
    .line 205
    invoke-direct {v2, v4, v8, v5, v14}, LP2/b;-><init>(I[BII)V

    .line 206
    .line 207
    .line 208
    :goto_6
    iget-object v4, v0, LO5/u;->d:Landroid/graphics/Rect;

    .line 209
    .line 210
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    mul-int v13, v5, v6

    .line 221
    .line 222
    new-array v13, v13, [B

    .line 223
    .line 224
    iget v14, v2, LP2/b;->c:I

    .line 225
    .line 226
    mul-int v8, v8, v14

    .line 227
    .line 228
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 229
    .line 230
    add-int/2addr v8, v4

    .line 231
    const/4 v4, 0x0

    .line 232
    :goto_7
    if-ge v4, v6, :cond_a

    .line 233
    .line 234
    mul-int v14, v4, v5

    .line 235
    .line 236
    iget-object v15, v2, LP2/b;->b:[B

    .line 237
    .line 238
    invoke-static {v15, v8, v13, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .line 240
    .line 241
    iget v14, v2, LP2/b;->c:I

    .line 242
    .line 243
    add-int/2addr v8, v14

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_a
    new-instance v2, Lq5/j;

    .line 248
    .line 249
    move-object/from16 v16, v2

    .line 250
    .line 251
    move-object/from16 v17, v13

    .line 252
    .line 253
    move/from16 v18, v5

    .line 254
    .line 255
    move/from16 v19, v6

    .line 256
    .line 257
    move/from16 v20, v5

    .line 258
    .line 259
    move/from16 v21, v6

    .line 260
    .line 261
    invoke-direct/range {v16 .. v21}, Lq5/j;-><init>([BIIII)V

    .line 262
    .line 263
    .line 264
    :goto_8
    if-eqz v2, :cond_d

    .line 265
    .line 266
    iget-object v4, v3, LO5/o;->d:LO5/l;

    .line 267
    .line 268
    invoke-virtual {v4, v2}, LO5/l;->b(Lq5/j;)Lm2/l;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v5, v4, LO5/l;->a:Lq5/k;

    .line 273
    .line 274
    iget-object v4, v4, LO5/l;->b:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 277
    .line 278
    .line 279
    :try_start_0
    instance-of v4, v5, Lq5/h;

    .line 280
    .line 281
    if-eqz v4, :cond_c

    .line 282
    .line 283
    move-object v4, v5

    .line 284
    check-cast v4, Lq5/h;

    .line 285
    .line 286
    iget-object v6, v4, Lq5/h;->b:[Lq5/k;

    .line 287
    .line 288
    if-nez v6, :cond_b

    .line 289
    .line 290
    invoke-virtual {v4, v7}, Lq5/h;->e(Ljava/util/Map;)V

    .line 291
    .line 292
    .line 293
    :cond_b
    invoke-virtual {v4, v2}, Lq5/h;->d(Lm2/l;)Lq5/m;

    .line 294
    .line 295
    .line 296
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catch_0
    :goto_9
    invoke-interface {v5}, Lq5/k;->a()V

    .line 298
    .line 299
    .line 300
    goto :goto_b

    .line 301
    :catchall_0
    move-exception v0

    .line 302
    goto :goto_a

    .line 303
    :cond_c
    :try_start_1
    invoke-interface {v5, v2}, Lq5/k;->b(Lm2/l;)Lq5/m;

    .line 304
    .line 305
    .line 306
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    goto :goto_9

    .line 308
    :goto_a
    invoke-interface {v5}, Lq5/k;->a()V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_d
    :goto_b
    iget-object v2, v3, LO5/o;->e:Landroid/os/Handler;

    .line 313
    .line 314
    if-eqz v7, :cond_e

    .line 315
    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v8, "Found barcode in "

    .line 323
    .line 324
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sub-long/2addr v4, v10

    .line 328
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v4, " ms"

    .line 332
    .line 333
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    const-string v5, "o"

    .line 341
    .line 342
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    if-eqz v2, :cond_f

    .line 346
    .line 347
    new-instance v4, LO5/b;

    .line 348
    .line 349
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 350
    .line 351
    .line 352
    iput-object v7, v4, LO5/b;->a:Lq5/m;

    .line 353
    .line 354
    iput-object v0, v4, LO5/b;->b:LO5/u;

    .line 355
    .line 356
    const v5, 0x7f0b05c4

    .line 357
    .line 358
    .line 359
    invoke-static {v2, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance v5, Landroid/os/Bundle;

    .line 364
    .line 365
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 372
    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_e
    if-eqz v2, :cond_f

    .line 376
    .line 377
    const v4, 0x7f0b05c3

    .line 378
    .line 379
    .line 380
    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 385
    .line 386
    .line 387
    :cond_f
    :goto_c
    if-eqz v2, :cond_12

    .line 388
    .line 389
    iget-object v4, v3, LO5/o;->d:LO5/l;

    .line 390
    .line 391
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    new-instance v5, Ljava/util/ArrayList;

    .line 395
    .line 396
    iget-object v4, v4, LO5/l;->b:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    .line 400
    .line 401
    new-instance v4, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-eqz v6, :cond_11

    .line 419
    .line 420
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    check-cast v6, Lq5/o;

    .line 425
    .line 426
    iget v7, v6, Lq5/o;->a:F

    .line 427
    .line 428
    int-to-float v8, v9

    .line 429
    mul-float v7, v7, v8

    .line 430
    .line 431
    iget-object v10, v0, LO5/u;->d:Landroid/graphics/Rect;

    .line 432
    .line 433
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 434
    .line 435
    int-to-float v11, v11

    .line 436
    add-float/2addr v7, v11

    .line 437
    iget v6, v6, Lq5/o;->b:F

    .line 438
    .line 439
    mul-float v6, v6, v8

    .line 440
    .line 441
    iget v8, v10, Landroid/graphics/Rect;->top:I

    .line 442
    .line 443
    int-to-float v8, v8

    .line 444
    add-float/2addr v6, v8

    .line 445
    iget-boolean v8, v0, LO5/u;->e:Z

    .line 446
    .line 447
    if-eqz v8, :cond_10

    .line 448
    .line 449
    iget v8, v12, LP2/b;->c:I

    .line 450
    .line 451
    int-to-float v8, v8

    .line 452
    sub-float v7, v8, v7

    .line 453
    .line 454
    :cond_10
    new-instance v8, Lq5/o;

    .line 455
    .line 456
    invoke-direct {v8, v7, v6}, Lq5/o;-><init>(FF)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto :goto_d

    .line 463
    :cond_11
    const v6, 0x7f0b05c5

    .line 464
    .line 465
    .line 466
    invoke-static {v2, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 471
    .line 472
    .line 473
    :cond_12
    iget-object v0, v3, LO5/o;->a:LP5/f;

    .line 474
    .line 475
    iget-object v2, v0, LP5/f;->h:Landroid/os/Handler;

    .line 476
    .line 477
    new-instance v4, LP5/d;

    .line 478
    .line 479
    iget-object v3, v3, LO5/o;->j:LZ3/o;

    .line 480
    .line 481
    const/4 v5, 0x0

    .line 482
    invoke-direct {v4, v0, v3, v5}, LP5/d;-><init>(LP5/f;LZ3/o;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_13
    const v0, 0x7f0b05c6

    .line 490
    .line 491
    .line 492
    if-ne v2, v0, :cond_14

    .line 493
    .line 494
    check-cast v3, LO5/o;

    .line 495
    .line 496
    iget-object v0, v3, LO5/o;->a:LP5/f;

    .line 497
    .line 498
    iget-object v2, v0, LP5/f;->h:Landroid/os/Handler;

    .line 499
    .line 500
    new-instance v4, LP5/d;

    .line 501
    .line 502
    iget-object v3, v3, LO5/o;->j:LZ3/o;

    .line 503
    .line 504
    const/4 v5, 0x0

    .line 505
    invoke-direct {v4, v0, v3, v5}, LP5/d;-><init>(LP5/f;LZ3/o;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    .line 510
    .line 511
    :cond_14
    :goto_e
    return v9

    .line 512
    :pswitch_1
    iget v2, v0, Landroid/os/Message;->what:I

    .line 513
    .line 514
    iget-object v4, v1, LH2/g;->H:Ljava/lang/Object;

    .line 515
    .line 516
    const v5, 0x7f0b05c7

    .line 517
    .line 518
    .line 519
    if-ne v2, v5, :cond_1d

    .line 520
    .line 521
    check-cast v4, LO5/g;

    .line 522
    .line 523
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v0, LO5/t;

    .line 526
    .line 527
    iput-object v0, v4, LO5/g;->T:LO5/t;

    .line 528
    .line 529
    iget-object v2, v4, LO5/g;->S:LO5/t;

    .line 530
    .line 531
    if-eqz v2, :cond_1c

    .line 532
    .line 533
    if-eqz v0, :cond_1b

    .line 534
    .line 535
    iget-object v5, v4, LO5/g;->Q:LP5/l;

    .line 536
    .line 537
    if-eqz v5, :cond_1b

    .line 538
    .line 539
    iget-object v6, v5, LP5/l;->c:LP5/o;

    .line 540
    .line 541
    iget-object v5, v5, LP5/l;->a:LO5/t;

    .line 542
    .line 543
    invoke-virtual {v6, v0, v5}, LP5/o;->b(LO5/t;LO5/t;)Landroid/graphics/Rect;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    if-lez v6, :cond_1a

    .line 552
    .line 553
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-gtz v6, :cond_15

    .line 558
    .line 559
    goto/16 :goto_11

    .line 560
    .line 561
    :cond_15
    iput-object v5, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 562
    .line 563
    new-instance v5, Landroid/graphics/Rect;

    .line 564
    .line 565
    iget v6, v2, LO5/t;->G:I

    .line 566
    .line 567
    iget v2, v2, LO5/t;->H:I

    .line 568
    .line 569
    const/4 v8, 0x0

    .line 570
    invoke-direct {v5, v8, v8, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 571
    .line 572
    .line 573
    iget-object v2, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 574
    .line 575
    new-instance v6, Landroid/graphics/Rect;

    .line 576
    .line 577
    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 581
    .line 582
    .line 583
    iget-object v2, v4, LO5/g;->b0:LO5/t;

    .line 584
    .line 585
    if-eqz v2, :cond_16

    .line 586
    .line 587
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    iget-object v5, v4, LO5/g;->b0:LO5/t;

    .line 592
    .line 593
    iget v5, v5, LO5/t;->G:I

    .line 594
    .line 595
    sub-int/2addr v2, v5

    .line 596
    div-int/2addr v2, v3

    .line 597
    const/4 v5, 0x0

    .line 598
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 603
    .line 604
    .line 605
    move-result v8

    .line 606
    iget-object v10, v4, LO5/g;->b0:LO5/t;

    .line 607
    .line 608
    iget v10, v10, LO5/t;->H:I

    .line 609
    .line 610
    sub-int/2addr v8, v10

    .line 611
    div-int/2addr v8, v3

    .line 612
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 617
    .line 618
    .line 619
    goto :goto_f

    .line 620
    :cond_16
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    int-to-double v10, v2

    .line 625
    iget-wide v12, v4, LO5/g;->c0:D

    .line 626
    .line 627
    mul-double v10, v10, v12

    .line 628
    .line 629
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    int-to-double v12, v2

    .line 634
    iget-wide v14, v4, LO5/g;->c0:D

    .line 635
    .line 636
    mul-double v12, v12, v14

    .line 637
    .line 638
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    .line 639
    .line 640
    .line 641
    move-result-wide v10

    .line 642
    double-to-int v2, v10

    .line 643
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    if-le v2, v5, :cond_17

    .line 655
    .line 656
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    sub-int/2addr v2, v5

    .line 665
    div-int/2addr v2, v3

    .line 666
    const/4 v3, 0x0

    .line 667
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 668
    .line 669
    .line 670
    :cond_17
    :goto_f
    iput-object v6, v4, LO5/g;->W:Landroid/graphics/Rect;

    .line 671
    .line 672
    new-instance v2, Landroid/graphics/Rect;

    .line 673
    .line 674
    iget-object v3, v4, LO5/g;->W:Landroid/graphics/Rect;

    .line 675
    .line 676
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 677
    .line 678
    .line 679
    iget-object v3, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 680
    .line 681
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 682
    .line 683
    neg-int v5, v5

    .line 684
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 685
    .line 686
    neg-int v3, v3

    .line 687
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 688
    .line 689
    .line 690
    new-instance v3, Landroid/graphics/Rect;

    .line 691
    .line 692
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 693
    .line 694
    iget v6, v0, LO5/t;->G:I

    .line 695
    .line 696
    mul-int v5, v5, v6

    .line 697
    .line 698
    iget-object v8, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 699
    .line 700
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    div-int/2addr v5, v8

    .line 705
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 706
    .line 707
    iget v0, v0, LO5/t;->H:I

    .line 708
    .line 709
    mul-int v8, v8, v0

    .line 710
    .line 711
    iget-object v10, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 712
    .line 713
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 714
    .line 715
    .line 716
    move-result v10

    .line 717
    div-int/2addr v8, v10

    .line 718
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 719
    .line 720
    mul-int v10, v10, v6

    .line 721
    .line 722
    iget-object v6, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 723
    .line 724
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 725
    .line 726
    .line 727
    move-result v6

    .line 728
    div-int/2addr v10, v6

    .line 729
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 730
    .line 731
    mul-int v2, v2, v0

    .line 732
    .line 733
    iget-object v0, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 734
    .line 735
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    div-int/2addr v2, v0

    .line 740
    invoke-direct {v3, v5, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 741
    .line 742
    .line 743
    iput-object v3, v4, LO5/g;->a0:Landroid/graphics/Rect;

    .line 744
    .line 745
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-lez v0, :cond_19

    .line 750
    .line 751
    iget-object v0, v4, LO5/g;->a0:Landroid/graphics/Rect;

    .line 752
    .line 753
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    if-gtz v0, :cond_18

    .line 758
    .line 759
    goto :goto_10

    .line 760
    :cond_18
    iget-object v0, v4, LO5/g;->h0:LO5/e;

    .line 761
    .line 762
    invoke-virtual {v0}, LO5/e;->c()V

    .line 763
    .line 764
    .line 765
    goto :goto_11

    .line 766
    :cond_19
    :goto_10
    iput-object v7, v4, LO5/g;->a0:Landroid/graphics/Rect;

    .line 767
    .line 768
    iput-object v7, v4, LO5/g;->W:Landroid/graphics/Rect;

    .line 769
    .line 770
    const-string v0, "g"

    .line 771
    .line 772
    const-string v2, "Preview frame is too small"

    .line 773
    .line 774
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    :cond_1a
    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4}, LO5/g;->f()V

    .line 781
    .line 782
    .line 783
    goto :goto_12

    .line 784
    :cond_1b
    iput-object v7, v4, LO5/g;->a0:Landroid/graphics/Rect;

    .line 785
    .line 786
    iput-object v7, v4, LO5/g;->W:Landroid/graphics/Rect;

    .line 787
    .line 788
    iput-object v7, v4, LO5/g;->U:Landroid/graphics/Rect;

    .line 789
    .line 790
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 791
    .line 792
    const-string v2, "containerSize or previewSize is not set yet"

    .line 793
    .line 794
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    throw v0

    .line 798
    :cond_1c
    :goto_12
    const/4 v8, 0x1

    .line 799
    goto :goto_14

    .line 800
    :cond_1d
    const v3, 0x7f0b05c1

    .line 801
    .line 802
    .line 803
    if-ne v2, v3, :cond_1e

    .line 804
    .line 805
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v0, Ljava/lang/Exception;

    .line 808
    .line 809
    check-cast v4, LO5/g;

    .line 810
    .line 811
    iget-object v2, v4, LO5/g;->G:LP5/f;

    .line 812
    .line 813
    if-eqz v2, :cond_1f

    .line 814
    .line 815
    invoke-virtual {v4}, LO5/g;->c()V

    .line 816
    .line 817
    .line 818
    iget-object v2, v4, LO5/g;->h0:LO5/e;

    .line 819
    .line 820
    invoke-virtual {v2, v0}, LO5/e;->b(Ljava/lang/Exception;)V

    .line 821
    .line 822
    .line 823
    goto :goto_13

    .line 824
    :cond_1e
    const v0, 0x7f0b05c0

    .line 825
    .line 826
    .line 827
    if-ne v2, v0, :cond_1f

    .line 828
    .line 829
    check-cast v4, LO5/g;

    .line 830
    .line 831
    iget-object v0, v4, LO5/g;->h0:LO5/e;

    .line 832
    .line 833
    invoke-virtual {v0}, LO5/e;->a()V

    .line 834
    .line 835
    .line 836
    :cond_1f
    :goto_13
    const/4 v8, 0x0

    .line 837
    :goto_14
    return v8

    .line 838
    :pswitch_2
    iget v2, v0, Landroid/os/Message;->what:I

    .line 839
    .line 840
    iget-object v4, v1, LH2/g;->H:Ljava/lang/Object;

    .line 841
    .line 842
    const v5, 0x7f0b05c4

    .line 843
    .line 844
    .line 845
    if-ne v2, v5, :cond_21

    .line 846
    .line 847
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 848
    .line 849
    check-cast v0, LO5/b;

    .line 850
    .line 851
    if-eqz v0, :cond_20

    .line 852
    .line 853
    check-cast v4, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 854
    .line 855
    iget-object v2, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->k0:LO5/a;

    .line 856
    .line 857
    if-eqz v2, :cond_20

    .line 858
    .line 859
    iget v5, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 860
    .line 861
    if-eq v5, v9, :cond_20

    .line 862
    .line 863
    invoke-interface {v2, v0}, LO5/a;->d(LO5/b;)V

    .line 864
    .line 865
    .line 866
    iget v0, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 867
    .line 868
    if-ne v0, v3, :cond_20

    .line 869
    .line 870
    iput v9, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 871
    .line 872
    iput-object v7, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->k0:LO5/a;

    .line 873
    .line 874
    invoke-virtual {v4}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()V

    .line 875
    .line 876
    .line 877
    :cond_20
    :goto_15
    const/4 v8, 0x1

    .line 878
    goto :goto_16

    .line 879
    :cond_21
    const v3, 0x7f0b05c3

    .line 880
    .line 881
    .line 882
    if-ne v2, v3, :cond_22

    .line 883
    .line 884
    goto :goto_15

    .line 885
    :cond_22
    const v3, 0x7f0b05c5

    .line 886
    .line 887
    .line 888
    if-ne v2, v3, :cond_23

    .line 889
    .line 890
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v0, Ljava/util/List;

    .line 893
    .line 894
    check-cast v4, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 895
    .line 896
    iget-object v2, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->k0:LO5/a;

    .line 897
    .line 898
    if-eqz v2, :cond_20

    .line 899
    .line 900
    iget v3, v4, Lcom/journeyapps/barcodescanner/BarcodeView;->j0:I

    .line 901
    .line 902
    if-eq v3, v9, :cond_20

    .line 903
    .line 904
    invoke-interface {v2, v0}, LO5/a;->c(Ljava/util/List;)V

    .line 905
    .line 906
    .line 907
    goto :goto_15

    .line 908
    :cond_23
    const/4 v8, 0x0

    .line 909
    :goto_16
    return v8

    .line 910
    :pswitch_3
    iget v2, v0, Landroid/os/Message;->what:I

    .line 911
    .line 912
    if-eqz v2, :cond_24

    .line 913
    .line 914
    const/4 v2, 0x0

    .line 915
    return v2

    .line 916
    :cond_24
    iget-object v2, v1, LH2/g;->H:Ljava/lang/Object;

    .line 917
    .line 918
    check-cast v2, Lm2/i;

    .line 919
    .line 920
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 921
    .line 922
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 923
    .line 924
    .line 925
    iget-object v3, v2, Lm2/i;->H:Ljava/lang/Object;

    .line 926
    .line 927
    monitor-enter v3

    .line 928
    :try_start_2
    iget-object v0, v2, Lm2/i;->J:Ljava/lang/Object;

    .line 929
    .line 930
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    throw v7

    .line 934
    :goto_17
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 935
    throw v0

    .line 936
    :catchall_1
    move-exception v0

    .line 937
    goto :goto_17

    .line 938
    :pswitch_4
    invoke-direct/range {p0 .. p1}, LH2/g;->a(Landroid/os/Message;)Z

    .line 939
    .line 940
    .line 941
    move-result v0

    .line 942
    return v0

    .line 943
    :pswitch_5
    const/4 v2, 0x0

    .line 944
    iget v4, v0, Landroid/os/Message;->what:I

    .line 945
    .line 946
    iget-object v5, v1, LH2/g;->H:Ljava/lang/Object;

    .line 947
    .line 948
    if-ne v4, v9, :cond_25

    .line 949
    .line 950
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v0, LH2/e;

    .line 953
    .line 954
    check-cast v5, LH2/h;

    .line 955
    .line 956
    invoke-virtual {v5, v0}, LH2/h;->b(LH2/e;)V

    .line 957
    .line 958
    .line 959
    const/4 v8, 0x1

    .line 960
    goto :goto_18

    .line 961
    :cond_25
    if-ne v4, v3, :cond_26

    .line 962
    .line 963
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v0, LH2/e;

    .line 966
    .line 967
    check-cast v5, LH2/h;

    .line 968
    .line 969
    iget-object v3, v5, LH2/h;->d:Lcom/bumptech/glide/n;

    .line 970
    .line 971
    invoke-virtual {v3, v0}, Lcom/bumptech/glide/n;->k(LM2/i;)V

    .line 972
    .line 973
    .line 974
    :cond_26
    const/4 v8, 0x0

    .line 975
    :goto_18
    return v8

    .line 976
    nop

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
