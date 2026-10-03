.class public final LK/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/J;
.implements LI2/a;
.implements Lp3/f;
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lg4/b;
.implements Lcom/google/android/gms/internal/ads/bo;
.implements Lcom/google/android/gms/internal/pal/g4;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, LK/k;->G:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, LK/k;->H:I

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LK/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, LK/k;->G:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/U5;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/S5;-><init>()V

    .line 5
    iput-object v0, p0, LK/k;->I:Ljava/lang/Object;

    iput p1, p0, LK/k;->H:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 6
    iput p1, p0, LK/k;->G:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x7

    const/16 v0, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0x11

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lp0/E;

    invoke-direct {p1, v0}, Lp0/E;-><init>(I)V

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, LK/k;->H:I

    .line 11
    sget-object p1, LF5/h;->G:LF5/h;

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void

    .line 12
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object p1, LS4/d;->G:LS4/d;

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void

    .line 14
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void

    .line 15
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, LK/k;-><init>(Ljava/lang/Object;II)V

    return-void

    .line 16
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public constructor <init>(ILN/r;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 31
    iput v0, p0, LK/k;->G:I

    .line 32
    iput p1, p0, LK/k;->H:I

    const/4 p1, 0x1

    .line 33
    new-array p1, p1, [LN/r;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILN/r;I)V
    .locals 0

    .line 18
    const/16 p3, 0x12

    iput p3, p0, LK/k;->G:I

    .line 19
    invoke-direct {p0, p1, p2}, LK/k;-><init>(ILN/r;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LK/k;->G:I

    iput p1, p0, LK/k;->H:I

    iput-object p2, p0, LK/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LN/r;LN/r;)V
    .locals 1

    .line 21
    const/16 v0, 0x12

    iput v0, p0, LK/k;->G:I

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, LK/k;-><init>(LN/r;LN/r;I)V

    return-void
.end method

.method public constructor <init>(LN/r;LN/r;I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p3, 0x12

    .line 35
    iput p3, p0, LK/k;->G:I

    const/16 p3, 0x3e

    .line 36
    iput p3, p0, LK/k;->H:I

    const/4 p3, 0x2

    .line 37
    new-array p3, p3, [LN/r;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    iput-object p3, p0, LK/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 39
    iput v0, p0, LK/k;->G:I

    .line 40
    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    const/16 p1, 0x10

    .line 41
    iput p1, p0, LK/k;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, LK/k;->G:I

    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    iput p2, p0, LK/k;->H:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 25
    iput v0, p0, LK/k;->G:I

    .line 26
    iput p2, p0, LK/k;->H:I

    if-eqz p1, :cond_1

    .line 27
    sget-object p2, LC4/a;->I:LC4/a;

    .line 28
    array-length p2, p1

    if-nez p2, :cond_0

    sget-object p1, LC4/a;->I:LC4/a;

    goto :goto_0

    :cond_0
    new-instance p2, LC4/a;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p2, p1}, LC4/a;-><init>([I)V

    move-object p1, p2

    goto :goto_0

    .line 29
    :cond_1
    sget-object p1, LC4/a;->I:LC4/a;

    :goto_0
    iput-object p1, p0, LK/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public static c()LK/k;
    .locals 3

    .line 1
    new-instance v0, LK/k;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, LK/k;-><init>(II)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static d(LU1/c;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, LU1/c;->f(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static e(LU1/c;)LP0/j;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v10, LR1/a;

    .line 10
    .line 11
    const-string v7, "TEXT"

    .line 12
    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x1

    .line 16
    const-string v6, "work_spec_id"

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    move-object v3, v10

    .line 20
    invoke-direct/range {v3 .. v9}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v3, "work_spec_id"

    .line 24
    .line 25
    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v4, LR1/a;

    .line 29
    .line 30
    const-string v15, "TEXT"

    .line 31
    .line 32
    const/16 v17, 0x1

    .line 33
    .line 34
    const/4 v12, 0x2

    .line 35
    const/4 v13, 0x1

    .line 36
    const-string v14, "prerequisite_id"

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-object v11, v4

    .line 41
    invoke-direct/range {v11 .. v17}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v5, "prerequisite_id"

    .line 45
    .line 46
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v12, LR1/b;

    .line 55
    .line 56
    filled-new-array {v3}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    const-string v13, "id"

    .line 65
    .line 66
    filled-new-array {v13}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    const-string v8, "CASCADE"

    .line 75
    .line 76
    const-string v9, "CASCADE"

    .line 77
    .line 78
    const-string v7, "WorkSpec"

    .line 79
    .line 80
    move-object v6, v12

    .line 81
    invoke-direct/range {v6 .. v11}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance v6, LR1/b;

    .line 88
    .line 89
    filled-new-array {v5}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v18

    .line 97
    filled-new-array {v13}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v19

    .line 105
    const-string v16, "CASCADE"

    .line 106
    .line 107
    const-string v17, "CASCADE"

    .line 108
    .line 109
    const-string v15, "WorkSpec"

    .line 110
    .line 111
    move-object v14, v6

    .line 112
    invoke-direct/range {v14 .. v19}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v6, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 121
    .line 122
    .line 123
    new-instance v7, LR1/d;

    .line 124
    .line 125
    filled-new-array {v3}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    const-string v9, "ASC"

    .line 134
    .line 135
    filled-new-array {v9}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    const-string v11, "index_Dependency_work_spec_id"

    .line 144
    .line 145
    const/4 v12, 0x0

    .line 146
    invoke-direct {v7, v11, v12, v8, v10}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    new-instance v7, LR1/d;

    .line 153
    .line 154
    filled-new-array {v5}, [Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    filled-new-array {v9}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    const-string v10, "index_Dependency_prerequisite_id"

    .line 171
    .line 172
    invoke-direct {v7, v10, v12, v5, v8}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v5, LR1/e;

    .line 179
    .line 180
    const-string v7, "Dependency"

    .line 181
    .line 182
    invoke-direct {v5, v7, v1, v4, v6}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v7}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v5, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    const-string v6, "\n Found:\n"

    .line 194
    .line 195
    if-nez v4, :cond_0

    .line 196
    .line 197
    new-instance v0, LP0/j;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 202
    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 224
    .line 225
    const/16 v4, 0x1b

    .line 226
    .line 227
    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 228
    .line 229
    .line 230
    new-instance v4, LR1/a;

    .line 231
    .line 232
    const-string v17, "id"

    .line 233
    .line 234
    const-string v18, "TEXT"

    .line 235
    .line 236
    const/16 v19, 0x0

    .line 237
    .line 238
    const/16 v16, 0x1

    .line 239
    .line 240
    const/16 v20, 0x1

    .line 241
    .line 242
    const/4 v15, 0x1

    .line 243
    move-object v14, v4

    .line 244
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    new-instance v4, LR1/a;

    .line 251
    .line 252
    const-string v24, "state"

    .line 253
    .line 254
    const-string v25, "INTEGER"

    .line 255
    .line 256
    const/16 v26, 0x0

    .line 257
    .line 258
    const/16 v23, 0x1

    .line 259
    .line 260
    const/16 v27, 0x1

    .line 261
    .line 262
    const/16 v22, 0x0

    .line 263
    .line 264
    move-object/from16 v21, v4

    .line 265
    .line 266
    invoke-direct/range {v21 .. v27}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    .line 268
    .line 269
    const-string v5, "state"

    .line 270
    .line 271
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    new-instance v4, LR1/a;

    .line 275
    .line 276
    const-string v17, "worker_class_name"

    .line 277
    .line 278
    const-string v18, "TEXT"

    .line 279
    .line 280
    const/4 v15, 0x0

    .line 281
    move-object v14, v4

    .line 282
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    const-string v5, "worker_class_name"

    .line 286
    .line 287
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    new-instance v4, LR1/a;

    .line 291
    .line 292
    const-string v17, "input_merger_class_name"

    .line 293
    .line 294
    const-string v18, "TEXT"

    .line 295
    .line 296
    const/16 v20, 0x0

    .line 297
    .line 298
    move-object v14, v4

    .line 299
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    const-string v5, "input_merger_class_name"

    .line 303
    .line 304
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    new-instance v4, LR1/a;

    .line 308
    .line 309
    const-string v17, "input"

    .line 310
    .line 311
    const-string v18, "BLOB"

    .line 312
    .line 313
    const/16 v20, 0x1

    .line 314
    .line 315
    move-object v14, v4

    .line 316
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    .line 318
    .line 319
    const-string v5, "input"

    .line 320
    .line 321
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    new-instance v4, LR1/a;

    .line 325
    .line 326
    const-string v17, "output"

    .line 327
    .line 328
    const-string v18, "BLOB"

    .line 329
    .line 330
    move-object v14, v4

    .line 331
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    const-string v5, "output"

    .line 335
    .line 336
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    new-instance v4, LR1/a;

    .line 340
    .line 341
    const-string v17, "initial_delay"

    .line 342
    .line 343
    const-string v18, "INTEGER"

    .line 344
    .line 345
    move-object v14, v4

    .line 346
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    const-string v5, "initial_delay"

    .line 350
    .line 351
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    new-instance v4, LR1/a;

    .line 355
    .line 356
    const-string v17, "interval_duration"

    .line 357
    .line 358
    const-string v18, "INTEGER"

    .line 359
    .line 360
    move-object v14, v4

    .line 361
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    .line 363
    .line 364
    const-string v5, "interval_duration"

    .line 365
    .line 366
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    new-instance v4, LR1/a;

    .line 370
    .line 371
    const-string v17, "flex_duration"

    .line 372
    .line 373
    const-string v18, "INTEGER"

    .line 374
    .line 375
    move-object v14, v4

    .line 376
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    .line 378
    .line 379
    const-string v5, "flex_duration"

    .line 380
    .line 381
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    new-instance v4, LR1/a;

    .line 385
    .line 386
    const-string v17, "run_attempt_count"

    .line 387
    .line 388
    const-string v18, "INTEGER"

    .line 389
    .line 390
    move-object v14, v4

    .line 391
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    .line 393
    .line 394
    const-string v5, "run_attempt_count"

    .line 395
    .line 396
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    new-instance v4, LR1/a;

    .line 400
    .line 401
    const-string v17, "backoff_policy"

    .line 402
    .line 403
    const-string v18, "INTEGER"

    .line 404
    .line 405
    move-object v14, v4

    .line 406
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 407
    .line 408
    .line 409
    const-string v5, "backoff_policy"

    .line 410
    .line 411
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    new-instance v4, LR1/a;

    .line 415
    .line 416
    const-string v17, "backoff_delay_duration"

    .line 417
    .line 418
    const-string v18, "INTEGER"

    .line 419
    .line 420
    move-object v14, v4

    .line 421
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    .line 423
    .line 424
    const-string v5, "backoff_delay_duration"

    .line 425
    .line 426
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    new-instance v4, LR1/a;

    .line 430
    .line 431
    const-string v17, "last_enqueue_time"

    .line 432
    .line 433
    const-string v18, "INTEGER"

    .line 434
    .line 435
    move-object v14, v4

    .line 436
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    .line 438
    .line 439
    const-string v5, "last_enqueue_time"

    .line 440
    .line 441
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    new-instance v4, LR1/a;

    .line 445
    .line 446
    const-string v17, "minimum_retention_duration"

    .line 447
    .line 448
    const-string v18, "INTEGER"

    .line 449
    .line 450
    move-object v14, v4

    .line 451
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 452
    .line 453
    .line 454
    const-string v7, "minimum_retention_duration"

    .line 455
    .line 456
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    new-instance v4, LR1/a;

    .line 460
    .line 461
    const-string v17, "schedule_requested_at"

    .line 462
    .line 463
    const-string v18, "INTEGER"

    .line 464
    .line 465
    move-object v14, v4

    .line 466
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 467
    .line 468
    .line 469
    const-string v7, "schedule_requested_at"

    .line 470
    .line 471
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    new-instance v4, LR1/a;

    .line 475
    .line 476
    const-string v17, "run_in_foreground"

    .line 477
    .line 478
    const-string v18, "INTEGER"

    .line 479
    .line 480
    move-object v14, v4

    .line 481
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 482
    .line 483
    .line 484
    const-string v8, "run_in_foreground"

    .line 485
    .line 486
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    new-instance v4, LR1/a;

    .line 490
    .line 491
    const-string v17, "out_of_quota_policy"

    .line 492
    .line 493
    const-string v18, "INTEGER"

    .line 494
    .line 495
    move-object v14, v4

    .line 496
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    .line 498
    .line 499
    const-string v8, "out_of_quota_policy"

    .line 500
    .line 501
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    new-instance v4, LR1/a;

    .line 505
    .line 506
    const-string v17, "period_count"

    .line 507
    .line 508
    const-string v18, "INTEGER"

    .line 509
    .line 510
    const-string v19, "0"

    .line 511
    .line 512
    move-object v14, v4

    .line 513
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    .line 515
    .line 516
    const-string v8, "period_count"

    .line 517
    .line 518
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    new-instance v4, LR1/a;

    .line 522
    .line 523
    const-string v17, "generation"

    .line 524
    .line 525
    const-string v18, "INTEGER"

    .line 526
    .line 527
    const-string v19, "0"

    .line 528
    .line 529
    move-object v14, v4

    .line 530
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    .line 532
    .line 533
    const-string v8, "generation"

    .line 534
    .line 535
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    new-instance v4, LR1/a;

    .line 539
    .line 540
    const-string v17, "required_network_type"

    .line 541
    .line 542
    const-string v18, "INTEGER"

    .line 543
    .line 544
    const/16 v19, 0x0

    .line 545
    .line 546
    move-object v14, v4

    .line 547
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 548
    .line 549
    .line 550
    const-string v10, "required_network_type"

    .line 551
    .line 552
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    new-instance v4, LR1/a;

    .line 556
    .line 557
    const-string v17, "requires_charging"

    .line 558
    .line 559
    const-string v18, "INTEGER"

    .line 560
    .line 561
    move-object v14, v4

    .line 562
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    .line 564
    .line 565
    const-string v10, "requires_charging"

    .line 566
    .line 567
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    new-instance v4, LR1/a;

    .line 571
    .line 572
    const-string v17, "requires_device_idle"

    .line 573
    .line 574
    const-string v18, "INTEGER"

    .line 575
    .line 576
    move-object v14, v4

    .line 577
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    .line 579
    .line 580
    const-string v10, "requires_device_idle"

    .line 581
    .line 582
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    new-instance v4, LR1/a;

    .line 586
    .line 587
    const-string v17, "requires_battery_not_low"

    .line 588
    .line 589
    const-string v18, "INTEGER"

    .line 590
    .line 591
    move-object v14, v4

    .line 592
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 593
    .line 594
    .line 595
    const-string v10, "requires_battery_not_low"

    .line 596
    .line 597
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    new-instance v4, LR1/a;

    .line 601
    .line 602
    const-string v17, "requires_storage_not_low"

    .line 603
    .line 604
    const-string v18, "INTEGER"

    .line 605
    .line 606
    move-object v14, v4

    .line 607
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 608
    .line 609
    .line 610
    const-string v10, "requires_storage_not_low"

    .line 611
    .line 612
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    new-instance v4, LR1/a;

    .line 616
    .line 617
    const-string v17, "trigger_content_update_delay"

    .line 618
    .line 619
    const-string v18, "INTEGER"

    .line 620
    .line 621
    move-object v14, v4

    .line 622
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 623
    .line 624
    .line 625
    const-string v10, "trigger_content_update_delay"

    .line 626
    .line 627
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    new-instance v4, LR1/a;

    .line 631
    .line 632
    const-string v17, "trigger_max_content_delay"

    .line 633
    .line 634
    const-string v18, "INTEGER"

    .line 635
    .line 636
    move-object v14, v4

    .line 637
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 638
    .line 639
    .line 640
    const-string v10, "trigger_max_content_delay"

    .line 641
    .line 642
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    new-instance v4, LR1/a;

    .line 646
    .line 647
    const-string v17, "content_uri_triggers"

    .line 648
    .line 649
    const-string v18, "BLOB"

    .line 650
    .line 651
    move-object v14, v4

    .line 652
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 653
    .line 654
    .line 655
    const-string v10, "content_uri_triggers"

    .line 656
    .line 657
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    new-instance v4, Ljava/util/HashSet;

    .line 661
    .line 662
    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 663
    .line 664
    .line 665
    new-instance v10, Ljava/util/HashSet;

    .line 666
    .line 667
    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 668
    .line 669
    .line 670
    new-instance v11, LR1/d;

    .line 671
    .line 672
    filled-new-array {v7}, [Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    filled-new-array {v9}, [Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v14

    .line 684
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 685
    .line 686
    .line 687
    move-result-object v14

    .line 688
    const-string v15, "index_WorkSpec_schedule_requested_at"

    .line 689
    .line 690
    invoke-direct {v11, v15, v12, v7, v14}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    new-instance v7, LR1/d;

    .line 697
    .line 698
    filled-new-array {v5}, [Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 703
    .line 704
    .line 705
    move-result-object v5

    .line 706
    filled-new-array {v9}, [Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v11

    .line 710
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 711
    .line 712
    .line 713
    move-result-object v11

    .line 714
    const-string v14, "index_WorkSpec_last_enqueue_time"

    .line 715
    .line 716
    invoke-direct {v7, v14, v12, v5, v11}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    new-instance v5, LR1/e;

    .line 723
    .line 724
    const-string v7, "WorkSpec"

    .line 725
    .line 726
    invoke-direct {v5, v7, v1, v4, v10}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 727
    .line 728
    .line 729
    invoke-static {v0, v7}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    invoke-virtual {v5, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    if-nez v4, :cond_1

    .line 738
    .line 739
    new-instance v0, LP0/j;

    .line 740
    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    const-string v3, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 744
    .line 745
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 762
    .line 763
    .line 764
    return-object v0

    .line 765
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 766
    .line 767
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 768
    .line 769
    .line 770
    new-instance v4, LR1/a;

    .line 771
    .line 772
    const-string v18, "TEXT"

    .line 773
    .line 774
    const/16 v20, 0x1

    .line 775
    .line 776
    const/4 v15, 0x1

    .line 777
    const/16 v16, 0x1

    .line 778
    .line 779
    const-string v17, "tag"

    .line 780
    .line 781
    const/16 v19, 0x0

    .line 782
    .line 783
    move-object v14, v4

    .line 784
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 785
    .line 786
    .line 787
    const-string v5, "tag"

    .line 788
    .line 789
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    new-instance v4, LR1/a;

    .line 793
    .line 794
    const-string v18, "TEXT"

    .line 795
    .line 796
    const/4 v15, 0x2

    .line 797
    const-string v17, "work_spec_id"

    .line 798
    .line 799
    move-object v14, v4

    .line 800
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    new-instance v4, Ljava/util/HashSet;

    .line 807
    .line 808
    const/4 v5, 0x1

    .line 809
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 810
    .line 811
    .line 812
    new-instance v7, LR1/b;

    .line 813
    .line 814
    filled-new-array {v3}, [Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v10

    .line 818
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v18

    .line 822
    filled-new-array {v13}, [Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v10

    .line 826
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 827
    .line 828
    .line 829
    move-result-object v19

    .line 830
    const-string v16, "CASCADE"

    .line 831
    .line 832
    const-string v17, "CASCADE"

    .line 833
    .line 834
    const-string v15, "WorkSpec"

    .line 835
    .line 836
    move-object v14, v7

    .line 837
    invoke-direct/range {v14 .. v19}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    new-instance v7, Ljava/util/HashSet;

    .line 844
    .line 845
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 846
    .line 847
    .line 848
    new-instance v10, LR1/d;

    .line 849
    .line 850
    filled-new-array {v3}, [Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v11

    .line 854
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 855
    .line 856
    .line 857
    move-result-object v11

    .line 858
    filled-new-array {v9}, [Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v14

    .line 862
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 863
    .line 864
    .line 865
    move-result-object v14

    .line 866
    const-string v15, "index_WorkTag_work_spec_id"

    .line 867
    .line 868
    invoke-direct {v10, v15, v12, v11, v14}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    new-instance v10, LR1/e;

    .line 875
    .line 876
    const-string v11, "WorkTag"

    .line 877
    .line 878
    invoke-direct {v10, v11, v1, v4, v7}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 879
    .line 880
    .line 881
    invoke-static {v0, v11}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v10, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    if-nez v4, :cond_2

    .line 890
    .line 891
    new-instance v0, LP0/j;

    .line 892
    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 896
    .line 897
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    return-object v0

    .line 917
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 918
    .line 919
    const/4 v4, 0x3

    .line 920
    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 921
    .line 922
    .line 923
    new-instance v4, LR1/a;

    .line 924
    .line 925
    const-string v18, "TEXT"

    .line 926
    .line 927
    const/16 v20, 0x1

    .line 928
    .line 929
    const/4 v15, 0x1

    .line 930
    const/16 v16, 0x1

    .line 931
    .line 932
    const-string v17, "work_spec_id"

    .line 933
    .line 934
    const/16 v19, 0x0

    .line 935
    .line 936
    move-object v14, v4

    .line 937
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    new-instance v4, LR1/a;

    .line 944
    .line 945
    const-string v25, "INTEGER"

    .line 946
    .line 947
    const/16 v27, 0x1

    .line 948
    .line 949
    const/16 v22, 0x2

    .line 950
    .line 951
    const/16 v23, 0x1

    .line 952
    .line 953
    const-string v24, "generation"

    .line 954
    .line 955
    const-string v26, "0"

    .line 956
    .line 957
    move-object/from16 v21, v4

    .line 958
    .line 959
    invoke-direct/range {v21 .. v27}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    new-instance v4, LR1/a;

    .line 966
    .line 967
    const-string v18, "INTEGER"

    .line 968
    .line 969
    const/4 v15, 0x0

    .line 970
    const-string v17, "system_id"

    .line 971
    .line 972
    move-object v14, v4

    .line 973
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 974
    .line 975
    .line 976
    const-string v7, "system_id"

    .line 977
    .line 978
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    new-instance v4, Ljava/util/HashSet;

    .line 982
    .line 983
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 984
    .line 985
    .line 986
    new-instance v7, LR1/b;

    .line 987
    .line 988
    filled-new-array {v3}, [Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v8

    .line 992
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 993
    .line 994
    .line 995
    move-result-object v18

    .line 996
    filled-new-array {v13}, [Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v8

    .line 1000
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v19

    .line 1004
    const-string v16, "CASCADE"

    .line 1005
    .line 1006
    const-string v17, "CASCADE"

    .line 1007
    .line 1008
    const-string v15, "WorkSpec"

    .line 1009
    .line 1010
    move-object v14, v7

    .line 1011
    invoke-direct/range {v14 .. v19}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1015
    .line 1016
    .line 1017
    new-instance v7, Ljava/util/HashSet;

    .line 1018
    .line 1019
    invoke-direct {v7, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v8, LR1/e;

    .line 1023
    .line 1024
    const-string v10, "SystemIdInfo"

    .line 1025
    .line 1026
    invoke-direct {v8, v10, v1, v4, v7}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v0, v10}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    invoke-virtual {v8, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v4

    .line 1037
    if-nez v4, :cond_3

    .line 1038
    .line 1039
    new-instance v0, LP0/j;

    .line 1040
    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1044
    .line 1045
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 1062
    .line 1063
    .line 1064
    return-object v0

    .line 1065
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 1066
    .line 1067
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1068
    .line 1069
    .line 1070
    new-instance v4, LR1/a;

    .line 1071
    .line 1072
    const-string v18, "TEXT"

    .line 1073
    .line 1074
    const/16 v20, 0x1

    .line 1075
    .line 1076
    const/4 v15, 0x1

    .line 1077
    const/16 v16, 0x1

    .line 1078
    .line 1079
    const-string v17, "name"

    .line 1080
    .line 1081
    const/16 v19, 0x0

    .line 1082
    .line 1083
    move-object v14, v4

    .line 1084
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1085
    .line 1086
    .line 1087
    const-string v7, "name"

    .line 1088
    .line 1089
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    new-instance v4, LR1/a;

    .line 1093
    .line 1094
    const-string v18, "TEXT"

    .line 1095
    .line 1096
    const/4 v15, 0x2

    .line 1097
    const-string v17, "work_spec_id"

    .line 1098
    .line 1099
    move-object v14, v4

    .line 1100
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    new-instance v4, Ljava/util/HashSet;

    .line 1107
    .line 1108
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1109
    .line 1110
    .line 1111
    new-instance v7, LR1/b;

    .line 1112
    .line 1113
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v8

    .line 1117
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v18

    .line 1121
    filled-new-array {v13}, [Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v8

    .line 1125
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v19

    .line 1129
    const-string v16, "CASCADE"

    .line 1130
    .line 1131
    const-string v17, "CASCADE"

    .line 1132
    .line 1133
    const-string v15, "WorkSpec"

    .line 1134
    .line 1135
    move-object v14, v7

    .line 1136
    invoke-direct/range {v14 .. v19}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    new-instance v7, Ljava/util/HashSet;

    .line 1143
    .line 1144
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1145
    .line 1146
    .line 1147
    new-instance v8, LR1/d;

    .line 1148
    .line 1149
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v10

    .line 1153
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v10

    .line 1157
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v9

    .line 1161
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v9

    .line 1165
    const-string v11, "index_WorkName_work_spec_id"

    .line 1166
    .line 1167
    invoke-direct {v8, v11, v12, v10, v9}, LR1/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    new-instance v8, LR1/e;

    .line 1174
    .line 1175
    const-string v9, "WorkName"

    .line 1176
    .line 1177
    invoke-direct {v8, v9, v1, v4, v7}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-static {v0, v9}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    invoke-virtual {v8, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v4

    .line 1188
    if-nez v4, :cond_4

    .line 1189
    .line 1190
    new-instance v0, LP0/j;

    .line 1191
    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1195
    .line 1196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 1213
    .line 1214
    .line 1215
    return-object v0

    .line 1216
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 1217
    .line 1218
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1219
    .line 1220
    .line 1221
    new-instance v4, LR1/a;

    .line 1222
    .line 1223
    const-string v18, "TEXT"

    .line 1224
    .line 1225
    const/16 v20, 0x1

    .line 1226
    .line 1227
    const/4 v15, 0x1

    .line 1228
    const/16 v16, 0x1

    .line 1229
    .line 1230
    const-string v17, "work_spec_id"

    .line 1231
    .line 1232
    const/16 v19, 0x0

    .line 1233
    .line 1234
    move-object v14, v4

    .line 1235
    invoke-direct/range {v14 .. v20}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    new-instance v4, LR1/a;

    .line 1242
    .line 1243
    const-string v25, "BLOB"

    .line 1244
    .line 1245
    const/16 v27, 0x1

    .line 1246
    .line 1247
    const/16 v22, 0x0

    .line 1248
    .line 1249
    const/16 v23, 0x1

    .line 1250
    .line 1251
    const-string v24, "progress"

    .line 1252
    .line 1253
    const/16 v26, 0x0

    .line 1254
    .line 1255
    move-object/from16 v21, v4

    .line 1256
    .line 1257
    invoke-direct/range {v21 .. v27}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1258
    .line 1259
    .line 1260
    const-string v7, "progress"

    .line 1261
    .line 1262
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    new-instance v4, Ljava/util/HashSet;

    .line 1266
    .line 1267
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    new-instance v7, LR1/b;

    .line 1271
    .line 1272
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v3

    .line 1276
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v18

    .line 1280
    filled-new-array {v13}, [Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v3

    .line 1284
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v19

    .line 1288
    const-string v16, "CASCADE"

    .line 1289
    .line 1290
    const-string v17, "CASCADE"

    .line 1291
    .line 1292
    const-string v15, "WorkSpec"

    .line 1293
    .line 1294
    move-object v14, v7

    .line 1295
    invoke-direct/range {v14 .. v19}, LR1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1296
    .line 1297
    .line 1298
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1299
    .line 1300
    .line 1301
    new-instance v3, Ljava/util/HashSet;

    .line 1302
    .line 1303
    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1304
    .line 1305
    .line 1306
    new-instance v7, LR1/e;

    .line 1307
    .line 1308
    const-string v8, "WorkProgress"

    .line 1309
    .line 1310
    invoke-direct {v7, v8, v1, v4, v3}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-static {v0, v8}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    invoke-virtual {v7, v1}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v3

    .line 1321
    if-nez v3, :cond_5

    .line 1322
    .line 1323
    new-instance v0, LP0/j;

    .line 1324
    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1328
    .line 1329
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v1

    .line 1345
    invoke-direct {v0, v12, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 1346
    .line 1347
    .line 1348
    return-object v0

    .line 1349
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    .line 1350
    .line 1351
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1352
    .line 1353
    .line 1354
    new-instance v2, LR1/a;

    .line 1355
    .line 1356
    const-string v17, "TEXT"

    .line 1357
    .line 1358
    const/16 v19, 0x1

    .line 1359
    .line 1360
    const/4 v14, 0x1

    .line 1361
    const/4 v15, 0x1

    .line 1362
    const-string v16, "key"

    .line 1363
    .line 1364
    const/16 v18, 0x0

    .line 1365
    .line 1366
    move-object v13, v2

    .line 1367
    invoke-direct/range {v13 .. v19}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1368
    .line 1369
    .line 1370
    const-string v3, "key"

    .line 1371
    .line 1372
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    .line 1374
    .line 1375
    new-instance v2, LR1/a;

    .line 1376
    .line 1377
    const-string v17, "INTEGER"

    .line 1378
    .line 1379
    const/16 v19, 0x0

    .line 1380
    .line 1381
    const/4 v14, 0x0

    .line 1382
    const-string v16, "long_value"

    .line 1383
    .line 1384
    move-object v13, v2

    .line 1385
    invoke-direct/range {v13 .. v19}, LR1/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1386
    .line 1387
    .line 1388
    const-string v3, "long_value"

    .line 1389
    .line 1390
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    .line 1392
    .line 1393
    new-instance v2, Ljava/util/HashSet;

    .line 1394
    .line 1395
    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1396
    .line 1397
    .line 1398
    new-instance v3, Ljava/util/HashSet;

    .line 1399
    .line 1400
    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1401
    .line 1402
    .line 1403
    new-instance v4, LR1/e;

    .line 1404
    .line 1405
    const-string v7, "Preference"

    .line 1406
    .line 1407
    invoke-direct {v4, v7, v1, v2, v3}, LR1/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1408
    .line 1409
    .line 1410
    invoke-static {v0, v7}, LR1/e;->a(LU1/c;Ljava/lang/String;)LR1/e;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    invoke-virtual {v4, v0}, LR1/e;->equals(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    move-result v1

    .line 1418
    if-nez v1, :cond_6

    .line 1419
    .line 1420
    new-instance v1, LP0/j;

    .line 1421
    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1425
    .line 1426
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    invoke-direct {v1, v12, v0}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 1443
    .line 1444
    .line 1445
    return-object v1

    .line 1446
    :cond_6
    new-instance v0, LP0/j;

    .line 1447
    .line 1448
    const/4 v1, 0x0

    .line 1449
    invoke-direct {v0, v5, v1}, LP0/j;-><init>(ZLjava/lang/Object;)V

    .line 1450
    .line 1451
    .line 1452
    return-object v0
.end method

.method public static i(I)LK/k;
    .locals 5

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/16 v1, 0xf

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    new-instance p0, LK/k;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/pal/r1;

    .line 15
    .line 16
    const-string v3, "HmacSha512"

    .line 17
    .line 18
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {p0, v0, v2, v1}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, LK/k;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/pal/r1;

    .line 29
    .line 30
    const-string v3, "HmacSha384"

    .line 31
    .line 32
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {p0, v0, v2, v1}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p0, LK/k;

    .line 41
    .line 42
    new-instance v3, Lcom/google/android/gms/internal/pal/r1;

    .line 43
    .line 44
    const-string v4, "HmacSha256"

    .line 45
    .line 46
    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3, v0, v1}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/pal/m2;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    iget v8, v0, LK/k;->H:I

    .line 11
    .line 12
    invoke-static {v8}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    sget-object v9, Lcom/google/android/gms/internal/pal/J6;->h:Lcom/google/android/gms/internal/pal/J6;

    .line 17
    .line 18
    const-string v10, "EC"

    .line 19
    .line 20
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    check-cast v9, Ljava/security/KeyPairGenerator;

    .line 25
    .line 26
    invoke-virtual {v9, v8}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    iget v9, v0, LK/k;->H:I

    .line 34
    .line 35
    invoke-static {v9}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/pal/y4;->z0(Ljava/security/spec/ECParameterSpec;[B)Ljava/security/interfaces/ECPublicKey;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    check-cast v10, Ljava/security/interfaces/ECPrivateKey;

    .line 48
    .line 49
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/pal/y4;->s0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget v10, v0, LK/k;->H:I

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Ljava/security/interfaces/ECPublicKey;

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-static {v10}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v10}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-static {v10, v7, v8}, Lcom/google/android/gms/internal/pal/y4;->E0(Ljava/security/spec/EllipticCurve;ILjava/security/spec/ECPoint;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    new-array v10, v6, [[B

    .line 78
    .line 79
    aput-object v8, v10, v5

    .line 80
    .line 81
    aput-object v1, v10, v7

    .line 82
    .line 83
    invoke-static {v10}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual/range {p0 .. p0}, LK/k;->zzb()[B

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-array v11, v6, [[B

    .line 92
    .line 93
    sget-object v12, Lcom/google/android/gms/internal/pal/i4;->m:[B

    .line 94
    .line 95
    aput-object v12, v11, v5

    .line 96
    .line 97
    aput-object v10, v11, v7

    .line 98
    .line 99
    invoke-static {v11}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-object v11, v0, LK/k;->I:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v11, Lcom/google/android/gms/internal/pal/r1;

    .line 106
    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/internal/pal/r1;->b()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    const-string v14, "eae_prk"

    .line 114
    .line 115
    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    sget-object v15, Lcom/google/android/gms/internal/pal/i4;->o:[B

    .line 120
    .line 121
    new-array v2, v4, [[B

    .line 122
    .line 123
    aput-object v15, v2, v5

    .line 124
    .line 125
    aput-object v10, v2, v7

    .line 126
    .line 127
    aput-object v14, v2, v6

    .line 128
    .line 129
    aput-object v9, v2, v3

    .line 130
    .line 131
    invoke-static {v2}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v9, 0x0

    .line 136
    invoke-virtual {v11, v2, v9}, Lcom/google/android/gms/internal/pal/r1;->g([B[B)[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    const-string v14, "shared_secret"

    .line 145
    .line 146
    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    const/4 v14, 0x5

    .line 151
    new-array v4, v14, [[B

    .line 152
    .line 153
    aput-object v9, v4, v5

    .line 154
    .line 155
    aput-object v15, v4, v7

    .line 156
    .line 157
    aput-object v10, v4, v6

    .line 158
    .line 159
    aput-object v13, v4, v3

    .line 160
    .line 161
    const/4 v3, 0x4

    .line 162
    aput-object v1, v4, v3

    .line 163
    .line 164
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v11, v12, v2, v1}, Lcom/google/android/gms/internal/pal/r1;->f(I[B[B)[B

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Lcom/google/android/gms/internal/pal/m2;

    .line 173
    .line 174
    invoke-direct {v2, v14, v1, v8}, Lcom/google/android/gms/internal/pal/m2;-><init>(ILjava/lang/Object;Ljava/lang/Cloneable;)V

    .line 175
    .line 176
    .line 177
    return-object v2
.end method

.method public final b()LS4/a;
    .locals 3

    .line 1
    new-instance v0, LS4/a;

    .line 2
    .line 3
    iget v1, p0, LK/k;->H:I

    .line 4
    .line 5
    iget-object v2, p0, LK/k;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LS4/d;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, LS4/a;-><init>(ILS4/d;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final f(LW0/t;)J
    .locals 6

    .line 1
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/E;

    .line 4
    .line 5
    iget-object v0, v0, Lp0/E;->a:[B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {p1, v1, v0, v2}, LW0/t;->c(I[BI)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lp0/E;

    .line 15
    .line 16
    iget-object v0, v0, Lp0/E;->a:[B

    .line 17
    .line 18
    aget-byte v0, v0, v1

    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-wide/high16 v0, -0x8000000000000000L

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_0
    const/16 v3, 0x80

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    and-int v5, v0, v3

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    shr-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    not-int v3, v3

    .line 40
    and-int/2addr v0, v3

    .line 41
    iget-object v3, p0, LK/k;->I:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lp0/E;

    .line 44
    .line 45
    iget-object v3, v3, Lp0/E;->a:[B

    .line 46
    .line 47
    invoke-interface {p1, v2, v3, v4}, LW0/t;->c(I[BI)V

    .line 48
    .line 49
    .line 50
    :goto_1
    if-ge v1, v4, :cond_2

    .line 51
    .line 52
    shl-int/lit8 p1, v0, 0x8

    .line 53
    .line 54
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lp0/E;

    .line 57
    .line 58
    iget-object v0, v0, Lp0/E;->a:[B

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    aget-byte v0, v0, v1

    .line 63
    .line 64
    and-int/lit16 v0, v0, 0xff

    .line 65
    .line 66
    add-int/2addr v0, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget p1, p0, LK/k;->H:I

    .line 69
    .line 70
    add-int/2addr v4, v2

    .line 71
    add-int/2addr v4, p1

    .line 72
    iput v4, p0, LK/k;->H:I

    .line 73
    .line 74
    int-to-long v0, v0

    .line 75
    return-wide v0
.end method

.method public final g(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_0

    .line 15
    .line 16
    move-object/from16 v5, p1

    .line 17
    .line 18
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v6, 0xa

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "\n"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    array-length v2, v0

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    move-object v3, v1

    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/x;

    .line 60
    .line 61
    const/16 v4, 0xb

    .line 62
    .line 63
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/x;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iget v4, v1, LK/k;->H:I

    .line 67
    .line 68
    new-instance v11, Ljava/util/PriorityQueue;

    .line 69
    .line 70
    new-instance v5, Lcom/google/android/gms/internal/ads/u2;

    .line 71
    .line 72
    const/4 v6, 0x3

    .line 73
    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/u2;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v11, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    :goto_1
    array-length v5, v0

    .line 81
    if-ge v4, v5, :cond_4

    .line 82
    .line 83
    aget-object v5, v0, v4

    .line 84
    .line 85
    invoke-static {v5, v3}, La7/b;->q(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    array-length v5, v12

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    iget v13, v1, LK/k;->H:I

    .line 93
    .line 94
    array-length v9, v12

    .line 95
    const/4 v14, 0x6

    .line 96
    if-ge v9, v14, :cond_2

    .line 97
    .line 98
    invoke-static {v12, v9}, LU4/a;->v([Ljava/lang/String;I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    invoke-static {v12, v3, v9}, LU4/a;->p([Ljava/lang/String;II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    move v5, v13

    .line 107
    move-object v10, v11

    .line 108
    invoke-static/range {v5 .. v10}, LU4/a;->u(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_2
    invoke-static {v12, v14}, LU4/a;->v([Ljava/lang/String;I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v15

    .line 117
    invoke-static {v12, v3, v14}, LU4/a;->p([Ljava/lang/String;II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const/4 v9, 0x6

    .line 122
    move v5, v13

    .line 123
    move-wide v6, v15

    .line 124
    move-object v10, v11

    .line 125
    invoke-static/range {v5 .. v10}, LU4/a;->u(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 126
    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    move-wide v5, v15

    .line 130
    const/4 v15, 0x1

    .line 131
    :goto_2
    array-length v9, v12

    .line 132
    add-int/lit8 v7, v9, -0x5

    .line 133
    .line 134
    if-ge v15, v7, :cond_3

    .line 135
    .line 136
    add-int/lit8 v7, v15, -0x1

    .line 137
    .line 138
    aget-object v7, v12, v7

    .line 139
    .line 140
    invoke-static {v7}, La7/b;->m(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    add-int/lit8 v8, v15, 0x5

    .line 145
    .line 146
    aget-object v8, v12, v8

    .line 147
    .line 148
    invoke-static {v8}, La7/b;->m(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    move/from16 p1, v4

    .line 153
    .line 154
    int-to-long v3, v7

    .line 155
    const-wide/32 v17, 0x4000ffff

    .line 156
    .line 157
    .line 158
    add-long v5, v5, v17

    .line 159
    .line 160
    int-to-long v7, v8

    .line 161
    invoke-static {v12, v15, v14}, LU4/a;->p([Ljava/lang/String;II)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const-wide/32 v19, 0x7fffffff

    .line 166
    .line 167
    .line 168
    add-long v7, v7, v19

    .line 169
    .line 170
    add-long v3, v3, v19

    .line 171
    .line 172
    const/4 v14, 0x5

    .line 173
    move-object/from16 v20, v0

    .line 174
    .line 175
    const-wide/32 v0, 0x1001fff

    .line 176
    .line 177
    .line 178
    invoke-static {v14, v0, v1}, LU4/a;->g(IJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v21

    .line 182
    rem-long v3, v3, v17

    .line 183
    .line 184
    mul-long v3, v3, v21

    .line 185
    .line 186
    rem-long v3, v3, v17

    .line 187
    .line 188
    sub-long/2addr v5, v3

    .line 189
    rem-long v5, v5, v17

    .line 190
    .line 191
    mul-long v5, v5, v0

    .line 192
    .line 193
    rem-long v5, v5, v17

    .line 194
    .line 195
    rem-long v7, v7, v17

    .line 196
    .line 197
    add-long/2addr v7, v5

    .line 198
    rem-long v0, v7, v17

    .line 199
    .line 200
    move v5, v13

    .line 201
    move-wide v6, v0

    .line 202
    move-object v8, v10

    .line 203
    move-object v10, v11

    .line 204
    invoke-static/range {v5 .. v10}, LU4/a;->u(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    .line 205
    .line 206
    .line 207
    add-int/lit8 v15, v15, 0x1

    .line 208
    .line 209
    const/4 v3, 0x0

    .line 210
    const/4 v14, 0x6

    .line 211
    move/from16 v4, p1

    .line 212
    .line 213
    move-wide v5, v0

    .line 214
    move-object/from16 v0, v20

    .line 215
    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_3
    :goto_3
    move-object/from16 v20, v0

    .line 220
    .line 221
    move/from16 p1, v4

    .line 222
    .line 223
    add-int/lit8 v4, p1, 0x1

    .line 224
    .line 225
    const/4 v3, 0x0

    .line 226
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object/from16 v0, v20

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_4
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_5

    .line 241
    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Lcom/google/android/gms/internal/ads/V5;

    .line 247
    .line 248
    move-object/from16 v3, p0

    .line 249
    .line 250
    :try_start_0
    iget-object v4, v3, LK/k;->I:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v4, Lcom/google/android/gms/internal/ads/S5;

    .line 253
    .line 254
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/V5;->b:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/S5;->b(Ljava/lang/String;)[B

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v4, Landroid/util/Base64OutputStream;

    .line 263
    .line 264
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "Error while writing hash to byteStream"

    .line 270
    .line 271
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_5
    move-object/from16 v3, p0

    .line 276
    .line 277
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/x;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :goto_6
    return-object v0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/M;)J
    .locals 7

    .line 1
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 19
    .line 20
    aget-byte v0, v0, v1

    .line 21
    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/16 v3, 0x80

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 30
    .line 31
    and-int v6, v0, v3

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    shr-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    not-int v3, v3

    .line 40
    and-int/2addr v0, v3

    .line 41
    iget-object v3, p0, LK/k;->I:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lcom/google/android/gms/internal/ads/jr;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 46
    .line 47
    invoke-virtual {p1, v3, v2, v4, v1}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 48
    .line 49
    .line 50
    :goto_1
    if-ge v1, v4, :cond_1

    .line 51
    .line 52
    shl-int/lit8 p1, v0, 0x8

    .line 53
    .line 54
    iget-object v0, p0, LK/k;->I:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 61
    .line 62
    aget-byte v0, v0, v1

    .line 63
    .line 64
    and-int/lit16 v0, v0, 0xff

    .line 65
    .line 66
    add-int/2addr v0, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget p1, p0, LK/k;->H:I

    .line 69
    .line 70
    add-int/2addr p1, v5

    .line 71
    iput p1, p0, LK/k;->H:I

    .line 72
    .line 73
    int-to-long v0, v0

    .line 74
    return-wide v0

    .line 75
    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    .line 76
    .line 77
    return-wide v0
.end method

.method public final k(Ly2/D;Lw2/l;)Ly2/D;
    .locals 3

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ly2/D;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v1, p0, LK/k;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    .line 15
    .line 16
    iget v2, p0, LK/k;->H:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ly2/D;->b()V

    .line 22
    .line 23
    .line 24
    new-instance p1, LF2/z;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, LF2/z;-><init>([B)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final m(Landroid/util/JsonWriter;)V
    .locals 5

    .line 1
    iget v0, p0, LK/k;->H:I

    .line 2
    .line 3
    iget-object v1, p0, LK/k;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/Map;

    .line 6
    .line 7
    sget-object v2, Lp3/g;->b:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v2, "params"

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 16
    .line 17
    .line 18
    const-string v2, "firstline"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 25
    .line 26
    .line 27
    const-string v2, "code"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    int-to-long v3, v0

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Lp3/g;->e(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final then(Lg4/h;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, LK/k;->H:I

    .line 8
    .line 9
    iget-object v1, p0, LK/k;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/P3;

    .line 12
    .line 13
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/ads/Gy;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/T3;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v2, Lc/g;

    .line 33
    .line 34
    const/16 v3, 0xb

    .line 35
    .line 36
    invoke-direct {v2, p1, v1, v3}, Lc/g;-><init>(Ljava/lang/Object;[BI)V

    .line 37
    .line 38
    .line 39
    iput v0, v2, Lc/g;->I:I

    .line 40
    .line 41
    invoke-virtual {v2}, Lc/g;->n()V

    .line 42
    .line 43
    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    :goto_0
    return-object p1
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    iget v1, p0, LK/k;->G:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    .line 3
    iget v0, p0, LK/k;->H:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/eL;->q(I)V

    return-void

    .line 4
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    sget v1, Lcom/google/android/gms/internal/ads/vK;->U:I

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/mL;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/mL;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    return-void

    .line 8
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    sget v1, Lcom/google/android/gms/internal/ads/vK;->U:I

    .line 9
    iget-object v1, p0, LK/k;->I:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/RK;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/tL;->M:Lcom/google/android/gms/internal/ads/Vc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/tL;->J:Lcom/google/android/gms/internal/ads/sL;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sL;->b:Lcom/google/android/gms/internal/ads/uA;

    .line 12
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/sL;->e:Lcom/google/android/gms/internal/ads/wN;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/sL;->a:Lcom/google/android/gms/internal/ads/je;

    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/sL;->a(Lcom/google/android/gms/internal/ads/Vc;Lcom/google/android/gms/internal/ads/uA;Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/sL;->d:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Vc;->zzn()Lcom/google/android/gms/internal/ads/Ie;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/sL;->c(Lcom/google/android/gms/internal/ads/Ie;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/mL;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/ads/mL;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 16
    sget-object v0, Lk3/l;->A:Lk3/l;

    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 17
    const-string v1, "BufferingUrlPinger.attributionReportingManager"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    iget v0, p0, LK/k;->H:I

    iget-object v1, p0, LK/k;->I:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/bw;

    .line 2
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bw;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final zzb()[B
    .locals 2

    .line 3
    iget v0, p0, LK/k;->H:I

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->e:[B

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->d:[B

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->c:[B

    return-object v0
.end method
