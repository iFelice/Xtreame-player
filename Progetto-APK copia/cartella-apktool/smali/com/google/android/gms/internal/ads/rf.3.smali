.class public final Lcom/google/android/gms/internal/ads/rf;
.super Lcom/google/android/gms/internal/ads/Nz;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/kC;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Z

.field public j:Ljava/io/InputStream;

.field public k:Z

.field public l:Landroid/net/Uri;

.field public volatile m:Lcom/google/android/gms/internal/ads/o6;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:J

.field public s:LD4/b;

.field public final t:Ljava/util/concurrent/atomic/AtomicLong;

.field public final u:Lcom/google/android/gms/internal/ads/K4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/kC;Ljava/lang/String;ILcom/google/android/gms/internal/ads/vf;Lcom/google/android/gms/internal/ads/K4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->e:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rf;->f:Lcom/google/android/gms/internal/ads/kC;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rf;->g:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lcom/google/android/gms/internal/ads/rf;->h:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->n:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->q:Z

    .line 22
    .line 23
    const-wide/16 p1, 0x0

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/rf;->r:J

    .line 26
    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    .line 29
    const-wide/16 p2, -0x1

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->s:LD4/b;

    .line 38
    .line 39
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 40
    .line 41
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 42
    .line 43
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 56
    .line 57
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/Nz;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 14

    .line 1
    const-string v0, "ms"

    .line 2
    .line 3
    const-string v1, "Cache connection took "

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->k:Z

    .line 6
    .line 7
    if-nez v2, :cond_11

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->k:Z

    .line 11
    .line 12
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 13
    .line 14
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->l:Landroid/net/Uri;

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/o6;->i(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/o6;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 30
    .line 31
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->X3:Lcom/google/android/gms/internal/ads/J7;

    .line 32
    .line 33
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 34
    .line 35
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 36
    .line 37
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-wide/16 v5, -0x1

    .line 48
    .line 49
    const-string v7, ""

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    if-eqz v3, :cond_a

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 55
    .line 56
    if-eqz v3, :cond_e

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 59
    .line 60
    iget-wide v9, p1, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 61
    .line 62
    iput-wide v9, v3, Lcom/google/android/gms/internal/ads/o6;->N:J

    .line 63
    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 65
    .line 66
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/rf;->g:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v9, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object v7, v9

    .line 72
    :goto_0
    iput-object v7, v3, Lcom/google/android/gms/internal/ads/o6;->O:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 75
    .line 76
    iget v7, p0, Lcom/google/android/gms/internal/ads/rf;->h:I

    .line 77
    .line 78
    iput v7, v3, Lcom/google/android/gms/internal/ads/o6;->P:I

    .line 79
    .line 80
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 81
    .line 82
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/o6;->M:Z

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Z3:Lcom/google/android/gms/internal/ads/J7;

    .line 87
    .line 88
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/Long;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Y3:Lcom/google/android/gms/internal/ads/J7;

    .line 98
    .line 99
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Long;

    .line 106
    .line 107
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    sget-object v7, Lk3/l;->A:Lk3/l;

    .line 112
    .line 113
    iget-object v9, v7, Lk3/l;->j:LP3/b;

    .line 114
    .line 115
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v9

    .line 122
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/rf;->e:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v12, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 125
    .line 126
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/kH;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/o6;)Lcom/google/android/gms/internal/ads/q6;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    iget-object v13, v11, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 133
    .line 134
    invoke-virtual {v13, v3, v4, v12}, Lcom/google/android/gms/internal/ads/GB;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lcom/google/android/gms/internal/ads/u6;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    .line 140
    :try_start_1
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/u6;->b:Z

    .line 141
    .line 142
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/rf;->n:Z

    .line 143
    .line 144
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/u6;->c:Z

    .line 145
    .line 146
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 147
    .line 148
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/u6;->e:Z

    .line 149
    .line 150
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/rf;->q:Z

    .line 151
    .line 152
    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/u6;->d:J

    .line 153
    .line 154
    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/rf;->r:J

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rf;->m()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_5

    .line 161
    .line 162
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/u6;->a:Ljava/io/InputStream;

    .line 163
    .line 164
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 165
    .line 166
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 167
    .line 168
    if-eqz v3, :cond_3

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    :cond_3
    iget-object p1, v7, Lk3/l;->j:LP3/b;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    sub-long/2addr v3, v9

    .line 183
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 184
    .line 185
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Lcom/google/android/gms/internal/ads/vf;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 190
    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    invoke-interface {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/He;->b(JZ)V

    .line 194
    .line 195
    .line 196
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 197
    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-wide v5

    .line 217
    :catchall_0
    move-exception p1

    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :cond_5
    iget-object v3, v7, Lk3/l;->j:LP3/b;

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v3

    .line 229
    sub-long/2addr v3, v9

    .line 230
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 231
    .line 232
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v5, Lcom/google/android/gms/internal/ads/vf;

    .line 235
    .line 236
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 237
    .line 238
    if-eqz v5, :cond_6

    .line 239
    .line 240
    invoke-interface {v5, v3, v4, v2}, Lcom/google/android/gms/internal/ads/He;->b(JZ)V

    .line 241
    .line 242
    .line 243
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :catch_0
    const/4 v3, 0x1

    .line 266
    goto :goto_3

    .line 267
    :catch_1
    const/4 v3, 0x1

    .line 268
    goto :goto_5

    .line 269
    :catchall_1
    move-exception p1

    .line 270
    const/4 v2, 0x0

    .line 271
    goto :goto_6

    .line 272
    :catch_2
    const/4 v3, 0x0

    .line 273
    :goto_3
    :try_start_2
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/q6;->cancel(Z)Z

    .line 274
    .line 275
    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 281
    .line 282
    .line 283
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 284
    .line 285
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 291
    .line 292
    .line 293
    move-result-wide v4

    .line 294
    sub-long/2addr v4, v9

    .line 295
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 296
    .line 297
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Lcom/google/android/gms/internal/ads/vf;

    .line 300
    .line 301
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 302
    .line 303
    if-eqz v2, :cond_7

    .line 304
    .line 305
    invoke-interface {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/He;->b(JZ)V

    .line 306
    .line 307
    .line 308
    :cond_7
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 309
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_4
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    goto :goto_2

    .line 319
    :catchall_2
    move-exception p1

    .line 320
    move v2, v3

    .line 321
    goto :goto_6

    .line 322
    :catch_3
    const/4 v3, 0x0

    .line 323
    :goto_5
    :try_start_3
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/q6;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    .line 325
    .line 326
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 327
    .line 328
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 334
    .line 335
    .line 336
    move-result-wide v4

    .line 337
    sub-long/2addr v4, v9

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 339
    .line 340
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v2, Lcom/google/android/gms/internal/ads/vf;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 345
    .line 346
    if-eqz v2, :cond_8

    .line 347
    .line 348
    invoke-interface {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/He;->b(JZ)V

    .line 349
    .line 350
    .line 351
    :cond_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 352
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :goto_6
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 360
    .line 361
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 362
    .line 363
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 367
    .line 368
    .line 369
    move-result-wide v3

    .line 370
    sub-long/2addr v3, v9

    .line 371
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/rf;->u:Lcom/google/android/gms/internal/ads/K4;

    .line 372
    .line 373
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v5, Lcom/google/android/gms/internal/ads/vf;

    .line 376
    .line 377
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/vf;->P:Lcom/google/android/gms/internal/ads/He;

    .line 378
    .line 379
    if-eqz v5, :cond_9

    .line 380
    .line 381
    invoke-interface {v5, v3, v4, v2}, Lcom/google/android/gms/internal/ads/He;->b(JZ)V

    .line 382
    .line 383
    .line 384
    :cond_9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 385
    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw p1

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 406
    .line 407
    if-eqz v0, :cond_c

    .line 408
    .line 409
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 410
    .line 411
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 412
    .line 413
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/o6;->N:J

    .line 414
    .line 415
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 416
    .line 417
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rf;->g:Ljava/lang/String;

    .line 418
    .line 419
    if-nez v1, :cond_b

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_b
    move-object v7, v1

    .line 423
    :goto_7
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/o6;->O:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 426
    .line 427
    iget v1, p0, Lcom/google/android/gms/internal/ads/rf;->h:I

    .line 428
    .line 429
    iput v1, v0, Lcom/google/android/gms/internal/ads/o6;->P:I

    .line 430
    .line 431
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 432
    .line 433
    iget-object v0, v0, Lk3/l;->i:Lcom/google/android/gms/internal/ads/rs;

    .line 434
    .line 435
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rs;->f(Lcom/google/android/gms/internal/ads/o6;)Lcom/google/android/gms/internal/ads/m6;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    goto :goto_8

    .line 442
    :cond_c
    const/4 v0, 0x0

    .line 443
    :goto_8
    if-eqz v0, :cond_e

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->o()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_e

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->n()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/rf;->n:Z

    .line 456
    .line 457
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->q()Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->p()Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/rf;->q:Z

    .line 468
    .line 469
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->i()J

    .line 470
    .line 471
    .line 472
    move-result-wide v3

    .line 473
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/rf;->r:J

    .line 474
    .line 475
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rf;->m()Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_e

    .line 482
    .line 483
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m6;->l()Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 488
    .line 489
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 490
    .line 491
    if-eqz v0, :cond_d

    .line 492
    .line 493
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 494
    .line 495
    .line 496
    :cond_d
    return-wide v5

    .line 497
    :cond_e
    :goto_9
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/rf;->o:Z

    .line 498
    .line 499
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 500
    .line 501
    if-eqz v0, :cond_10

    .line 502
    .line 503
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/CD;->b:Ljava/util/Map;

    .line 504
    .line 505
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 506
    .line 507
    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 508
    .line 509
    iget v8, p1, Lcom/google/android/gms/internal/ads/CD;->e:I

    .line 510
    .line 511
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 512
    .line 513
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/o6;->G:Ljava/lang/String;

    .line 514
    .line 515
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    if-eqz v2, :cond_f

    .line 520
    .line 521
    new-instance p1, Lcom/google/android/gms/internal/ads/CD;

    .line 522
    .line 523
    move-object v1, p1

    .line 524
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/CD;-><init>(Landroid/net/Uri;Ljava/util/Map;JJI)V

    .line 525
    .line 526
    .line 527
    goto :goto_a

    .line 528
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 529
    .line 530
    const-string v0, "The uri must be set."

    .line 531
    .line 532
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw p1

    .line 536
    :cond_10
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->f:Lcom/google/android/gms/internal/ads/kC;

    .line 537
    .line 538
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/kC;->a(Lcom/google/android/gms/internal/ads/CD;)J

    .line 539
    .line 540
    .line 541
    move-result-wide v0

    .line 542
    return-wide v0

    .line 543
    :cond_11
    new-instance p1, Ljava/io/IOException;

    .line 544
    .line 545
    const-string v0, "Attempt to open an already open GcacheDataSource."

    .line 546
    .line 547
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw p1
.end method

.method public final e([BII)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->f:Lcom/google/android/gms/internal/ads/kC;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/HL;->e([BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return p1

    .line 32
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 33
    .line 34
    const-string p2, "Attempt to read closed GcacheDataSource."

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final l()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    cmp-long v0, v3, v1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    return-wide v0

    .line 25
    :cond_1
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->s:LD4/b;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 31
    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/he;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->s:LD4/b;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->s:LD4/b;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/rf;->s:LD4/b;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    return-wide v0

    .line 80
    :catch_0
    :cond_3
    :goto_1
    return-wide v1

    .line 81
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw v0
.end method

.method public final m()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a4:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->p:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v3

    .line 32
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->b4:Lcom/google/android/gms/internal/ads/J7;

    .line 33
    .line 34
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->q:Z

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    return v1
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf;->l:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rf;->k:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rf;->l:Landroid/net/Uri;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/rf;->i:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-static {v2}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/rf;->j:Ljava/io/InputStream;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rf;->f:Lcom/google/android/gms/internal/ads/kC;

    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/kC;->zzd()V

    .line 34
    .line 35
    .line 36
    :goto_0
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void

    .line 42
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v1, "Attempt to close an already closed GcacheDataSource."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method
