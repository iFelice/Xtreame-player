.class public final Le2/o;
.super LQ1/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Le2/o;->c:I

    const/16 v0, 0xe

    const/16 v1, 0xf

    .line 2
    invoke-direct {p0, v0, v1}, LQ1/a;-><init>(II)V

    .line 3
    new-instance v0, LU1/f;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU1/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Le2/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Le2/o;->c:I

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 5
    invoke-direct {p0, v0, v1}, LQ1/a;-><init>(II)V

    iput-object p1, p0, Le2/o;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Le2/o;->c:I

    .line 7
    invoke-direct {p0, p2, p3}, LQ1/a;-><init>(II)V

    .line 8
    iput-object p1, p0, Le2/o;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LU1/c;)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Le2/o;->c:I

    .line 3
    .line 4
    const-string v2, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    .line 5
    .line 6
    const-string v3, "reschedule_needed"

    .line 7
    .line 8
    const-string v4, "androidx.work.util.preferences"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, p0, Le2/o;->d:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string v0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "DROP TABLE `WorkSpec`"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast v7, LU1/f;

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v0, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v10, Landroid/content/ContentValues;

    .line 58
    .line 59
    invoke-direct {v10, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "last_enqueue_time"

    .line 71
    .line 72
    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    .line 74
    .line 75
    new-array v12, v5, [Ljava/lang/Object;

    .line 76
    .line 77
    const-string v8, "WorkSpec"

    .line 78
    .line 79
    const/4 v9, 0x3

    .line 80
    const-string v11, "last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 81
    .line 82
    move-object v7, p1

    .line 83
    invoke-virtual/range {v7 .. v12}, LU1/c;->N(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_0
    const-string v1, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, LU1/c;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    check-cast v7, Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const-string v8, "last_cancel_all_time_ms"

    .line 103
    .line 104
    if-nez v4, :cond_0

    .line 105
    .line 106
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_2

    .line 111
    .line 112
    :cond_0
    const-wide/16 v9, 0x0

    .line 113
    .line 114
    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_1

    .line 123
    .line 124
    const-wide/16 v9, 0x1

    .line 125
    .line 126
    :cond_1
    invoke-virtual {p1}, LU1/c;->c()V

    .line 127
    .line 128
    .line 129
    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v8, v4, v5

    .line 132
    .line 133
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    aput-object v8, v4, v6

    .line 138
    .line 139
    invoke-virtual {p1, v2, v4}, LU1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-array v4, v0, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v3, v4, v5

    .line 145
    .line 146
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    aput-object v3, v4, v6

    .line 151
    .line 152
    invoke-virtual {p1, v2, v4}, LU1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, LU1/c;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, LU1/c;->D()V

    .line 170
    .line 171
    .line 172
    :cond_2
    const-string v1, "androidx.work.util.id"

    .line 173
    .line 174
    invoke-virtual {v7, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v3, "next_job_scheduler_id"

    .line 179
    .line 180
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_3

    .line 185
    .line 186
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    :cond_3
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const-string v7, "next_alarm_manager_id"

    .line 197
    .line 198
    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {p1}, LU1/c;->c()V

    .line 203
    .line 204
    .line 205
    :try_start_1
    new-array v9, v0, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object v3, v9, v5

    .line 208
    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    aput-object v3, v9, v6

    .line 214
    .line 215
    invoke-virtual {p1, v2, v9}, LU1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v7, v0, v5

    .line 221
    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    aput-object v3, v0, v6

    .line 227
    .line 228
    invoke-virtual {p1, v2, v0}, LU1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, LU1/c;->x()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, LU1/c;->D()V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual {p1}, LU1/c;->D()V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    invoke-virtual {p1}, LU1/c;->D()V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :pswitch_1
    iget v1, p0, LQ1/a;->b:I

    .line 260
    .line 261
    const/16 v8, 0xa

    .line 262
    .line 263
    if-lt v1, v8, :cond_5

    .line 264
    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-array v0, v0, [Ljava/lang/Object;

    .line 270
    .line 271
    aput-object v3, v0, v5

    .line 272
    .line 273
    aput-object v1, v0, v6

    .line 274
    .line 275
    invoke-virtual {p1, v2, v0}, LU1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_5
    check-cast v7, Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    .line 295
    .line 296
    :goto_0
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
