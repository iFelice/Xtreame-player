.class public final Lcom/google/android/gms/internal/ads/C4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/E4;


# static fields
.field public static X:Lcom/google/android/gms/internal/ads/C4;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/Kq;

.field public final I:Lcom/google/android/gms/internal/ads/Dy;

.field public final J:Lcom/google/android/gms/internal/ads/Fy;

.field public final K:Ll3/n;

.field public final L:Lcom/google/android/gms/internal/ads/cy;

.field public final M:Ljava/util/concurrent/Executor;

.field public final N:Lcom/google/android/gms/internal/ads/K4;

.field public final O:Ljava/util/concurrent/CountDownLatch;

.field public final P:Lcom/google/android/gms/internal/ads/b5;

.field public final Q:LW0/g;

.field public final R:Lcom/google/android/gms/internal/ads/K4;

.field public volatile S:J

.field public final T:Ljava/lang/Object;

.field public volatile U:Z

.field public volatile V:Z

.field public final W:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/Kq;Lcom/google/android/gms/internal/ads/Dy;Lcom/google/android/gms/internal/ads/Fy;Ll3/n;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/y1;ILcom/google/android/gms/internal/ads/b5;LW0/g;Lcom/google/android/gms/internal/ads/K4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/C4;->S:J

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->T:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/C4;->V:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C4;->G:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/C4;->H:Lcom/google/android/gms/internal/ads/Kq;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/C4;->I:Lcom/google/android/gms/internal/ads/Dy;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 27
    .line 28
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/C4;->K:Ll3/n;

    .line 29
    .line 30
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/C4;->M:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    iput p9, p0, Lcom/google/android/gms/internal/ads/C4;->W:I

    .line 33
    .line 34
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/C4;->P:Lcom/google/android/gms/internal/ads/b5;

    .line 35
    .line 36
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/C4;->Q:LW0/g;

    .line 37
    .line 38
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/C4;->R:Lcom/google/android/gms/internal/ads/K4;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/C4;->V:Z

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C4;->O:Ljava/util/concurrent/CountDownLatch;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/internal/ads/K4;

    .line 51
    .line 52
    const/16 p2, 0xd

    .line 53
    .line 54
    invoke-direct {p1, p2, p8}, Lcom/google/android/gms/internal/ads/K4;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/C4;->N:Lcom/google/android/gms/internal/ads/K4;

    .line 58
    .line 59
    return-void
.end method

.method public static declared-synchronized f(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/C4;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/C4;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/C4;->g(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;ZZ)Lcom/google/android/gms/internal/ads/C4;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method

.method public static declared-synchronized g(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;ZZ)Lcom/google/android/gms/internal/ads/C4;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const-class v13, Lcom/google/android/gms/internal/ads/C4;

    .line 8
    .line 9
    monitor-enter v13

    .line 10
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/C4;->X:Lcom/google/android/gms/internal/ads/C4;

    .line 11
    .line 12
    if-nez v2, :cond_8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    or-int/2addr v2, v3

    .line 17
    int-to-byte v2, v2

    .line 18
    or-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    or-int/2addr v2, v3

    .line 24
    int-to-byte v2, v2

    .line 25
    const/4 v4, 0x3

    .line 26
    if-ne v2, v4, :cond_4

    .line 27
    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/ey;

    .line 29
    .line 30
    move/from16 v4, p3

    .line 31
    .line 32
    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/ey;-><init>(Ljava/lang/String;ZZ)V

    .line 33
    .line 34
    .line 35
    move/from16 v0, p4

    .line 36
    .line 37
    invoke-static {v1, v7, v0}, Lcom/google/android/gms/internal/ads/cy;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Z)Lcom/google/android/gms/internal/ads/cy;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->e3:Lcom/google/android/gms/internal/ads/J7;

    .line 42
    .line 43
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 44
    .line 45
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 61
    .line 62
    const-string v6, "connectivity"

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 69
    .line 70
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/K4;-><init>(Landroid/net/ConnectivityManager;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v0, v5

    .line 75
    :goto_0
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->f3:Lcom/google/android/gms/internal/ads/J7;

    .line 76
    .line 77
    iget-object v8, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 78
    .line 79
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/b5;->a(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/b5;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v10, v6

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object v10, v5

    .line 98
    :goto_1
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 99
    .line 100
    iget-object v8, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 101
    .line 102
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_2

    .line 113
    .line 114
    new-instance v6, LW0/g;

    .line 115
    .line 116
    invoke-direct {v6}, LW0/g;-><init>()V

    .line 117
    .line 118
    .line 119
    move-object v11, v6

    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_2
    move-object v11, v5

    .line 125
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->y2:Lcom/google/android/gms/internal/ads/J7;

    .line 126
    .line 127
    iget-object v8, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 128
    .line 129
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    new-instance v5, Lcom/google/android/gms/internal/ads/K4;

    .line 142
    .line 143
    const/16 v6, 0xe

    .line 144
    .line 145
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/K4;-><init>(I)V

    .line 146
    .line 147
    .line 148
    :cond_3
    move-object v12, v5

    .line 149
    invoke-static {v1, v7, v3, v2}, Ll3/n;->c(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/ey;)Ll3/n;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    new-instance v6, Lcom/google/android/gms/internal/ads/R4;

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    invoke-direct {v6, v1, v8}, Lcom/google/android/gms/internal/ads/R4;-><init>(Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    new-instance v8, Lcom/google/android/gms/internal/ads/Z4;

    .line 160
    .line 161
    invoke-direct {v8, v1, v6}, Lcom/google/android/gms/internal/ads/Z4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/R4;)V

    .line 162
    .line 163
    .line 164
    new-instance v9, Ll3/n;

    .line 165
    .line 166
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v2, v9, Ll3/n;->a:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v5, v9, Ll3/n;->b:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v8, v9, Ll3/n;->c:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v6, v9, Ll3/n;->d:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v0, v9, Ll3/n;->e:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v10, v9, Ll3/n;->f:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v11, v9, Ll3/n;->g:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v12, v9, Ll3/n;->h:Ljava/lang/Object;

    .line 184
    .line 185
    invoke-static {v1, v3}, LU2/m;->h(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cy;)I

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    new-instance v8, Lcom/google/android/gms/internal/ads/y1;

    .line 190
    .line 191
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    new-instance v15, Lcom/google/android/gms/internal/ads/C4;

    .line 195
    .line 196
    new-instance v5, Lcom/google/android/gms/internal/ads/Kq;

    .line 197
    .line 198
    invoke-direct {v5, v1, v14}, Lcom/google/android/gms/internal/ads/Kq;-><init>(Landroid/content/Context;I)V

    .line 199
    .line 200
    .line 201
    new-instance v6, Lcom/google/android/gms/internal/ads/Dy;

    .line 202
    .line 203
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 204
    .line 205
    const/16 v2, 0xc

    .line 206
    .line 207
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->h2:Lcom/google/android/gms/internal/ads/J7;

    .line 211
    .line 212
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 213
    .line 214
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-direct {v6, v1, v14, v0, v2}, Lcom/google/android/gms/internal/ads/Dy;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/uy;Z)V

    .line 225
    .line 226
    .line 227
    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    .line 228
    .line 229
    invoke-direct {v4, v1, v9, v3, v8}, Lcom/google/android/gms/internal/ads/Fy;-><init>(Landroid/content/Context;Ll3/n;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/y1;)V

    .line 230
    .line 231
    .line 232
    move-object v0, v15

    .line 233
    move-object/from16 v1, p1

    .line 234
    .line 235
    move-object v2, v3

    .line 236
    move-object v3, v5

    .line 237
    move-object v5, v4

    .line 238
    move-object v4, v6

    .line 239
    move-object v6, v9

    .line 240
    move-object/from16 v7, p2

    .line 241
    .line 242
    move v9, v14

    .line 243
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/C4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/Kq;Lcom/google/android/gms/internal/ads/Dy;Lcom/google/android/gms/internal/ads/Fy;Ll3/n;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/y1;ILcom/google/android/gms/internal/ads/b5;LW0/g;Lcom/google/android/gms/internal/ads/K4;)V

    .line 244
    .line 245
    .line 246
    sput-object v15, Lcom/google/android/gms/internal/ads/C4;->X:Lcom/google/android/gms/internal/ads/C4;

    .line 247
    .line 248
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/C4;->i()V

    .line 249
    .line 250
    .line 251
    sget-object v0, Lcom/google/android/gms/internal/ads/C4;->X:Lcom/google/android/gms/internal/ads/C4;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/C4;->j()V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    and-int/lit8 v1, v2, 0x1

    .line 263
    .line 264
    if-nez v1, :cond_5

    .line 265
    .line 266
    const-string v1, " shouldGetAdvertisingId"

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    :cond_5
    and-int/lit8 v1, v2, 0x2

    .line 272
    .line 273
    if-nez v1, :cond_6

    .line 274
    .line 275
    const-string v1, " isGooglePlayServicesAvailable"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v2, "Missing required properties:"

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v1

    .line 296
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 297
    .line 298
    const-string v1, "Null clientVersion"

    .line 299
    .line 300
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_8
    :goto_3
    sget-object v0, Lcom/google/android/gms/internal/ads/C4;->X:Lcom/google/android/gms/internal/ads/C4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .line 306
    monitor-exit v13

    .line 307
    return-object v0

    .line 308
    :goto_4
    monitor-exit v13

    .line 309
    throw v0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/C4;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->k()Lcom/google/android/gms/internal/ads/Yu;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/google/android/gms/internal/ads/x5;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/gms/internal/ads/x5;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x5;->H()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    move-object v2, v3

    .line 30
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/C4;->G:Landroid/content/Context;

    .line 31
    .line 32
    iget v5, p0, Lcom/google/android/gms/internal/ads/C4;->W:I

    .line 33
    .line 34
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 35
    .line 36
    invoke-static {v4, v5, v3, v2, v6}, Lf/b;->a0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cy;)Lcom/google/android/gms/internal/ads/Cy;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Cy;->H:[B

    .line 41
    .line 42
    if-eqz v3, :cond_b

    .line 43
    .line 44
    array-length v4, v3
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    const/4 v5, 0x0

    .line 50
    :try_start_1
    invoke-static {v5, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v4, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 55
    .line 56
    sget-object v4, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 57
    .line 58
    sget-object v4, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 59
    .line 60
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/v5;->A(Lcom/google/android/gms/internal/ads/VG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/v5;

    .line 61
    .line 62
    .line 63
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_a

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/x5;->H()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_a

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/v5;->C()Lcom/google/android/gms/internal/ads/XG;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    array-length v4, v4

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->k()Lcom/google/android/gms/internal/ads/Yu;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Lcom/google/android/gms/internal/ads/x5;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_4

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/v5;->B()Lcom/google/android/gms/internal/ads/x5;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/x5;->H()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/x5;->H()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_a

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :catch_0
    move-exception v2

    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/C4;->N:Lcom/google/android/gms/internal/ads/K4;

    .line 160
    .line 161
    iget v2, v2, Lcom/google/android/gms/internal/ads/Cy;->I:I

    .line 162
    .line 163
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->f2:Lcom/google/android/gms/internal/ads/J7;

    .line 164
    .line 165
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 166
    .line 167
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 168
    .line 169
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_6

    .line 180
    .line 181
    const/4 v5, 0x3

    .line 182
    if-ne v2, v5, :cond_5

    .line 183
    .line 184
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->I:Lcom/google/android/gms/internal/ads/Dy;

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/Dy;->a(Lcom/google/android/gms/internal/ads/v5;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    const/4 v5, 0x4

    .line 192
    if-ne v2, v5, :cond_7

    .line 193
    .line 194
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->I:Lcom/google/android/gms/internal/ads/Dy;

    .line 195
    .line 196
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->b(Lcom/google/android/gms/internal/ads/v5;Lcom/google/android/gms/internal/ads/K4;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    goto :goto_2

    .line 201
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->H:Lcom/google/android/gms/internal/ads/Kq;

    .line 202
    .line 203
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Kq;->c(Lcom/google/android/gms/internal/ads/v5;Lcom/google/android/gms/internal/ads/K4;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    :goto_2
    if-nez v2, :cond_8

    .line 208
    .line 209
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 210
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    sub-long/2addr v3, v0

    .line 216
    const/16 v5, 0xfa9

    .line 217
    .line 218
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->k()Lcom/google/android/gms/internal/ads/Yu;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-eqz v2, :cond_c

    .line 227
    .line 228
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 229
    .line 230
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/Fy;->c(Lcom/google/android/gms/internal/ads/Yu;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_9

    .line 235
    .line 236
    const/4 v2, 0x1

    .line 237
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/C4;->V:Z

    .line 238
    .line 239
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    const-wide/16 v4, 0x3e8

    .line 244
    .line 245
    div-long/2addr v2, v4

    .line 246
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/C4;->S:J

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    sub-long/2addr v3, v0

    .line 256
    const/16 v5, 0x1392

    .line 257
    .line 258
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :catch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 263
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 265
    .line 266
    .line 267
    move-result-wide v3

    .line 268
    sub-long/2addr v3, v0

    .line 269
    const/16 v5, 0x7ee

    .line 270
    .line 271
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 276
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide v3

    .line 281
    sub-long/2addr v3, v0

    .line 282
    const/16 v5, 0x1391

    .line 283
    .line 284
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :goto_5
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 289
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 291
    .line 292
    .line 293
    move-result-wide v4

    .line 294
    sub-long/2addr v4, v0

    .line 295
    const/16 v0, 0xfa2

    .line 296
    .line 297
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    .line 299
    .line 300
    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/C4;->O:Ljava/util/concurrent/CountDownLatch;

    .line 301
    .line 302
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :goto_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/C4;->O:Ljava/util/concurrent/CountDownLatch;

    .line 307
    .line 308
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 309
    .line 310
    .line 311
    throw v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->K:Ll3/n;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/n;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/Z4;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Z4;->a(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b([Ljava/lang/StackTraceElement;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->R:Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->P:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->Q:LW0/g;

    .line 34
    .line 35
    iget-wide v1, v0, LW0/g;->a:J

    .line 36
    .line 37
    iput-wide v1, v0, LW0/g;->b:J

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, v0, LW0/g;->a:J

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->j()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fy;->a()Lcom/google/android/gms/internal/ads/xc;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Ll3/n;

    .line 64
    .line 65
    invoke-virtual {v3}, Ll3/n;->a()Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "f"

    .line 70
    .line 71
    const-string v5, "q"

    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v4, "ctx"

    .line 77
    .line 78
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string p1, "aid"

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/xc;->P(Ljava/util/HashMap;)[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xc;->O([B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    .line 96
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    sub-long v5, v4, v1

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/16 v4, 0x1389

    .line 107
    .line 108
    move-object v8, p1

    .line 109
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    monitor-exit v0

    .line 115
    throw p1

    .line 116
    :cond_2
    const-string p1, ""

    .line 117
    .line 118
    return-object p1
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->P:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->Q:LW0/g;

    .line 34
    .line 35
    iget-wide v1, v0, LW0/g;->g:J

    .line 36
    .line 37
    iput-wide v1, v0, LW0/g;->h:J

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, v0, LW0/g;->g:J

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->j()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fy;->a()Lcom/google/android/gms/internal/ads/xc;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Ll3/n;

    .line 64
    .line 65
    iget-object v4, v3, Ll3/n;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lcom/google/android/gms/internal/ads/Z4;

    .line 68
    .line 69
    invoke-virtual {v3}, Ll3/n;->b()Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/Z4;->R:J

    .line 74
    .line 75
    const-wide/16 v7, -0x2

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    cmp-long v10, v5, v7

    .line 79
    .line 80
    if-gtz v10, :cond_3

    .line 81
    .line 82
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Z4;->N:Ljava/lang/ref/WeakReference;

    .line 83
    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroid/view/View;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-object v5, v9

    .line 94
    :goto_0
    if-nez v5, :cond_3

    .line 95
    .line 96
    const-wide/16 v5, -0x3

    .line 97
    .line 98
    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/Z4;->R:J

    .line 99
    .line 100
    :cond_3
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Z4;->R:J

    .line 101
    .line 102
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const-string v5, "lts"

    .line 107
    .line 108
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const-string v4, "f"

    .line 112
    .line 113
    const-string v5, "c"

    .line 114
    .line 115
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v4, "ctx"

    .line 119
    .line 120
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string p1, "cs"

    .line 124
    .line 125
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string p1, "aid"

    .line 129
    .line 130
    invoke-virtual {v3, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const-string p1, "view"

    .line 134
    .line 135
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    const-string p1, "act"

    .line 139
    .line 140
    invoke-virtual {v3, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/xc;->P(Ljava/util/HashMap;)[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xc;->O([B)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    .line 152
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide p2

    .line 158
    sub-long v5, p2, v1

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/16 v4, 0x1388

    .line 163
    .line 164
    move-object v8, p1

    .line 165
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    .line 166
    .line 167
    .line 168
    return-object p1

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0

    .line 171
    throw p1

    .line 172
    :cond_4
    const-string p1, ""

    .line 173
    .line 174
    return-object p1
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/C4;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final declared-synchronized i()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->k()Lcom/google/android/gms/internal/ads/Yu;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Fy;->c(Lcom/google/android/gms/internal/ads/Yu;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/C4;->V:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->O:Ljava/util/concurrent/CountDownLatch;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    sub-long/2addr v3, v0

    .line 41
    const/16 v0, 0xfad

    .line 42
    .line 43
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/cy;->c(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_0
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public final j()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/C4;->U:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->T:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/C4;->U:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x3e8

    .line 17
    .line 18
    div-long/2addr v1, v3

    .line 19
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/C4;->S:J

    .line 20
    .line 21
    sub-long/2addr v1, v5

    .line 22
    const-wide/16 v5, 0xe10

    .line 23
    .line 24
    cmp-long v7, v1, v5

    .line 25
    .line 26
    if-gez v7, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Fy;->b()Lcom/google/android/gms/internal/ads/Yu;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Yu;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/google/android/gms/internal/ads/x5;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/x5;->B()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    div-long/2addr v7, v3

    .line 53
    sub-long/2addr v1, v7

    .line 54
    cmp-long v3, v1, v5

    .line 55
    .line 56
    if-gez v3, :cond_3

    .line 57
    .line 58
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/C4;->W:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    if-eq v1, v2, :cond_2

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    if-eq v1, v2, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    if-eq v1, v2, :cond_2

    .line 73
    .line 74
    const/4 v2, 0x7

    .line 75
    if-eq v1, v2, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/C4;->M:Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    new-instance v2, Lcom/google/android/gms/internal/ads/Pf;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw v1

    .line 93
    :cond_4
    return-void
.end method

.method public final k()Lcom/google/android/gms/internal/ads/Yu;
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/C4;->W:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->f2:Lcom/google/android/gms/internal/ads/J7;

    .line 29
    .line 30
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 31
    .line 32
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->I:Lcom/google/android/gms/internal/ads/Dy;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    sget-object v5, Lcom/google/android/gms/internal/ads/Dy;->f:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v5

    .line 58
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Dy;->f(I)Lcom/google/android/gms/internal/ads/x5;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    const/16 v2, 0xfb6

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 67
    .line 68
    .line 69
    monitor-exit v5

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->c(Ljava/lang/String;)Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v6, Ljava/io/File;

    .line 82
    .line 83
    const-string v7, "pcam.jar"

    .line 84
    .line 85
    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    new-instance v6, Ljava/io/File;

    .line 95
    .line 96
    const-string v7, "pcam"

    .line 97
    .line 98
    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v7, Ljava/io/File;

    .line 102
    .line 103
    const-string v8, "pcbc"

    .line 104
    .line 105
    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v8, Ljava/io/File;

    .line 109
    .line 110
    const-string v9, "pcopt"

    .line 111
    .line 112
    invoke-direct {v8, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x1398

    .line 116
    .line 117
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->e(IJ)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/google/android/gms/internal/ads/Yu;

    .line 121
    .line 122
    invoke-direct {v1, v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Lcom/google/android/gms/internal/ads/x5;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v5

    .line 126
    :goto_1
    return-object v1

    .line 127
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw v0

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->H:Lcom/google/android/gms/internal/ads/Kq;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Kq;->d(I)Lcom/google/android/gms/internal/ads/x5;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-nez v2, :cond_5

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x5;->I()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kq;->g()Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const-string v4, "pcam.jar"

    .line 147
    .line 148
    invoke-static {v1, v4, v3}, LQ3/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kq;->g()Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const-string v4, "pcam"

    .line 163
    .line 164
    invoke-static {v1, v4, v3}, LQ3/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kq;->g()Ljava/io/File;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v5, "pcopt"

    .line 173
    .line 174
    invoke-static {v1, v5, v4}, LQ3/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Kq;->g()Ljava/io/File;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v5, "pcbc"

    .line 183
    .line 184
    invoke-static {v1, v5, v0}, LQ3/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Lcom/google/android/gms/internal/ads/Yu;

    .line 189
    .line 190
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Lcom/google/android/gms/internal/ads/x5;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 191
    .line 192
    .line 193
    :goto_3
    return-object v1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->P:Lcom/google/android/gms/internal/ads/b5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->x2:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->Q:LW0/g;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, LW0/g;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/C4;->j()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fy;->a()Lcom/google/android/gms/internal/ads/xc;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ll3/n;

    .line 57
    .line 58
    iget-object v4, v3, Ll3/n;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lcom/google/android/gms/internal/ads/K4;

    .line 61
    .line 62
    invoke-virtual {v3}, Ll3/n;->b()Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v5, Ljava/util/List;

    .line 71
    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iput-object v6, v4, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 77
    .line 78
    const-string v4, "vst"

    .line 79
    .line 80
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_2
    const-string v4, "f"

    .line 84
    .line 85
    const-string v5, "v"

    .line 86
    .line 87
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v4, "ctx"

    .line 91
    .line 92
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string p1, "aid"

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    const-string p1, "view"

    .line 102
    .line 103
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string p1, "act"

    .line 107
    .line 108
    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/xc;->P(Ljava/util/HashMap;)[B

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xc;->O([B)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v0

    .line 120
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide p2

    .line 126
    sub-long v5, p2, v1

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    const/16 v4, 0x138a

    .line 131
    .line 132
    move-object v8, p1

    .line 133
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/cy;->d(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lg4/r;

    .line 134
    .line 135
    .line 136
    return-object p1

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v0

    .line 139
    throw p1

    .line 140
    :cond_3
    const-string p1, ""

    .line 141
    .line 142
    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->J:Lcom/google/android/gms/internal/ads/Fy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fy;->a()Lcom/google/android/gms/internal/ads/xc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xc;->B(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/Ey; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/C4;->L:Lcom/google/android/gms/internal/ads/cy;

    .line 15
    .line 16
    iget v1, p1, Lcom/google/android/gms/internal/ads/Ey;->G:I

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/cy;->b(IJLjava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->jb:Lcom/google/android/gms/internal/ads/J7;

    .line 4
    .line 5
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 6
    .line 7
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/C4;->G:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move/from16 v2, p1

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    mul-float v9, v2, v3

    .line 40
    .line 41
    move/from16 v4, p2

    .line 42
    .line 43
    int-to-float v15, v4

    .line 44
    mul-float v10, v15, v3

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    const-wide/16 v6, 0x0

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    move/from16 v18, v15

    .line 61
    .line 62
    move v15, v3

    .line 63
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/C4;->zzk(Landroid/view/MotionEvent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 71
    .line 72
    .line 73
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .line 75
    mul-float v9, v2, v3

    .line 76
    .line 77
    mul-float v10, v18, v3

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    const/4 v8, 0x2

    .line 81
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/C4;->zzk(Landroid/view/MotionEvent;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 89
    .line 90
    .line 91
    move/from16 v3, p3

    .line 92
    .line 93
    int-to-long v5, v3

    .line 94
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .line 96
    mul-float v8, v2, v1

    .line 97
    .line 98
    mul-float v9, v18, v1

    .line 99
    .line 100
    const/4 v13, 0x0

    .line 101
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    const/4 v7, 0x1

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v15, 0x0

    .line 107
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/C4;->zzk(Landroid/view/MotionEvent;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    return-void
.end method
