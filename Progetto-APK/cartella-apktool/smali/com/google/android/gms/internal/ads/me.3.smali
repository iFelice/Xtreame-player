.class public final Lcom/google/android/gms/internal/ads/me;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field public e:J

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/String;

.field public final h:Lo3/K;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo3/L;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/me;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/me;->b:J

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/me;->i:I

    .line 28
    .line 29
    iput v0, p0, Lcom/google/android/gms/internal/ads/me;->j:I

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/ads/me;->k:I

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/me;->g:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->k:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 10
    .line 11
    check-cast v2, Lo3/L;

    .line 12
    .line 13
    invoke-virtual {v2}, Lo3/L;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v2, "session_id"

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/me;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    :goto_0
    const-string v2, "basets"

    .line 31
    .line 32
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/me;->b:J

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    const-string v2, "currts"

    .line 38
    .line 39
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/me;->a:J

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    const-string v2, "seq_num"

    .line 45
    .line 46
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "preqs"

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 52
    .line 53
    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string p2, "preqs_in_session"

    .line 57
    .line 58
    iget v2, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 59
    .line 60
    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string p2, "time_in_session"

    .line 64
    .line 65
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    .line 66
    .line 67
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    const-string p2, "pclick"

    .line 71
    .line 72
    iget v2, p0, Lcom/google/android/gms/internal/ads/me;->i:I

    .line 73
    .line 74
    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string p2, "pimp"

    .line 78
    .line 79
    iget v2, p0, Lcom/google/android/gms/internal/ads/me;->j:I

    .line 80
    .line 81
    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string p2, "support_transparent_background"

    .line 85
    .line 86
    sget v2, Lcom/google/android/gms/internal/ads/cd;->a:I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-object p1, v2

    .line 96
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "Theme.Translucent"

    .line 101
    .line 102
    const-string v4, "style"

    .line 103
    .line 104
    const-string v5, "android"

    .line 105
    .line 106
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x0

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 114
    .line 115
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    const-string v6, "com.google.android.gms.ads.AdActivity"

    .line 126
    .line 127
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget p1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 139
    .line 140
    if-ne v2, p1, :cond_3

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 145
    .line 146
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catch_0
    :try_start_2
    const-string p1, "Fail to fetch AdActivity theme"

    .line 151
    .line 152
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 156
    .line 157
    invoke-static {p1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {v1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    const-string p1, "consent_form_action_identifier"

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/me;->a()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    monitor-exit v0

    .line 173
    return-object v1

    .line 174
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->i:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->i:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->j:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->j:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final e(Ll3/b1;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 5
    .line 6
    check-cast v1, Lo3/L;

    .line 7
    .line 8
    invoke-virtual {v1}, Lo3/L;->v()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 13
    .line 14
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/me;->b:J

    .line 24
    .line 25
    const-wide/16 v7, -0x1

    .line 26
    .line 27
    cmp-long v9, v5, v7

    .line 28
    .line 29
    if-nez v9, :cond_1

    .line 30
    .line 31
    sub-long v1, v3, v1

    .line 32
    .line 33
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->M0:Lcom/google/android/gms/internal/ads/J7;

    .line 34
    .line 35
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 36
    .line 37
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 38
    .line 39
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    cmp-long v7, v1, v5

    .line 50
    .line 51
    if-lez v7, :cond_0

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 60
    .line 61
    check-cast v1, Lo3/L;

    .line 62
    .line 63
    invoke-virtual {v1}, Lo3/L;->u()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 68
    .line 69
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/me;->b:J

    .line 70
    .line 71
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/me;->a:J

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/me;->a:J

    .line 75
    .line 76
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->p3:Lcom/google/android/gms/internal/ads/J7;

    .line 77
    .line 78
    sget-object p3, Ll3/q;->d:Ll3/q;

    .line 79
    .line 80
    iget-object p3, p3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 81
    .line 82
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const/4 p3, 0x1

    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    iget-object p1, p1, Ll3/b1;->I:Landroid/os/Bundle;

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const-string p2, "gw"

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ne p1, p3, :cond_2

    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 111
    .line 112
    add-int/2addr p1, p3

    .line 113
    iput p1, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 114
    .line 115
    iget p1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 116
    .line 117
    add-int/2addr p1, p3

    .line 118
    iput p1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 119
    .line 120
    if-nez p1, :cond_3

    .line 121
    .line 122
    const-wide/16 p1, 0x0

    .line 123
    .line 124
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    .line 125
    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 127
    .line 128
    check-cast p1, Lo3/L;

    .line 129
    .line 130
    invoke-virtual {p1, v3, v4}, Lo3/L;->d(J)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/me;->h:Lo3/K;

    .line 135
    .line 136
    check-cast p1, Lo3/L;

    .line 137
    .line 138
    invoke-virtual {p1}, Lo3/L;->w()J

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    sub-long/2addr v3, p1

    .line 143
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/me;->e:J

    .line 144
    .line 145
    :goto_2
    monitor-exit v0

    .line 146
    return-void

    .line 147
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->k:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->k:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/y8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->f:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->c:I

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/me;->d:I

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1

    .line 35
    :cond_0
    return-void
.end method
