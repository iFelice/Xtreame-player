.class public final Lc4/n;
.super Lcom/google/android/gms/internal/ads/My;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc1/d;


# direct methods
.method public constructor <init>(Lc4/N;Landroid/content/Context;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lc4/n;->G:I

    .line 4
    iput-object p1, p0, Lc4/n;->H:Lc1/d;

    const-string p1, "google_app_measurement_local.db"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lc4/o;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lc4/n;->G:I

    .line 2
    iput-object p1, p0, Lc4/n;->H:Lc1/d;

    const-string p1, "google_app_measurement.db"

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8

    .line 1
    iget v0, p0, Lc4/n;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/n;->H:Lc1/d;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    check-cast v1, Lc4/N;

    .line 14
    .line 15
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lc4/l0;

    .line 18
    .line 19
    iget-object v2, v0, Lc4/l0;->O:Lc4/T;

    .line 20
    .line 21
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "Opening the local database failed, dropping and recreating it"

    .line 25
    .line 26
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 32
    .line 33
    const-string v3, "google_app_measurement_local.db"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 46
    .line 47
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 48
    .line 49
    .line 50
    const-string v2, "Failed to delete corrupted local db file"

    .line 51
    .line 52
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lc4/l0;

    .line 66
    .line 67
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "Failed to open local database. Events will bypass local storage"

    .line 73
    .line 74
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 75
    .line 76
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    throw v0

    .line 83
    :pswitch_0
    check-cast v1, Lc4/o;

    .line 84
    .line 85
    iget-object v0, v1, Lc4/o;->K:Lf6/c;

    .line 86
    .line 87
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Lc4/l0;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-wide v2, v0, Lf6/c;->H:J

    .line 95
    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .line 98
    cmp-long v6, v2, v4

    .line 99
    .line 100
    if-nez v6, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    iget-object v2, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v2, LP3/a;

    .line 106
    .line 107
    check-cast v2, LP3/b;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iget-wide v6, v0, Lf6/c;->H:J

    .line 117
    .line 118
    sub-long/2addr v2, v6

    .line 119
    const-wide/32 v6, 0x36ee80

    .line 120
    .line 121
    .line 122
    cmp-long v0, v2, v6

    .line 123
    .line 124
    if-ltz v0, :cond_3

    .line 125
    .line 126
    :goto_1
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 130
    goto :goto_2

    .line 131
    :catch_3
    iget-object v0, v1, Lc4/o;->K:Lf6/c;

    .line 132
    .line 133
    iget-object v2, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, LP3/a;

    .line 136
    .line 137
    check-cast v2, LP3/b;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v2

    .line 146
    iput-wide v2, v0, Lf6/c;->H:J

    .line 147
    .line 148
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lc4/l0;

    .line 151
    .line 152
    iget-object v3, v2, Lc4/l0;->O:Lc4/T;

    .line 153
    .line 154
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 155
    .line 156
    .line 157
    const-string v6, "Opening the database failed, dropping and recreating it"

    .line 158
    .line 159
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 160
    .line 161
    invoke-virtual {v3, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v2, Lc4/l0;->G:Landroid/content/Context;

    .line 165
    .line 166
    const-string v6, "google_app_measurement.db"

    .line 167
    .line 168
    invoke-virtual {v3, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_2

    .line 177
    .line 178
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 179
    .line 180
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 181
    .line 182
    .line 183
    const-string v3, "Failed to delete corrupted db file"

    .line 184
    .line 185
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 186
    .line 187
    invoke-virtual {v2, v6, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_2
    :try_start_3
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iput-wide v4, v0, Lf6/c;->H:J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 195
    .line 196
    move-object v0, v2

    .line 197
    :goto_2
    return-object v0

    .line 198
    :catch_4
    move-exception v0

    .line 199
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v1, Lc4/l0;

    .line 202
    .line 203
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 204
    .line 205
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 206
    .line 207
    .line 208
    const-string v2, "Failed to open freshly created database"

    .line 209
    .line 210
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 211
    .line 212
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :cond_3
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 217
    .line 218
    const-string v1, "Database open failed"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget v0, p0, Lc4/n;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/n;->H:Lc1/d;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lc4/N;

    .line 9
    .line 10
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 15
    .line 16
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->M0(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v1, Lc4/o;

    .line 24
    .line 25
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lc4/l0;

    .line 28
    .line 29
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 30
    .line 31
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Cw;->M0(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    .line 1
    iget v0, p0, Lc4/n;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/n;->H:Lc1/d;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lc4/N;

    .line 9
    .line 10
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 15
    .line 16
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    sget-object v6, Lc4/N;->K:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, "type,entry"

    .line 22
    .line 23
    const-string v3, "messages"

    .line 24
    .line 25
    const-string v4, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    .line 26
    .line 27
    move-object v2, p1

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    check-cast v1, Lc4/o;

    .line 33
    .line 34
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lc4/l0;

    .line 37
    .line 38
    iget-object v1, v0, Lc4/l0;->O:Lc4/T;

    .line 39
    .line 40
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 41
    .line 42
    .line 43
    sget-object v6, Lc4/o;->L:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 46
    .line 47
    const-string v3, "events"

    .line 48
    .line 49
    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 50
    .line 51
    move-object v2, p1

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 56
    .line 57
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 58
    .line 59
    .line 60
    const-string v9, "events_snapshot"

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    const-string v10, "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;"

    .line 64
    .line 65
    const-string v11, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count"

    .line 66
    .line 67
    move-object v7, v0

    .line 68
    move-object v8, p1

    .line 69
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 73
    .line 74
    .line 75
    const-string v9, "conditional_properties"

    .line 76
    .line 77
    const/4 v12, 0x0

    .line 78
    const-string v10, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 79
    .line 80
    const-string v11, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 81
    .line 82
    move-object v7, v0

    .line 83
    move-object v8, p1

    .line 84
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 88
    .line 89
    .line 90
    sget-object v12, Lc4/o;->N:[Ljava/lang/String;

    .line 91
    .line 92
    const-string v11, "app_id,name,set_timestamp,value"

    .line 93
    .line 94
    const-string v9, "user_attributes"

    .line 95
    .line 96
    const-string v10, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 97
    .line 98
    move-object v7, v0

    .line 99
    move-object v8, p1

    .line 100
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 104
    .line 105
    .line 106
    sget-object v12, Lc4/o;->O:[Ljava/lang/String;

    .line 107
    .line 108
    const-string v11, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 109
    .line 110
    const-string v9, "apps"

    .line 111
    .line 112
    const-string v10, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 113
    .line 114
    move-object v7, v0

    .line 115
    move-object v8, p1

    .line 116
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 120
    .line 121
    .line 122
    sget-object v12, Lc4/o;->Q:[Ljava/lang/String;

    .line 123
    .line 124
    const-string v11, "app_id,bundle_end_timestamp,data"

    .line 125
    .line 126
    const-string v9, "queue"

    .line 127
    .line 128
    const-string v10, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 129
    .line 130
    move-object v7, v0

    .line 131
    move-object v8, p1

    .line 132
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 136
    .line 137
    .line 138
    const-string v9, "raw_events_metadata"

    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 142
    .line 143
    const-string v11, "app_id,metadata_fingerprint,metadata"

    .line 144
    .line 145
    move-object v7, v0

    .line 146
    move-object v8, p1

    .line 147
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 151
    .line 152
    .line 153
    sget-object v12, Lc4/o;->P:[Ljava/lang/String;

    .line 154
    .line 155
    const-string v11, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 156
    .line 157
    const-string v9, "raw_events"

    .line 158
    .line 159
    const-string v10, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 160
    .line 161
    move-object v7, v0

    .line 162
    move-object v8, p1

    .line 163
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 167
    .line 168
    .line 169
    sget-object v12, Lc4/o;->R:[Ljava/lang/String;

    .line 170
    .line 171
    const-string v11, "app_id,audience_id,filter_id,event_name,data"

    .line 172
    .line 173
    const-string v9, "event_filters"

    .line 174
    .line 175
    const-string v10, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 176
    .line 177
    move-object v7, v0

    .line 178
    move-object v8, p1

    .line 179
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 183
    .line 184
    .line 185
    sget-object v12, Lc4/o;->S:[Ljava/lang/String;

    .line 186
    .line 187
    const-string v11, "app_id,audience_id,filter_id,property_name,data"

    .line 188
    .line 189
    const-string v9, "property_filters"

    .line 190
    .line 191
    const-string v10, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 192
    .line 193
    move-object v7, v0

    .line 194
    move-object v8, p1

    .line 195
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 199
    .line 200
    .line 201
    const-string v9, "audience_filter_values"

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    const-string v10, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 205
    .line 206
    const-string v11, "app_id,audience_id,current_results"

    .line 207
    .line 208
    move-object v7, v0

    .line 209
    move-object v8, p1

    .line 210
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 214
    .line 215
    .line 216
    sget-object v12, Lc4/o;->T:[Ljava/lang/String;

    .line 217
    .line 218
    const-string v11, "app_id,first_open_count"

    .line 219
    .line 220
    const-string v9, "app2"

    .line 221
    .line 222
    const-string v10, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 223
    .line 224
    move-object v7, v0

    .line 225
    move-object v8, p1

    .line 226
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 230
    .line 231
    .line 232
    const-string v11, "app_id,event_id,children_to_process,main_event"

    .line 233
    .line 234
    const/4 v12, 0x0

    .line 235
    const-string v9, "main_event_params"

    .line 236
    .line 237
    const-string v10, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 238
    .line 239
    move-object v7, v0

    .line 240
    move-object v8, p1

    .line 241
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 245
    .line 246
    .line 247
    const-string v9, "default_event_params"

    .line 248
    .line 249
    const/4 v12, 0x0

    .line 250
    const-string v10, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 251
    .line 252
    const-string v11, "app_id,parameters"

    .line 253
    .line 254
    move-object v7, v0

    .line 255
    move-object v8, p1

    .line 256
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 260
    .line 261
    .line 262
    sget-object v12, Lc4/o;->U:[Ljava/lang/String;

    .line 263
    .line 264
    const-string v11, "app_id,consent_state"

    .line 265
    .line 266
    const-string v9, "consent_settings"

    .line 267
    .line 268
    const-string v10, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 269
    .line 270
    move-object v7, v0

    .line 271
    move-object v8, p1

    .line 272
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i4;->b()V

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 279
    .line 280
    .line 281
    sget-object v12, Lc4/o;->V:[Ljava/lang/String;

    .line 282
    .line 283
    const-string v11, "app_id,trigger_uri,source,timestamp_millis"

    .line 284
    .line 285
    const-string v9, "trigger_uris"

    .line 286
    .line 287
    const-string v10, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 288
    .line 289
    move-object v7, v0

    .line 290
    move-object v8, p1

    .line 291
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 295
    .line 296
    .line 297
    sget-object v12, Lc4/o;->M:[Ljava/lang/String;

    .line 298
    .line 299
    const-string v11, "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp"

    .line 300
    .line 301
    const-string v9, "upload_queue"

    .line 302
    .line 303
    const-string v10, "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );"

    .line 304
    .line 305
    move-object v7, v0

    .line 306
    move-object v8, p1

    .line 307
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/Cw;->Y(Lc4/T;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method
