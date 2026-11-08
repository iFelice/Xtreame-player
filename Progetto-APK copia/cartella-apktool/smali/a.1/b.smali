.class public final synthetic La/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, La/b;->G:I

    .line 5
    .line 6
    iput-object p1, p0, La/b;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 11

    .line 1
    iget-object v0, p0, La/b;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/B;

    .line 4
    .line 5
    iget-object v1, v0, Lp0/B;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, LS0/e;

    .line 12
    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    iget-object v0, v0, Lp0/B;->c:Lp0/C;

    .line 16
    .line 17
    invoke-virtual {v0}, Lp0/C;->c()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, v1, LS0/e;->a:LS0/f;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget v2, v1, LS0/f;->n:I

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-boolean v3, v1, LS0/f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    if-ne v2, v0, :cond_1

    .line 39
    .line 40
    :try_start_1
    iget-object v2, v1, LS0/f;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    :try_start_2
    iput v0, v1, LS0/f;->n:I

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eq v0, v2, :cond_6

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    if-ne v0, v2, :cond_2

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_2
    iget-object v2, v1, LS0/f;->o:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    iget-object v2, v1, LS0/f;->a:Landroid/content/Context;

    .line 65
    .line 66
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    const-string v3, "phone"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    invoke-static {v2}, Ly4/k;->j0(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ly4/k;->j0(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :goto_0
    iput-object v2, v1, LS0/f;->o:Ljava/lang/String;

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v1, v0}, LS0/f;->a(I)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    iput-wide v2, v1, LS0/f;->l:J

    .line 114
    .line 115
    iget-object v0, v1, LS0/f;->d:Lp0/f;

    .line 116
    .line 117
    check-cast v0, Lp0/G;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v8

    .line 126
    iget v0, v1, LS0/f;->g:I

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    if-lez v0, :cond_5

    .line 130
    .line 131
    iget-wide v2, v1, LS0/f;->h:J

    .line 132
    .line 133
    sub-long v2, v8, v2

    .line 134
    .line 135
    long-to-int v0, v2

    .line 136
    move v3, v0

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const/4 v3, 0x0

    .line 139
    :goto_1
    iget-wide v4, v1, LS0/f;->i:J

    .line 140
    .line 141
    iget-wide v6, v1, LS0/f;->l:J

    .line 142
    .line 143
    move-object v2, v1

    .line 144
    invoke-virtual/range {v2 .. v7}, LS0/f;->b(IJJ)V

    .line 145
    .line 146
    .line 147
    iput-wide v8, v1, LS0/f;->h:J

    .line 148
    .line 149
    const-wide/16 v2, 0x0

    .line 150
    .line 151
    iput-wide v2, v1, LS0/f;->i:J

    .line 152
    .line 153
    iput-wide v2, v1, LS0/f;->k:J

    .line 154
    .line 155
    iput-wide v2, v1, LS0/f;->j:J

    .line 156
    .line 157
    iget-object v0, v1, LS0/f;->f:LS0/r;

    .line 158
    .line 159
    iget-object v2, v0, LS0/r;->b:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 162
    .line 163
    .line 164
    const/4 v2, -0x1

    .line 165
    iput v2, v0, LS0/r;->d:I

    .line 166
    .line 167
    iput v10, v0, LS0/r;->e:I

    .line 168
    .line 169
    iput v10, v0, LS0/r;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    monitor-exit v1

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    :goto_2
    monitor-exit v1

    .line 174
    goto :goto_4

    .line 175
    :goto_3
    monitor-exit v1

    .line 176
    throw v0

    .line 177
    :cond_7
    :goto_4
    return-void
.end method

.method private final b()V
    .locals 7

    .line 1
    iget-object v0, p0, La/b;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LK0/e;

    .line 4
    .line 5
    iget-object v1, v0, LK0/e;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, LK0/e;->m:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-wide v2, v0, LK0/e;->l:J

    .line 17
    .line 18
    const-wide/16 v4, 0x1

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    iput-wide v2, v0, LK0/e;->l:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-lez v6, :cond_1

    .line 28
    .line 29
    monitor-exit v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-gez v6, :cond_2

    .line 32
    .line 33
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, LK0/e;->b(Ljava/lang/IllegalStateException;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, LK0/e;->a()V

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    :goto_0
    return-void

    .line 48
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method

.method private final c()V
    .locals 3

    .line 1
    iget-object v0, p0, La/b;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/l;

    .line 4
    .line 5
    iget-object v1, v0, LP1/l;->l:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iput-boolean v2, v0, LP1/l;->g:Z

    .line 10
    .line 11
    iget-object v0, v0, LP1/l;->i:LP1/j;

    .line 12
    .line 13
    invoke-virtual {v0}, LP1/j;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v1

    .line 20
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La/b;->G:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    :pswitch_0
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lc5/a;

    .line 18
    .line 19
    iget-boolean v2, v0, Lc5/a;->G:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-boolean v2, v0, Lc5/a;->G:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, La3/l;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v2, La3/i;

    .line 37
    .line 38
    invoke-direct {v2, v0, v7}, La3/i;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, La3/l;->d:Lc3/c;

    .line 42
    .line 43
    check-cast v0, Lb3/j;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_2
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 53
    .line 54
    const-string v0, "this$0"

    .line 55
    .line 56
    invoke-static {v2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 60
    .line 61
    iget-object v0, v0, Lo2/h;->G:Ljava/lang/Object;

    .line 62
    .line 63
    instance-of v0, v0, Lo2/a;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v2}, Ld2/m;->getInputData()Ld2/e;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ld2/e;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const-string v0, "get()"

    .line 84
    .line 85
    invoke-static {v5, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-eqz v3, :cond_8

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v2}, Ld2/m;->getWorkerFactory()Ld2/z;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v2}, Ld2/m;->getApplicationContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v7, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->K:Landroidx/work/WorkerParameters;

    .line 107
    .line 108
    invoke-virtual {v0, v6, v3, v7}, Ld2/z;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ld2/m;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->O:Ld2/m;

    .line 113
    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    sget-object v0, Lq2/a;->a:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, "No worker to delegate to."

    .line 119
    .line 120
    invoke-virtual {v5, v0, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 124
    .line 125
    const-string v2, "future"

    .line 126
    .line 127
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Ld2/i;

    .line 131
    .line 132
    invoke-direct {v2}, Ld2/i;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_3
    invoke-virtual {v2}, Ld2/m;->getApplicationContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Le2/y;->w(Landroid/content/Context;)Le2/y;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v6, v0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 149
    .line 150
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v2}, Ld2/m;->getId()Ljava/util/UUID;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    const-string v8, "id.toString()"

    .line 163
    .line 164
    invoke-static {v7, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v7}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-nez v6, :cond_4

    .line 172
    .line 173
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 174
    .line 175
    const-string v2, "future"

    .line 176
    .line 177
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v2, Lq2/a;->a:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v2, Ld2/i;

    .line 183
    .line 184
    invoke-direct {v2}, Ld2/i;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_4
    new-instance v7, Li2/c;

    .line 193
    .line 194
    iget-object v0, v0, Le2/y;->j:Lm2/o;

    .line 195
    .line 196
    const-string v8, "workManagerImpl.trackers"

    .line 197
    .line 198
    invoke-static {v0, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v7, v0, v2}, Li2/c;-><init>(Lm2/o;Li2/b;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v6}, Ld2/v;->o(Ljava/lang/Object;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v7, v0}, Li2/c;->c(Ljava/util/Collection;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ld2/m;->getId()Ljava/util/UUID;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v6, "id.toString()"

    .line 220
    .line 221
    invoke-static {v0, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v0}, Li2/c;->a(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    sget-object v0, Lq2/a;->a:Ljava/lang/String;

    .line 231
    .line 232
    const-string v6, "Constraints met for delegate "

    .line 233
    .line 234
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v5, v0, v6}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :try_start_0
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->O:Ld2/m;

    .line 242
    .line 243
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ld2/m;->startWork()LD4/b;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v6, "delegate!!.startWork()"

    .line 251
    .line 252
    invoke-static {v0, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v6, LU0/r;

    .line 256
    .line 257
    const/16 v7, 0xb

    .line 258
    .line 259
    invoke-direct {v6, v7, v2, v0}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ld2/m;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-interface {v0, v6, v7}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :catchall_0
    move-exception v0

    .line 272
    sget-object v6, Lq2/a;->a:Ljava/lang/String;

    .line 273
    .line 274
    const-string v7, "Delegated worker "

    .line 275
    .line 276
    const-string v8, " threw exception in startWork."

    .line 277
    .line 278
    invoke-static {v7, v3, v8}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget v7, v5, Ld2/n;->a:I

    .line 283
    .line 284
    if-gt v7, v4, :cond_5

    .line 285
    .line 286
    invoke-static {v6, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .line 288
    .line 289
    :cond_5
    iget-object v3, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->L:Ljava/lang/Object;

    .line 290
    .line 291
    monitor-enter v3

    .line 292
    :try_start_1
    iget-boolean v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->M:Z

    .line 293
    .line 294
    if-eqz v0, :cond_6

    .line 295
    .line 296
    const-string v0, "Constraints were unmet, Retrying."

    .line 297
    .line 298
    invoke-virtual {v5, v6, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 302
    .line 303
    const-string v2, "future"

    .line 304
    .line 305
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v2, Ld2/j;

    .line 309
    .line 310
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_0

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    goto :goto_1

    .line 319
    :cond_6
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 320
    .line 321
    const-string v2, "future"

    .line 322
    .line 323
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    new-instance v2, Ld2/i;

    .line 327
    .line 328
    invoke-direct {v2}, Ld2/i;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    .line 333
    .line 334
    :goto_0
    monitor-exit v3

    .line 335
    goto :goto_3

    .line 336
    :goto_1
    monitor-exit v3

    .line 337
    throw v0

    .line 338
    :cond_7
    sget-object v0, Lq2/a;->a:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v6, "Constraints not met for delegate "

    .line 343
    .line 344
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v3, ". Requesting retry."

    .line 351
    .line 352
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v5, v0, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 363
    .line 364
    const-string v2, "future"

    .line 365
    .line 366
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Ld2/j;

    .line 370
    .line 371
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_8
    :goto_2
    sget-object v0, Lq2/a;->a:Ljava/lang/String;

    .line 379
    .line 380
    const-string v3, "No worker to delegate to."

    .line 381
    .line 382
    invoke-virtual {v5, v0, v3}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v0, v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->N:Lo2/j;

    .line 386
    .line 387
    const-string v2, "future"

    .line 388
    .line 389
    invoke-static {v0, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v2, Ld2/i;

    .line 393
    .line 394
    invoke-direct {v2}, Ld2/i;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v2}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    :goto_3
    return-void

    .line 401
    :pswitch_3
    invoke-direct/range {p0 .. p0}, La/b;->c()V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_4
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v0, LE1/b;

    .line 408
    .line 409
    const/4 v2, -0x1

    .line 410
    iput v2, v0, LE1/b;->n:I

    .line 411
    .line 412
    return-void

    .line 413
    :pswitch_5
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Landroidx/media3/ui/PlayerView;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :pswitch_6
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v0, LD1/v;

    .line 424
    .line 425
    sget-object v2, LD1/v;->n1:[F

    .line 426
    .line 427
    invoke-virtual {v0}, LD1/v;->s()V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :pswitch_7
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, LD1/e;

    .line 434
    .line 435
    sget v2, LD1/e;->y0:I

    .line 436
    .line 437
    invoke-virtual {v0, v5}, LD1/e;->d(Z)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_8
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v0, LV0/k;

    .line 444
    .line 445
    iget-object v2, v0, LV0/k;->N:Landroid/view/Surface;

    .line 446
    .line 447
    if-eqz v2, :cond_9

    .line 448
    .line 449
    iget-object v3, v0, LV0/k;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 450
    .line 451
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    if-eqz v4, :cond_9

    .line 460
    .line 461
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    check-cast v4, LB0/L;

    .line 466
    .line 467
    iget-object v4, v4, LB0/L;->G:LB0/O;

    .line 468
    .line 469
    invoke-virtual {v4, v6}, LB0/O;->V(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_9
    iget-object v3, v0, LV0/k;->M:Landroid/graphics/SurfaceTexture;

    .line 474
    .line 475
    if-eqz v3, :cond_a

    .line 476
    .line 477
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 478
    .line 479
    .line 480
    :cond_a
    if-eqz v2, :cond_b

    .line 481
    .line 482
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 483
    .line 484
    .line 485
    :cond_b
    iput-object v6, v0, LV0/k;->M:Landroid/graphics/SurfaceTexture;

    .line 486
    .line 487
    iput-object v6, v0, LV0/k;->N:Landroid/view/Surface;

    .line 488
    .line 489
    return-void

    .line 490
    :pswitch_9
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v0, LU0/x;

    .line 493
    .line 494
    iget v2, v0, LU0/x;->s:I

    .line 495
    .line 496
    sub-int/2addr v2, v7

    .line 497
    iput v2, v0, LU0/x;->s:I

    .line 498
    .line 499
    return-void

    .line 500
    :pswitch_a
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, LU0/d;

    .line 503
    .line 504
    iget-object v0, v0, LU0/d;->M:LU0/O;

    .line 505
    .line 506
    invoke-interface {v0}, LU0/O;->F()V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    :pswitch_b
    invoke-direct/range {p0 .. p0}, La/b;->b()V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :pswitch_c
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v0, LG0/d;

    .line 517
    .line 518
    invoke-virtual {v0, v6}, LG0/d;->c(LG0/o;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_d
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v0, LG0/h;

    .line 525
    .line 526
    iget-boolean v2, v0, LG0/h;->I:Z

    .line 527
    .line 528
    if-eqz v2, :cond_c

    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_c
    iget-object v2, v0, LG0/h;->H:LG0/l;

    .line 532
    .line 533
    if-eqz v2, :cond_d

    .line 534
    .line 535
    iget-object v3, v0, LG0/h;->G:LG0/o;

    .line 536
    .line 537
    invoke-interface {v2, v3}, LG0/l;->c(LG0/o;)V

    .line 538
    .line 539
    .line 540
    :cond_d
    iget-object v2, v0, LG0/h;->J:LG0/i;

    .line 541
    .line 542
    iget-object v2, v2, LG0/i;->S:Ljava/util/Set;

    .line 543
    .line 544
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    iput-boolean v7, v0, LG0/h;->I:Z

    .line 548
    .line 549
    :goto_5
    return-void

    .line 550
    :pswitch_e
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, LD0/S;

    .line 553
    .line 554
    iget-wide v2, v0, LD0/S;->l0:J

    .line 555
    .line 556
    const-wide/32 v4, 0x493e0

    .line 557
    .line 558
    .line 559
    cmp-long v6, v2, v4

    .line 560
    .line 561
    if-ltz v6, :cond_e

    .line 562
    .line 563
    iget-object v2, v0, LD0/S;->u:LD0/s;

    .line 564
    .line 565
    invoke-interface {v2}, LD0/s;->l()V

    .line 566
    .line 567
    .line 568
    const-wide/16 v2, 0x0

    .line 569
    .line 570
    iput-wide v2, v0, LD0/S;->l0:J

    .line 571
    .line 572
    :cond_e
    return-void

    .line 573
    :pswitch_f
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, LC0/A;

    .line 576
    .line 577
    invoke-virtual {v0}, LC0/A;->P()LC0/b;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    new-instance v3, LC0/i;

    .line 582
    .line 583
    invoke-direct {v3, v2, v7}, LC0/i;-><init>(LC0/b;I)V

    .line 584
    .line 585
    .line 586
    const/16 v4, 0x404

    .line 587
    .line 588
    invoke-virtual {v0, v2, v4, v3}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 589
    .line 590
    .line 591
    iget-object v0, v0, LC0/A;->L:Lx/e;

    .line 592
    .line 593
    invoke-virtual {v0}, Lx/e;->k()V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :pswitch_10
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Lf/G;

    .line 600
    .line 601
    iget-object v0, v0, Lf/G;->b:Ljava/lang/Object;

    .line 602
    .line 603
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    throw v6

    .line 607
    :pswitch_11
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v0, LB0/O;

    .line 610
    .line 611
    sget v2, LB0/O;->Q0:I

    .line 612
    .line 613
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 617
    .line 618
    iget-object v2, v0, LB0/O;->K:Landroid/content/Context;

    .line 619
    .line 620
    invoke-static {v2}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    iget-object v0, v0, LB0/O;->j0:Lp0/e;

    .line 633
    .line 634
    invoke-virtual {v0, v2}, Lp0/e;->b(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_12
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v0, LB0/v;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    const/4 v0, 0x0

    .line 646
    throw v0

    .line 647
    :pswitch_13
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v0, LU4/b;

    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :pswitch_14
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v0, LB0/b;

    .line 658
    .line 659
    iget-object v2, v0, LB0/b;->c:LB0/c;

    .line 660
    .line 661
    iget-boolean v2, v2, LB0/c;->G:Z

    .line 662
    .line 663
    if-eqz v2, :cond_f

    .line 664
    .line 665
    iget-object v0, v0, LB0/b;->a:LB0/L;

    .line 666
    .line 667
    iget-object v0, v0, LB0/L;->G:LB0/O;

    .line 668
    .line 669
    invoke-virtual {v0, v4, v5}, LB0/O;->Z(IZ)V

    .line 670
    .line 671
    .line 672
    :cond_f
    return-void

    .line 673
    :pswitch_15
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v0, Lf6/c;

    .line 676
    .line 677
    iget-object v0, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v0, LA0/Y;

    .line 680
    .line 681
    iget-object v0, v0, LA0/Y;->d:Lm0/u0;

    .line 682
    .line 683
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :pswitch_16
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v0, LA0/B;

    .line 690
    .line 691
    sget-object v2, LA0/B;->c0:[I

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    new-instance v2, LA0/z;

    .line 697
    .line 698
    invoke-direct {v2, v0, v3}, LA0/z;-><init>(LA0/B;I)V

    .line 699
    .line 700
    .line 701
    iget-object v0, v0, LA0/a0;->G:LA0/h0;

    .line 702
    .line 703
    invoke-virtual {v0, v2, v7}, LA0/h0;->f(LA0/g0;Z)V

    .line 704
    .line 705
    .line 706
    return-void

    .line 707
    :pswitch_17
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v0, Lm0/r0;

    .line 710
    .line 711
    check-cast v0, Lf6/c;

    .line 712
    .line 713
    iget-object v3, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v3, LA0/Y;

    .line 716
    .line 717
    iget-object v3, v3, LA0/Y;->f:Ljava/util/concurrent/Executor;

    .line 718
    .line 719
    new-instance v4, La/b;

    .line 720
    .line 721
    invoke-direct {v4, v0, v2}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 722
    .line 723
    .line 724
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 725
    .line 726
    .line 727
    return-void

    .line 728
    :pswitch_18
    invoke-direct/range {p0 .. p0}, La/b;->a()V

    .line 729
    .line 730
    .line 731
    return-void

    .line 732
    :pswitch_19
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 733
    .line 734
    move-object v8, v0

    .line 735
    check-cast v8, Landroid/app/Activity;

    .line 736
    .line 737
    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-nez v0, :cond_19

    .line 742
    .line 743
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 744
    .line 745
    const/16 v9, 0x1c

    .line 746
    .line 747
    if-lt v0, v9, :cond_10

    .line 748
    .line 749
    sget-object v0, LD/e;->a:Ljava/lang/Class;

    .line 750
    .line 751
    invoke-virtual {v8}, Landroid/app/Activity;->recreate()V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_c

    .line 755
    .line 756
    :cond_10
    sget-object v9, LD/e;->a:Ljava/lang/Class;

    .line 757
    .line 758
    const/16 v9, 0x1b

    .line 759
    .line 760
    const/16 v10, 0x1a

    .line 761
    .line 762
    if-eq v0, v10, :cond_12

    .line 763
    .line 764
    if-ne v0, v9, :cond_11

    .line 765
    .line 766
    goto :goto_6

    .line 767
    :cond_11
    const/4 v11, 0x0

    .line 768
    goto :goto_7

    .line 769
    :cond_12
    :goto_6
    const/4 v11, 0x1

    .line 770
    :goto_7
    sget-object v12, LD/e;->f:Ljava/lang/reflect/Method;

    .line 771
    .line 772
    if-eqz v11, :cond_13

    .line 773
    .line 774
    if-nez v12, :cond_13

    .line 775
    .line 776
    goto/16 :goto_b

    .line 777
    .line 778
    :cond_13
    sget-object v11, LD/e;->e:Ljava/lang/reflect/Method;

    .line 779
    .line 780
    if-nez v11, :cond_14

    .line 781
    .line 782
    sget-object v11, LD/e;->d:Ljava/lang/reflect/Method;

    .line 783
    .line 784
    if-nez v11, :cond_14

    .line 785
    .line 786
    goto/16 :goto_b

    .line 787
    .line 788
    :cond_14
    :try_start_2
    sget-object v11, LD/e;->c:Ljava/lang/reflect/Field;

    .line 789
    .line 790
    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v11

    .line 794
    if-nez v11, :cond_15

    .line 795
    .line 796
    goto :goto_b

    .line 797
    :cond_15
    sget-object v13, LD/e;->b:Ljava/lang/reflect/Field;

    .line 798
    .line 799
    invoke-virtual {v13, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v13

    .line 803
    if-nez v13, :cond_16

    .line 804
    .line 805
    goto :goto_b

    .line 806
    :cond_16
    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 807
    .line 808
    .line 809
    move-result-object v14

    .line 810
    new-instance v15, LD/d;

    .line 811
    .line 812
    invoke-direct {v15, v8}, LD/d;-><init>(Landroid/app/Activity;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v14, v15}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 816
    .line 817
    .line 818
    sget-object v2, LD/e;->g:Landroid/os/Handler;

    .line 819
    .line 820
    :try_start_3
    new-instance v3, Ll/k;

    .line 821
    .line 822
    const/4 v4, 0x2

    .line 823
    invoke-direct {v3, v15, v11, v4}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 827
    .line 828
    .line 829
    if-eq v0, v10, :cond_18

    .line 830
    .line 831
    if-ne v0, v9, :cond_17

    .line 832
    .line 833
    goto :goto_8

    .line 834
    :cond_17
    :try_start_4
    invoke-virtual {v8}, Landroid/app/Activity;->recreate()V

    .line 835
    .line 836
    .line 837
    goto :goto_9

    .line 838
    :catchall_2
    move-exception v0

    .line 839
    goto :goto_a

    .line 840
    :cond_18
    :goto_8
    const/16 v0, 0x9

    .line 841
    .line 842
    new-array v0, v0, [Ljava/lang/Object;

    .line 843
    .line 844
    aput-object v11, v0, v5

    .line 845
    .line 846
    aput-object v6, v0, v7

    .line 847
    .line 848
    aput-object v6, v0, v4

    .line 849
    .line 850
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    const/4 v4, 0x3

    .line 855
    aput-object v3, v0, v4

    .line 856
    .line 857
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 858
    .line 859
    const/4 v4, 0x4

    .line 860
    aput-object v3, v0, v4

    .line 861
    .line 862
    const/4 v4, 0x5

    .line 863
    aput-object v6, v0, v4

    .line 864
    .line 865
    const/4 v4, 0x6

    .line 866
    aput-object v6, v0, v4

    .line 867
    .line 868
    const/4 v4, 0x7

    .line 869
    aput-object v3, v0, v4

    .line 870
    .line 871
    const/16 v4, 0x8

    .line 872
    .line 873
    aput-object v3, v0, v4

    .line 874
    .line 875
    invoke-virtual {v12, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 876
    .line 877
    .line 878
    :goto_9
    :try_start_5
    new-instance v0, Ll/k;

    .line 879
    .line 880
    const/4 v3, 0x3

    .line 881
    invoke-direct {v0, v14, v15, v3}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 885
    .line 886
    .line 887
    goto :goto_c

    .line 888
    :goto_a
    new-instance v3, Ll/k;

    .line 889
    .line 890
    const/4 v4, 0x3

    .line 891
    invoke-direct {v3, v14, v15, v4}, Ll/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 895
    .line 896
    .line 897
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 898
    :catchall_3
    :goto_b
    invoke-virtual {v8}, Landroid/app/Activity;->recreate()V

    .line 899
    .line 900
    .line 901
    :cond_19
    :goto_c
    return-void

    .line 902
    :pswitch_1a
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast v0, La/n;

    .line 905
    .line 906
    invoke-static {v0}, La/n;->a(La/n;)V

    .line 907
    .line 908
    .line 909
    return-void

    .line 910
    :pswitch_1b
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 911
    .line 912
    check-cast v0, La/l;

    .line 913
    .line 914
    iget-object v2, v0, La/l;->H:Ljava/lang/Runnable;

    .line 915
    .line 916
    if-eqz v2, :cond_1a

    .line 917
    .line 918
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 919
    .line 920
    .line 921
    iput-object v6, v0, La/l;->H:Ljava/lang/Runnable;

    .line 922
    .line 923
    :cond_1a
    return-void

    .line 924
    :pswitch_1c
    iget-object v0, v1, La/b;->H:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v0, La/m;

    .line 927
    .line 928
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 929
    .line 930
    .line 931
    return-void

    .line 932
    nop

    .line 933
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
