.class public final La/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LW3/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1d

    .line 2
    iput v0, p0, La/f;->G:I

    .line 3
    iput-object p1, p0, La/f;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/f;->G:I

    iput-object p1, p0, La/f;->H:Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le0/t;

    .line 4
    .line 5
    iget-object v0, v0, Le0/t;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, La/f;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Le0/t;

    .line 11
    .line 12
    iget-object v1, v1, Le0/t;->f:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v2, p0, La/f;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Le0/t;

    .line 17
    .line 18
    sget-object v3, Le0/t;->k:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v3, v2, Le0/t;->f:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Le0/t;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Le0/t;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v1
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/l;

    .line 4
    .line 5
    iget-object v0, v0, LP1/l;->a:LP1/x;

    .line 6
    .line 7
    iget-object v0, v0, LP1/x;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "readWriteLock.readLock()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :try_start_0
    iget-object v2, p0, La/f;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, LP1/l;

    .line 25
    .line 26
    invoke-virtual {v2}, LP1/l;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, LP1/l;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v2, p0, La/f;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, LP1/l;

    .line 46
    .line 47
    iget-object v2, v2, LP1/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, LP1/l;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    :try_start_2
    iget-object v2, p0, La/f;->H:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, LP1/l;

    .line 70
    .line 71
    iget-object v2, v2, LP1/l;->a:LP1/x;

    .line 72
    .line 73
    invoke-virtual {v2}, LP1/x;->g()LT1/f;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, LT1/f;->getWritableDatabase()LT1/b;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, LT1/b;->L()Z

    .line 82
    .line 83
    .line 84
    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, LP1/l;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :try_start_3
    iget-object v2, p0, La/f;->H:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, LP1/l;

    .line 101
    .line 102
    iget-object v2, v2, LP1/l;->a:LP1/x;

    .line 103
    .line 104
    invoke-virtual {v2}, LP1/x;->g()LT1/f;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, LT1/f;->getWritableDatabase()LT1/b;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, LT1/b;->z()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_4
    invoke-virtual {p0}, La/f;->a()Lv6/i;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v2}, LT1/b;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    .line 121
    .line 122
    :try_start_5
    invoke-interface {v2}, LT1/b;->D()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, LP1/l;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception v1

    .line 137
    goto :goto_7

    .line 138
    :catch_0
    move-exception v2

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    move-exception v2

    .line 141
    goto :goto_2

    .line 142
    :catchall_1
    move-exception v3

    .line 143
    :try_start_6
    invoke-interface {v2}, LT1/b;->D()V

    .line 144
    .line 145
    .line 146
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    :goto_1
    :try_start_7
    const-string v3, "ROOM"

    .line 148
    .line 149
    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 150
    .line 151
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    sget-object v3, Lu6/s;->G:Lu6/s;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :goto_2
    const-string v3, "ROOM"

    .line 158
    .line 159
    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 160
    .line 161
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    sget-object v3, Lu6/s;->G:Lu6/s;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :goto_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    xor-int/2addr v0, v1

    .line 172
    if-eqz v0, :cond_4

    .line 173
    .line 174
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, LP1/l;

    .line 177
    .line 178
    iget-object v1, v0, LP1/l;->j:Ln/g;

    .line 179
    .line 180
    monitor-enter v1

    .line 181
    :try_start_8
    iget-object v0, v0, LP1/l;->j:Ln/g;

    .line 182
    .line 183
    invoke-virtual {v0}, Ln/g;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_4
    move-object v2, v0

    .line 188
    check-cast v2, Ln/e;

    .line 189
    .line 190
    invoke-virtual {v2}, Ln/e;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_3

    .line 195
    .line 196
    invoke-virtual {v2}, Ln/e;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, LP1/k;

    .line 207
    .line 208
    invoke-virtual {v2, v3}, LP1/k;->a(Ljava/util/Set;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    goto :goto_5

    .line 214
    :cond_3
    monitor-exit v1

    .line 215
    goto :goto_6

    .line 216
    :goto_5
    monitor-exit v1

    .line 217
    throw v0

    .line 218
    :cond_4
    :goto_6
    return-void

    .line 219
    :goto_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, LP1/l;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    throw v1
.end method


# virtual methods
.method public final a()Lv6/i;
    .locals 4

    .line 1
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/l;

    .line 4
    .line 5
    new-instance v1, Lv6/i;

    .line 6
    .line 7
    invoke-direct {v1}, Lv6/i;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, LP1/l;->a:LP1/x;

    .line 11
    .line 12
    new-instance v2, LT1/a;

    .line 13
    .line 14
    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    .line 15
    .line 16
    invoke-direct {v2, v3}, LT1/a;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v2, v3}, LP1/x;->l(LT1/h;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lv6/i;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-static {v0, v3}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ly4/k;->j(Lv6/i;)Lv6/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, v0, Lv6/i;->G:Lv6/f;

    .line 53
    .line 54
    invoke-virtual {v1}, Lv6/f;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    xor-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, La/f;->H:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, LP1/l;

    .line 65
    .line 66
    iget-object v1, v1, LP1/l;->h:LT1/i;

    .line 67
    .line 68
    const-string v2, "Required value was null."

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, La/f;->H:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, LP1/l;

    .line 75
    .line 76
    iget-object v1, v1, LP1/l;->h:LT1/i;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-interface {v1}, LT1/i;->l()I

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    :goto_1
    return-object v0

    .line 105
    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :catchall_1
    move-exception v2

    .line 107
    invoke-static {v0, v1}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v2
.end method

.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, La/f;->G:I

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LW3/f;

    .line 13
    .line 14
    iget-object v3, v0, LW3/f;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v3}, LW3/f;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v5, "app_set_id_last_used_time"

    .line 21
    .line 22
    invoke-interface {v3, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    cmp-long v3, v5, v1

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const-wide v7, 0x7d8702800L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    add-long/2addr v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v5, v1

    .line 38
    :goto_0
    cmp-long v3, v5, v1

    .line 39
    .line 40
    if-eqz v3, :cond_4

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    cmp-long v3, v1, v5

    .line 47
    .line 48
    if-lez v3, :cond_4

    .line 49
    .line 50
    iget-object v0, v0, LW3/f;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, LW3/f;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "app_set_id"

    .line 61
    .line 62
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const-string v2, "AppSet"

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string v5, "Failed to clear app set ID generated for App "

    .line 87
    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_2
    const-string v1, "app_set_id_storage"

    .line 104
    .line 105
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v3, "app_set_id_last_used_time"

    .line 114
    .line 115
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const-string v3, "Failed to clear app set ID last used time for App "

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void

    .line 155
    :pswitch_1
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, LH3/p;

    .line 158
    .line 159
    sget-object v1, LH3/p;->i:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v1

    .line 162
    :try_start_0
    invoke-virtual {v0}, LH3/p;->d()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_5

    .line 167
    .line 168
    monitor-exit v1

    .line 169
    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    goto :goto_4

    .line 172
    :cond_5
    const/16 v2, 0xf

    .line 173
    .line 174
    invoke-virtual {v0, v2}, LH3/p;->f(I)Z

    .line 175
    .line 176
    .line 177
    monitor-exit v1

    .line 178
    :goto_3
    return-void

    .line 179
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw v0

    .line 181
    :pswitch_2
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, LF3/l;

    .line 184
    .line 185
    invoke-virtual {v0, v4}, LF3/l;->g(Z)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_3
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lo3/L;

    .line 192
    .line 193
    invoke-virtual {v0}, Lo3/L;->x()Lcom/google/android/gms/internal/ads/Q5;

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_4
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Lo3/n;

    .line 200
    .line 201
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lo3/n;->a()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_5
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Ln3/k;

    .line 214
    .line 215
    invoke-virtual {v0}, Ln3/k;->zzc()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_6
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Lcom/google/android/gms/internal/ads/xd;

    .line 222
    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/xd;->d(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "#007 Could not call remote method."

    .line 231
    .line 232
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    .line 234
    .line 235
    :cond_6
    :goto_5
    return-void

    .line 236
    :pswitch_7
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Ll3/P0;

    .line 239
    .line 240
    iget-object v0, v0, Ll3/P0;->G:Ll3/w;

    .line 241
    .line 242
    if-eqz v0, :cond_7

    .line 243
    .line 244
    :try_start_2
    invoke-interface {v0, v3}, Ll3/w;->d(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 250
    .line 251
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :cond_7
    :goto_6
    return-void

    .line 255
    :pswitch_8
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Ll3/N0;

    .line 258
    .line 259
    iget-object v0, v0, Ll3/N0;->G:Ll3/O0;

    .line 260
    .line 261
    iget-object v0, v0, Ll3/O0;->G:Ll3/w;

    .line 262
    .line 263
    if-eqz v0, :cond_8

    .line 264
    .line 265
    :try_start_3
    invoke-interface {v0, v3}, Ll3/w;->d(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 266
    .line 267
    .line 268
    goto :goto_7

    .line 269
    :catch_2
    move-exception v0

    .line 270
    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 271
    .line 272
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    :goto_7
    return-void

    .line 276
    :pswitch_9
    :try_start_4
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Ljava/lang/Runnable;

    .line 279
    .line 280
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :catch_3
    move-exception v0

    .line 285
    const-string v1, "Executor"

    .line 286
    .line 287
    const-string v2, "Background execution failure."

    .line 288
    .line 289
    invoke-static {v1, v2, v0}, LE3/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 290
    .line 291
    .line 292
    :goto_8
    return-void

    .line 293
    :pswitch_a
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v0, Ly2/c;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    :goto_9
    :try_start_5
    iget-object v1, v0, Ly2/c;->d:Ljava/lang/ref/ReferenceQueue;

    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    check-cast v1, Ly2/b;

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ly2/c;->b(Ly2/b;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :pswitch_b
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v0, Lcom/bumptech/glide/n;

    .line 323
    .line 324
    iget-object v1, v0, Lcom/bumptech/glide/n;->I:LJ2/h;

    .line 325
    .line 326
    invoke-interface {v1, v0}, LJ2/h;->i(LJ2/j;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :pswitch_c
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 331
    .line 332
    :try_start_6
    move-object v1, v0

    .line 333
    check-cast v1, Landroidx/work/Worker;

    .line 334
    .line 335
    invoke-virtual {v1}, Landroidx/work/Worker;->doWork()Ld2/l;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    move-object v2, v0

    .line 340
    check-cast v2, Landroidx/work/Worker;

    .line 341
    .line 342
    iget-object v2, v2, Landroidx/work/Worker;->K:Lo2/j;

    .line 343
    .line 344
    invoke-virtual {v2, v1}, Lo2/j;->j(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 345
    .line 346
    .line 347
    goto :goto_a

    .line 348
    :catchall_1
    move-exception v1

    .line 349
    check-cast v0, Landroidx/work/Worker;

    .line 350
    .line 351
    iget-object v0, v0, Landroidx/work/Worker;->K:Lo2/j;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Lo2/j;->k(Ljava/lang/Throwable;)Z

    .line 354
    .line 355
    .line 356
    :goto_a
    return-void

    .line 357
    :pswitch_d
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 360
    .line 361
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->p()V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :pswitch_e
    invoke-direct {p0}, La/f;->c()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_f
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, LS0/k;

    .line 375
    .line 376
    invoke-interface {v0}, LS0/k;->d()V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :pswitch_10
    invoke-direct {p0}, La/f;->b()V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_11
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v0, Landroidx/leanback/widget/q;

    .line 387
    .line 388
    invoke-virtual {v0}, LO1/L;->D0()V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :pswitch_12
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, LY/K;

    .line 395
    .line 396
    invoke-virtual {v0, v3}, LY/K;->x(Z)Z

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_13
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v0, LY/m;

    .line 403
    .line 404
    iget-object v1, v0, LY/m;->F0:LY/k;

    .line 405
    .line 406
    iget-object v0, v0, LY/m;->N0:Landroid/app/Dialog;

    .line 407
    .line 408
    invoke-virtual {v1, v0}, LY/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_14
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, LY/e;

    .line 415
    .line 416
    iget-object v1, v0, LY/e;->b:Landroid/view/ViewGroup;

    .line 417
    .line 418
    iget-object v2, v0, LY/e;->c:Landroid/view/View;

    .line 419
    .line 420
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 421
    .line 422
    .line 423
    iget-object v0, v0, LY/e;->d:LY/g;

    .line 424
    .line 425
    invoke-virtual {v0}, Lf/H;->c()V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_15
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v0, LT/c;

    .line 432
    .line 433
    invoke-virtual {v0, v4}, LT/c;->n(I)V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :pswitch_16
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v0, LQ/d;

    .line 440
    .line 441
    iget-boolean v3, v0, LQ/d;->U:Z

    .line 442
    .line 443
    if-nez v3, :cond_9

    .line 444
    .line 445
    goto/16 :goto_c

    .line 446
    .line 447
    :cond_9
    iget-boolean v3, v0, LQ/d;->S:Z

    .line 448
    .line 449
    if-eqz v3, :cond_a

    .line 450
    .line 451
    iput-boolean v4, v0, LQ/d;->S:Z

    .line 452
    .line 453
    iget-object v3, v0, LQ/d;->G:LQ/a;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 459
    .line 460
    .line 461
    move-result-wide v5

    .line 462
    iput-wide v5, v3, LQ/a;->e:J

    .line 463
    .line 464
    iput-wide v1, v3, LQ/a;->g:J

    .line 465
    .line 466
    iput-wide v5, v3, LQ/a;->f:J

    .line 467
    .line 468
    const/high16 v1, 0x3f000000    # 0.5f

    .line 469
    .line 470
    iput v1, v3, LQ/a;->h:F

    .line 471
    .line 472
    :cond_a
    iget-object v1, v0, LQ/d;->G:LQ/a;

    .line 473
    .line 474
    iget-wide v2, v1, LQ/a;->g:J

    .line 475
    .line 476
    const-wide/16 v5, 0x0

    .line 477
    .line 478
    cmp-long v7, v2, v5

    .line 479
    .line 480
    if-lez v7, :cond_b

    .line 481
    .line 482
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 483
    .line 484
    .line 485
    move-result-wide v2

    .line 486
    iget-wide v7, v1, LQ/a;->g:J

    .line 487
    .line 488
    iget v9, v1, LQ/a;->i:I

    .line 489
    .line 490
    int-to-long v9, v9

    .line 491
    add-long/2addr v7, v9

    .line 492
    cmp-long v9, v2, v7

    .line 493
    .line 494
    if-lez v9, :cond_b

    .line 495
    .line 496
    goto :goto_b

    .line 497
    :cond_b
    invoke-virtual {v0}, LQ/d;->f()Z

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    if-nez v2, :cond_c

    .line 502
    .line 503
    :goto_b
    iput-boolean v4, v0, LQ/d;->U:Z

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_c
    iget-boolean v2, v0, LQ/d;->T:Z

    .line 507
    .line 508
    if-eqz v2, :cond_d

    .line 509
    .line 510
    iput-boolean v4, v0, LQ/d;->T:Z

    .line 511
    .line 512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 513
    .line 514
    .line 515
    move-result-wide v9

    .line 516
    const/4 v13, 0x0

    .line 517
    const/4 v14, 0x0

    .line 518
    const/4 v11, 0x3

    .line 519
    const/4 v12, 0x0

    .line 520
    move-wide v7, v9

    .line 521
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    iget-object v3, v0, LQ/d;->I:Landroid/view/View;

    .line 526
    .line 527
    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 531
    .line 532
    .line 533
    :cond_d
    iget-wide v2, v1, LQ/a;->f:J

    .line 534
    .line 535
    cmp-long v4, v2, v5

    .line 536
    .line 537
    if-eqz v4, :cond_e

    .line 538
    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 540
    .line 541
    .line 542
    move-result-wide v2

    .line 543
    invoke-virtual {v1, v2, v3}, LQ/a;->a(J)F

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    const/high16 v5, -0x3f800000    # -4.0f

    .line 548
    .line 549
    mul-float v5, v5, v4

    .line 550
    .line 551
    mul-float v5, v5, v4

    .line 552
    .line 553
    const/high16 v6, 0x40800000    # 4.0f

    .line 554
    .line 555
    mul-float v4, v4, v6

    .line 556
    .line 557
    add-float/2addr v4, v5

    .line 558
    iget-wide v5, v1, LQ/a;->f:J

    .line 559
    .line 560
    sub-long v5, v2, v5

    .line 561
    .line 562
    iput-wide v2, v1, LQ/a;->f:J

    .line 563
    .line 564
    long-to-float v2, v5

    .line 565
    mul-float v2, v2, v4

    .line 566
    .line 567
    iget v1, v1, LQ/a;->d:F

    .line 568
    .line 569
    mul-float v2, v2, v1

    .line 570
    .line 571
    float-to-int v1, v2

    .line 572
    iget-object v2, v0, LQ/d;->W:Landroid/widget/ListView;

    .line 573
    .line 574
    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 575
    .line 576
    .line 577
    iget-object v0, v0, LQ/d;->I:Landroid/view/View;

    .line 578
    .line 579
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 580
    .line 581
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 582
    .line 583
    .line 584
    :goto_c
    return-void

    .line 585
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 586
    .line 587
    const-string v1, "Cannot compute scroll delta before calling start()"

    .line 588
    .line 589
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v0

    .line 593
    :pswitch_17
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 596
    .line 597
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/widget/ActionMenuView;

    .line 598
    .line 599
    if-eqz v0, :cond_f

    .line 600
    .line 601
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->c0:Ll/n;

    .line 602
    .line 603
    if-eqz v0, :cond_f

    .line 604
    .line 605
    invoke-virtual {v0}, Ll/n;->l()Z

    .line 606
    .line 607
    .line 608
    :cond_f
    return-void

    .line 609
    :pswitch_18
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 612
    .line 613
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->L:Z

    .line 614
    .line 615
    if-eqz v1, :cond_10

    .line 616
    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    const-string v2, "input_method"

    .line 622
    .line 623
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 628
    .line 629
    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 630
    .line 631
    .line 632
    iput-boolean v4, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->L:Z

    .line 633
    .line 634
    :cond_10
    return-void

    .line 635
    :pswitch_19
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v0, Ll/z0;

    .line 638
    .line 639
    const/4 v1, 0x0

    .line 640
    iput-object v1, v0, Ll/z0;->R:La/f;

    .line 641
    .line 642
    invoke-virtual {v0}, Ll/z0;->drawableStateChanged()V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :pswitch_1a
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v0, Lg/h;

    .line 649
    .line 650
    invoke-virtual {v0, v3}, Lg/h;->a(Z)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :pswitch_1b
    :try_start_7
    iget-object v0, p0, La/f;->H:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v0, La/m;

    .line 660
    .line 661
    invoke-static {v0}, La/m;->g(La/m;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5

    .line 662
    .line 663
    .line 664
    goto :goto_d

    .line 665
    :catch_5
    move-exception v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    const-string v2, "Can not perform this action after onSaveInstanceState"

    .line 671
    .line 672
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-eqz v1, :cond_11

    .line 677
    .line 678
    :goto_d
    return-void

    .line 679
    :cond_11
    throw v0

    .line 680
    nop

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
