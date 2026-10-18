.class public final synthetic La3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:La3/j;

.field public final synthetic H:LU2/i;

.field public final synthetic I:I

.field public final synthetic J:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(La3/j;LU2/i;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/f;->G:La3/j;

    .line 5
    .line 6
    iput-object p2, p0, La3/f;->H:LU2/i;

    .line 7
    .line 8
    iput p3, p0, La3/f;->I:I

    .line 9
    .line 10
    iput-object p4, p0, La3/f;->J:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, La3/f;->H:LU2/i;

    .line 4
    .line 5
    iget v3, v1, La3/f;->I:I

    .line 6
    .line 7
    iget-object v4, v1, La3/f;->J:Ljava/lang/Runnable;

    .line 8
    .line 9
    iget-object v0, v1, La3/f;->G:La3/j;

    .line 10
    .line 11
    iget-object v5, v0, La3/j;->d:La3/m;

    .line 12
    .line 13
    iget-object v6, v0, La3/j;->f:Lc3/c;

    .line 14
    .line 15
    :try_start_0
    iget-object v8, v0, La3/j;->c:Lb3/d;

    .line 16
    .line 17
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v9, LB0/x;

    .line 21
    .line 22
    const/16 v10, 0x1c

    .line 23
    .line 24
    invoke-direct {v9, v8, v10}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    move-object v8, v6

    .line 28
    check-cast v8, Lb3/j;

    .line 29
    .line 30
    invoke-virtual {v8, v9}, Lb3/j;->a0(Lc3/b;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v8, v0, La3/j;->a:Landroid/content/Context;

    .line 34
    .line 35
    const-string v9, "connectivity"

    .line 36
    .line 37
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, La3/j;->a(LU2/i;I)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_4

    .line 61
    :cond_0
    check-cast v6, Lb3/j;

    .line 62
    .line 63
    invoke-virtual {v6}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-instance v9, LC0/i;

    .line 68
    .line 69
    const/16 v0, 0xc

    .line 70
    .line 71
    invoke-direct {v9, v0}, LC0/i;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v6, Lb3/j;->I:Ld3/a;

    .line 75
    .line 76
    move-object v10, v0

    .line 77
    check-cast v10, Ld3/c;

    .line 78
    .line 79
    invoke-virtual {v10}, Ld3/c;->a()J

    .line 80
    .line 81
    .line 82
    move-result-wide v11
    :try_end_0
    .catch Lc3/a; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc3/a; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    move-object/from16 v16, v8

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    move-object v13, v0

    .line 91
    :try_start_2
    invoke-virtual {v10}, Ld3/c;->a()J

    .line 92
    .line 93
    .line 94
    move-result-wide v14

    .line 95
    iget-object v0, v6, Lb3/j;->J:Lb3/a;

    .line 96
    .line 97
    iget v0, v0, Lb3/a;->c:I

    .line 98
    .line 99
    move-object/from16 v16, v8

    .line 100
    .line 101
    int-to-long v7, v0

    .line 102
    add-long/2addr v7, v11

    .line 103
    cmp-long v0, v14, v7

    .line 104
    .line 105
    if-ltz v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {v9, v13}, LC0/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lc3/a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    :goto_1
    add-int/lit8 v0, v3, 0x1

    .line 111
    .line 112
    :try_start_3
    move-object v6, v5

    .line 113
    check-cast v6, La3/d;

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-virtual {v6, v2, v0, v7}, La3/d;->a(LU2/i;IZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Lc3/a; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_1
    const-wide/16 v7, 0x32

    .line 135
    .line 136
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catch Lc3/a; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    .line 138
    .line 139
    move-object/from16 v8, v16

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_1
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    :try_start_6
    check-cast v5, La3/d;

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    invoke-virtual {v5, v2, v3, v6}, La3/d;->a(LU2/i;IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :goto_3
    return-void

    .line 152
    :goto_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 153
    .line 154
    .line 155
    throw v0
.end method
