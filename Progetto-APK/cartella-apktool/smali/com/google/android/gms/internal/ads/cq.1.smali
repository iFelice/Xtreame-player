.class public final Lcom/google/android/gms/internal/ads/cq;
.super Lcom/google/android/gms/internal/ads/My;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lcom/google/android/gms/internal/ads/jC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->H7:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget v1, Lcom/google/android/gms/internal/ads/Ly;->d:I

    .line 18
    .line 19
    const-string v1, "AdMobOfflineBufferedPings.db"

    .line 20
    .line 21
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cq;->G:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cq;->H:Lcom/google/android/gms/internal/ads/jC;

    .line 27
    .line 28
    return-void
.end method

.method public static O(Landroid/database/sqlite/SQLiteDatabase;Lp3/k;)V
    .locals 13

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    const-string v1, "timestamp"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const-string v5, "event_state = 1"

    .line 13
    .line 14
    const-string v9, "timestamp ASC"

    .line 15
    .line 16
    const-string v3, "offline_buffered_pings"

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    move-object v2, p0

    .line 23
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-array v4, v3, [Ljava/lang/String;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    const/4 v9, -0x1

    .line 50
    if-eq v8, v9, :cond_1

    .line 51
    .line 52
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    const-string v7, ""

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sget-object v8, Lk3/l;->A:Lk3/l;

    .line 72
    .line 73
    iget-object v8, v8, Lk3/l;->j:LP3/b;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v11

    .line 82
    sub-long/2addr v11, v9

    .line 83
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-string v8, "bd"

    .line 88
    .line 89
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    :goto_1
    aput-object v7, v4, v6

    .line 106
    .line 107
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    const-string v0, "event_state = ?"

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    new-array v2, v1, [Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    aput-object v1, v2, v5

    .line 123
    .line 124
    const-string v1, "offline_buffered_pings"

    .line 125
    .line 126
    invoke-virtual {p0, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    .line 134
    .line 135
    :goto_2
    if-ge v5, v3, :cond_3

    .line 136
    .line 137
    aget-object p0, v4, v5

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Lp3/k;->c(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    return-void

    .line 146
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 147
    .line 148
    .line 149
    throw p1
.end method


# virtual methods
.method public final E(LA0/w;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cq;->N(Lcom/google/android/gms/internal/ads/Dw;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final N(Lcom/google/android/gms/internal/ads/Dw;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cq;->H:Lcom/google/android/gms/internal/ads/jC;

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/google/android/gms/internal/ads/IB;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/Qp;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/Qp;-><init>(Lcom/google/android/gms/internal/ads/Dw;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/J;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/J;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cq;->N(Lcom/google/android/gms/internal/ads/Dw;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS offline_buffered_pings"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS offline_buffered_pings"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
