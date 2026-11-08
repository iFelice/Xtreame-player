.class public final Lcom/google/android/gms/internal/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lcom/google/android/gms/internal/ads/MO;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/f;

.field public final b:Lcom/google/android/gms/internal/ads/n;

.field public final c:Lcom/google/android/gms/internal/ads/s;

.field public final d:Lcom/google/android/gms/internal/ads/d;

.field public final e:Lcom/google/android/gms/internal/ads/pl;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public g:Lcom/google/android/gms/internal/ads/p0;

.field public h:Lcom/google/android/gms/internal/ads/tK;

.field public i:Lcom/google/android/gms/internal/ads/ts;

.field public j:Landroid/util/Pair;

.field public k:I

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/MO;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/g;->m:Lcom/google/android/gms/internal/ads/MO;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(La/x;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, La/x;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroid/content/Context;

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/f;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/f;-><init>(Lcom/google/android/gms/internal/ads/g;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/g;->a:Lcom/google/android/gms/internal/ads/f;

    .line 14
    .line 15
    iget-object v0, p1, La/x;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/pl;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g;->e:Lcom/google/android/gms/internal/ads/pl;

    .line 20
    .line 21
    iget-object v2, p1, La/x;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/n;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/g;->b:Lcom/google/android/gms/internal/ads/n;

    .line 26
    .line 27
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/s;

    .line 30
    .line 31
    new-instance v3, Lcom/google/android/gms/internal/ads/MN;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/MN;-><init>(Lcom/google/android/gms/internal/ads/g;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/internal/ads/MN;Lcom/google/android/gms/internal/ads/n;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 40
    .line 41
    iget-object p1, p1, La/x;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/google/android/gms/internal/ads/d;

    .line 44
    .line 45
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g;->d:Lcom/google/android/gms/internal/ads/d;

    .line 49
    .line 50
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/android/gms/internal/ads/g;->l:I

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/g;JJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/g;->k:I

    .line 4
    .line 5
    if-nez v1, :cond_b

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->c:Lcom/google/android/gms/internal/ads/s;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/s;->e:Lcom/google/android/gms/internal/ads/CO;

    .line 10
    .line 11
    iget v2, v1, Lcom/google/android/gms/internal/ads/CO;->b:I

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz v2, :cond_a

    .line 17
    .line 18
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/CO;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, [J

    .line 21
    .line 22
    iget v3, v1, Lcom/google/android/gms/internal/ads/CO;->a:I

    .line 23
    .line 24
    aget-wide v14, v2, v3

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s;->d:Lcom/google/android/gms/internal/ads/Ks;

    .line 27
    .line 28
    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/Ks;->c(J)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Long;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/s;->h:J

    .line 44
    .line 45
    cmp-long v8, v4, v6

    .line 46
    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/s;->h:J

    .line 54
    .line 55
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/n;->f(I)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/s;->h:J

    .line 59
    .line 60
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/s;->a:Lcom/google/android/gms/internal/ads/n;

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/s;->b:LU0/C;

    .line 64
    .line 65
    move-wide v5, v14

    .line 66
    move-wide/from16 v7, p1

    .line 67
    .line 68
    move-object/from16 v16, v9

    .line 69
    .line 70
    move-wide/from16 v9, p3

    .line 71
    .line 72
    move-object/from16 v17, v13

    .line 73
    .line 74
    move v13, v2

    .line 75
    move-object/from16 p0, v1

    .line 76
    .line 77
    move-wide v1, v14

    .line 78
    move-object/from16 v14, v16

    .line 79
    .line 80
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/gms/internal/ads/n;->a(JJJJZLU0/C;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x3

    .line 85
    const/4 v6, 0x1

    .line 86
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/s;->j:Lcom/google/android/gms/internal/ads/MN;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    if-eq v4, v6, :cond_4

    .line 92
    .line 93
    if-eq v4, v3, :cond_2

    .line 94
    .line 95
    if-eq v4, v5, :cond_2

    .line 96
    .line 97
    const/4 v3, 0x4

    .line 98
    if-eq v4, v3, :cond_2

    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :cond_2
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/s;->i:J

    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/CO;->L()J

    .line 104
    .line 105
    .line 106
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lcom/google/android/gms/internal/ads/g;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/google/android/gms/internal/ads/f;

    .line 127
    .line 128
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/f;->k:Lcom/google/android/gms/internal/ads/y;

    .line 129
    .line 130
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/f;->l:Ljava/util/concurrent/Executor;

    .line 131
    .line 132
    new-instance v4, Lcom/google/android/gms/internal/ads/e;

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-direct {v4, v1, v2, v5}, Lcom/google/android/gms/internal/ads/e;-><init>(Lcom/google/android/gms/internal/ads/f;Lcom/google/android/gms/internal/ads/y;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-static {v8}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v8

    .line 146
    :cond_4
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/s;->i:J

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/CO;->L()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/s;->c:Lcom/google/android/gms/internal/ads/Ks;

    .line 153
    .line 154
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/Ks;->c(J)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/google/android/gms/internal/ads/th;

    .line 159
    .line 160
    if-nez v1, :cond_6

    .line 161
    .line 162
    :cond_5
    move-object/from16 v0, v17

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/th;->d:Lcom/google/android/gms/internal/ads/th;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/th;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_5

    .line 172
    .line 173
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/s;->g:Lcom/google/android/gms/internal/ads/th;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/th;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_5

    .line 180
    .line 181
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/s;->g:Lcom/google/android/gms/internal/ads/th;

    .line 182
    .line 183
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 184
    .line 185
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 186
    .line 187
    .line 188
    iget v2, v1, Lcom/google/android/gms/internal/ads/th;->a:I

    .line 189
    .line 190
    iput v2, v0, Lcom/google/android/gms/internal/ads/K;->r:I

    .line 191
    .line 192
    iget v2, v1, Lcom/google/android/gms/internal/ads/th;->b:I

    .line 193
    .line 194
    iput v2, v0, Lcom/google/android/gms/internal/ads/K;->s:I

    .line 195
    .line 196
    const-string v2, "video/raw"

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v2, Lcom/google/android/gms/internal/ads/p0;

    .line 202
    .line 203
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lcom/google/android/gms/internal/ads/g;

    .line 209
    .line 210
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/g;->g:Lcom/google/android/gms/internal/ads/p0;

    .line 211
    .line 212
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_5

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    move-object v10, v2

    .line 229
    check-cast v10, Lcom/google/android/gms/internal/ads/f;

    .line 230
    .line 231
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/f;->k:Lcom/google/android/gms/internal/ads/y;

    .line 232
    .line 233
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/f;->l:Ljava/util/concurrent/Executor;

    .line 234
    .line 235
    new-instance v3, LK/a;

    .line 236
    .line 237
    const/16 v13, 0x10

    .line 238
    .line 239
    const/4 v14, 0x0

    .line 240
    move-object v9, v3

    .line 241
    move-object v12, v1

    .line 242
    invoke-direct/range {v9 .. v14}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :goto_3
    iget v1, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 250
    .line 251
    iput v5, v0, Lcom/google/android/gms/internal/ads/n;->d:I

    .line 252
    .line 253
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/n;->k:Lcom/google/android/gms/internal/ads/pl;

    .line 254
    .line 255
    check-cast v2, Lcom/google/android/gms/internal/ads/Nr;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 261
    .line 262
    .line 263
    move-result-wide v2

    .line 264
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/n;->f:J

    .line 269
    .line 270
    if-eq v1, v5, :cond_7

    .line 271
    .line 272
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v0, Lcom/google/android/gms/internal/ads/g;

    .line 275
    .line 276
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->j:Landroid/util/Pair;

    .line 277
    .line 278
    if-eqz v1, :cond_7

    .line 279
    .line 280
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_7

    .line 291
    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Lcom/google/android/gms/internal/ads/f;

    .line 297
    .line 298
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/f;->k:Lcom/google/android/gms/internal/ads/y;

    .line 299
    .line 300
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/f;->l:Ljava/util/concurrent/Executor;

    .line 301
    .line 302
    new-instance v4, Lcom/google/android/gms/internal/ads/e;

    .line 303
    .line 304
    invoke-direct {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/e;-><init>(Lcom/google/android/gms/internal/ads/f;Lcom/google/android/gms/internal/ads/y;I)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_7
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Lcom/google/android/gms/internal/ads/g;

    .line 314
    .line 315
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->h:Lcom/google/android/gms/internal/ads/tK;

    .line 316
    .line 317
    if-eqz v1, :cond_9

    .line 318
    .line 319
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->g:Lcom/google/android/gms/internal/ads/p0;

    .line 320
    .line 321
    if-nez v0, :cond_8

    .line 322
    .line 323
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 324
    .line 325
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 326
    .line 327
    .line 328
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 329
    .line 330
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 331
    .line 332
    .line 333
    :cond_8
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/MN;->G:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Lcom/google/android/gms/internal/ads/g;

    .line 336
    .line 337
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/g;->h:Lcom/google/android/gms/internal/ads/tK;

    .line 338
    .line 339
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g;->e:Lcom/google/android/gms/internal/ads/pl;

    .line 340
    .line 341
    check-cast v0, Lcom/google/android/gms/internal/ads/Nr;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    :cond_9
    invoke-static {v8}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    throw v8

    .line 356
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_b
    return-void
.end method
