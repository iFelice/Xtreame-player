.class public final Lcom/google/android/gms/internal/measurement/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    :try_start_0
    move-object v1, v0

    .line 4
    check-cast v1, Lc4/K0;

    .line 5
    .line 6
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lc4/l0;

    .line 9
    .line 10
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 11
    .line 12
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 16
    .line 17
    const-string v4, "onActivityCreated"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/W;->I:Landroid/content/Intent;

    .line 23
    .line 24
    if-eqz v3, :cond_7

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v5, v4

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto/16 :goto_a

    .line 43
    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    const-string v6, "com.android.vending.referral_url"

    .line 55
    .line 56
    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_2

    .line 65
    .line 66
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_2
    if-eqz v5, :cond_7

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    goto :goto_7

    .line 80
    :cond_3
    iget-object v1, v2, Lc4/l0;->R:Lc4/I1;

    .line 81
    .line 82
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v3, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    const-string v3, "https://www.google.com"

    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    const-string v3, "android-app://com.google.appcrawler"

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    const-string v1, "auto"

    .line 117
    .line 118
    :goto_3
    move-object v6, v1

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    const-string v1, "gs"

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_5
    const-string v1, "referrer"

    .line 124
    .line 125
    invoke-virtual {v5, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-nez p2, :cond_6

    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    const/4 v4, 0x1

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    const/4 v1, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    :goto_6
    iget-object v1, v2, Lc4/l0;->P:Lc4/j0;

    .line 137
    .line 138
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 139
    .line 140
    .line 141
    new-instance v8, LY/f;

    .line 142
    .line 143
    move-object v2, v8

    .line 144
    move-object v3, p0

    .line 145
    invoke-direct/range {v2 .. v7}, LY/f;-><init>(Lcom/google/android/gms/internal/measurement/l0;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v8}, Lc4/j0;->x(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_7
    :goto_7
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lc4/l0;

    .line 155
    .line 156
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 157
    .line 158
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1, p2}, Lc4/V0;->w(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :goto_8
    :try_start_1
    move-object v2, v0

    .line 166
    check-cast v2, Lc4/K0;

    .line 167
    .line 168
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v2, Lc4/l0;

    .line 171
    .line 172
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 173
    .line 174
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 178
    .line 179
    const-string v3, "Throwable caught in onActivityCreated"

    .line 180
    .line 181
    invoke-virtual {v2, v1, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    :goto_9
    check-cast v0, Lc4/K0;

    .line 185
    .line 186
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Lc4/l0;

    .line 189
    .line 190
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 191
    .line 192
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1, p2}, Lc4/V0;->w(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_a
    check-cast v0, Lc4/K0;

    .line 200
    .line 201
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lc4/l0;

    .line 204
    .line 205
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 206
    .line 207
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p1, p2}, Lc4/V0;->w(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    throw v1
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/W;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/K0;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 10
    .line 11
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lc4/V0;->R:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lc4/V0;->M:Lcom/google/android/gms/internal/measurement/W;

    .line 18
    .line 19
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, v0, Lc4/V0;->M:Lcom/google/android/gms/internal/measurement/W;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lc4/l0;

    .line 35
    .line 36
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 37
    .line 38
    invoke-virtual {v1}, Lc4/h;->C()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, v0, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    iget p1, p1, Lcom/google/android/gms/internal/measurement/W;->G:I

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/W;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/K0;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    iget-object v2, v0, Lc4/l0;->U:Lc4/V0;

    .line 10
    .line 11
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v2, Lc4/V0;->R:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    iput-boolean v3, v2, Lc4/V0;->Q:Z

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    iput-boolean v7, v2, Lc4/V0;->N:Z

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lc4/l0;

    .line 27
    .line 28
    iget-object v3, v1, Lc4/l0;->T:LP3/b;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object v3, v1, Lc4/l0;->M:Lc4/h;

    .line 38
    .line 39
    invoke-virtual {v3}, Lc4/h;->C()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v6, 0x0

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    iput-object v6, v2, Lc4/V0;->I:Lc4/S0;

    .line 47
    .line 48
    iget-object p1, v1, Lc4/l0;->P:Lc4/j0;

    .line 49
    .line 50
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lc4/v;

    .line 54
    .line 55
    invoke-direct {v1, v2, v4, v5, v7}, Lc4/v;-><init>(Lc4/z;JI)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2, p1}, Lc4/V0;->x(Lcom/google/android/gms/internal/measurement/W;)Lc4/S0;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object p1, v2, Lc4/V0;->I:Lc4/S0;

    .line 67
    .line 68
    iput-object p1, v2, Lc4/V0;->J:Lc4/S0;

    .line 69
    .line 70
    iput-object v6, v2, Lc4/V0;->I:Lc4/S0;

    .line 71
    .line 72
    iget-object p1, v1, Lc4/l0;->P:Lc4/j0;

    .line 73
    .line 74
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 75
    .line 76
    .line 77
    new-instance v8, Lr2/j;

    .line 78
    .line 79
    const/4 v6, 0x2

    .line 80
    move-object v1, v8

    .line 81
    invoke-direct/range {v1 .. v6}, Lr2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v8}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p1, v0, Lc4/l0;->Q:Lc4/k1;

    .line 88
    .line 89
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lc4/l0;

    .line 95
    .line 96
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 106
    .line 107
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lc4/h1;

    .line 111
    .line 112
    invoke-direct {v3, p1, v1, v2, v7}, Lc4/h1;-><init>(Lc4/k1;JI)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p1
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/W;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/K0;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    iget-object v1, v0, Lc4/l0;->Q:Lc4/k1;

    .line 10
    .line 11
    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lc4/l0;

    .line 17
    .line 18
    iget-object v3, v2, Lc4/l0;->T:LP3/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-object v2, v2, Lc4/l0;->P:Lc4/j0;

    .line 28
    .line 29
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lc4/h1;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-direct {v5, v1, v3, v4, v6}, Lc4/h1;-><init>(Lc4/k1;JI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v5}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 42
    .line 43
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lc4/V0;->R:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    const/4 v2, 0x1

    .line 50
    :try_start_0
    iput-boolean v2, v0, Lc4/V0;->Q:Z

    .line 51
    .line 52
    iget-object v3, v0, Lc4/V0;->M:Lcom/google/android/gms/internal/measurement/W;

    .line 53
    .line 54
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_0

    .line 59
    .line 60
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    iput-object p1, v0, Lc4/V0;->M:Lcom/google/android/gms/internal/measurement/W;

    .line 62
    .line 63
    iput-boolean v6, v0, Lc4/V0;->N:Z

    .line 64
    .line 65
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Lc4/l0;

    .line 69
    .line 70
    iget-object v4, v3, Lc4/l0;->M:Lc4/h;

    .line 71
    .line 72
    invoke-virtual {v4}, Lc4/h;->C()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    iput-object v4, v0, Lc4/V0;->O:Lc4/S0;

    .line 80
    .line 81
    iget-object v3, v3, Lc4/l0;->P:Lc4/j0;

    .line 82
    .line 83
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 84
    .line 85
    .line 86
    new-instance v4, Lc4/U0;

    .line 87
    .line 88
    invoke-direct {v4, v0, v2}, Lc4/U0;-><init>(Lc4/V0;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Lc4/j0;->x(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    throw p1

    .line 100
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Lc4/l0;

    .line 104
    .line 105
    iget-object v2, v1, Lc4/l0;->M:Lc4/h;

    .line 106
    .line 107
    invoke-virtual {v2}, Lc4/h;->C()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_1

    .line 112
    .line 113
    iget-object p1, v0, Lc4/V0;->O:Lc4/S0;

    .line 114
    .line 115
    iput-object p1, v0, Lc4/V0;->I:Lc4/S0;

    .line 116
    .line 117
    iget-object p1, v1, Lc4/l0;->P:Lc4/j0;

    .line 118
    .line 119
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lc4/U0;

    .line 123
    .line 124
    invoke-direct {v1, v0, v6}, Lc4/U0;-><init>(Lc4/V0;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v0, p1}, Lc4/V0;->x(Lcom/google/android/gms/internal/measurement/W;)Lc4/S0;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/W;->H:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, p1, v1, v6}, Lc4/V0;->q(Ljava/lang/String;Lc4/S0;Z)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lc4/l0;

    .line 143
    .line 144
    iget-object p1, p1, Lc4/l0;->W:Lc4/x;

    .line 145
    .line 146
    invoke-static {p1}, Lc4/l0;->h(Lc4/z;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p1, Lc1/d;->G:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Lc4/l0;

    .line 152
    .line 153
    iget-object v1, v0, Lc4/l0;->T:LP3/b;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 163
    .line 164
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 165
    .line 166
    .line 167
    new-instance v3, Lc4/v;

    .line 168
    .line 169
    invoke-direct {v3, p1, v1, v2, v6}, Lc4/v;-><init>(Lc4/z;JI)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    return-void

    .line 176
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/K0;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lc4/l0;

    .line 8
    .line 9
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 10
    .line 11
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lc4/l0;

    .line 17
    .line 18
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 19
    .line 20
    invoke-virtual {v1}, Lc4/h;->C()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lc4/V0;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    iget p1, p1, Lcom/google/android/gms/internal/measurement/W;->G:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lc4/S0;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    new-instance v0, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "id"

    .line 51
    .line 52
    iget-wide v2, p1, Lc4/S0;->c:J

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    const-string v1, "name"

    .line 58
    .line 59
    iget-object v2, p1, Lc4/S0;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "referrer_name"

    .line 65
    .line 66
    iget-object p1, p1, Lc4/S0;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "com.google.app_measurement.screen_service"

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l0;->a(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/g0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/g0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->b(Lcom/google/android/gms/internal/measurement/W;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/k0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->c(Lcom/google/android/gms/internal/measurement/W;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/k0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/l0;->d(Lcom/google/android/gms/internal/measurement/W;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/k0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/W;->i(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/W;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l0;->e(Lcom/google/android/gms/internal/measurement/W;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/H;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/H;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/google/android/gms/internal/measurement/g0;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/g0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/H;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v1, 0x32

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/H;->j0(J)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/k0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/l0;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/k0;-><init>(Lcom/google/android/gms/internal/measurement/l0;Landroid/app/Activity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/l0;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/internal/measurement/m0;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/m0;->b(Lcom/google/android/gms/internal/measurement/i0;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
