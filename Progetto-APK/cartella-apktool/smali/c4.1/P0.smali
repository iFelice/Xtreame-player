.class public final Lc4/P0;
.super Lc4/B;
.source "SourceFile"


# instance fields
.field public I:Landroid/app/job/JobScheduler;


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/l0;

    .line 4
    .line 5
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "jobscheduler"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 14
    .line 15
    iput-object v0, p0, Lc4/P0;->I:Landroid/app/job/JobScheduler;

    .line 16
    .line 17
    return-void
.end method

.method public final r()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    iget-object v1, v0, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v3, Lc4/E;->S0:Lc4/D;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x9

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    iget-object v1, p0, Lc4/P0;->I:Landroid/app/job/JobScheduler;

    .line 26
    .line 27
    if-eqz v1, :cond_7

    .line 28
    .line 29
    const-string v1, "google_analytics_sgtm_upload_enabled"

    .line 30
    .line 31
    iget-object v2, v0, Lc4/l0;->M:Lc4/h;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lc4/l0;

    .line 49
    .line 50
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-wide v2, v2, Lc4/L;->P:J

    .line 55
    .line 56
    const-wide/32 v4, 0x1d0d8

    .line 57
    .line 58
    .line 59
    cmp-long v6, v2, v4

    .line 60
    .line 61
    if-ltz v6, :cond_5

    .line 62
    .line 63
    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 64
    .line 65
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lc4/I1;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    return v0

    .line 75
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v2, 0x18

    .line 78
    .line 79
    if-lt v0, v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lc4/d1;->A()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    const/4 v0, 0x5

    .line 92
    return v0

    .line 93
    :cond_3
    const/4 v0, 0x2

    .line 94
    return v0

    .line 95
    :cond_4
    const/4 v0, 0x4

    .line 96
    return v0

    .line 97
    :cond_5
    const/4 v0, 0x6

    .line 98
    return v0

    .line 99
    :cond_6
    :goto_0
    const/16 v0, 0x8

    .line 100
    .line 101
    return v0

    .line 102
    :cond_7
    const/4 v0, 0x7

    .line 103
    return v0
.end method

.method public final s(J)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc4/B;->n()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lc4/P0;->I:Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    const-string v1, "measurement-client"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lc4/l0;

    .line 16
    .line 17
    iget-object v2, v2, Lc4/l0;->G:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v0, v2}, Lc4/J0;->a(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lc4/l0;

    .line 45
    .line 46
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 47
    .line 48
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 49
    .line 50
    .line 51
    const-string p2, "[sgtm] There\'s an existing pending job, skip this schedule."

    .line 52
    .line 53
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc4/P0;->r()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x2

    .line 64
    if-ne v0, v2, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lc4/l0;

    .line 69
    .line 70
    iget-object v2, v0, Lc4/l0;->O:Lc4/T;

    .line 71
    .line 72
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string v4, "[sgtm] Scheduling Scion upload, millis"

    .line 80
    .line 81
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 82
    .line 83
    invoke-virtual {v2, v3, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Landroid/os/PersistableBundle;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "action"

    .line 92
    .line 93
    const-string v4, "com.google.android.gms.measurement.SCION_UPLOAD"

    .line 94
    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    .line 99
    .line 100
    iget-object v4, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Lc4/l0;

    .line 103
    .line 104
    iget-object v4, v4, Lc4/l0;->G:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    new-instance v4, Landroid/content/ComponentName;

    .line 123
    .line 124
    const-string v5, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 125
    .line 126
    iget-object v6, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 127
    .line 128
    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v3, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x1

    .line 135
    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    add-long/2addr p1, p1

    .line 144
    invoke-virtual {v3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p2, p0, Lc4/P0;->I:Landroid/app/job/JobScheduler;

    .line 157
    .line 158
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iget-object p2, v0, Lc4/l0;->O:Lc4/T;

    .line 166
    .line 167
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 168
    .line 169
    .line 170
    if-ne p1, v1, :cond_2

    .line 171
    .line 172
    const-string p1, "SUCCESS"

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    const-string p1, "FAILURE"

    .line 176
    .line 177
    :goto_1
    const-string v0, "[sgtm] Scion upload job scheduled with result"

    .line 178
    .line 179
    iget-object p2, p2, Lc4/T;->T:Lc4/Q;

    .line 180
    .line 181
    invoke-virtual {p2, p1, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_3
    iget-object p1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p1, Lc4/l0;

    .line 188
    .line 189
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 190
    .line 191
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uc;->B(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    const-string v0, "[sgtm] Not eligible for Scion upload"

    .line 199
    .line 200
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 201
    .line 202
    invoke-virtual {p1, p2, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
