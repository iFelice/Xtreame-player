.class public final LK3/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LK3/V;->G:I

    iput-object p2, p0, LK3/V;->I:Ljava/lang/Object;

    iput-object p3, p0, LK3/V;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/A1;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 3
    iput v0, p0, LK3/V;->G:I

    .line 4
    iput-object p1, p0, LK3/V;->H:Ljava/lang/Object;

    iput-object p2, p0, LK3/V;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LK3/V;->G:I

    iput-object p1, p0, LK3/V;->H:Ljava/lang/Object;

    iput-object p2, p0, LK3/V;->I:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LK3/V;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LK3/W;

    .line 4
    .line 5
    iget-boolean v0, v0, LK3/W;->G:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, LK3/V;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LK3/U;

    .line 13
    .line 14
    iget-object v0, v0, LK3/U;->b:LJ3/b;

    .line 15
    .line 16
    iget v1, v0, LJ3/b;->H:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, LJ3/b;->I:Landroid/app/PendingIntent;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, LK3/V;->I:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, LK3/W;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, LK3/W;->a()Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v0, v0, LJ3/b;->I:Landroid/app/PendingIntent;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, LK3/V;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, LK3/U;

    .line 49
    .line 50
    iget v3, v3, LK3/U;->a:I

    .line 51
    .line 52
    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->H:I

    .line 53
    .line 54
    new-instance v4, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v5, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 57
    .line 58
    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "pending_intent"

    .line 62
    .line 63
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string v0, "failing_client_id"

    .line 67
    .line 68
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string v0, "notify_manager"

    .line 72
    .line 73
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :cond_2
    iget-object v1, p0, LK3/V;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, LK3/W;

    .line 81
    .line 82
    invoke-virtual {v1}, LK3/W;->a()Landroid/app/Activity;

    .line 83
    .line 84
    .line 85
    iget v0, v0, LJ3/b;->H:I

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    throw v0
.end method

.method private final b()V
    .locals 11

    .line 1
    const-string v0, "app_set_id_storage"

    .line 2
    .line 3
    iget-object v1, p0, LK3/V;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, LW3/f;

    .line 6
    .line 7
    iget-object v2, p0, LK3/V;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lg4/i;

    .line 10
    .line 11
    iget-object v3, v1, LW3/f;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, LW3/f;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x0

    .line 18
    const-string v6, "app_set_id"

    .line 19
    .line 20
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v1, v1, LW3/f;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1}, LW3/f;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v5, "app_set_id_last_used_time"

    .line 31
    .line 32
    const-wide/16 v7, -0x1

    .line 33
    .line 34
    invoke-interface {v1, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    cmp-long v1, v9, v7

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-wide v7, 0x7d8702800L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    add-long/2addr v7, v9

    .line 48
    :cond_0
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    cmp-long v1, v9, v7

    .line 55
    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    invoke-static {v3}, LW3/f;->c(Landroid/content/Context;)V
    :try_end_0
    .catch LW3/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v2, v0}, Lg4/i;->a(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v1, 0x0

    .line 79
    :try_start_1
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    .line 93
    .line 94
    move-result v5
    :try_end_1
    .catch LW3/e; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    const-string v6, "AppSet"

    .line 96
    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    :try_start_2
    const-string v0, "Failed to store app set ID generated for App "

    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    goto :goto_4

    .line 122
    :cond_3
    new-instance v1, Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v1

    .line 128
    :goto_1
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    new-instance v0, LW3/e;

    .line 132
    .line 133
    const-string v1, "Failed to store the app set ID."

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_4
    invoke-static {v3}, LW3/f;->c(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v7

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "app_set_id_creation_time"

    .line 155
    .line 156
    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    const-string v0, "Failed to store app set ID creation time for App "

    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    goto :goto_2

    .line 187
    :cond_5
    new-instance v1, Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move-object v0, v1

    .line 193
    :goto_2
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance v0, LW3/e;

    .line 197
    .line 198
    const-string v1, "Failed to store the app set ID creation time."

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v0
    :try_end_2
    .catch LW3/e; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :cond_6
    :goto_3
    new-instance v0, LA3/b;

    .line 205
    .line 206
    const/4 v1, 0x1

    .line 207
    invoke-direct {v0, v4, v1}, LA3/b;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v0}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :goto_4
    invoke-virtual {v2, v0}, Lg4/i;->a(Ljava/lang/Exception;)V

    .line 215
    .line 216
    .line 217
    :goto_5
    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LK3/V;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg4/o;

    .line 4
    .line 5
    iget-object v0, v0, Lg4/o;->I:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, LK3/V;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lg4/o;

    .line 11
    .line 12
    iget-object v1, v1, Lg4/o;->J:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lg4/d;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Lg4/d;

    .line 20
    .line 21
    iget-object v2, p0, LK3/V;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lg4/h;

    .line 24
    .line 25
    invoke-interface {v1, v2}, Lg4/d;->onComplete(Lg4/h;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method private final d()V
    .locals 3

    .line 1
    iget-object v0, p0, LK3/V;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lg4/o;

    .line 4
    .line 5
    iget-object v0, v0, Lg4/o;->I:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, LK3/V;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lg4/o;

    .line 11
    .line 12
    iget-object v1, v1, Lg4/o;->J:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lg4/e;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Lg4/e;

    .line 20
    .line 21
    iget-object v2, p0, LK3/V;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lg4/h;

    .line 24
    .line 25
    invoke-virtual {v2}, Lg4/h;->e()Ljava/lang/Exception;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2}, Lg4/e;->onFailure(Ljava/lang/Exception;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    iget v0, v1, LK3/V;->G:I

    const/16 v2, 0x1e

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lg6/b;

    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Lg6/a;

    check-cast v0, Lm2/f;

    invoke-virtual {v0, v2}, Lm2/f;->c(Lg6/a;)V

    return-void

    .line 3
    :pswitch_0
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, LZ5/u;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x2

    mul-long v4, v4, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0

    .line 6
    :pswitch_1
    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Future;

    instance-of v4, v3, LE4/a;

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, LE4/a;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {v0}, Ly4/k;->E(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    check-cast v2, Lm2/c;

    .line 11
    iget-object v0, v2, Lm2/c;->I:Ljava/lang/Object;

    check-cast v0, Lc4/K0;

    invoke-virtual {v0}, Lc4/z;->m()V

    .line 12
    invoke-virtual {v2}, Lm2/c;->D()V

    .line 13
    iput-boolean v6, v0, Lc4/K0;->O:Z

    .line 14
    iput v7, v0, Lc4/K0;->P:I

    .line 15
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v3, Lc4/l0;

    .line 16
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    iget-object v2, v2, Lm2/c;->H:Ljava/lang/Object;

    check-cast v2, Lc4/o1;

    iget-object v2, v2, Lc4/o1;->G:Ljava/lang/String;

    iget-object v3, v3, Lc4/T;->S:Lc4/Q;

    const-string v4, "Successfully registered trigger URI"

    invoke-virtual {v3, v2, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lc4/K0;->B()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 19
    :goto_0
    check-cast v2, Lm2/c;

    invoke-virtual {v2, v0}, Lm2/c;->v(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 20
    :goto_1
    check-cast v2, Lm2/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lm2/c;->v(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 21
    :pswitch_2
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg4/i;

    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    .line 22
    :try_start_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->Y0(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/y;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg4/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    move-result-object v3

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/a;->l()Lcom/google/android/gms/internal/atv_ads_framework/W0;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/atv_ads_framework/T;->d()V

    iget-object v5, v4, Lcom/google/android/gms/internal/atv_ads_framework/T;->H:Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 26
    check-cast v5, Lcom/google/android/gms/internal/atv_ads_framework/a;

    invoke-static {v5}, Lcom/google/android/gms/internal/atv_ads_framework/a;->m(Lcom/google/android/gms/internal/atv_ads_framework/a;)V

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/atv_ads_framework/a;

    .line 28
    iget-object v5, v3, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 29
    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->A0(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/b;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/T;->d()V

    iget-object v6, v5, Lcom/google/android/gms/internal/atv_ads_framework/T;->H:Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 31
    check-cast v6, Lcom/google/android/gms/internal/atv_ads_framework/c;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/atv_ads_framework/c;->n(Lcom/google/android/gms/internal/atv_ads_framework/c;Lcom/google/android/gms/internal/atv_ads_framework/a;)V

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/atv_ads_framework/c;

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H(Lcom/google/android/gms/internal/atv_ads_framework/c;)V

    .line 34
    invoke-virtual {v2, v0}, Lg4/i;->a(Ljava/lang/Exception;)V

    :goto_3
    return-void

    .line 35
    :pswitch_3
    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    :try_start_2
    move-object v0, v2

    check-cast v0, Lg4/r;

    iget-object v3, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg4/r;->k(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    .line 36
    :goto_4
    check-cast v2, Lg4/r;

    new-instance v3, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lg4/r;->j(Ljava/lang/Exception;)V

    goto :goto_6

    .line 38
    :goto_5
    check-cast v2, Lg4/r;

    .line 39
    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    :goto_6
    return-void

    .line 40
    :pswitch_4
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lg4/o;

    .line 41
    iget-object v2, v0, Lg4/o;->I:Ljava/lang/Object;

    .line 42
    monitor-enter v2

    :try_start_3
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lg4/o;

    .line 43
    iget-object v0, v0, Lg4/o;->J:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg4/f;

    if-eqz v3, :cond_1

    check-cast v0, Lg4/f;

    .line 44
    iget-object v3, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v3, Lg4/h;

    invoke-virtual {v3}, Lg4/h;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lg4/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 45
    :cond_1
    :goto_7
    monitor-exit v2

    return-void

    :goto_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 46
    :pswitch_5
    invoke-direct/range {p0 .. p0}, LK3/V;->d()V

    return-void

    :pswitch_6
    invoke-direct/range {p0 .. p0}, LK3/V;->c()V

    return-void

    .line 47
    :pswitch_7
    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    :try_start_4
    move-object v0, v2

    check-cast v0, Lg4/m;

    .line 48
    iget-object v0, v0, Lg4/m;->I:Lg4/b;

    .line 49
    iget-object v3, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v3, Lg4/h;

    invoke-interface {v0, v3}, Lg4/b;->then(Lg4/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg4/h;
    :try_end_4
    .catch Lg4/g; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v0, :cond_2

    check-cast v2, Lg4/m;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Continuation returned null"

    .line 50
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lg4/m;->onFailure(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_2
    check-cast v2, Lg4/m;

    .line 51
    sget-object v3, Lg4/j;->b:Lf/v;

    invoke-virtual {v0, v3, v2}, Lg4/h;->c(Ljava/util/concurrent/Executor;Lg4/f;)Lg4/r;

    .line 52
    invoke-virtual {v0, v3, v2}, Lg4/h;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;

    .line 53
    check-cast v0, Lg4/r;

    .line 54
    new-instance v4, Lg4/o;

    invoke-direct {v4, v3, v2}, Lg4/o;-><init>(Lf/v;Lg4/c;)V

    iget-object v2, v0, Lg4/r;->b:LJ2/t;

    invoke-virtual {v2, v4}, LJ2/t;->i(Lg4/p;)V

    .line 55
    invoke-virtual {v0}, Lg4/r;->o()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    .line 56
    :goto_9
    check-cast v2, Lg4/m;

    .line 57
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 58
    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    goto :goto_b

    .line 59
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Exception;

    if-eqz v3, :cond_3

    check-cast v2, Lg4/m;

    .line 60
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    goto :goto_b

    .line 62
    :cond_3
    check-cast v2, Lg4/m;

    .line 63
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 64
    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    :goto_b
    return-void

    .line 65
    :pswitch_8
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lg4/h;

    check-cast v0, Lg4/r;

    .line 66
    iget-boolean v0, v0, Lg4/r;->d:Z

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lg4/m;

    .line 68
    iget-object v0, v0, Lg4/m;->J:Lg4/r;

    .line 69
    invoke-virtual {v0}, Lg4/r;->l()V

    goto :goto_e

    :cond_4
    :try_start_5
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lg4/m;

    .line 70
    iget-object v0, v0, Lg4/m;->I:Lg4/b;

    .line 71
    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Lg4/h;

    .line 72
    invoke-interface {v0, v2}, Lg4/b;->then(Lg4/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Lg4/g; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Lg4/m;

    .line 73
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 74
    invoke-virtual {v2, v0}, Lg4/r;->k(Ljava/lang/Object;)V

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    .line 75
    :goto_c
    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Lg4/m;

    .line 76
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 77
    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    goto :goto_e

    .line 78
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_5

    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Lg4/m;

    .line 79
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    goto :goto_e

    .line 81
    :cond_5
    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Lg4/m;

    .line 82
    iget-object v2, v2, Lg4/m;->J:Lg4/r;

    .line 83
    invoke-virtual {v2, v0}, Lg4/r;->j(Ljava/lang/Exception;)V

    :goto_e
    return-void

    .line 84
    :pswitch_9
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/A1;

    .line 85
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    move-result-object v2

    invoke-virtual {v2}, Lc4/j0;->m()V

    new-instance v2, Lc4/b0;

    invoke-direct {v2, v0}, Lc4/b0;-><init>(Lc4/A1;)V

    iput-object v2, v0, Lc4/A1;->Q:Lc4/b0;

    .line 86
    new-instance v2, Lc4/o;

    invoke-direct {v2, v0}, Lc4/o;-><init>(Lc4/A1;)V

    .line 87
    invoke-virtual {v2}, Lc4/u1;->o()V

    iput-object v2, v0, Lc4/A1;->I:Lc4/o;

    .line 88
    invoke-virtual {v0}, Lc4/A1;->c0()Lc4/h;

    move-result-object v2

    iget-object v6, v0, Lc4/A1;->G:Lc4/f0;

    invoke-static {v6}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 89
    iput-object v6, v2, Lc4/h;->J:Lc4/g;

    .line 90
    new-instance v2, Lc4/f1;

    .line 91
    invoke-direct {v2, v0}, Lc4/f1;-><init>(Lc4/A1;)V

    .line 92
    invoke-virtual {v2}, Lc4/u1;->o()V

    iput-object v2, v0, Lc4/A1;->O:Lc4/f1;

    new-instance v2, Lc4/d;

    .line 93
    invoke-direct {v2, v0}, Lc4/u1;-><init>(Lc4/A1;)V

    .line 94
    invoke-virtual {v2}, Lc4/u1;->o()V

    iput-object v2, v0, Lc4/A1;->L:Lc4/d;

    new-instance v2, Lc4/O0;

    .line 95
    invoke-direct {v2, v0}, Lc4/u1;-><init>(Lc4/A1;)V

    .line 96
    invoke-virtual {v2}, Lc4/u1;->o()V

    iput-object v2, v0, Lc4/A1;->N:Lc4/O0;

    new-instance v2, Lc4/p1;

    .line 97
    invoke-direct {v2, v0}, Lc4/p1;-><init>(Lc4/A1;)V

    .line 98
    invoke-virtual {v2}, Lc4/u1;->o()V

    iput-object v2, v0, Lc4/A1;->K:Lc4/p1;

    .line 99
    new-instance v2, Lc4/X;

    invoke-direct {v2, v0}, Lc4/X;-><init>(Lc4/A1;)V

    iput-object v2, v0, Lc4/A1;->J:Lc4/X;

    iget v2, v0, Lc4/A1;->X:I

    iget v6, v0, Lc4/A1;->Y:I

    if-eq v2, v6, :cond_6

    .line 100
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    move-result-object v2

    .line 101
    iget v6, v0, Lc4/A1;->X:I

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v8, v0, Lc4/A1;->Y:I

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Not all upload components initialized"

    .line 104
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v6, v8, v9}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v2, v0, Lc4/A1;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    invoke-virtual {v0}, Lc4/A1;->b()Lc4/T;

    move-result-object v2

    const-string v6, "UploadController is now fully initialized"

    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    invoke-virtual {v2, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    move-result-object v2

    invoke-virtual {v2}, Lc4/j0;->m()V

    .line 108
    iget-object v2, v0, Lc4/A1;->I:Lc4/o;

    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 109
    invoke-virtual {v2}, Lc4/o;->F()V

    .line 110
    iget-object v2, v0, Lc4/A1;->I:Lc4/o;

    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 111
    invoke-virtual {v2}, Lc1/d;->m()V

    .line 112
    invoke-virtual {v2}, Lc4/u1;->n()V

    .line 113
    invoke-virtual {v2}, Lc4/o;->Y()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lc4/E;->v0:Lc4/D;

    .line 114
    invoke-virtual {v6, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_7

    goto :goto_f

    .line 116
    :cond_7
    invoke-virtual {v2}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 117
    iget-object v8, v2, Lc4/l0;->T:LP3/b;

    .line 118
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 120
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-virtual {v6, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 122
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "trigger_uris"

    const-string v8, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 123
    invoke-virtual {v7, v6, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 124
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    const-string v6, "Deleted stale trigger uris. rowsDeleted"

    invoke-virtual {v2, v5, v6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_8
    :goto_f
    iget-object v2, v0, Lc4/A1;->O:Lc4/f1;

    .line 127
    iget-object v2, v2, Lc4/f1;->N:LE1/I;

    invoke-virtual {v2}, LE1/I;->a()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_9

    iget-object v2, v0, Lc4/A1;->O:Lc4/f1;

    .line 128
    iget-object v2, v2, Lc4/f1;->N:LE1/I;

    invoke-virtual {v0}, Lc4/A1;->c()LP3/a;

    move-result-object v3

    check-cast v3, LP3/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 130
    invoke-virtual {v2, v3, v4}, LE1/I;->b(J)V

    .line 131
    :cond_9
    invoke-virtual {v0}, Lc4/A1;->C()V

    return-void

    .line 132
    :pswitch_a
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lc4/A1;

    invoke-virtual {v0}, Lc4/A1;->i()V

    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 133
    invoke-virtual {v0}, Lc4/A1;->d()Lc4/j0;

    move-result-object v3

    invoke-virtual {v3}, Lc4/j0;->m()V

    iget-object v3, v0, Lc4/A1;->V:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    .line 134
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lc4/A1;->V:Ljava/util/ArrayList;

    :cond_a
    iget-object v3, v0, Lc4/A1;->V:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Lc4/A1;->T()V

    return-void

    .line 137
    :pswitch_b
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/U1;

    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Landroid/app/job/JobParameters;

    .line 138
    const-string v3, "FA"

    const-string v4, "[sgtm] AppMeasurementJobService processed last Scion upload request."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/U1;->G:Landroid/content/Context;

    .line 139
    check-cast v0, Lc4/g1;

    invoke-interface {v0, v2}, Lc4/g1;->b(Landroid/app/job/JobParameters;)V

    return-void

    .line 140
    :pswitch_c
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/c1;

    iget-object v0, v0, Lc4/c1;->c:Lc4/d1;

    .line 141
    iput-object v5, v0, Lc4/d1;->J:Lc4/G;

    .line 142
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 143
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 144
    sget-object v3, Lc4/E;->p1:Lc4/D;

    .line 145
    invoke-virtual {v2, v5, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, LJ3/b;

    .line 146
    iget v2, v2, LJ3/b;->H:I

    const/16 v3, 0x1e61

    if-ne v2, v3, :cond_c

    .line 147
    iget-object v2, v0, Lc4/d1;->M:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_b

    .line 148
    invoke-static {v7}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 149
    iput-object v2, v0, Lc4/d1;->M:Ljava/util/concurrent/ScheduledExecutorService;

    .line 150
    :cond_b
    iget-object v0, v0, Lc4/d1;->M:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    new-instance v2, Lcom/google/android/gms/internal/cast/X;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    sget-object v3, Lc4/E;->Z:Lc4/D;

    .line 152
    invoke-virtual {v3, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-interface {v0, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_10

    .line 155
    :cond_c
    invoke-virtual {v0}, Lc4/d1;->C()V

    :goto_10
    return-void

    .line 156
    :pswitch_d
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/c1;

    iget-object v0, v0, Lc4/c1;->c:Lc4/d1;

    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v0, v2}, Lc4/d1;->G(Lc4/d1;Landroid/content/ComponentName;)V

    return-void

    .line 157
    :pswitch_e
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lc4/d1;

    .line 158
    iget-object v3, v2, Lc4/d1;->J:Lc4/G;

    if-nez v3, :cond_d

    .line 159
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 160
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 161
    const-string v2, "Failed to send current screen to service"

    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    goto :goto_13

    :cond_d
    :try_start_6
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lc4/S0;

    if-nez v0, :cond_e

    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 162
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lc4/G;->v3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_12

    .line 164
    :cond_e
    iget-wide v4, v0, Lc4/S0;->c:J

    iget-object v6, v0, Lc4/S0;->a:Ljava/lang/String;

    iget-object v7, v0, Lc4/S0;->b:Ljava/lang/String;

    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 165
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-interface/range {v3 .. v8}, Lc4/G;->v3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_11
    invoke-virtual {v2}, Lc4/d1;->D()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_13

    .line 169
    :goto_12
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 170
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 171
    const-string v3, "Failed to send current screen to the service"

    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_13
    return-void

    .line 172
    :pswitch_f
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->G:Lc4/l0;

    .line 173
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 174
    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Lm2/l;

    .line 175
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 176
    invoke-virtual {v0}, Lc4/B;->n()V

    if-eqz v2, :cond_10

    iget-object v3, v0, Lc4/K0;->J:Lm2/l;

    if-eq v2, v3, :cond_10

    if-nez v3, :cond_f

    const/4 v6, 0x1

    :cond_f
    const-string v3, "EventInterceptor already set."

    .line 177
    invoke-static {v3, v6}, Lcom/bumptech/glide/c;->j(Ljava/lang/String;Z)V

    :cond_10
    iput-object v2, v0, Lc4/K0;->J:Lm2/l;

    return-void

    .line 178
    :pswitch_10
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/K0;

    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 179
    iget-object v3, v2, Lc4/l0;->N:Lc4/Z;

    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 180
    invoke-virtual {v3}, Lc1/d;->m()V

    .line 181
    invoke-virtual {v3}, Lc1/d;->m()V

    .line 182
    invoke-virtual {v3}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v8, "dma_consent_settings"

    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v4}, Lc4/q;->b(Ljava/lang/String;)Lc4/q;

    move-result-object v4

    .line 184
    iget-object v5, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v5, Lc4/q;

    .line 185
    iget v8, v5, Lc4/q;->a:I

    .line 186
    iget v4, v4, Lc4/q;->a:I

    .line 187
    invoke-static {v8, v4}, Lc4/x0;->l(II)Z

    move-result v4

    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    if-eqz v4, :cond_12

    .line 188
    invoke-virtual {v3}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dma_consent_settings"

    .line 189
    iget-object v8, v5, Lc4/q;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 192
    const-string v3, "Setting DMA consent(FE)"

    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    invoke-virtual {v2, v5, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 193
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lc4/d1;->z()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 195
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 197
    invoke-virtual {v0}, Lc4/B;->n()V

    new-instance v2, Lc4/W0;

    invoke-direct {v2, v0, v7}, Lc4/W0;-><init>(Lc4/d1;I)V

    .line 198
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 199
    :cond_11
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 201
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 202
    invoke-virtual {v0}, Lc4/d1;->y()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 203
    invoke-virtual {v0, v6}, Lc4/d1;->B(Z)Lc4/J1;

    move-result-object v2

    new-instance v3, Lc4/Z0;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v2, v4}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;I)V

    .line 204
    invoke-virtual {v0, v3}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 205
    :cond_12
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 206
    iget v0, v5, Lc4/q;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Lower precedence consent source ignored, proposed source"

    .line 207
    iget-object v2, v2, Lc4/T;->R:Lc4/Q;

    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    :goto_14
    return-void

    .line 208
    :pswitch_11
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/K0;

    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v0, v2, v7}, Lc4/K0;->K(Ljava/lang/Boolean;Z)V

    return-void

    .line 210
    :pswitch_12
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lc4/K0;

    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 211
    iget-object v0, v0, Lc4/l0;->Q:Lc4/k1;

    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 212
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    .line 213
    iget-object v6, v0, Lc4/l0;->N:Lc4/Z;

    invoke-static {v6}, Lc4/l0;->i(Lc4/s0;)V

    .line 214
    invoke-virtual {v6}, Lc4/Z;->u()Lc4/x0;

    move-result-object v6

    .line 215
    sget-object v7, Lc4/w0;->I:Lc4/w0;

    invoke-virtual {v6, v7}, Lc4/x0;->k(Lc4/w0;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 216
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 217
    const-string v3, "Analytics storage consent denied; will not get session id"

    .line 218
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    :cond_14
    :goto_15
    move-object v0, v5

    goto :goto_16

    .line 219
    :cond_15
    iget-object v6, v0, Lc4/l0;->N:Lc4/Z;

    invoke-static {v6}, Lc4/l0;->i(Lc4/s0;)V

    .line 220
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 223
    invoke-virtual {v6, v7, v8}, Lc4/Z;->x(J)Z

    move-result v0

    if-nez v0, :cond_14

    .line 224
    iget-object v0, v6, Lc4/Z;->X:LE1/I;

    invoke-virtual {v0}, LE1/I;->a()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_16

    goto :goto_15

    .line 225
    :cond_16
    iget-object v0, v6, Lc4/Z;->X:LE1/I;

    invoke-virtual {v0}, LE1/I;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 226
    :goto_16
    iget-object v3, v1, LK3/V;->H:Ljava/lang/Object;

    if-eqz v0, :cond_17

    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    check-cast v3, Lcom/google/android/gms/internal/measurement/M;

    .line 227
    iget-object v2, v2, Lc4/l0;->R:Lc4/I1;

    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lc4/I1;->N(Lcom/google/android/gms/internal/measurement/M;J)V

    goto :goto_17

    :cond_17
    :try_start_7
    check-cast v3, Lcom/google/android/gms/internal/measurement/M;

    .line 229
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/measurement/M;->V0(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_17

    :catch_8
    move-exception v0

    .line 230
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    .line 231
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 232
    const-string v3, "getSessionId failed with exception"

    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17
    return-void

    .line 233
    :pswitch_13
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lc4/K0;

    invoke-virtual {v0}, Lc4/z;->m()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_18

    goto :goto_19

    :cond_18
    iget-object v2, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v3, Lc4/l0;

    .line 234
    iget-object v3, v3, Lc4/l0;->N:Lc4/Z;

    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 235
    invoke-virtual {v3}, Lc4/Z;->t()Landroid/util/SparseArray;

    move-result-object v3

    .line 236
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc4/o1;

    .line 237
    iget v5, v4, Lc4/o1;->I:I

    invoke-static {v3, v5}, Lb7/Z;->t(Landroid/util/SparseArray;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 238
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v4, Lc4/o1;->H:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_19

    .line 239
    :cond_1a
    invoke-virtual {v0}, Lc4/K0;->M()Ljava/util/PriorityQueue;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 240
    :cond_1b
    invoke-virtual {v0}, Lc4/K0;->B()V

    :goto_19
    return-void

    .line 241
    :pswitch_14
    iget-object v0, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lc4/K0;

    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v2

    iget-object v3, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 242
    iget-object v4, v2, Lc4/L;->X:Ljava/lang/String;

    if-eqz v4, :cond_1c

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v6, 0x1

    :cond_1c
    iput-object v3, v2, Lc4/L;->X:Ljava/lang/String;

    if-eqz v6, :cond_1d

    .line 243
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lc4/L;->w()V

    :cond_1d
    return-void

    .line 245
    :pswitch_15
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/r0;

    .line 246
    iget-object v2, v0, Lc4/r0;->G:Lc4/A1;

    .line 247
    invoke-virtual {v2}, Lc4/A1;->i()V

    iget-object v2, v1, LK3/V;->H:Ljava/lang/Object;

    check-cast v2, Lc4/f;

    iget-object v3, v2, Lc4/f;->I:Lc4/F1;

    .line 248
    invoke-virtual {v3}, Lc4/F1;->i()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lc4/r0;->G:Lc4/A1;

    if-nez v3, :cond_1e

    .line 249
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    iget-object v3, v2, Lc4/f;->G:Ljava/lang/String;

    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lc4/A1;->w(Ljava/lang/String;)Lc4/J1;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 251
    invoke-virtual {v0, v2, v3}, Lc4/A1;->L(Lc4/f;Lc4/J1;)V

    goto :goto_1a

    .line 252
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    iget-object v3, v2, Lc4/f;->G:Ljava/lang/String;

    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lc4/A1;->w(Ljava/lang/String;)Lc4/J1;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 254
    invoke-virtual {v0, v2, v3}, Lc4/A1;->Q(Lc4/f;Lc4/J1;)V

    :cond_1f
    :goto_1a
    return-void

    .line 255
    :pswitch_16
    iget-object v0, v1, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    iget-object v8, v1, LK3/V;->H:Ljava/lang/Object;

    move-object v14, v8

    check-cast v14, Lc4/A0;

    .line 256
    iget-object v8, v0, Lc4/l0;->P:Lc4/j0;

    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 257
    invoke-virtual {v8}, Lc4/j0;->m()V

    .line 258
    iget-object v15, v0, Lc4/l0;->M:Lc4/h;

    .line 259
    iget-object v8, v15, Lc1/d;->G:Ljava/lang/Object;

    .line 260
    check-cast v8, Lc4/l0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    new-instance v8, Lc4/r;

    .line 262
    invoke-direct {v8, v0}, Lc4/s0;-><init>(Lc4/l0;)V

    .line 263
    invoke-virtual {v8}, Lc4/s0;->p()V

    iput-object v8, v0, Lc4/l0;->b0:Lc4/r;

    iget-object v8, v14, Lc4/A0;->g:Lcom/google/android/gms/internal/measurement/V;

    if-nez v8, :cond_20

    move-wide v12, v3

    goto :goto_1b

    .line 264
    :cond_20
    iget-wide v8, v8, Lcom/google/android/gms/internal/measurement/V;->G:J

    move-wide v12, v8

    .line 265
    :goto_1b
    new-instance v10, Lc4/L;

    iget-wide v8, v14, Lc4/A0;->f:J

    move-wide/from16 v16, v8

    move-object v8, v10

    move-object v9, v0

    move-object/from16 v18, v10

    move-wide/from16 v10, v16

    .line 266
    invoke-direct/range {v8 .. v13}, Lc4/L;-><init>(Lc4/l0;JJ)V

    .line 267
    invoke-virtual/range {v18 .. v18}, Lc4/B;->o()V

    move-object/from16 v8, v18

    iput-object v8, v0, Lc4/l0;->c0:Lc4/L;

    .line 268
    new-instance v9, Lc4/N;

    invoke-direct {v9, v0}, Lc4/N;-><init>(Lc4/l0;)V

    .line 269
    invoke-virtual {v9}, Lc4/B;->o()V

    iput-object v9, v0, Lc4/l0;->Z:Lc4/N;

    new-instance v9, Lc4/d1;

    .line 270
    invoke-direct {v9, v0}, Lc4/d1;-><init>(Lc4/l0;)V

    .line 271
    invoke-virtual {v9}, Lc4/B;->o()V

    iput-object v9, v0, Lc4/l0;->a0:Lc4/d1;

    .line 272
    iget-object v9, v0, Lc4/l0;->R:Lc4/I1;

    .line 273
    iget-boolean v10, v9, Lc4/s0;->H:Z

    if-nez v10, :cond_56

    .line 274
    invoke-virtual {v9}, Lc4/I1;->T()V

    iget-object v10, v9, Lc1/d;->G:Ljava/lang/Object;

    check-cast v10, Lc4/l0;

    .line 275
    iget-object v10, v10, Lc4/l0;->l0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 276
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 277
    iput-boolean v7, v9, Lc4/s0;->H:Z

    .line 278
    iget-object v10, v0, Lc4/l0;->N:Lc4/Z;

    .line 279
    iget-boolean v11, v10, Lc4/s0;->H:Z

    if-nez v11, :cond_55

    .line 280
    invoke-virtual {v10}, Lc4/Z;->r()V

    iget-object v11, v10, Lc1/d;->G:Ljava/lang/Object;

    check-cast v11, Lc4/l0;

    .line 281
    iget-object v11, v11, Lc4/l0;->l0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 283
    iput-boolean v7, v10, Lc4/s0;->H:Z

    .line 284
    iget-object v11, v0, Lc4/l0;->c0:Lc4/L;

    .line 285
    iget-boolean v12, v11, Lc4/B;->H:Z

    if-nez v12, :cond_54

    .line 286
    invoke-virtual {v11}, Lc4/L;->q()V

    iget-object v12, v11, Lc1/d;->G:Ljava/lang/Object;

    check-cast v12, Lc4/l0;

    .line 287
    iget-object v12, v12, Lc4/l0;->l0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 288
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 289
    iput-boolean v7, v11, Lc4/B;->H:Z

    .line 290
    new-instance v11, Lc4/P0;

    .line 291
    invoke-direct {v11, v0}, Lc4/B;-><init>(Lc4/l0;)V

    .line 292
    invoke-virtual {v11}, Lc4/B;->o()V

    iput-object v11, v0, Lc4/l0;->d0:Lc4/P0;

    .line 293
    iget-boolean v12, v11, Lc4/B;->H:Z

    if-nez v12, :cond_53

    .line 294
    invoke-virtual {v11}, Lc4/P0;->q()V

    iget-object v12, v11, Lc1/d;->G:Ljava/lang/Object;

    check-cast v12, Lc4/l0;

    .line 295
    iget-object v12, v12, Lc4/l0;->l0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 296
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 297
    iput-boolean v7, v11, Lc4/B;->H:Z

    .line 298
    iget-object v11, v0, Lc4/l0;->O:Lc4/T;

    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 299
    invoke-virtual {v15}, Lc4/h;->u()J

    const-wide/32 v12, 0x1d0da

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "App measurement initialized, version"

    iget-object v3, v11, Lc4/T;->R:Lc4/Q;

    invoke-virtual {v3, v12, v13}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 301
    const-string v4, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v8}, Lc4/L;->t()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v0, Lc4/l0;->H:Ljava/lang/String;

    .line 303
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 304
    iget-object v8, v15, Lc4/h;->I:Ljava/lang/String;

    .line 305
    invoke-virtual {v9, v4, v8}, Lc4/I1;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 306
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 307
    const-string v4, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 308
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 309
    :cond_21
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 310
    const-string v8, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v3, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 312
    :cond_22
    :goto_1c
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 313
    const-string v3, "Debug-level message logging enabled"

    iget-object v4, v11, Lc4/T;->S:Lc4/Q;

    invoke-virtual {v4, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    iget v3, v0, Lc4/l0;->j0:I

    iget-object v4, v0, Lc4/l0;->l0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 314
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v3, v8, :cond_23

    .line 315
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 316
    iget v3, v0, Lc4/l0;->j0:I

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "Not all components initialized"

    iget-object v12, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v12, v3, v4, v8}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    iput-boolean v7, v0, Lc4/l0;->e0:Z

    .line 318
    iget-object v3, v0, Lc4/l0;->P:Lc4/j0;

    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 319
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 320
    sget-object v3, Lc4/E;->S0:Lc4/D;

    .line 321
    invoke-virtual {v15, v5, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v4

    const/4 v8, 0x2

    if-eqz v4, :cond_24

    .line 322
    iget-object v4, v0, Lc4/l0;->d0:Lc4/P0;

    invoke-static {v4}, Lc4/l0;->h(Lc4/z;)V

    iget-object v4, v0, Lc4/l0;->d0:Lc4/P0;

    .line 323
    invoke-virtual {v4}, Lc4/P0;->r()I

    move-result v4

    if-ne v4, v8, :cond_24

    const/4 v4, 0x1

    goto :goto_1d

    :cond_24
    const/4 v4, 0x0

    .line 324
    :goto_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    sget-object v12, Lc4/E;->X0:Lc4/D;

    .line 325
    invoke-virtual {v15, v5, v12}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v12

    const-wide/16 v18, 0x1

    if-eqz v12, :cond_25

    .line 326
    invoke-virtual {v9}, Lc1/d;->m()V

    .line 327
    invoke-virtual {v9}, Lc4/I1;->w0()J

    move-result-wide v12

    cmp-long v20, v12, v18

    if-nez v20, :cond_25

    goto :goto_1e

    :cond_25
    if-eqz v4, :cond_27

    const/4 v4, 0x1

    .line 328
    :goto_1e
    invoke-virtual {v9}, Lc1/d;->m()V

    new-instance v12, Landroid/content/IntentFilter;

    .line 329
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v13, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 330
    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v13, v9, Lc1/d;->G:Ljava/lang/Object;

    check-cast v13, Lc4/l0;

    iget-object v7, v13, Lc4/l0;->M:Lc4/h;

    .line 331
    invoke-virtual {v7, v5, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 332
    invoke-virtual {v12, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_26
    new-instance v3, Lf/G;

    iget-object v7, v9, Lc1/d;->G:Ljava/lang/Object;

    check-cast v7, Lc4/l0;

    .line 333
    invoke-direct {v3, v7}, Lf/G;-><init>(Lc4/l0;)V

    iget-object v7, v13, Lc4/l0;->G:Landroid/content/Context;

    .line 334
    invoke-static {v7, v3, v12, v8}, LU4/a;->f(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    .line 335
    iget-object v3, v13, Lc4/l0;->O:Lc4/T;

    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 336
    const-string v7, "Registered app receiver"

    iget-object v3, v3, Lc4/T;->S:Lc4/Q;

    invoke-virtual {v3, v7}, Lc4/Q;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_27

    .line 337
    iget-object v3, v0, Lc4/l0;->d0:Lc4/P0;

    invoke-static {v3}, Lc4/l0;->h(Lc4/z;)V

    iget-object v3, v0, Lc4/l0;->d0:Lc4/P0;

    .line 338
    sget-object v4, Lc4/E;->C:Lc4/D;

    .line 339
    invoke-virtual {v4, v5}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 340
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lc4/P0;->s(J)V

    .line 341
    :cond_27
    invoke-virtual {v10}, Lc4/Z;->u()Lc4/x0;

    move-result-object v3

    const-string v4, "google_analytics_default_allow_ad_storage"

    .line 342
    invoke-virtual {v15, v4, v6}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    move-result-object v4

    const-string v7, "google_analytics_default_allow_analytics_storage"

    .line 343
    invoke-virtual {v15, v7, v6}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    move-result-object v7

    .line 344
    sget-object v12, Lc4/u0;->H:Lc4/u0;

    sget-object v13, Lc4/w0;->I:Lc4/w0;

    iget-object v14, v14, Lc4/A0;->g:Lcom/google/android/gms/internal/measurement/V;

    const-class v8, Lc4/w0;

    iget-object v5, v0, Lc4/l0;->V:Lc4/K0;

    const/16 v6, 0x64

    if-ne v4, v12, :cond_28

    if-eq v7, v12, :cond_29

    .line 345
    :cond_28
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "consent_source"

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, -0xa

    .line 346
    invoke-static {v2, v1}, Lc4/x0;->l(II)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 347
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 348
    sget-object v6, Lc4/w0;->H:Lc4/w0;

    invoke-virtual {v1, v6, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {v1, v13, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc4/x0;

    .line 350
    invoke-direct {v4, v1, v2}, Lc4/x0;-><init>(Ljava/util/EnumMap;I)V

    move-object v1, v4

    goto/16 :goto_1f

    .line 351
    :cond_29
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget v1, v3, Lc4/x0;->b:I

    if-eqz v1, :cond_2a

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_2a

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2a

    if-eq v1, v2, :cond_2a

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2c

    .line 352
    :cond_2a
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    new-instance v1, Lc4/x0;

    const/16 v2, -0xa

    .line 353
    invoke-direct {v1, v2}, Lc4/x0;-><init>(I)V

    const/4 v2, 0x0

    .line 354
    invoke-virtual {v5, v1, v2}, Lc4/K0;->G(Lc4/x0;Z)V

    :cond_2b
    const/4 v1, 0x0

    goto :goto_1f

    :cond_2c
    sget-object v1, Lc4/E;->q1:Lc4/D;

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v15, v2, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 356
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz v14, :cond_2b

    iget-object v1, v14, Lcom/google/android/gms/internal/measurement/V;->M:Landroid/os/Bundle;

    if-eqz v1, :cond_2b

    .line 357
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "consent_source"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x1e

    .line 358
    invoke-static {v4, v2}, Lc4/x0;->l(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 359
    invoke-static {v4, v1}, Lc4/x0;->d(ILandroid/os/Bundle;)Lc4/x0;

    move-result-object v1

    .line 360
    iget-object v2, v1, Lc4/x0;->a:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc4/u0;

    .line 361
    sget-object v6, Lc4/u0;->H:Lc4/u0;

    if-eq v4, v6, :cond_2d

    :goto_1f
    if-eqz v1, :cond_2e

    .line 362
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    const/4 v2, 0x1

    .line 363
    invoke-virtual {v5, v1, v2}, Lc4/K0;->G(Lc4/x0;Z)V

    move-object v3, v1

    .line 364
    :cond_2e
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 365
    invoke-virtual {v5, v3}, Lc4/K0;->F(Lc4/x0;)V

    .line 366
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 367
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dma_consent_settings"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lc4/q;->b(Ljava/lang/String;)Lc4/q;

    move-result-object v1

    .line 369
    iget v1, v1, Lc4/q;->a:I

    .line 370
    const-string v2, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v3, 0x1

    .line 371
    invoke-virtual {v15, v2, v3}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    move-result-object v2

    if-eq v2, v12, :cond_2f

    .line 372
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 373
    const-string v4, "Default ad personalization consent from Manifest"

    .line 374
    iget-object v6, v11, Lc4/T;->T:Lc4/Q;

    invoke-virtual {v6, v2, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    const-string v2, "google_analytics_default_allow_ad_user_data"

    .line 375
    invoke-virtual {v15, v2, v3}, Lc4/h;->y(Ljava/lang/String;Z)Lc4/u0;

    move-result-object v2

    if-eq v2, v12, :cond_30

    const/16 v3, -0xa

    invoke-static {v3, v1}, Lc4/x0;->l(II)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 376
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 377
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 378
    sget-object v4, Lc4/w0;->J:Lc4/w0;

    invoke-virtual {v1, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc4/q;

    const/4 v4, 0x0

    .line 379
    invoke-direct {v2, v1, v3, v4, v4}, Lc4/q;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 380
    invoke-virtual {v5, v2, v1}, Lc4/K0;->E(Lc4/q;Z)V

    goto/16 :goto_20

    .line 381
    :cond_30
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v2

    invoke-virtual {v2}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    if-eqz v1, :cond_31

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_32

    .line 382
    :cond_31
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    new-instance v1, Lc4/q;

    const/4 v2, 0x0

    const/16 v3, -0xa

    .line 383
    invoke-direct {v1, v3, v2, v2, v2}, Lc4/q;-><init>(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/4 v2, 0x1

    .line 384
    invoke-virtual {v5, v1, v2}, Lc4/K0;->E(Lc4/q;Z)V

    goto/16 :goto_20

    .line 385
    :cond_32
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v2

    invoke-virtual {v2}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    if-eqz v14, :cond_34

    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/V;->M:Landroid/os/Bundle;

    if-eqz v2, :cond_34

    const/16 v3, 0x1e

    invoke-static {v3, v1}, Lc4/x0;->l(II)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 386
    invoke-static {v3, v2}, Lc4/q;->a(ILandroid/os/Bundle;)Lc4/q;

    move-result-object v1

    .line 387
    iget-object v2, v1, Lc4/q;->e:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/u0;

    .line 388
    sget-object v4, Lc4/u0;->H:Lc4/u0;

    if-eq v3, v4, :cond_33

    .line 389
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    const/4 v2, 0x1

    .line 390
    invoke-virtual {v5, v1, v2}, Lc4/K0;->E(Lc4/q;Z)V

    .line 391
    :cond_34
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz v14, :cond_35

    iget-object v1, v14, Lcom/google/android/gms/internal/measurement/V;->M:Landroid/os/Bundle;

    if-eqz v1, :cond_35

    .line 392
    iget-object v2, v10, Lc4/Z;->T:LB0/c;

    invoke-virtual {v2}, LB0/c;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_35

    .line 393
    invoke-static {v1}, Lc4/q;->d(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 394
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 395
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/V;->K:Ljava/lang/String;

    const-string v3, "allow_personalized_ads"

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v3, v1, v4}, Lc4/K0;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 397
    :cond_35
    :goto_20
    const-string v1, "google_analytics_tcf_data_enabled"

    .line 398
    invoke-virtual {v15, v1}, Lc4/h;->z(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_36

    goto :goto_21

    .line 399
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 400
    :goto_21
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 401
    const-string v1, "TCF client enabled."

    iget-object v2, v11, Lc4/T;->S:Lc4/Q;

    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 402
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 403
    invoke-virtual {v5}, Lc4/z;->m()V

    iget-object v1, v5, Lc1/d;->G:Ljava/lang/Object;

    check-cast v1, Lc4/l0;

    .line 404
    iget-object v2, v1, Lc4/l0;->O:Lc4/T;

    .line 405
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 406
    const-string v3, "Register tcfPrefChangeListener."

    iget-object v2, v2, Lc4/T;->S:Lc4/Q;

    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    iget-object v2, v5, Lc4/K0;->a0:Lcom/google/android/gms/internal/measurement/Y1;

    if-nez v2, :cond_37

    iget-object v2, v5, Lc1/d;->G:Ljava/lang/Object;

    check-cast v2, Lc4/l0;

    new-instance v3, Lc4/F0;

    const/4 v4, 0x2

    .line 407
    invoke-direct {v3, v5, v2, v4}, Lc4/F0;-><init>(Lc4/K0;Lc4/l0;I)V

    iput-object v3, v5, Lc4/K0;->b0:Lc4/F0;

    new-instance v2, Lcom/google/android/gms/internal/measurement/Y1;

    const/4 v3, 0x1

    invoke-direct {v2, v5, v3}, Lcom/google/android/gms/internal/measurement/Y1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v5, Lc4/K0;->a0:Lcom/google/android/gms/internal/measurement/Y1;

    .line 408
    :cond_37
    iget-object v1, v1, Lc4/l0;->N:Lc4/Z;

    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 409
    invoke-virtual {v1}, Lc4/Z;->q()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, v5, Lc4/K0;->a0:Lcom/google/android/gms/internal/measurement/Y1;

    .line 410
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 411
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 412
    invoke-virtual {v5}, Lc4/K0;->w()V

    .line 413
    :cond_38
    iget-object v1, v10, Lc4/Z;->M:LE1/I;

    invoke-virtual {v1}, LE1/I;->a()J

    move-result-wide v2

    iget-wide v6, v0, Lc4/l0;->m0:J

    const-wide/16 v16, 0x0

    cmp-long v4, v2, v16

    if-nez v4, :cond_39

    .line 414
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 415
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v11, Lc4/T;->T:Lc4/Q;

    const-string v4, "Persisting first open"

    invoke-virtual {v3, v2, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1, v6, v7}, LE1/I;->b(J)V

    .line 417
    :cond_39
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 418
    iget-object v2, v5, Lc4/K0;->X:Lc4/k0;

    invoke-virtual {v2}, Lc4/k0;->d()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 419
    invoke-virtual {v2}, Lc4/k0;->e()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 420
    iget-object v2, v2, Lc4/k0;->G:Lc4/l0;

    iget-object v2, v2, Lc4/l0;->N:Lc4/Z;

    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 421
    iget-object v2, v2, Lc4/Z;->d0:LB0/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LB0/c;->o(Ljava/lang/String;)V

    .line 422
    :cond_3a
    invoke-virtual {v0}, Lc4/l0;->g()Z

    move-result v2

    if-nez v2, :cond_40

    .line 423
    invoke-virtual {v0}, Lc4/l0;->f()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 424
    const-string v1, "android.permission.INTERNET"

    .line 425
    invoke-virtual {v9, v1}, Lc4/I1;->c0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 426
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 427
    const-string v1, "App is missing INTERNET permission"

    iget-object v2, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 428
    :cond_3b
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 429
    invoke-virtual {v9, v1}, Lc4/I1;->c0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 430
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 431
    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    iget-object v2, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 432
    :cond_3c
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    invoke-static {v1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/U1;->d()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 433
    invoke-virtual {v15}, Lc4/h;->p()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 434
    invoke-static {v1}, Lc4/I1;->j0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 435
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 436
    const-string v2, "AppMeasurementReceiver not registered/enabled"

    iget-object v3, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v3, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 437
    :cond_3d
    invoke-static {v1}, Lc4/I1;->l0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 438
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 439
    const-string v1, "AppMeasurementService not registered/enabled"

    iget-object v2, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 440
    :cond_3e
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 441
    const-string v1, "Uploading is not possible. App measurement disabled"

    iget-object v2, v11, Lc4/T;->L:Lc4/Q;

    invoke-virtual {v2, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    :cond_3f
    move-object v2, v5

    goto/16 :goto_29

    .line 442
    :cond_40
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v2

    invoke-virtual {v2}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, v10, Lc4/Z;->N:LB0/c;

    if-eqz v2, :cond_42

    sget-object v2, Lc4/E;->q1:Lc4/D;

    const/4 v4, 0x0

    .line 443
    invoke-virtual {v15, v4, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 444
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v2

    invoke-virtual {v2}, Lc4/L;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_22

    :cond_41
    move-object/from16 v16, v5

    move-object/from16 v17, v13

    goto/16 :goto_26

    :cond_42
    const/4 v4, 0x0

    :goto_22
    sget-object v2, Lc4/E;->q1:Lc4/D;

    .line 445
    invoke-virtual {v15, v4, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 446
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v8

    invoke-virtual {v8}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v8

    .line 447
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 448
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v14, "gmp_app_id"

    invoke-interface {v12, v14, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 449
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 450
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v4, :cond_43

    if-nez v14, :cond_43

    .line 451
    invoke-static {v8}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    goto :goto_23

    :cond_43
    move-object/from16 v16, v5

    move-object/from16 v17, v13

    goto/16 :goto_25

    .line 453
    :cond_44
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v4

    invoke-virtual {v4}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 455
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v12, "gmp_app_id"

    const/4 v14, 0x0

    invoke-interface {v8, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v12

    invoke-virtual {v12}, Lc4/L;->s()Ljava/lang/String;

    move-result-object v12

    .line 457
    invoke-virtual {v10}, Lc1/d;->m()V

    move-object/from16 v16, v5

    .line 458
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v5

    move-object/from16 v17, v13

    const-string v13, "admob_app_id"

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    invoke-virtual {v9, v4, v8, v12, v5}, Lc4/I1;->m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 460
    :goto_23
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 461
    const-string v4, "Rechecking which service to use due to a GMP App Id change"

    iget-object v5, v11, Lc4/T;->R:Lc4/Q;

    invoke-virtual {v5, v4}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 463
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 464
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "measurement_enabled"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 465
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v8, 0x1

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_24

    :cond_45
    const/4 v4, 0x0

    .line 466
    :goto_24
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 467
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v4, :cond_46

    .line 469
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 470
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "measurement_enabled"

    .line 471
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 473
    :cond_46
    invoke-virtual {v0}, Lc4/l0;->o()Lc4/N;

    move-result-object v4

    invoke-virtual {v4}, Lc4/N;->s()V

    iget-object v4, v0, Lc4/l0;->a0:Lc4/d1;

    .line 474
    invoke-virtual {v4}, Lc4/d1;->r()V

    iget-object v4, v0, Lc4/l0;->a0:Lc4/d1;

    .line 475
    invoke-virtual {v4}, Lc4/d1;->q()V

    .line 476
    invoke-virtual {v1, v6, v7}, LE1/I;->b(J)V

    const/4 v1, 0x0

    .line 477
    invoke-virtual {v3, v1}, LB0/c;->o(Ljava/lang/String;)V

    .line 478
    :cond_47
    :goto_25
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 480
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "gmp_app_id"

    .line 481
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    .line 483
    invoke-virtual {v15, v1, v2}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 484
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 485
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "admob_app_id"

    .line 486
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_26

    .line 488
    :cond_48
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->s()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {v10}, Lc1/d;->m()V

    .line 490
    invoke-virtual {v10}, Lc4/Z;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "admob_app_id"

    .line 491
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    :goto_26
    invoke-virtual {v10}, Lc4/Z;->u()Lc4/x0;

    move-result-object v1

    move-object/from16 v2, v17

    .line 494
    invoke-virtual {v1, v2}, Lc4/x0;->k(Lc4/w0;)Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v3, v1}, LB0/c;->o(Ljava/lang/String;)V

    .line 496
    :cond_49
    invoke-static/range {v16 .. v16}, Lc4/l0;->j(Lc4/B;)V

    .line 497
    invoke-virtual {v3}, LB0/c;->n()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    .line 498
    iget-object v3, v2, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 499
    :try_start_8
    iget-object v1, v9, Lc1/d;->G:Ljava/lang/Object;

    check-cast v1, Lc4/l0;

    iget-object v1, v1, Lc4/l0;->G:Landroid/content/Context;

    .line 500
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 501
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_4a
    const/4 v3, 0x0

    goto :goto_27

    :catch_9
    nop

    .line 502
    iget-object v1, v10, Lc4/Z;->c0:LB0/c;

    invoke-virtual {v1}, LB0/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 503
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 504
    const-string v3, "Remote config removed with active feature rollouts"

    iget-object v4, v11, Lc4/T;->O:Lc4/Q;

    invoke-virtual {v4, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 505
    invoke-virtual {v1, v3}, LB0/c;->o(Ljava/lang/String;)V

    .line 506
    :goto_27
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Lc4/E;->q1:Lc4/D;

    .line 507
    invoke-virtual {v15, v3, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 508
    invoke-virtual {v0}, Lc4/l0;->n()Lc4/L;

    move-result-object v1

    invoke-virtual {v1}, Lc4/L;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 509
    :cond_4b
    invoke-virtual {v0}, Lc4/l0;->f()Z

    move-result v1

    .line 510
    iget-object v3, v10, Lc4/Z;->I:Landroid/content/SharedPreferences;

    if-nez v3, :cond_4c

    goto :goto_28

    :cond_4c
    const-string v4, "deferred_analytics_collection"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 511
    :goto_28
    invoke-virtual {v15}, Lc4/h;->n()Z

    move-result v3

    if-nez v3, :cond_4d

    xor-int/lit8 v3, v1, 0x1

    .line 512
    invoke-virtual {v10, v3}, Lc4/Z;->w(Z)V

    :cond_4d
    if-eqz v1, :cond_4e

    .line 513
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 514
    invoke-virtual {v2}, Lc4/K0;->r()V

    .line 515
    :cond_4e
    iget-object v1, v0, Lc4/l0;->Q:Lc4/k1;

    invoke-static {v1}, Lc4/l0;->j(Lc4/B;)V

    .line 516
    iget-object v1, v1, Lc4/k1;->K:LZ3/o;

    invoke-virtual {v1}, LZ3/o;->A()V

    .line 517
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v1, v3}, Lc4/d1;->s(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 518
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    move-result-object v1

    .line 519
    iget-object v3, v10, Lc4/Z;->f0:Lm2/o;

    invoke-virtual {v3}, Lm2/o;->u()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc4/d1;->w(Landroid/os/Bundle;)V

    .line 520
    :cond_4f
    :goto_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    sget-object v1, Lc4/E;->X0:Lc4/D;

    const/4 v3, 0x0

    .line 521
    invoke-virtual {v15, v3, v1}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 522
    invoke-virtual {v9}, Lc1/d;->m()V

    .line 523
    invoke-virtual {v9}, Lc4/I1;->w0()J

    move-result-wide v4

    cmp-long v1, v4, v18

    if-nez v1, :cond_52

    .line 524
    sget-object v1, Lc4/E;->x0:Lc4/D;

    .line 525
    invoke-virtual {v1, v3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 526
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x1388

    .line 527
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v5, v1

    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    add-long/2addr v3, v5

    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x1f4

    .line 530
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_50

    .line 531
    invoke-static {v11}, Lc4/l0;->k(Lc4/s0;)V

    .line 532
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 533
    iget-object v1, v11, Lc4/T;->T:Lc4/Q;

    const-string v5, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    invoke-virtual {v1, v0, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    :cond_50
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 535
    invoke-virtual {v2}, Lc4/z;->m()V

    iget-object v0, v2, Lc4/K0;->R:Lc4/F0;

    if-nez v0, :cond_51

    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    check-cast v0, Lc4/l0;

    new-instance v1, Lc4/F0;

    const/4 v5, 0x0

    .line 536
    invoke-direct {v1, v2, v0, v5}, Lc4/F0;-><init>(Lc4/K0;Lc4/l0;I)V

    iput-object v1, v2, Lc4/K0;->R:Lc4/F0;

    :cond_51
    iget-object v0, v2, Lc4/K0;->R:Lc4/F0;

    .line 537
    invoke-virtual {v0, v3, v4}, Lc4/p;->c(J)V

    .line 538
    :cond_52
    iget-object v0, v10, Lc4/Z;->V:Lc4/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc4/Y;->a(Z)V

    return-void

    .line 539
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    move-object v2, v1

    .line 543
    iget-object v0, v2, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v2, LK3/V;->I:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/P;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->$r8$lambda$W3cgi1t5N0SU6fYxM9Fsh5qQfPc(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/P;)V

    return-void

    :pswitch_18
    move-object v2, v1

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 544
    iget-object v0, v2, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lc4/t0;

    invoke-interface {v0}, Lc4/t0;->a()LS3/g;

    invoke-static {}, LS3/g;->d()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 545
    invoke-interface {v0}, Lc4/t0;->d()Lc4/j0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_57
    iget-object v0, v2, LK3/V;->I:Ljava/lang/Object;

    check-cast v0, Lc4/p;

    .line 546
    iget-wide v3, v0, Lc4/p;->c:J

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_58

    goto :goto_2a

    :cond_58
    const/4 v1, 0x0

    .line 547
    :goto_2a
    iput-wide v6, v0, Lc4/p;->c:J

    if-eqz v1, :cond_59

    .line 548
    invoke-virtual {v0}, Lc4/p;->b()V

    :cond_59
    :goto_2b
    return-void

    :pswitch_19
    move-object v2, v1

    .line 549
    iget-object v0, v2, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/cast/w;

    .line 550
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/w;->e:Ljava/util/List;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 551
    :cond_5a
    iget-object v0, v2, LK3/V;->I:Ljava/lang/Object;

    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_1a
    move-object v2, v1

    .line 552
    iget-object v0, v2, LK3/V;->H:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/cast/q;

    iget-object v1, v2, LK3/V;->I:Ljava/lang/Object;

    check-cast v1, LE1/p;

    .line 553
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/q;->r1(LE1/p;)V

    return-void

    :pswitch_1b
    move-object v2, v1

    .line 554
    invoke-direct/range {p0 .. p0}, LK3/V;->b()V

    return-void

    :pswitch_1c
    move-object v2, v1

    invoke-direct/range {p0 .. p0}, LK3/V;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, LK3/V;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->n(Ljava/lang/Object;)Lo3/G;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, LK3/V;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lm2/c;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/bD;

    .line 20
    .line 21
    const/16 v3, 0x12

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/bD;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lo3/G;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lcom/google/android/gms/internal/ads/bD;

    .line 30
    .line 31
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v2, v0, Lo3/G;->f:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0}, Lo3/G;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
