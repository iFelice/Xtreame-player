.class public final synthetic Lcom/google/android/gms/internal/ads/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Ia;

.field public final synthetic I:Lcom/google/android/gms/internal/ads/xa;

.field public final synthetic J:Ljava/util/ArrayList;

.field public final synthetic K:J

.field public final synthetic L:Lcom/google/android/gms/internal/ads/Ja;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/xa;Ljava/util/ArrayList;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, Lcom/google/android/gms/internal/ads/za;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/za;->L:Lcom/google/android/gms/internal/ads/Ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/za;->I:Lcom/google/android/gms/internal/ads/xa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/za;->J:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/za;->K:J

    return-void
.end method

.method private final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->L:Lcom/google/android/gms/internal/ads/Ja;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/za;->I:Lcom/google/android/gms/internal/ads/xa;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->J:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/za;->K:J

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v6, "Could not receive /jsLoaded in "

    .line 15
    .line 16
    const-string v7, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock"

    .line 17
    .line 18
    invoke-static {v7}, Lo3/I;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v7

    .line 24
    :try_start_0
    const-string v8, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired"

    .line 25
    .line 26
    invoke-static {v8}, Lo3/I;->k(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lf/H;->o()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    const/4 v9, -0x1

    .line 34
    if-eq v8, v9, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Lf/H;->o()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x1

    .line 41
    if-ne v8, v9, :cond_0

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->a7:Lcom/google/android/gms/internal/ads/J7;

    .line 46
    .line 47
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 48
    .line 49
    iget-object v10, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    .line 64
    .line 65
    const-string v10, "Unable to receive /jsLoaded GMSG."

    .line 66
    .line 67
    invoke-direct {v8, v10}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v10, "SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener"

    .line 71
    .line 72
    invoke-virtual {v1, v10, v8}, Lf/H;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    invoke-virtual {v1}, Lf/H;->p()V

    .line 79
    .line 80
    .line 81
    :goto_0
    sget-object v8, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v10, Lcom/google/android/gms/internal/ads/Ba;

    .line 87
    .line 88
    const/4 v11, 0x0

    .line 89
    invoke-direct {v10, v2, v11}, Lcom/google/android/gms/internal/ads/Ba;-><init>(Lcom/google/android/gms/internal/ads/xa;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->b:Lcom/google/android/gms/internal/ads/J7;

    .line 96
    .line 97
    iget-object v8, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 98
    .line 99
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1}, Lf/H;->o()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iget v0, v0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 112
    .line 113
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    sget-object v8, Lk3/l;->A:Lk3/l;

    .line 122
    .line 123
    iget-object v8, v8, Lk3/l;->j:LP3/b;

    .line 124
    .line 125
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    sub-long/2addr v8, v4

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " ms. JS engine session reference status(onEngLoadedTimeout) is "

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ". Update status(onEngLoadedTimeout) is "

    .line 150
    .line 151
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is "

    .line 158
    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v0, " ms. Total latency(onEngLoadedTimeout) is "

    .line 166
    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, " ms. Rejecting."

    .line 174
    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const-string v0, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released"

    .line 187
    .line 188
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_2
    :goto_1
    :try_start_1
    const-string v0, "loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled"

    .line 193
    .line 194
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    monitor-exit v7

    .line 198
    :goto_2
    return-void

    .line 199
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "Could not finish the full JS engine loading in "

    .line 7
    .line 8
    const-string v1, ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is "

    .line 9
    .line 10
    const-string v2, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock"

    .line 11
    .line 12
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/za;->L:Lcom/google/android/gms/internal/ads/Ja;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    const-string v3, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired"

    .line 21
    .line 22
    invoke-static {v3}, Lo3/I;->k(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 26
    .line 27
    invoke-virtual {v3}, Lf/H;->o()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, -0x1

    .line 32
    if-eq v3, v4, :cond_3

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 35
    .line 36
    invoke-virtual {v3}, Lf/H;->o()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->a7:Lcom/google/android/gms/internal/ads/J7;

    .line 46
    .line 47
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 48
    .line 49
    iget-object v6, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 64
    .line 65
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    .line 66
    .line 67
    const-string v7, "Unable to fully load JS engine."

    .line 68
    .line 69
    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v7, "SdkJavascriptFactory.loadJavascriptEngine.Runnable"

    .line 73
    .line 74
    invoke-virtual {v3, v7, v6}, Lf/H;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 82
    .line 83
    invoke-virtual {v3}, Lf/H;->p()V

    .line 84
    .line 85
    .line 86
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 87
    .line 88
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/za;->I:Lcom/google/android/gms/internal/ads/xa;

    .line 89
    .line 90
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance v7, Lcom/google/android/gms/internal/ads/Ba;

    .line 94
    .line 95
    invoke-direct {v7, v6, v4}, Lcom/google/android/gms/internal/ads/Ba;-><init>(Lcom/google/android/gms/internal/ads/xa;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->c:Lcom/google/android/gms/internal/ads/J7;

    .line 102
    .line 103
    iget-object v4, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 104
    .line 105
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/za;->H:Lcom/google/android/gms/internal/ads/Ia;

    .line 114
    .line 115
    invoke-virtual {v4}, Lf/H;->o()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/za;->L:Lcom/google/android/gms/internal/ads/Ja;

    .line 120
    .line 121
    iget v5, v5, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 122
    .line 123
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/za;->J:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_2

    .line 130
    .line 131
    const-string v1, ". Still waiting for the engine to be loaded"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/za;->J:Ljava/util/ArrayList;

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :goto_1
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 150
    .line 151
    iget-object v6, v6, Lk3/l;->j:LP3/b;

    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v6

    .line 160
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/za;->K:J

    .line 161
    .line 162
    sub-long/2addr v6, v8

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, " ms. JS engine session reference status(fullLoadTimeout) is "

    .line 172
    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, ". Update status(fullLoadTimeout) is "

    .line 180
    .line 181
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v0, " ms. Total latency(fullLoadTimeout) is "

    .line 191
    .line 192
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v0, " ms at timeout. Rejecting."

    .line 199
    .line 200
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const-string v0, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released"

    .line 212
    .line 213
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_3
    :goto_2
    :try_start_1
    const-string v0, "loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled"

    .line 218
    .line 219
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    monitor-exit v2

    .line 223
    :goto_3
    return-void

    .line 224
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    throw v0

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->a()V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
