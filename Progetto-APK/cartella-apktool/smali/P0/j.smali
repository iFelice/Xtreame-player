.class public final LP0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dC;
.implements Lcom/google/android/gms/internal/ads/Dw;


# instance fields
.field public G:Z

.field public H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ly2/G;

    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LP0/j;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/D2;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/j;->H:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, LP0/j;->G:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, LP0/j;->G:Z

    iput-object p1, p0, LP0/j;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LP0/j;->G:Z

    iput-object p2, p0, LP0/j;->H:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/content/Context;)LP0/j;
    .locals 6

    .line 1
    const-string v0, "GASS"

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.gass.internal.clearcut.IGassClearcut"

    .line 4
    .line 5
    const-string v2, "ADSHIELD"

    .line 6
    .line 7
    :try_start_0
    const-string v3, "com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger"
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/w2; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    .line 9
    :try_start_1
    sget-object v4, LS3/c;->b:LS3/g;

    .line 10
    .line 11
    const-string v5, "com.google.android.gms.ads.dynamite"

    .line 12
    .line 13
    invoke-static {p0, v4, v5}, LS3/c;->c(Landroid/content/Context;LS3/g;Ljava/lang/String;)LS3/c;

    .line 14
    .line 15
    .line 16
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :try_start_2
    invoke-virtual {v4, v3}, LS3/c;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    instance-of v5, v4, Lcom/google/android/gms/internal/pal/D2;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    move-object v3, v4

    .line 34
    check-cast v3, Lcom/google/android/gms/internal/pal/D2;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/pal/C2;

    .line 40
    .line 41
    const/4 v5, 0x5

    .line 42
    invoke-direct {v4, v3, v1, v5}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    move-object v3, v4

    .line 46
    :goto_0
    :try_start_3
    new-instance v4, LR3/b;

    .line 47
    .line 48
    invoke-direct {v4, p0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/pal/D2;->G(LR3/b;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "GassClearcutLogger Initialized."

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance p0, LP0/j;

    .line 60
    .line 61
    invoke-direct {p0, v3}, LP0/j;-><init>(Lcom/google/android/gms/internal/pal/D2;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/pal/w2; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :catch_1
    move-exception p0

    .line 66
    :try_start_4
    new-instance v2, Lcom/google/android/gms/internal/pal/w2;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :goto_1
    :try_start_5
    new-instance v2, Lcom/google/android/gms/internal/pal/w2;

    .line 73
    .line 74
    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v2
    :try_end_5
    .catch Lcom/google/android/gms/internal/pal/w2; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 78
    :catch_2
    const-string p0, "Cannot dynamite load clearcut"

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance p0, Lcom/google/android/gms/internal/pal/E2;

    .line 84
    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    new-instance v0, LP0/j;

    .line 90
    .line 91
    invoke-direct {v0, p0}, LP0/j;-><init>(Lcom/google/android/gms/internal/pal/D2;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method


# virtual methods
.method public final a(LR5/b;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p1, LR5/b;->G:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, LQ5/b;->b()LQ5/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, LQ5/b;->b:Ljava/util/Map;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v1, v1, LQ5/b;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p1, LR5/b;->J:I

    .line 17
    .line 18
    invoke-static {v1}, Lu/h;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p1, LR5/b;->H:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v1, v3, :cond_3

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eq v1, v3, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-eq v1, v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    if-eq v1, v3, :cond_0

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p1, LR5/b;->I:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iput-object p2, p1, LR5/b;->I:Ljava/lang/Object;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iput-object p2, p1, LR5/b;->I:Ljava/lang/Object;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    .line 128
    .line 129
    iput-object p2, p1, LR5/b;->I:Ljava/lang/Object;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iput-object p2, p1, LR5/b;->I:Ljava/lang/Object;

    .line 156
    .line 157
    :goto_0
    iget-object p1, p0, LP0/j;->H:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, LT5/g;

    .line 160
    .line 161
    check-cast p1, Lcom/preference/ui/debug/DebugActivity;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/preference/ui/debug/DebugActivity;->f0:LT5/f;

    .line 164
    .line 165
    iget-object p1, p1, LO1/C;->G:LO1/D;

    .line 166
    .line 167
    invoke-virtual {p1}, LO1/D;->a()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final declared-synchronized b(Ly2/D;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LP0/j;->G:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean v1, p0, LP0/j;->G:Z

    .line 11
    .line 12
    invoke-interface {p1}, Ly2/D;->b()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, LP0/j;->G:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    iget-object p2, p0, LP0/j;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_2
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, LP0/j;->H:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/xc;

    iget-boolean v0, v1, LP0/j;->G:Z

    move-object/from16 v11, p1

    check-cast v11, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroid/content/Context;

    const-string v2, "OfflineUpload.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "serialized_proto_data"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    const-string v4, "offline_signal_contents"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 9
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/I6;->Q([B)Lcom/google/android/gms/internal/ads/I6;

    move-result-object v0

    .line 12
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    const-string v4, "Unable to deserialize proto from offline signals database:"

    .line 14
    invoke-static {v4}, Lp3/h;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/M6;->I()Lcom/google/android/gms/internal/ads/J6;

    move-result-object v3

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 21
    check-cast v4, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/M6;->E(Lcom/google/android/gms/internal/ads/M6;Ljava/lang/String;)V

    .line 22
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 24
    check-cast v4, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/M6;->F(Lcom/google/android/gms/internal/ads/M6;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    invoke-static {v11, v0}, La7/b;->l(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 27
    check-cast v5, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/M6;->B(Lcom/google/android/gms/internal/ads/M6;I)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 29
    check-cast v4, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/M6;->A(Lcom/google/android/gms/internal/ads/M6;Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    .line 30
    invoke-static {v11, v4}, La7/b;->l(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 32
    check-cast v6, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/M6;->C(Lcom/google/android/gms/internal/ads/M6;I)V

    const/4 v5, 0x3

    .line 33
    invoke-static {v11, v5}, La7/b;->l(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v5

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 35
    check-cast v6, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/M6;->H(Lcom/google/android/gms/internal/ads/M6;I)V

    .line 36
    sget-object v5, Lk3/l;->A:Lk3/l;

    iget-object v5, v5, Lk3/l;->j:LP3/b;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 40
    check-cast v7, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v7, v5, v6}, Lcom/google/android/gms/internal/ads/M6;->D(Lcom/google/android/gms/internal/ads/M6;J)V

    const/4 v5, 0x2

    .line 41
    invoke-static {v11, v5}, La7/b;->v(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v8, "value"

    const-wide/16 v9, 0x0

    if-lez v7, :cond_2

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    goto :goto_1

    :cond_2
    move-wide v14, v9

    .line 45
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 47
    check-cast v6, Lcom/google/android/gms/internal/ads/M6;

    invoke-static {v6, v14, v15}, Lcom/google/android/gms/internal/ads/M6;->G(Lcom/google/android/gms/internal/ads/M6;J)V

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/M6;

    .line 49
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-wide v14, v9

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 50
    check-cast v16, Lcom/google/android/gms/internal/ads/I6;

    .line 51
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/I6;->O()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/I6;->N()J

    move-result-wide v17

    cmp-long v0, v17, v14

    if-lez v0, :cond_3

    .line 52
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/I6;->N()J

    move-result-wide v14

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    cmp-long v0, v14, v9

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/ContentValues;

    .line 53
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "statistic_name = \'last_successful_request_time\'"

    const-string v7, "offline_signal_statistics"

    .line 55
    invoke-virtual {v11, v7, v0, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/w6;

    new-instance v6, Lcom/google/android/gms/internal/ads/Of;

    const/16 v7, 0x14

    invoke-direct {v6, v3, v7}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 56
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/w6;->a(Lcom/google/android/gms/internal/ads/v6;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    check-cast v0, Lp3/a;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/T6;->B()Lcom/google/android/gms/internal/ads/S6;

    move-result-object v3

    iget v0, v0, Lp3/a;->H:I

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 59
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 60
    check-cast v6, Lcom/google/android/gms/internal/ads/T6;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/T6;->C(Lcom/google/android/gms/internal/ads/T6;I)V

    .line 61
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    check-cast v0, Lp3/a;

    iget v0, v0, Lp3/a;->I:I

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 63
    check-cast v6, Lcom/google/android/gms/internal/ads/T6;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/T6;->D(Lcom/google/android/gms/internal/ads/T6;I)V

    .line 64
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    check-cast v0, Lp3/a;

    iget-boolean v0, v0, Lp3/a;->J:Z

    if-eq v4, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 65
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 66
    check-cast v4, Lcom/google/android/gms/internal/ads/T6;

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/T6;->A(Lcom/google/android/gms/internal/ads/T6;I)V

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/T6;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/w6;

    new-instance v4, Lcom/google/android/gms/internal/ads/Of;

    const/16 v5, 0x15

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 68
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/w6;->a(Lcom/google/android/gms/internal/ads/v6;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/w6;

    const/16 v2, 0x2714

    .line 69
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/w6;->b(I)V

    .line 70
    const-string v0, "offline_signal_contents"

    invoke-virtual {v11, v0, v12, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    const-string v0, "failed_requests"

    invoke-static {v11, v0}, La7/b;->x(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "total_requests"

    .line 72
    invoke-static {v11, v0}, La7/b;->x(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "completed_requests"

    .line 73
    invoke-static {v11, v0}, La7/b;->x(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_4
    return-object v12
.end method

.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    const-string p1, "Failed to get signals bundle"

    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, LP0/j;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Wp;

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v0, v0, Lf/H;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lo3/K;

    .line 10
    .line 11
    check-cast v0, Lo3/L;

    .line 12
    .line 13
    invoke-virtual {v0}, Lo3/L;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v0, "ad_types"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Ljava/util/List;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v1, v0, [Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    check-cast v0, [Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    instance-of v3, v2, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    check-cast v2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, -0x1

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x3

    .line 101
    const/4 v6, 0x2

    .line 102
    const/4 v7, 0x1

    .line 103
    if-eqz v1, :cond_9

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    sparse-switch v8, :sswitch_data_0

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :sswitch_0
    const-string v4, "interstitial"

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    const/4 v2, 0x3

    .line 132
    goto :goto_4

    .line 133
    :sswitch_1
    const-string v4, "rewarded"

    .line 134
    .line 135
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_6

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    const/4 v2, 0x2

    .line 143
    goto :goto_4

    .line 144
    :sswitch_2
    const-string v4, "native"

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_7

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    const/4 v2, 0x1

    .line 154
    goto :goto_4

    .line 155
    :sswitch_3
    const-string v5, "banner"

    .line 156
    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_8

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    const/4 v2, 0x0

    .line 165
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 166
    .line 167
    .line 168
    sget-object v1, Lcom/google/android/gms/internal/ads/q7;->H:Lcom/google/android/gms/internal/ads/q7;

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/ads/q7;->J:Lcom/google/android/gms/internal/ads/q7;

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/ads/q7;->Q:Lcom/google/android/gms/internal/ads/q7;

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/ads/q7;->M:Lcom/google/android/gms/internal/ads/q7;

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/ads/q7;->I:Lcom/google/android/gms/internal/ads/q7;

    .line 181
    .line 182
    :goto_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    const-string v0, "device"

    .line 187
    .line 188
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v1, "network"

    .line 193
    .line 194
    invoke-static {v1, v0}, Lcom/bumptech/glide/c;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v1, "active_network_state"

    .line 199
    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sget-object v1, Lcom/google/android/gms/internal/ads/Wp;->h:Landroid/util/SparseArray;

    .line 205
    .line 206
    sget-object v8, Lcom/google/android/gms/internal/ads/L6;->H:Lcom/google/android/gms/internal/ads/L6;

    .line 207
    .line 208
    invoke-virtual {v1, v0, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lcom/google/android/gms/internal/ads/L6;

    .line 213
    .line 214
    iget-object v1, p0, LP0/j;->H:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v1, Lcom/google/android/gms/internal/ads/Wp;

    .line 217
    .line 218
    invoke-static {}, Lcom/google/android/gms/internal/ads/F6;->A()Lcom/google/android/gms/internal/ads/C6;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    const/4 v9, -0x2

    .line 223
    const-string v10, "cnt"

    .line 224
    .line 225
    invoke-virtual {p1, v10, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    const-string v10, "gnt"

    .line 230
    .line 231
    invoke-virtual {p1, v10, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-ne v9, v2, :cond_a

    .line 236
    .line 237
    iput v6, v1, Lcom/google/android/gms/internal/ads/Wp;->g:I

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_a
    iput v7, v1, Lcom/google/android/gms/internal/ads/Wp;->g:I

    .line 241
    .line 242
    if-eqz v9, :cond_c

    .line 243
    .line 244
    if-eq v9, v7, :cond_b

    .line 245
    .line 246
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 247
    .line 248
    .line 249
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 250
    .line 251
    check-cast v1, Lcom/google/android/gms/internal/ads/F6;

    .line 252
    .line 253
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/F6;->B(Lcom/google/android/gms/internal/ads/F6;I)V

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 258
    .line 259
    .line 260
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 261
    .line 262
    check-cast v1, Lcom/google/android/gms/internal/ads/F6;

    .line 263
    .line 264
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/F6;->B(Lcom/google/android/gms/internal/ads/F6;I)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 269
    .line 270
    .line 271
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 272
    .line 273
    check-cast v1, Lcom/google/android/gms/internal/ads/F6;

    .line 274
    .line 275
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/F6;->B(Lcom/google/android/gms/internal/ads/F6;I)V

    .line 276
    .line 277
    .line 278
    :goto_6
    packed-switch p1, :pswitch_data_1

    .line 279
    .line 280
    .line 281
    const/4 v5, 0x1

    .line 282
    goto :goto_7

    .line 283
    :pswitch_4
    const/4 v5, 0x4

    .line 284
    goto :goto_7

    .line 285
    :pswitch_5
    const/4 v5, 0x2

    .line 286
    :goto_7
    :pswitch_6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 287
    .line 288
    .line 289
    iget-object p1, v8, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 290
    .line 291
    check-cast p1, Lcom/google/android/gms/internal/ads/F6;

    .line 292
    .line 293
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/F6;->C(Lcom/google/android/gms/internal/ads/F6;I)V

    .line 294
    .line 295
    .line 296
    :goto_8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    move-object v4, p1

    .line 301
    check-cast v4, Lcom/google/android/gms/internal/ads/F6;

    .line 302
    .line 303
    iget-object p1, p0, LP0/j;->H:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p1, Lcom/google/android/gms/internal/ads/Wp;

    .line 306
    .line 307
    new-instance v7, Lcom/google/android/gms/internal/ads/xc;

    .line 308
    .line 309
    const/16 v6, 0xf

    .line 310
    .line 311
    move-object v1, v7

    .line 312
    move-object v2, p0

    .line 313
    move-object v5, v0

    .line 314
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p1, Lf/H;->b:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast p1, Lcom/google/android/gms/internal/ads/Rp;

    .line 320
    .line 321
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/Rp;->a(Lcom/google/android/gms/internal/ads/Dw;)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
