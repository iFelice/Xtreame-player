.class public final Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/p;


# static fields
.field public static final K:Ljava/lang/String;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Landroid/app/job/JobScheduler;

.field public final I:Le2/y;

.field public final J:Lh2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lh2/c;->K:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le2/y;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    new-instance v1, Lh2/b;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lh2/b;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lh2/c;->G:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p2, p0, Lh2/c;->I:Le2/y;

    .line 20
    .line 21
    iput-object v0, p0, Lh2/c;->H:Landroid/app/job/JobScheduler;

    .line 22
    .line 23
    iput-object v1, p0, Lh2/c;->J:Lh2/b;

    .line 24
    .line 25
    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p1, v2, v3

    .line 23
    .line 24
    const-string p1, "Exception while trying to cancel job (%d)"

    .line 25
    .line 26
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v1, Lh2/c;->K:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1, p0}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lh2/c;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/job/JobInfo;

    .line 30
    .line 31
    invoke-static {v0}, Lh2/c;->g(Landroid/app/job/JobInfo;)Lm2/j;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Lm2/j;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-object p1
.end method

.method public static f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lh2/c;->K:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "getAllPendingJobs() is not reliable on this device."

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, p1}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/content/ComponentName;

    .line 33
    .line 34
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 35
    .line 36
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/job/JobInfo;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-object v0
.end method

.method public static g(Landroid/app/job/JobInfo;)Lm2/j;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Lm2/j;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0, v1}, Lm2/j;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final varargs c([Lm2/q;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lh2/c;->I:Le2/y;

    .line 2
    .line 3
    iget-object v1, v0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    new-instance v2, Ln2/i;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v1, v3}, Ln2/i;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 9
    .line 10
    .line 11
    array-length v4, p1

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v4, :cond_7

    .line 14
    .line 15
    aget-object v6, p1, v5

    .line 16
    .line 17
    invoke-virtual {v1}, LP1/x;->c()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v8, v6, Lm2/q;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 27
    .line 28
    .line 29
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    const-string v8, "Skipping scheduling "

    .line 31
    .line 32
    sget-object v9, Lh2/c;->K:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v10, v6, Lm2/q;->a:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    :try_start_1
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v8, " because it\'s no longer in the DB"

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v6, v9, v7}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v1}, LP1/x;->j()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_0
    :try_start_2
    iget v7, v7, Lm2/q;->b:I

    .line 77
    .line 78
    const/4 v11, 0x1

    .line 79
    if-eq v7, v11, :cond_1

    .line 80
    .line 81
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v8, " because it is no longer enqueued"

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v6, v9, v7}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, LP1/x;->n()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-static {v6}, Lm2/f;->a(Lm2/q;)Lm2/j;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->r()Lm2/i;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8, v7}, Lm2/i;->m(Lm2/j;)Lm2/g;

    .line 121
    .line 122
    .line 123
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    const-string v9, "workDatabase.runInTransa\u2026            id\n        })"

    .line 125
    .line 126
    iget-object v11, v2, Ln2/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 127
    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    :try_start_3
    iget v12, v8, Lm2/g;->c:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    iget-object v12, v0, Le2/y;->b:Ld2/b;

    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v12, v0, Le2/y;->b:Ld2/b;

    .line 139
    .line 140
    iget v12, v12, Ld2/b;->g:I

    .line 141
    .line 142
    new-instance v13, Ln2/h;

    .line 143
    .line 144
    invoke-direct {v13, v2, v12}, Ln2/h;-><init>(Ln2/i;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v13}, LP1/x;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-static {v12, v9}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    check-cast v12, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    :goto_2
    if-nez v8, :cond_3

    .line 161
    .line 162
    new-instance v8, Lm2/g;

    .line 163
    .line 164
    iget-object v13, v7, Lm2/j;->a:Ljava/lang/String;

    .line 165
    .line 166
    iget v7, v7, Lm2/j;->b:I

    .line 167
    .line 168
    invoke-direct {v8, v13, v7, v12}, Lm2/g;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    iget-object v7, v0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 172
    .line 173
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->r()Lm2/i;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7, v8}, Lm2/i;->n(Lm2/g;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    invoke-virtual {p0, v6, v12}, Lh2/c;->h(Lm2/q;I)V

    .line 181
    .line 182
    .line 183
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 184
    .line 185
    const/16 v8, 0x17

    .line 186
    .line 187
    if-ne v7, v8, :cond_6

    .line 188
    .line 189
    iget-object v7, p0, Lh2/c;->G:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v8, p0, Lh2/c;->H:Landroid/app/job/JobScheduler;

    .line 192
    .line 193
    invoke-static {v7, v8, v10}, Lh2/c;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-eqz v7, :cond_6

    .line 198
    .line 199
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-ltz v8, :cond_4

    .line 208
    .line 209
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_5

    .line 217
    .line 218
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    goto :goto_3

    .line 229
    :cond_5
    iget-object v7, v0, Le2/y;->b:Ld2/b;

    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v7, v0, Le2/y;->b:Ld2/b;

    .line 235
    .line 236
    iget v7, v7, Ld2/b;->g:I

    .line 237
    .line 238
    new-instance v8, Ln2/h;

    .line 239
    .line 240
    invoke-direct {v8, v2, v7}, Ln2/h;-><init>(Ln2/i;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v8}, LP1/x;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-static {v7, v9}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    check-cast v7, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    :goto_3
    invoke-virtual {p0, v6, v7}, Lh2/c;->h(Lm2/q;I)V

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :goto_5
    invoke-virtual {v1}, LP1/x;->j()V

    .line 269
    .line 270
    .line 271
    throw p1

    .line 272
    :cond_7
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh2/c;->G:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lh2/c;->H:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lh2/c;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v1, v2}, Lh2/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lh2/c;->I:Le2/y;

    .line 42
    .line 43
    iget-object v0, v0, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lm2/i;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, LP1/x;

    .line 52
    .line 53
    invoke-virtual {v1}, LP1/x;->b()V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lk/d;

    .line 59
    .line 60
    invoke-virtual {v1}, Lk/d;->c()LT1/i;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    invoke-interface {v1, v2}, LT1/g;->J(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v1, v2, p1}, LT1/g;->g(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iget-object p1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, LP1/x;

    .line 77
    .line 78
    invoke-virtual {p1}, LP1/x;->c()V

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-interface {v1}, LT1/i;->l()I

    .line 82
    .line 83
    .line 84
    iget-object p1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, LP1/x;

    .line 87
    .line 88
    invoke-virtual {p1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    iget-object p1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, LP1/x;

    .line 94
    .line 95
    invoke-virtual {p1}, LP1/x;->j()V

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Lk/d;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lk/d;->m(LT1/i;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    iget-object v2, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, LP1/x;

    .line 110
    .line 111
    invoke-virtual {v2}, LP1/x;->j()V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lk/d;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lk/d;->m(LT1/i;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_2
    :goto_2
    return-void
.end method

.method public final h(Lm2/q;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    iget-object v7, v1, Lh2/c;->H:Landroid/app/job/JobScheduler;

    .line 11
    .line 12
    iget-object v8, v1, Lh2/c;->J:Lh2/b;

    .line 13
    .line 14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v9, v2, Lm2/q;->j:Ld2/d;

    .line 18
    .line 19
    new-instance v10, Landroid/os/PersistableBundle;

    .line 20
    .line 21
    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v11, "EXTRA_WORK_SPEC_ID"

    .line 25
    .line 26
    iget-object v12, v2, Lm2/q;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v10, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v11, "EXTRA_WORK_SPEC_GENERATION"

    .line 32
    .line 33
    iget v13, v2, Lm2/q;->t:I

    .line 34
    .line 35
    invoke-virtual {v10, v11, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lm2/q;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    invoke-static {v10, v11}, LE/a;->e(Landroid/os/PersistableBundle;Z)V

    .line 43
    .line 44
    .line 45
    new-instance v11, Landroid/app/job/JobInfo$Builder;

    .line 46
    .line 47
    iget-object v8, v8, Lh2/b;->a:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-direct {v11, v0, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v8, v9, Ld2/d;->b:Z

    .line 53
    .line 54
    invoke-virtual {v11, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    iget-boolean v11, v9, Ld2/d;->c:Z

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8, v10}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v13, 0x1e

    .line 71
    .line 72
    const/16 v14, 0x18

    .line 73
    .line 74
    const/16 v15, 0x1a

    .line 75
    .line 76
    iget v4, v9, Ld2/d;->a:I

    .line 77
    .line 78
    if-lt v10, v13, :cond_0

    .line 79
    .line 80
    const/4 v13, 0x6

    .line 81
    if-ne v4, v13, :cond_0

    .line 82
    .line 83
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    .line 84
    .line 85
    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v13, 0x19

    .line 89
    .line 90
    invoke-virtual {v4, v13}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v8, v4}, LN/d0;->q(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_0
    invoke-static {v4}, Lu/h;->b(I)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_6

    .line 107
    .line 108
    if-eq v13, v5, :cond_4

    .line 109
    .line 110
    if-eq v13, v6, :cond_5

    .line 111
    .line 112
    if-eq v13, v3, :cond_2

    .line 113
    .line 114
    const/4 v3, 0x4

    .line 115
    if-eq v13, v3, :cond_1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    if-lt v10, v15, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    if-lt v10, v14, :cond_3

    .line 122
    .line 123
    const/4 v3, 0x3

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v4}, Lcom/google/protobuf/U2;->C(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const-string v13, "API version too low. Cannot convert network type value "

    .line 134
    .line 135
    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    sget-object v13, Lh2/b;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v3, v13, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    const/4 v3, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_5
    const/4 v3, 0x2

    .line 147
    goto :goto_1

    .line 148
    :cond_6
    const/4 v3, 0x0

    .line 149
    :goto_1
    invoke-virtual {v8, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 150
    .line 151
    .line 152
    :goto_2
    if-nez v11, :cond_8

    .line 153
    .line 154
    iget v3, v2, Lm2/q;->l:I

    .line 155
    .line 156
    if-ne v3, v6, :cond_7

    .line 157
    .line 158
    move-object v11, v7

    .line 159
    const/4 v3, 0x0

    .line 160
    goto :goto_3

    .line 161
    :cond_7
    move-object v11, v7

    .line 162
    const/4 v3, 0x1

    .line 163
    :goto_3
    iget-wide v6, v2, Lm2/q;->m:J

    .line 164
    .line 165
    invoke-virtual {v8, v6, v7, v3}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move-object v11, v7

    .line 170
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lm2/q;->a()J

    .line 171
    .line 172
    .line 173
    move-result-wide v6

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v16

    .line 178
    sub-long v6, v6, v16

    .line 179
    .line 180
    const-wide/16 v4, 0x0

    .line 181
    .line 182
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v6

    .line 186
    const/16 v3, 0x1c

    .line 187
    .line 188
    if-gt v10, v3, :cond_9

    .line 189
    .line 190
    invoke-virtual {v8, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_9
    cmp-long v3, v6, v4

    .line 195
    .line 196
    if-lez v3, :cond_a

    .line 197
    .line 198
    invoke-virtual {v8, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_a
    iget-boolean v3, v2, Lm2/q;->q:Z

    .line 203
    .line 204
    if-nez v3, :cond_b

    .line 205
    .line 206
    invoke-static {v8}, LN/d0;->p(Landroid/app/job/JobInfo$Builder;)V

    .line 207
    .line 208
    .line 209
    :cond_b
    :goto_5
    if-lt v10, v14, :cond_d

    .line 210
    .line 211
    iget-object v10, v9, Ld2/d;->h:Ljava/util/Set;

    .line 212
    .line 213
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    const/4 v14, 0x1

    .line 218
    xor-int/lit8 v16, v3, 0x1

    .line 219
    .line 220
    if-eqz v16, :cond_d

    .line 221
    .line 222
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_c

    .line 231
    .line 232
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    check-cast v14, Ld2/c;

    .line 237
    .line 238
    iget-boolean v3, v14, Ld2/c;->b:Z

    .line 239
    .line 240
    invoke-static {}, Lc4/J0;->s()V

    .line 241
    .line 242
    .line 243
    iget-object v14, v14, Ld2/c;->a:Landroid/net/Uri;

    .line 244
    .line 245
    invoke-static {v14, v3}, Lh2/a;->a(Landroid/net/Uri;I)Landroid/app/job/JobInfo$TriggerContentUri;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-static {v8, v3}, Lh2/a;->h(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$TriggerContentUri;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_c
    iget-wide v13, v9, Ld2/d;->f:J

    .line 254
    .line 255
    invoke-static {v8, v13, v14}, Lh2/a;->g(Landroid/app/job/JobInfo$Builder;J)V

    .line 256
    .line 257
    .line 258
    iget-wide v13, v9, Ld2/d;->g:J

    .line 259
    .line 260
    invoke-static {v8, v13, v14}, Lh2/a;->q(Landroid/app/job/JobInfo$Builder;J)V

    .line 261
    .line 262
    .line 263
    :cond_d
    const/4 v3, 0x0

    .line 264
    invoke-virtual {v8, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 265
    .line 266
    .line 267
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268
    .line 269
    if-lt v3, v15, :cond_e

    .line 270
    .line 271
    iget-boolean v10, v9, Ld2/d;->d:Z

    .line 272
    .line 273
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/Hf;->t(Landroid/app/job/JobInfo$Builder;Z)V

    .line 274
    .line 275
    .line 276
    iget-boolean v9, v9, Ld2/d;->e:Z

    .line 277
    .line 278
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/Hf;->D(Landroid/app/job/JobInfo$Builder;Z)V

    .line 279
    .line 280
    .line 281
    :cond_e
    iget v9, v2, Lm2/q;->k:I

    .line 282
    .line 283
    if-lez v9, :cond_f

    .line 284
    .line 285
    const/4 v9, 0x1

    .line 286
    goto :goto_7

    .line 287
    :cond_f
    const/4 v9, 0x0

    .line 288
    :goto_7
    cmp-long v10, v6, v4

    .line 289
    .line 290
    if-lez v10, :cond_10

    .line 291
    .line 292
    const/4 v4, 0x1

    .line 293
    goto :goto_8

    .line 294
    :cond_10
    const/4 v4, 0x0

    .line 295
    :goto_8
    const/16 v5, 0x1f

    .line 296
    .line 297
    if-lt v3, v5, :cond_11

    .line 298
    .line 299
    iget-boolean v3, v2, Lm2/q;->q:Z

    .line 300
    .line 301
    if-eqz v3, :cond_11

    .line 302
    .line 303
    if-nez v9, :cond_11

    .line 304
    .line 305
    if-nez v4, :cond_11

    .line 306
    .line 307
    invoke-static {v8}, LN/f;->i(Landroid/app/job/JobInfo$Builder;)V

    .line 308
    .line 309
    .line 310
    :cond_11
    invoke-virtual {v8}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    const-string v6, "Scheduling work ID "

    .line 321
    .line 322
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v6, "Job ID "

    .line 329
    .line 330
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    sget-object v6, Lh2/c;->K:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v4, v6, v5}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :try_start_0
    invoke-virtual {v11, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_12

    .line 350
    .line 351
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v5, "Unable to schedule work ID "

    .line 361
    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v3, v6, v4}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-boolean v3, v2, Lm2/q;->q:Z

    .line 376
    .line 377
    if-eqz v3, :cond_12

    .line 378
    .line 379
    iget v3, v2, Lm2/q;->r:I

    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    if-ne v3, v4, :cond_12

    .line 383
    .line 384
    const/4 v4, 0x0

    .line 385
    iput-boolean v4, v2, Lm2/q;->q:Z

    .line 386
    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v5, "Scheduling a non-expedited job (work ID "

    .line 393
    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v5, ")"

    .line 401
    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {v5, v6, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual/range {p0 .. p2}, Lh2/c;->h(Lm2/q;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .line 418
    .line 419
    goto :goto_a

    .line 420
    :catchall_0
    move-exception v0

    .line 421
    goto :goto_9

    .line 422
    :catch_0
    move-exception v0

    .line 423
    goto :goto_b

    .line 424
    :goto_9
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v5, "Unable to schedule "

    .line 431
    .line 432
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v3, v6, v2, v0}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .line 444
    .line 445
    :cond_12
    :goto_a
    return-void

    .line 446
    :goto_b
    iget-object v2, v1, Lh2/c;->G:Landroid/content/Context;

    .line 447
    .line 448
    invoke-static {v2, v11}, Lh2/c;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-eqz v2, :cond_13

    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    goto :goto_c

    .line 459
    :cond_13
    const/4 v2, 0x0

    .line 460
    :goto_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    iget-object v5, v1, Lh2/c;->I:Le2/y;

    .line 469
    .line 470
    iget-object v7, v5, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 471
    .line 472
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v7}, Lm2/s;->d()Ljava/util/ArrayList;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    iget-object v8, v5, Le2/y;->b:Ld2/b;

    .line 489
    .line 490
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 491
    .line 492
    iget v8, v8, Ld2/b;->h:I

    .line 493
    .line 494
    const/16 v10, 0x17

    .line 495
    .line 496
    if-ne v9, v10, :cond_14

    .line 497
    .line 498
    const/4 v9, 0x2

    .line 499
    div-int/2addr v8, v9

    .line 500
    goto :goto_d

    .line 501
    :cond_14
    const/4 v9, 0x2

    .line 502
    :goto_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    const/4 v10, 0x3

    .line 507
    new-array v10, v10, [Ljava/lang/Object;

    .line 508
    .line 509
    const/4 v11, 0x0

    .line 510
    aput-object v2, v10, v11

    .line 511
    .line 512
    const/4 v2, 0x1

    .line 513
    aput-object v7, v10, v2

    .line 514
    .line 515
    aput-object v8, v10, v9

    .line 516
    .line 517
    const-string v2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 518
    .line 519
    invoke-static {v4, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v3, v6, v2}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 531
    .line 532
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    .line 534
    .line 535
    iget-object v0, v5, Le2/y;->b:Ld2/b;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    throw v3
.end method
