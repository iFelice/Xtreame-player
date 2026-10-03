.class public final LJ3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/h;
.implements Lcom/google/android/gms/internal/ads/r3;


# static fields
.field public static I:LJ3/k;


# instance fields
.field public G:Ljava/lang/Object;

.field public volatile H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, LJ3/k;->G:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 6
    sget-object p1, LY5/g;->J:LY5/g;

    iput-object p1, p0, LJ3/k;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/k;->G:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)LJ3/k;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const-class v0, LJ3/k;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, LJ3/k;->I:LJ3/k;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, LJ3/t;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, LJ3/k;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iput-object p0, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 24
    .line 25
    sput-object v1, LJ3/k;->I:LJ3/k;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object p0, LJ3/k;->I:LJ3/k;

    .line 32
    .line 33
    return-object p0

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public static final varargs f(Landroid/content/pm/PackageInfo;[LJ3/p;)LJ3/p;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const-string p0, "GoogleSignatureVerifier"

    .line 12
    .line 13
    const-string p1, "Package has more than one signature."

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    new-instance v0, LJ3/q;

    .line 20
    .line 21
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-object p0, p0, v2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, LJ3/q;-><init>([B)V

    .line 31
    .line 32
    .line 33
    :goto_0
    array-length p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    aget-object p0, p1, v2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, LJ3/p;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    aget-object p0, p1, v2

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final g(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    const-string v2, "com.android.vending"

    .line 8
    .line 9
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "com.google.android.gms"

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 34
    .line 35
    and-int/lit16 p1, p1, 0x81

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    :cond_3
    :goto_0
    move-object v2, p0

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-eqz p0, :cond_6

    .line 44
    .line 45
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 46
    .line 47
    if-eqz p0, :cond_6

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    sget-object p0, LJ3/s;->a:[LJ3/p;

    .line 52
    .line 53
    invoke-static {v2, p0}, LJ3/k;->f(Landroid/content/pm/PackageInfo;[LJ3/p;)LJ3/p;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    sget-object p0, LJ3/s;->a:[LJ3/p;

    .line 59
    .line 60
    aget-object p0, p0, v1

    .line 61
    .line 62
    new-array p1, v0, [LJ3/p;

    .line 63
    .line 64
    aput-object p0, p1, v1

    .line 65
    .line 66
    invoke-static {v2, p1}, LJ3/k;->f(Landroid/content/pm/PackageInfo;[LJ3/p;)LJ3/p;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :goto_2
    if-eqz p0, :cond_6

    .line 71
    .line 72
    return v0

    .line 73
    :cond_6
    return v1
.end method


# virtual methods
.method public final a()LA2/a;
    .locals 3

    .line 1
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LA2/a;

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LA2/a;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, LA2/d;

    .line 17
    .line 18
    invoke-virtual {v0}, LA2/d;->a()Lt2/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, LA2/a;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, LU1/f;

    .line 34
    .line 35
    const/16 v1, 0x13

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v0, v1, v2}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 42
    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0

    .line 47
    :cond_2
    :goto_2
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, LA2/a;

    .line 50
    .line 51
    return-object v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/u3;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "ms"

    .line 4
    .line 5
    const-string v3, "Http assets remote cache took "

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/v3;->c()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    new-array v5, v4, [Ljava/lang/String;

    .line 16
    .line 17
    new-array v4, v4, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, Ljava/lang/String;

    .line 46
    .line 47
    aput-object v9, v5, v7

    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Ljava/lang/String;

    .line 54
    .line 55
    aput-object v8, v4, v7

    .line 56
    .line 57
    add-int/lit8 v7, v7, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aa;

    .line 61
    .line 62
    move-object/from16 v7, p1

    .line 63
    .line 64
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/v3;->I:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v0, v7, v5, v4}, Lcom/google/android/gms/internal/ads/aa;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 70
    .line 71
    iget-object v5, v4, Lk3/l;->j:LP3/b;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/te;

    .line 81
    .line 82
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lcom/google/android/gms/internal/ads/ea;

    .line 86
    .line 87
    invoke-direct {v13, v1, v9}, Lcom/google/android/gms/internal/ads/ea;-><init>(LJ3/k;Lcom/google/android/gms/internal/ads/te;)V

    .line 88
    .line 89
    .line 90
    new-instance v14, Lcom/google/android/gms/internal/ads/l6;

    .line 91
    .line 92
    invoke-direct {v14, v9}, Lcom/google/android/gms/internal/ads/l6;-><init>(Lcom/google/android/gms/internal/ads/te;)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Lcom/google/android/gms/internal/ads/n6;

    .line 96
    .line 97
    iget-object v10, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v11, v10

    .line 100
    check-cast v11, Landroid/content/Context;

    .line 101
    .line 102
    iget-object v10, v4, Lk3/l;->r:LB0/w0;

    .line 103
    .line 104
    invoke-virtual {v10}, LB0/w0;->j()Landroid/os/Looper;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    const/16 v16, 0x1

    .line 109
    .line 110
    move-object v10, v15

    .line 111
    move-object v5, v15

    .line 112
    move/from16 v15, v16

    .line 113
    .line 114
    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/n6;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;I)V

    .line 115
    .line 116
    .line 117
    iput-object v5, v1, LJ3/k;->H:Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v5, v1, LJ3/k;->H:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v5, Lcom/google/android/gms/internal/ads/n6;

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 124
    .line 125
    .line 126
    new-instance v5, Lcom/google/android/gms/internal/ads/No;

    .line 127
    .line 128
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/No;-><init>(Lcom/google/android/gms/internal/ads/aa;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 132
    .line 133
    invoke-static {v9, v5, v0}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->f4:Lcom/google/android/gms/internal/ads/J7;

    .line 138
    .line 139
    sget-object v10, Ll3/q;->d:Ll3/q;

    .line 140
    .line 141
    iget-object v10, v10, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 142
    .line 143
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    check-cast v9, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    int-to-long v9, v9

    .line 154
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    .line 156
    sget-object v12, Lcom/google/android/gms/internal/ads/se;->d:Lcom/google/android/gms/internal/ads/pe;

    .line 157
    .line 158
    invoke-static {v5, v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    new-instance v9, Lcom/google/android/gms/internal/ads/Pf;

    .line 163
    .line 164
    const/16 v10, 0xb

    .line 165
    .line 166
    invoke-direct {v9, v1, v10}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v5, v9, v0}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    .line 178
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    sub-long/2addr v4, v7

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v2, Lcom/google/android/gms/internal/ads/ba;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    .line 208
    if-nez v0, :cond_1

    .line 209
    .line 210
    const-string v0, "File descriptor is empty, returning null."

    .line 211
    .line 212
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_1
    const/4 v0, 0x0

    .line 216
    goto :goto_2

    .line 217
    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    .line 218
    .line 219
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 220
    .line 221
    invoke-direct {v4, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 225
    .line 226
    .line 227
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    new-array v4, v0, [B

    .line 232
    .line 233
    invoke-virtual {v3, v4, v6, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    :try_start_2
    invoke-virtual {v3, v4, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Landroid/os/Parcelable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .line 255
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 256
    .line 257
    .line 258
    check-cast v0, LM3/c;

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    goto :goto_5

    .line 268
    :catch_0
    move-exception v0

    .line 269
    :try_start_3
    const-string v2, "Could not read from parcel file descriptor"

    .line 270
    .line 271
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    .line 273
    .line 274
    invoke-static {v3}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :goto_2
    check-cast v0, Lcom/google/android/gms/internal/ads/ba;

    .line 279
    .line 280
    if-nez v0, :cond_2

    .line 281
    .line 282
    const/4 v2, 0x0

    .line 283
    return-object v2

    .line 284
    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/ba;->G:Z

    .line 285
    .line 286
    if-nez v2, :cond_5

    .line 287
    .line 288
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ba;->K:[Ljava/lang/String;

    .line 289
    .line 290
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ba;->L:[Ljava/lang/String;

    .line 291
    .line 292
    array-length v2, v2

    .line 293
    array-length v3, v3

    .line 294
    if-eq v2, v3, :cond_3

    .line 295
    .line 296
    const/4 v5, 0x0

    .line 297
    goto :goto_4

    .line 298
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    .line 299
    .line 300
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 301
    .line 302
    .line 303
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ba;->K:[Ljava/lang/String;

    .line 304
    .line 305
    array-length v3, v2

    .line 306
    if-ge v6, v3, :cond_4

    .line 307
    .line 308
    aget-object v2, v2, v6

    .line 309
    .line 310
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ba;->L:[Ljava/lang/String;

    .line 311
    .line 312
    aget-object v3, v3, v6

    .line 313
    .line 314
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    add-int/lit8 v6, v6, 0x1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_4
    iget v8, v0, Lcom/google/android/gms/internal/ads/ba;->I:I

    .line 321
    .line 322
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/ba;->J:[B

    .line 323
    .line 324
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/ba;->M:Z

    .line 325
    .line 326
    new-instance v5, Lcom/google/android/gms/internal/ads/u3;

    .line 327
    .line 328
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/u3;->a(Ljava/util/Map;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    move-object v7, v5

    .line 333
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/u3;-><init>(I[BLjava/util/Map;Ljava/util/List;Z)V

    .line 334
    .line 335
    .line 336
    :goto_4
    return-object v5

    .line 337
    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ba;->H:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v2, Lcom/google/android/gms/internal/ads/y3;

    .line 340
    .line 341
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :goto_5
    invoke-static {v3}, Lf/b;->e(Ljava/io/Closeable;)V

    .line 346
    .line 347
    .line 348
    throw v0

    .line 349
    :catchall_2
    move-exception v0

    .line 350
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 351
    .line 352
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 358
    .line 359
    .line 360
    move-result-wide v4

    .line 361
    sub-long/2addr v4, v7

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :catch_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 382
    .line 383
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    sub-long/2addr v4, v7

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const/4 v2, 0x0

    .line 412
    return-object v2
.end method

.method public final d(LY5/g;)V
    .locals 2

    .line 1
    const-string v0, "newState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly4/k;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LY5/g;

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, LY5/g;

    .line 15
    .line 16
    sget-object v1, LY5/g;->K:LY5/g;

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    iput-object p1, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object p1, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object p1, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final e(I)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move/from16 v2, p1

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v2, :cond_e

    .line 21
    .line 22
    array-length v6, v2

    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    goto/16 :goto_b

    .line 26
    .line 27
    :cond_0
    move-object v0, v4

    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_0
    if-ge v7, v6, :cond_d

    .line 30
    .line 31
    aget-object v8, v2, v7

    .line 32
    .line 33
    const-string v9, "Failed to get Google certificates from remote"

    .line 34
    .line 35
    const-string v10, "GoogleCertificates"

    .line 36
    .line 37
    const-string v11, "null pkg"

    .line 38
    .line 39
    if-nez v8, :cond_1

    .line 40
    .line 41
    new-instance v0, LJ3/z;

    .line 42
    .line 43
    invoke-direct {v0, v5, v11, v4}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_a

    .line 47
    .line 48
    :cond_1
    iget-object v0, v1, LJ3/k;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_a

    .line 57
    .line 58
    sget-object v0, LJ3/t;->a:LJ3/o;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    :try_start_0
    invoke-static {}, LJ3/t;->c()V

    .line 65
    .line 66
    .line 67
    sget-object v0, LJ3/t;->c:Lcom/google/android/gms/common/internal/J;

    .line 68
    .line 69
    check-cast v0, Lcom/google/android/gms/common/internal/H;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/H;->zzi()Z

    .line 72
    .line 73
    .line 74
    move-result v0
    :try_end_0
    .catch LS3/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :goto_1
    :try_start_1
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_2
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 87
    .line 88
    .line 89
    const/4 v12, 0x2

    .line 90
    const/4 v13, 0x1

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, LJ3/j;->b(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    :try_start_2
    sget-object v14, LJ3/t;->e:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v14}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .line 109
    .line 110
    :try_start_3
    invoke-static {}, LJ3/t;->c()V
    :try_end_3
    .catch LS3/a; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_4
    sget-object v14, LJ3/t;->e:Landroid/content/Context;

    .line 114
    .line 115
    new-instance v15, LR3/b;

    .line 116
    .line 117
    invoke-direct {v15, v14}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v15}, LR3/b;->j0(Landroid/os/IBinder;)LR3/a;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-static {v14}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    check-cast v14, Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    .line 130
    :try_start_5
    sget-object v15, LJ3/t;->c:Lcom/google/android/gms/common/internal/J;

    .line 131
    .line 132
    check-cast v15, Lcom/google/android/gms/common/internal/H;

    .line 133
    .line 134
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    sget v16, LY3/a;->a:I

    .line 139
    .line 140
    invoke-virtual {v4, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    .line 142
    .line 143
    const/16 v5, 0x4f45

    .line 144
    .line 145
    invoke-static {v5, v4}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v4, v13, v8}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v13, 0x4

    .line 153
    invoke-static {v4, v12, v13}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v3, v13}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 160
    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    .line 165
    .line 166
    new-instance v0, LR3/b;

    .line 167
    .line 168
    invoke-direct {v0, v14}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v13, v0}, Lf/b;->L(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 172
    .line 173
    .line 174
    const/4 v0, 0x5

    .line 175
    invoke-static {v4, v0, v13}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x6

    .line 182
    invoke-static {v4, v0, v13}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 183
    .line 184
    .line 185
    const/4 v12, 0x1

    .line 186
    invoke-virtual {v4, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v5, v4}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15, v0, v4}, Lcom/google/android/gms/internal/ads/y5;->Y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sget-object v4, LJ3/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-static {v0, v4}, LY3/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, LJ3/w;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 205
    .line 206
    .line 207
    :try_start_6
    iget-boolean v0, v4, LJ3/w;->G:Z

    .line 208
    .line 209
    if-eqz v0, :cond_2

    .line 210
    .line 211
    iget v0, v4, LJ3/w;->J:I

    .line 212
    .line 213
    invoke-static {v0}, Lcom/bumptech/glide/c;->w(I)I

    .line 214
    .line 215
    .line 216
    new-instance v0, LJ3/z;

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    const/4 v5, 0x1

    .line 220
    invoke-direct {v0, v5, v4, v4}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_2
    iget-object v0, v4, LJ3/w;->H:Ljava/lang/String;

    .line 225
    .line 226
    iget v5, v4, LJ3/w;->I:I

    .line 227
    .line 228
    invoke-static {v5}, Lf/b;->W(I)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-ne v5, v13, :cond_3

    .line 233
    .line 234
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 235
    .line 236
    invoke-direct {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :catchall_1
    move-exception v0

    .line 241
    goto :goto_6

    .line 242
    :cond_3
    const/4 v5, 0x0

    .line 243
    :goto_3
    const-string v9, "error checking package certificate"

    .line 244
    .line 245
    if-nez v0, :cond_4

    .line 246
    .line 247
    move-object v0, v9

    .line 248
    :cond_4
    iget v9, v4, LJ3/w;->J:I

    .line 249
    .line 250
    invoke-static {v9}, Lcom/bumptech/glide/c;->w(I)I

    .line 251
    .line 252
    .line 253
    iget v4, v4, LJ3/w;->I:I

    .line 254
    .line 255
    invoke-static {v4}, Lf/b;->W(I)I

    .line 256
    .line 257
    .line 258
    new-instance v4, LJ3/z;

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    invoke-direct {v4, v9, v0, v5}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 262
    .line 263
    .line 264
    move-object v0, v4

    .line 265
    goto :goto_5

    .line 266
    :catch_2
    move-exception v0

    .line 267
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .line 269
    .line 270
    const-string v4, "module call"

    .line 271
    .line 272
    new-instance v5, LJ3/z;

    .line 273
    .line 274
    const/4 v9, 0x0

    .line 275
    invoke-direct {v5, v9, v4, v0}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 276
    .line 277
    .line 278
    :goto_4
    move-object v0, v5

    .line 279
    goto :goto_5

    .line 280
    :catch_3
    move-exception v0

    .line 281
    move-object v4, v0

    .line 282
    invoke-static {v10, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v5, "module init: "

    .line 290
    .line 291
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v5, LJ3/z;

    .line 300
    .line 301
    const/4 v9, 0x0

    .line 302
    invoke-direct {v5, v9, v0, v4}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :goto_5
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_8

    .line 310
    .line 311
    :goto_6
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 312
    .line 313
    .line 314
    throw v0

    .line 315
    :cond_5
    :try_start_7
    iget-object v0, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Landroid/content/Context;

    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    const/16 v4, 0x40

    .line 324
    .line 325
    invoke-virtual {v0, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 326
    .line 327
    .line 328
    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 329
    iget-object v4, v1, LJ3/k;->G:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v4, Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {v4}, LJ3/j;->b(Landroid/content/Context;)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-nez v0, :cond_6

    .line 338
    .line 339
    new-instance v0, LJ3/z;

    .line 340
    .line 341
    const/4 v4, 0x0

    .line 342
    const/4 v5, 0x0

    .line 343
    invoke-direct {v0, v5, v11, v4}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_6
    const/4 v5, 0x0

    .line 348
    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 349
    .line 350
    if-eqz v9, :cond_9

    .line 351
    .line 352
    array-length v9, v9

    .line 353
    const/4 v10, 0x1

    .line 354
    if-eq v9, v10, :cond_7

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_7
    new-instance v9, LJ3/q;

    .line 358
    .line 359
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 360
    .line 361
    aget-object v10, v10, v5

    .line 362
    .line 363
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-direct {v9, v10}, LJ3/q;-><init>([B)V

    .line 368
    .line 369
    .line 370
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    :try_start_8
    invoke-static {v10, v9, v4, v5}, LJ3/t;->b(Ljava/lang/String;LJ3/p;ZZ)LJ3/z;

    .line 377
    .line 378
    .line 379
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 380
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 381
    .line 382
    .line 383
    iget-boolean v5, v4, LJ3/z;->a:Z

    .line 384
    .line 385
    if-eqz v5, :cond_8

    .line 386
    .line 387
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 388
    .line 389
    if-eqz v0, :cond_8

    .line 390
    .line 391
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 392
    .line 393
    and-int/2addr v0, v12

    .line 394
    if-eqz v0, :cond_8

    .line 395
    .line 396
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    const/4 v0, 0x1

    .line 401
    const/4 v11, 0x0

    .line 402
    :try_start_9
    invoke-static {v10, v9, v11, v0}, LJ3/t;->b(Ljava/lang/String;LJ3/p;ZZ)LJ3/z;

    .line 403
    .line 404
    .line 405
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 406
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 407
    .line 408
    .line 409
    iget-boolean v0, v0, LJ3/z;->a:Z

    .line 410
    .line 411
    if-eqz v0, :cond_8

    .line 412
    .line 413
    new-instance v0, LJ3/z;

    .line 414
    .line 415
    const-string v4, "debuggable release cert app rejected"

    .line 416
    .line 417
    const/4 v5, 0x0

    .line 418
    invoke-direct {v0, v11, v4, v5}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :catchall_2
    move-exception v0

    .line 423
    move-object v2, v0

    .line 424
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 425
    .line 426
    .line 427
    throw v2

    .line 428
    :cond_8
    move-object v0, v4

    .line 429
    goto :goto_8

    .line 430
    :catchall_3
    move-exception v0

    .line 431
    move-object v2, v0

    .line 432
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 433
    .line 434
    .line 435
    throw v2

    .line 436
    :cond_9
    :goto_7
    new-instance v0, LJ3/z;

    .line 437
    .line 438
    const-string v4, "single cert required"

    .line 439
    .line 440
    const/4 v5, 0x0

    .line 441
    const/4 v9, 0x0

    .line 442
    invoke-direct {v0, v9, v4, v5}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 443
    .line 444
    .line 445
    :goto_8
    iget-boolean v4, v0, LJ3/z;->a:Z

    .line 446
    .line 447
    if-eqz v4, :cond_b

    .line 448
    .line 449
    iput-object v8, v1, LJ3/k;->H:Ljava/lang/Object;

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :catch_4
    move-exception v0

    .line 453
    const-string v4, "no pkg "

    .line 454
    .line 455
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    new-instance v5, LJ3/z;

    .line 460
    .line 461
    const/4 v8, 0x0

    .line 462
    invoke-direct {v5, v8, v4, v0}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 463
    .line 464
    .line 465
    move-object v0, v5

    .line 466
    goto :goto_a

    .line 467
    :goto_9
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 468
    .line 469
    .line 470
    throw v0

    .line 471
    :cond_a
    sget-object v0, LJ3/z;->d:LJ3/z;

    .line 472
    .line 473
    :cond_b
    :goto_a
    iget-boolean v4, v0, LJ3/z;->a:Z

    .line 474
    .line 475
    if-eqz v4, :cond_c

    .line 476
    .line 477
    goto :goto_c

    .line 478
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    const/4 v5, 0x0

    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_d
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_e
    :goto_b
    new-instance v0, LJ3/z;

    .line 489
    .line 490
    const-string v2, "no pkgs"

    .line 491
    .line 492
    const/4 v4, 0x0

    .line 493
    const/4 v5, 0x0

    .line 494
    invoke-direct {v0, v5, v2, v4}, LJ3/z;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    .line 495
    .line 496
    .line 497
    :goto_c
    iget-boolean v2, v0, LJ3/z;->a:Z

    .line 498
    .line 499
    if-nez v2, :cond_10

    .line 500
    .line 501
    const-string v2, "GoogleCertificatesRslt"

    .line 502
    .line 503
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_10

    .line 508
    .line 509
    iget-object v3, v0, LJ3/z;->c:Ljava/lang/Throwable;

    .line 510
    .line 511
    if-eqz v3, :cond_f

    .line 512
    .line 513
    invoke-virtual {v0}, LJ3/z;->a()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .line 519
    .line 520
    goto :goto_d

    .line 521
    :cond_f
    invoke-virtual {v0}, LJ3/z;->a()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    :cond_10
    :goto_d
    iget-boolean v0, v0, LJ3/z;->a:Z

    .line 529
    .line 530
    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LP2/h;

    .line 13
    .line 14
    invoke-interface {v0}, LP2/h;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Argument must not be null"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    goto :goto_2

    .line 30
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_2
    iget-object v0, p0, LJ3/k;->H:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0
.end method
