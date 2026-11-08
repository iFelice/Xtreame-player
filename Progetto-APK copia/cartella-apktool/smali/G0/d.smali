.class public final LG0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/l;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LG0/w;

.field public final c:Lm2/u;

.field public final d:LG0/e;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/HashMap;

.field public final i:Lp0/k;

.field public final j:LU4/b;

.field public final k:LC0/I;

.field public final l:LB0/c;

.field public final m:Ljava/util/UUID;

.field public final n:Landroid/os/Looper;

.field public final o:LG0/c;

.field public p:I

.field public q:I

.field public r:Landroid/os/HandlerThread;

.field public s:LG0/a;

.field public t:Landroidx/media3/decoder/CryptoConfig;

.field public u:LG0/k;

.field public v:[B

.field public w:[B

.field public x:LG0/u;

.field public y:LG0/v;


# direct methods
.method public constructor <init>(Ljava/util/UUID;LG0/w;Lm2/u;LG0/e;Ljava/util/List;IZZ[BLjava/util/HashMap;LB0/c;Landroid/os/Looper;LU4/b;LC0/I;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p6, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p6, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :cond_1
    iput-object p1, p0, LG0/d;->m:Ljava/util/UUID;

    .line 14
    .line 15
    iput-object p3, p0, LG0/d;->c:Lm2/u;

    .line 16
    .line 17
    iput-object p4, p0, LG0/d;->d:LG0/e;

    .line 18
    .line 19
    iput-object p2, p0, LG0/d;->b:LG0/w;

    .line 20
    .line 21
    iput p6, p0, LG0/d;->e:I

    .line 22
    .line 23
    iput-boolean p7, p0, LG0/d;->f:Z

    .line 24
    .line 25
    iput-boolean p8, p0, LG0/d;->g:Z

    .line 26
    .line 27
    if-eqz p9, :cond_2

    .line 28
    .line 29
    iput-object p9, p0, LG0/d;->w:[B

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, LG0/d;->a:Ljava/util/List;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, LG0/d;->a:Ljava/util/List;

    .line 43
    .line 44
    :goto_0
    iput-object p10, p0, LG0/d;->h:Ljava/util/HashMap;

    .line 45
    .line 46
    iput-object p11, p0, LG0/d;->l:LB0/c;

    .line 47
    .line 48
    new-instance p1, Lp0/k;

    .line 49
    .line 50
    invoke-direct {p1}, Lp0/k;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, LG0/d;->i:Lp0/k;

    .line 54
    .line 55
    iput-object p13, p0, LG0/d;->j:LU4/b;

    .line 56
    .line 57
    iput-object p14, p0, LG0/d;->k:LC0/I;

    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    iput p1, p0, LG0/d;->p:I

    .line 61
    .line 62
    iput-object p12, p0, LG0/d;->n:Landroid/os/Looper;

    .line 63
    .line 64
    new-instance p1, LG0/c;

    .line 65
    .line 66
    invoke-direct {p1, p0, p12}, LG0/c;-><init>(LG0/d;Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, LG0/d;->o:LG0/c;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LG0/d;->m:Ljava/util/UUID;

    .line 5
    .line 6
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, LG0/d;->f:Z

    .line 5
    .line 6
    return v0
.end method

.method public final c(LG0/o;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LG0/d;->q:I

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "DefaultDrmSession"

    .line 9
    .line 10
    const-string v0, "release() called on a session that\'s already fully released."

    .line 11
    .line 12
    invoke-static {p1, v0}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    iput v0, p0, LG0/d;->q:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, LG0/d;->p:I

    .line 25
    .line 26
    iget-object v0, p0, LG0/d;->o:LG0/c;

    .line 27
    .line 28
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, LG0/d;->s:LG0/a;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v1, v0, LG0/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    iput-object v2, p0, LG0/d;->s:LG0/a;

    .line 43
    .line 44
    iget-object v0, p0, LG0/d;->r:Landroid/os/HandlerThread;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, LG0/d;->r:Landroid/os/HandlerThread;

    .line 50
    .line 51
    iput-object v2, p0, LG0/d;->t:Landroidx/media3/decoder/CryptoConfig;

    .line 52
    .line 53
    iput-object v2, p0, LG0/d;->u:LG0/k;

    .line 54
    .line 55
    iput-object v2, p0, LG0/d;->x:LG0/u;

    .line 56
    .line 57
    iput-object v2, p0, LG0/d;->y:LG0/v;

    .line 58
    .line 59
    iget-object v0, p0, LG0/d;->v:[B

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, LG0/d;->b:LG0/w;

    .line 64
    .line 65
    invoke-interface {v3, v0}, LG0/w;->i([B)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, LG0/d;->v:[B

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0

    .line 73
    throw p1

    .line 74
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, LG0/d;->i:Lp0/k;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lp0/k;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, LG0/d;->i:Lp0/k;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lp0/k;->b(Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, LG0/o;->f()V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, LG0/d;->d:LG0/e;

    .line 93
    .line 94
    iget v0, p0, LG0/d;->q:I

    .line 95
    .line 96
    iget-object p1, p1, LG0/e;->a:LG0/i;

    .line 97
    .line 98
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    iget v1, p1, LG0/i;->U:I

    .line 106
    .line 107
    if-lez v1, :cond_3

    .line 108
    .line 109
    iget-wide v5, p1, LG0/i;->Q:J

    .line 110
    .line 111
    cmp-long v1, v5, v3

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    iget-object v0, p1, LG0/i;->T:Ljava/util/Set;

    .line 116
    .line 117
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object v0, p1, LG0/i;->Z:Landroid/os/Handler;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance v1, La/b;

    .line 126
    .line 127
    const/16 v2, 0x11

    .line 128
    .line 129
    invoke-direct {v1, p0, v2}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iget-wide v4, p1, LG0/i;->Q:J

    .line 137
    .line 138
    add-long/2addr v2, v4

    .line 139
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 140
    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_3
    if-nez v0, :cond_7

    .line 145
    .line 146
    iget-object v0, p1, LG0/i;->R:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, LG0/i;->W:LG0/d;

    .line 152
    .line 153
    if-ne v0, p0, :cond_4

    .line 154
    .line 155
    iput-object v2, p1, LG0/i;->W:LG0/d;

    .line 156
    .line 157
    :cond_4
    iget-object v0, p1, LG0/i;->X:LG0/d;

    .line 158
    .line 159
    if-ne v0, p0, :cond_5

    .line 160
    .line 161
    iput-object v2, p1, LG0/i;->X:LG0/d;

    .line 162
    .line 163
    :cond_5
    iget-object v0, p1, LG0/i;->N:Lm2/u;

    .line 164
    .line 165
    iget-object v1, v0, Lm2/u;->H:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Ljava/util/Set;

    .line 168
    .line 169
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lm2/u;->I:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, LG0/d;

    .line 175
    .line 176
    if-ne v1, p0, :cond_6

    .line 177
    .line 178
    iput-object v2, v0, Lm2/u;->I:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v1, v0, Lm2/u;->H:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Ljava/util/Set;

    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    iget-object v1, v0, Lm2/u;->H:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v1, Ljava/util/Set;

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, LG0/d;

    .line 203
    .line 204
    iput-object v1, v0, Lm2/u;->I:Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v0, v1, LG0/d;->b:LG0/w;

    .line 207
    .line 208
    invoke-interface {v0}, LG0/w;->c()LG0/v;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    iput-object v11, v1, LG0/d;->y:LG0/v;

    .line 213
    .line 214
    iget-object v0, v1, LG0/d;->s:LG0/a;

    .line 215
    .line 216
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v1, LG0/b;

    .line 225
    .line 226
    sget-object v2, LO0/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 229
    .line 230
    .line 231
    move-result-wide v6

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    const/4 v2, 0x1

    .line 237
    move-object v5, v1

    .line 238
    move v8, v2

    .line 239
    invoke-direct/range {v5 .. v11}, LG0/b;-><init>(JZJLjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    .line 248
    .line 249
    :cond_6
    iget-wide v0, p1, LG0/i;->Q:J

    .line 250
    .line 251
    cmp-long v2, v0, v3

    .line 252
    .line 253
    if-eqz v2, :cond_7

    .line 254
    .line 255
    iget-object v0, p1, LG0/i;->Z:Landroid/os/Handler;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p1, LG0/i;->T:Ljava/util/Set;

    .line 264
    .line 265
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_7
    :goto_1
    invoke-virtual {p1}, LG0/i;->g()V

    .line 269
    .line 270
    .line 271
    return-void
.end method

.method public final d(LG0/o;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LG0/d;->q:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "DefaultDrmSession"

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Session reference count less than zero: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v3, p0, LG0/d;->q:I

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Lp0/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput v1, p0, LG0/d;->q:I

    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, LG0/d;->i:Lp0/k;

    .line 36
    .line 37
    iget-object v3, v2, Lp0/k;->G:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v3

    .line 40
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v5, v2, Lp0/k;->J:Ljava/util/List;

    .line 43
    .line 44
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object v4, v2, Lp0/k;->J:Ljava/util/List;

    .line 55
    .line 56
    iget-object v4, v2, Lp0/k;->H:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 63
    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    new-instance v5, Ljava/util/HashSet;

    .line 67
    .line 68
    iget-object v6, v2, Lp0/k;->I:Ljava/util/Set;

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    iput-object v5, v2, Lp0/k;->I:Ljava/util/Set;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_0
    iget-object v2, v2, Lp0/k;->H:Ljava/util/HashMap;

    .line 86
    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    add-int/2addr v4, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 v4, 0x1

    .line 96
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    monitor-exit v3

    .line 104
    goto :goto_3

    .line 105
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_3
    :goto_3
    iget v2, p0, LG0/d;->q:I

    .line 108
    .line 109
    add-int/2addr v2, v0

    .line 110
    iput v2, p0, LG0/d;->q:I

    .line 111
    .line 112
    if-ne v2, v0, :cond_5

    .line 113
    .line 114
    iget p1, p0, LG0/d;->p:I

    .line 115
    .line 116
    const/4 v2, 0x2

    .line 117
    if-ne p1, v2, :cond_4

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    :cond_4
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Landroid/os/HandlerThread;

    .line 124
    .line 125
    const-string v1, "ExoPlayer:DrmRequestHandler"

    .line 126
    .line 127
    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, LG0/d;->r:Landroid/os/HandlerThread;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 133
    .line 134
    .line 135
    new-instance p1, LG0/a;

    .line 136
    .line 137
    iget-object v1, p0, LG0/d;->r:Landroid/os/HandlerThread;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {p1, p0, v1}, LG0/a;-><init>(LG0/d;Landroid/os/Looper;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, LG0/d;->s:LG0/a;

    .line 147
    .line 148
    invoke-virtual {p0}, LG0/d;->l()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    invoke-virtual {p0, v0}, LG0/d;->h(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    if-eqz p1, :cond_6

    .line 159
    .line 160
    invoke-virtual {p0}, LG0/d;->i()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    iget-object v1, p0, LG0/d;->i:Lp0/k;

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Lp0/k;->b(Ljava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-ne v1, v0, :cond_6

    .line 173
    .line 174
    iget v0, p0, LG0/d;->p:I

    .line 175
    .line 176
    invoke-virtual {p1, v0}, LG0/o;->d(I)V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_4
    iget-object p1, p0, LG0/d;->d:LG0/e;

    .line 180
    .line 181
    iget-object p1, p1, LG0/e;->a:LG0/i;

    .line 182
    .line 183
    iget-wide v0, p1, LG0/i;->Q:J

    .line 184
    .line 185
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    cmp-long v4, v0, v2

    .line 191
    .line 192
    if-eqz v4, :cond_7

    .line 193
    .line 194
    iget-object v0, p1, LG0/i;->T:Ljava/util/Set;

    .line 195
    .line 196
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    iget-object p1, p1, LG0/i;->Z:Landroid/os/Handler;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LG0/d;->v:[B

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LG0/d;->b:LG0/w;

    .line 10
    .line 11
    invoke-interface {v1, v0, p1}, LG0/w;->g([BLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final f()Landroidx/media3/decoder/CryptoConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LG0/d;->t:Landroidx/media3/decoder/CryptoConfig;

    .line 5
    .line 6
    return-object v0
.end method

.method public final g(Lp0/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, LG0/d;->i:Lp0/k;

    .line 2
    .line 3
    iget-object v1, v0, Lp0/k;->G:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lp0/k;->I:Ljava/util/Set;

    .line 7
    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, LG0/o;

    .line 24
    .line 25
    invoke-interface {p1, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public final getError()LG0/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LG0/d;->p:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LG0/d;->u:LG0/k;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, LG0/d;->p:I

    .line 5
    .line 6
    return v0
.end method

.method public final h(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, LG0/d;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LG0/d;->v:[B

    .line 7
    .line 8
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget v2, p0, LG0/d;->e:I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    if-eq v2, v1, :cond_4

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq v2, v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, LG0/d;->w:[B

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, LG0/d;->v:[B

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, LG0/d;->w:[B

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0, p1}, LG0/d;->m([BIZ)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    iget-object v1, p0, LG0/d;->w:[B

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, LG0/d;->o()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_d

    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0, v0, v3, p1}, LG0/d;->m([BIZ)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_4
    iget-object v4, p0, LG0/d;->w:[B

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1, p1}, LG0/d;->m([BIZ)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_5
    iget v1, p0, LG0/d;->p:I

    .line 67
    .line 68
    const/4 v4, 0x4

    .line 69
    if-eq v1, v4, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, LG0/d;->o()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_d

    .line 76
    .line 77
    :cond_6
    sget-object v1, Lm0/g;->d:Ljava/util/UUID;

    .line 78
    .line 79
    iget-object v5, p0, LG0/d;->m:Ljava/util/UUID;

    .line 80
    .line 81
    invoke-virtual {v1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_7

    .line 86
    .line 87
    const-wide v5, 0x7fffffffffffffffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    invoke-virtual {p0}, LG0/d;->n()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v1, :cond_8

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_8
    new-instance v5, Landroid/util/Pair;

    .line 102
    .line 103
    const-string v6, "LicenseDurationRemaining"

    .line 104
    .line 105
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :try_start_0
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 123
    :catch_0
    :cond_9
    move-wide v9, v7

    .line 124
    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v9, "PlaybackDurationRemaining"

    .line 129
    .line 130
    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :catch_1
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move-object v1, v5

    .line 150
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v5, Ljava/lang/Long;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v1, Ljava/lang/Long;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    :goto_2
    if-nez v2, :cond_b

    .line 174
    .line 175
    const-wide/16 v1, 0x3c

    .line 176
    .line 177
    cmp-long v7, v5, v1

    .line 178
    .line 179
    if-gtz v7, :cond_b

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v2, "DefaultDrmSession"

    .line 196
    .line 197
    invoke-static {v2, v1}, Lp0/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0, v3, p1}, LG0/d;->m([BIZ)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_b
    const-wide/16 v0, 0x0

    .line 205
    .line 206
    cmp-long p1, v5, v0

    .line 207
    .line 208
    if-gtz p1, :cond_c

    .line 209
    .line 210
    new-instance p1, LG0/A;

    .line 211
    .line 212
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v3, p1}, LG0/d;->j(ILjava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    iput v4, p0, LG0/d;->p:I

    .line 220
    .line 221
    new-instance p1, LN/i;

    .line 222
    .line 223
    const/16 v0, 0xc

    .line 224
    .line 225
    invoke-direct {p1, v0}, LN/i;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, p1}, LG0/d;->g(Lp0/j;)V

    .line 229
    .line 230
    .line 231
    :cond_d
    :goto_3
    return-void
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget v0, p0, LG0/d;->p:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public final j(ILjava/lang/Throwable;)V
    .locals 5

    .line 1
    new-instance v0, LG0/k;

    .line 2
    .line 3
    instance-of v1, p2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object p1, p2

    .line 9
    check-cast p1, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lp0/M;->x(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Lp0/M;->w(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x17

    .line 27
    .line 28
    const/16 v4, 0x1776

    .line 29
    .line 30
    if-lt v1, v3, :cond_1

    .line 31
    .line 32
    invoke-static {p2}, LF2/D;->x(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    :goto_0
    const/16 p1, 0x1776

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    instance-of v1, p2, Landroid/media/NotProvisionedException;

    .line 42
    .line 43
    const/16 v3, 0x1772

    .line 44
    .line 45
    if-nez v1, :cond_9

    .line 46
    .line 47
    invoke-static {p2}, LQ3/b;->n(Ljava/lang/Throwable;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    instance-of v1, p2, Landroid/media/DeniedByServerException;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const/16 p1, 0x1777

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    instance-of v1, p2, LG0/C;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    const/16 p1, 0x1771

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    instance-of v1, p2, LG0/g;

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    const/16 p1, 0x1773

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    instance-of v1, p2, LG0/A;

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/16 p1, 0x1778

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_6
    if-ne p1, v2, :cond_7

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_7
    const/4 v1, 0x2

    .line 86
    if-ne p1, v1, :cond_8

    .line 87
    .line 88
    const/16 p1, 0x1774

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_8
    const/4 v1, 0x3

    .line 92
    if-ne p1, v1, :cond_a

    .line 93
    .line 94
    :cond_9
    :goto_1
    const/16 p1, 0x1772

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :goto_2
    invoke-direct {v0, p1, p2}, LG0/k;-><init>(ILjava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, LG0/d;->u:LG0/k;

    .line 107
    .line 108
    const-string p1, "DefaultDrmSession"

    .line 109
    .line 110
    const-string v0, "DRM session error"

    .line 111
    .line 112
    invoke-static {p1, v0, p2}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    instance-of p1, p2, Ljava/lang/Exception;

    .line 116
    .line 117
    if-eqz p1, :cond_b

    .line 118
    .line 119
    new-instance p1, LB0/x;

    .line 120
    .line 121
    const/16 v0, 0x11

    .line 122
    .line 123
    invoke-direct {p1, p2, v0}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, LG0/d;->g(Lp0/j;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_b
    instance-of p1, p2, Ljava/lang/Error;

    .line 131
    .line 132
    if-eqz p1, :cond_f

    .line 133
    .line 134
    invoke-static {p2}, LQ3/b;->o(Ljava/lang/Throwable;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_d

    .line 139
    .line 140
    invoke-static {p2}, LQ3/b;->n(Ljava/lang/Throwable;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_c

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_c
    check-cast p2, Ljava/lang/Error;

    .line 148
    .line 149
    throw p2

    .line 150
    :cond_d
    :goto_3
    iget p1, p0, LG0/d;->p:I

    .line 151
    .line 152
    const/4 p2, 0x4

    .line 153
    if-eq p1, p2, :cond_e

    .line 154
    .line 155
    iput v2, p0, LG0/d;->p:I

    .line 156
    .line 157
    :cond_e
    return-void

    .line 158
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    const-string v0, "Unexpected Throwable subclass"

    .line 161
    .line 162
    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method

.method public final k(ZLjava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p2, Landroid/media/NotProvisionedException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {p2}, LQ3/b;->n(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x2

    .line 17
    :goto_0
    invoke-virtual {p0, p1, p2}, LG0/d;->j(ILjava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    :goto_1
    iget-object p1, p0, LG0/d;->c:Lm2/u;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lm2/u;->O(LG0/d;)V

    .line 24
    .line 25
    .line 26
    :goto_2
    return-void
.end method

.method public final l()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LG0/d;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, LG0/d;->b:LG0/w;

    .line 10
    .line 11
    invoke-interface {v0}, LG0/w;->e()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LG0/d;->v:[B

    .line 16
    .line 17
    iget-object v2, p0, LG0/d;->b:LG0/w;

    .line 18
    .line 19
    iget-object v3, p0, LG0/d;->k:LC0/I;

    .line 20
    .line 21
    invoke-interface {v2, v0, v3}, LG0/w;->b([BLC0/I;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LG0/d;->b:LG0/w;

    .line 25
    .line 26
    iget-object v2, p0, LG0/d;->v:[B

    .line 27
    .line 28
    invoke-interface {v0, v2}, LG0/w;->d([B)Landroidx/media3/decoder/CryptoConfig;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, LG0/d;->t:Landroidx/media3/decoder/CryptoConfig;

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    iput v0, p0, LG0/d;->p:I

    .line 36
    .line 37
    iget-object v2, p0, LG0/d;->i:Lp0/k;

    .line 38
    .line 39
    iget-object v3, v2, Lp0/k;->G:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v3
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    iget-object v2, v2, Lp0/k;->I:Ljava/util/Set;

    .line 43
    .line 44
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, LG0/o;

    .line 60
    .line 61
    invoke-virtual {v3, v0}, LG0/o;->d(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, LG0/d;->v:[B

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0

    .line 78
    :goto_1
    invoke-static {v0}, LQ3/b;->n(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, LG0/d;->c:Lm2/u;

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Lm2/u;->O(LG0/d;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p0, v1, v0}, LG0/d;->j(ILjava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catch_2
    iget-object v0, p0, LG0/d;->c:Lm2/u;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Lm2/u;->O(LG0/d;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    const/4 v0, 0x0

    .line 100
    return v0
.end method

.method public final m([BIZ)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, LG0/d;->b:LG0/w;

    .line 2
    .line 3
    iget-object v1, p0, LG0/d;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, LG0/d;->h:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-interface {v0, p1, v1, p2, v2}, LG0/w;->l([BLjava/util/List;ILjava/util/HashMap;)LG0/u;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    iput-object v9, p0, LG0/d;->x:LG0/u;

    .line 12
    .line 13
    iget-object p1, p0, LG0/d;->s:LG0/a;

    .line 14
    .line 15
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p2, LG0/b;

    .line 24
    .line 25
    sget-object v0, LO0/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    move-object v3, p2

    .line 36
    move v6, p3

    .line 37
    invoke-direct/range {v3 .. v9}, LG0/b;-><init>(JZJLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p3, 0x2

    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p1

    .line 52
    :goto_0
    const/4 p2, 0x1

    .line 53
    invoke-virtual {p0, p2, p1}, LG0/d;->k(ZLjava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final n()Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, LG0/d;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LG0/d;->v:[B

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, LG0/d;->b:LG0/w;

    .line 11
    .line 12
    invoke-interface {v1, v0}, LG0/w;->a([B)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final o()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, LG0/d;->b:LG0/w;

    .line 3
    .line 4
    iget-object v2, p0, LG0/d;->v:[B

    .line 5
    .line 6
    iget-object v3, p0, LG0/d;->w:[B

    .line 7
    .line 8
    invoke-interface {v1, v2, v3}, LG0/w;->h([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v1

    .line 15
    :goto_0
    invoke-virtual {p0, v0, v1}, LG0/d;->j(ILjava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LG0/d;->n:Landroid/os/Looper;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    .line 16
    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "\nExpected thread: "

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "DefaultDrmSession"

    .line 57
    .line 58
    invoke-static {v2, v0, v1}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
