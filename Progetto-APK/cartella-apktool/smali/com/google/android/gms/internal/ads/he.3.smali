.class public final synthetic Lcom/google/android/gms/internal/ads/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/he;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()Ljava/lang/Long;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/rf;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 9
    .line 10
    iget-object v1, v1, Lk3/l;->i:Lcom/google/android/gms/internal/ads/rs;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rf;->m:Lcom/google/android/gms/internal/ads/o6;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lcom/google/android/gms/internal/ads/p6;

    .line 20
    .line 21
    const-wide/16 v4, -0x2

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    monitor-exit v2

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lcom/google/android/gms/internal/ads/n6;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/n6;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    :try_start_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lcom/google/android/gms/internal/ads/p6;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/A5;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    monitor-exit v2

    .line 63
    move-wide v4, v6

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "Unable to call into cache service."

    .line 67
    .line 68
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0

    .line 77
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    throw v0
.end method

.method private final b()Lcom/google/android/gms/internal/ads/Cs;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Bs;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/Cs;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->D6:Lcom/google/android/gms/internal/ads/J7;

    .line 11
    .line 12
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 13
    .line 14
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Bs;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 33
    .line 34
    const-string v2, "requester_type_2"

    .line 35
    .line 36
    invoke-static {v0}, LU2/m;->k(Ll3/b1;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/qE;->b:Lcom/google/android/gms/internal/ads/qE;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qE;->a()Lcom/google/android/gms/internal/ads/GC;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/sE;->b:Lcom/google/android/gms/internal/ads/sE;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/sE;->d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/IE;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/google/android/gms/internal/ads/GE;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .line 65
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->C([B)Lcom/google/android/gms/internal/ads/GC;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v0}, La3/b;->n(Lcom/google/android/gms/internal/ads/GC;)La3/b;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/google/android/gms/internal/ads/Xu;

    .line 83
    .line 84
    const/16 v5, 0x14

    .line 85
    .line 86
    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/Cw;->J0(La3/b;Lcom/google/android/gms/internal/ads/Xu;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :catch_1
    :try_start_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 100
    .line 101
    const-string v2, "Serialize keyset failed"

    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catch_2
    move-exception v0

    .line 108
    new-instance v2, LY/r;

    .line 109
    .line 110
    const-string v4, "Parsing parameters failed in getProto(). You probably want to call some Tink register function for "

    .line 111
    .line 112
    const-string v5, "null"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const/4 v5, 0x5

    .line 119
    invoke-direct {v2, v4, v5, v0}, LY/r;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v2
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 123
    :goto_1
    const-string v2, "Failed to generate key"

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 137
    .line 138
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 139
    .line 140
    const-string v4, "CryptoUtils.generateKey"

    .line 141
    .line 142
    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    new-array v0, v3, [B

    .line 146
    .line 147
    :goto_2
    const/16 v2, 0xb

    .line 148
    .line 149
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    :cond_1
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method

.method private final c()Lcom/google/android/gms/internal/ads/Pt;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/Ot;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ot;->b:Lcom/google/android/gms/internal/ads/qo;

    .line 6
    .line 7
    new-instance v8, Lcom/google/android/gms/internal/ads/Pt;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->h8:Lcom/google/android/gms/internal/ads/J7;

    .line 11
    .line 12
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 13
    .line 14
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 15
    .line 16
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qo;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/qo;->q:J

    .line 36
    .line 37
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 38
    .line 39
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    const-wide/16 v9, 0x3e8

    .line 49
    .line 50
    div-long/2addr v6, v9

    .line 51
    cmp-long v2, v4, v6

    .line 52
    .line 53
    if-gez v2, :cond_1

    .line 54
    .line 55
    const-string v2, "{}"

    .line 56
    .line 57
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/qo;->o:Ljava/lang/String;

    .line 58
    .line 59
    const-wide v4, 0x7fffffffffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/qo;->q:J

    .line 65
    .line 66
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    monitor-exit v1

    .line 69
    :goto_0
    move-object v4, v2

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_5

    .line 73
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/qo;->o:Ljava/lang/String;

    .line 74
    .line 75
    const-string v4, "{}"

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/qo;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    monitor-exit v1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    monitor-exit v1

    .line 90
    goto :goto_0

    .line 91
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qo;->g()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 96
    .line 97
    iget-object v2, v2, Lk3/l;->m:Lo3/l;

    .line 98
    .line 99
    invoke-virtual {v2}, Lo3/l;->h()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ot;->b:Lcom/google/android/gms/internal/ads/qo;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qo;->p:Lorg/json/JSONObject;

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x1

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    const/4 v9, 0x1

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    const/4 v9, 0x0

    .line 114
    :goto_3
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/qo;->w:J

    .line 115
    .line 116
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C8:Lcom/google/android/gms/internal/ads/J7;

    .line 117
    .line 118
    iget-object v2, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    cmp-long v0, v10, v2

    .line 131
    .line 132
    if-gez v0, :cond_4

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_4
    const/4 v7, 0x0

    .line 136
    :goto_4
    move-object v2, v8

    .line 137
    move-object v3, v4

    .line 138
    move v4, v1

    .line 139
    move v6, v9

    .line 140
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Pt;-><init>(Ljava/lang/String;ZZZZ)V

    .line 141
    .line 142
    .line 143
    return-object v8

    .line 144
    :goto_5
    monitor-exit v1

    .line 145
    throw v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/gms/internal/ads/he;->a:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/gms/internal/ads/Ew;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ew;->zza()V

    .line 19
    .line 20
    .line 21
    return-object v7

    .line 22
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/gms/internal/ads/zs;

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/nt;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zs;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/ads/nt;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/gms/internal/ads/Eu;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Eu;->b:Landroid/content/Context;

    .line 41
    .line 42
    const-string v2, "phone"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 59
    .line 60
    iget-object v4, v2, Lk3/l;->c:Lo3/O;

    .line 61
    .line 62
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 63
    .line 64
    invoke-static {v0, v4}, Lo3/O;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    const-string v4, "connectivity"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_0

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    move/from16 v30, v5

    .line 97
    .line 98
    move v5, v3

    .line 99
    move/from16 v3, v30

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 v5, -0x1

    .line 103
    :goto_0
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    move v13, v3

    .line 108
    move v9, v5

    .line 109
    move v12, v6

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/4 v4, -0x2

    .line 112
    const/4 v9, -0x2

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, -0x1

    .line 115
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/Du;

    .line 116
    .line 117
    iget-object v2, v2, Lk3/l;->e:LF2/G;

    .line 118
    .line 119
    invoke-virtual {v2, v0}, LF2/G;->X(Landroid/content/Context;)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    move-object v7, v3

    .line 124
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/Du;-><init>(Ljava/lang/String;IIIZI)V

    .line 125
    .line 126
    .line 127
    return-object v3

    .line 128
    :pswitch_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lcom/google/android/gms/internal/ads/Bu;

    .line 131
    .line 132
    const-string v2, "com.google.unity.ads.UNITY_VERSION"

    .line 133
    .line 134
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Bu;->b:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "geo:0,0?q=donuts"

    .line 145
    .line 146
    new-instance v9, Landroid/content/Intent;

    .line 147
    .line 148
    const-string v10, "android.intent.action.VIEW"

    .line 149
    .line 150
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-direct {v9, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .line 156
    .line 157
    const/high16 v5, 0x10000

    .line 158
    .line 159
    invoke-virtual {v3, v9, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    const-string v10, "http://www.google.com"

    .line 164
    .line 165
    new-instance v11, Landroid/content/Intent;

    .line 166
    .line 167
    const-string v12, "android.intent.action.VIEW"

    .line 168
    .line 169
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-direct {v11, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v11, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    sget-object v11, Lk3/l;->A:Lk3/l;

    .line 185
    .line 186
    iget-object v11, v11, Lk3/l;->c:Lo3/O;

    .line 187
    .line 188
    sget-object v11, Ll3/p;->f:Ll3/p;

    .line 189
    .line 190
    iget-object v11, v11, Ll3/p;->a:Lp3/d;

    .line 191
    .line 192
    invoke-static {}, Lp3/d;->m()Z

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    invoke-static {v0}, Lf/b;->u(Landroid/content/Context;)Z

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    invoke-static {v0}, Lf/b;->i0(Landroid/content/Context;)Z

    .line 201
    .line 202
    .line 203
    move-result v17

    .line 204
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v18

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 214
    .line 215
    const/16 v12, 0x18

    .line 216
    .line 217
    if-lt v11, v12, :cond_2

    .line 218
    .line 219
    invoke-static {}, Lc4/J0;->c()Landroid/os/LocaleList;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    const/4 v12, 0x0

    .line 224
    :goto_2
    invoke-static {v11}, LD0/y;->b(Landroid/os/LocaleList;)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    if-ge v12, v13, :cond_2

    .line 229
    .line 230
    invoke-static {v11, v12}, Lc4/J0;->j(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    add-int/lit8 v12, v12, 0x1

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    const-string v11, "market://details?id=com.google.android.gms.ads"

    .line 245
    .line 246
    new-instance v12, Landroid/content/Intent;

    .line 247
    .line 248
    const-string v13, "android.intent.action.VIEW"

    .line 249
    .line 250
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    invoke-direct {v12, v13, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v12, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    const-string v12, "."

    .line 262
    .line 263
    if-nez v11, :cond_3

    .line 264
    .line 265
    :goto_3
    move-object/from16 v20, v7

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_3
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    .line 270
    if-nez v11, :cond_4

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_4
    :try_start_0
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v13, v6, v7}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    if-eqz v7, :cond_5

    .line 284
    .line 285
    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 286
    .line 287
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 288
    .line 289
    new-instance v13, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_3

    .line 308
    :catch_0
    :cond_5
    const/16 v20, 0x0

    .line 309
    .line 310
    :goto_4
    const/16 v7, 0x80

    .line 311
    .line 312
    :try_start_1
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    const-string v13, "com.android.vending"

    .line 317
    .line 318
    invoke-virtual {v11, v7, v13}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    if-eqz v11, :cond_6

    .line 323
    .line 324
    iget v13, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 325
    .line 326
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 327
    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    goto :goto_5

    .line 347
    :catch_1
    :cond_6
    const/4 v8, 0x0

    .line 348
    :goto_5
    sget-object v22, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 349
    .line 350
    new-instance v11, Landroid/content/Intent;

    .line 351
    .line 352
    const-string v12, "http://www.example.com"

    .line 353
    .line 354
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    const-string v13, "android.intent.action.VIEW"

    .line 359
    .line 360
    invoke-direct {v11, v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v11, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 364
    .line 365
    .line 366
    move-result-object v12

    .line 367
    invoke-virtual {v3, v11, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    if-eqz v3, :cond_8

    .line 372
    .line 373
    if-eqz v12, :cond_8

    .line 374
    .line 375
    const/4 v5, 0x0

    .line 376
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    if-ge v5, v11, :cond_8

    .line 381
    .line 382
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 387
    .line 388
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 389
    .line 390
    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 393
    .line 394
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v11

    .line 400
    if-eqz v11, :cond_7

    .line 401
    .line 402
    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 403
    .line 404
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    move/from16 v23, v3

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_8
    const/16 v23, 0x0

    .line 421
    .line 422
    :goto_7
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 423
    .line 424
    iget-object v3, v3, Lk3/l;->c:Lo3/O;

    .line 425
    .line 426
    new-instance v3, Landroid/os/StatFs;

    .line 427
    .line 428
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 440
    .line 441
    .line 442
    move-result-wide v11

    .line 443
    const-wide/16 v24, 0x400

    .line 444
    .line 445
    div-long v25, v11, v24

    .line 446
    .line 447
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Ga:Lcom/google/android/gms/internal/ads/J7;

    .line 448
    .line 449
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 450
    .line 451
    iget-object v11, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 452
    .line 453
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_9

    .line 464
    .line 465
    invoke-static {v0}, Lo3/O;->b(Landroid/content/Context;)Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-eqz v3, :cond_9

    .line 470
    .line 471
    const/16 v27, 0x1

    .line 472
    .line 473
    goto :goto_8

    .line 474
    :cond_9
    const/16 v27, 0x0

    .line 475
    .line 476
    :goto_8
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Ka:Lcom/google/android/gms/internal/ads/J7;

    .line 477
    .line 478
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 479
    .line 480
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    check-cast v3, Ljava/lang/Boolean;

    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_b

    .line 491
    .line 492
    :try_start_2
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v3, v7, v0}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 505
    .line 506
    if-eqz v0, :cond_a

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-eqz v3, :cond_a

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 518
    :goto_9
    move-object/from16 v28, v7

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :catch_2
    nop

    .line 522
    :cond_a
    const/16 v28, 0x0

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_b
    const-string v7, ""

    .line 526
    .line 527
    goto :goto_9

    .line 528
    :goto_a
    if-eqz v10, :cond_c

    .line 529
    .line 530
    const/4 v13, 0x1

    .line 531
    goto :goto_b

    .line 532
    :cond_c
    const/4 v13, 0x0

    .line 533
    :goto_b
    if-eqz v9, :cond_d

    .line 534
    .line 535
    const/4 v12, 0x1

    .line 536
    goto :goto_c

    .line 537
    :cond_d
    const/4 v12, 0x0

    .line 538
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/ads/Au;

    .line 539
    .line 540
    move-object v11, v0

    .line 541
    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 542
    .line 543
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 544
    .line 545
    move-object/from16 v19, v4

    .line 546
    .line 547
    move-object/from16 v21, v8

    .line 548
    .line 549
    invoke-direct/range {v11 .. v29}, Lcom/google/android/gms/internal/ads/Au;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;I)V

    .line 550
    .line 551
    .line 552
    return-object v0

    .line 553
    :pswitch_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v0, Lcom/google/android/gms/internal/ads/xu;

    .line 556
    .line 557
    new-instance v2, Lcom/google/android/gms/internal/ads/yu;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xu;->a:Landroid/content/Context;

    .line 560
    .line 561
    const-string v3, "init_without_write"

    .line 562
    .line 563
    invoke-static {v0, v3}, Lf/b;->A0(Landroid/content/Context;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    const-string v4, "crash_without_write"

    .line 568
    .line 569
    invoke-static {v0, v4}, Lf/b;->A0(Landroid/content/Context;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/yu;-><init>(II)V

    .line 574
    .line 575
    .line 576
    return-object v2

    .line 577
    :pswitch_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v0, Lcom/google/android/gms/internal/ads/ru;

    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->F5:Lcom/google/android/gms/internal/ads/J7;

    .line 585
    .line 586
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 587
    .line 588
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 589
    .line 590
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    check-cast v3, Ljava/lang/String;

    .line 595
    .line 596
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ru;->b:Landroid/content/Context;

    .line 597
    .line 598
    invoke-static {v0, v3}, LJ6/r;->u(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_e

    .line 607
    .line 608
    const/4 v7, 0x0

    .line 609
    goto :goto_d

    .line 610
    :cond_e
    new-instance v7, Lcom/google/android/gms/internal/ads/Bt;

    .line 611
    .line 612
    invoke-direct {v7, v2, v0}, Lcom/google/android/gms/internal/ads/Bt;-><init>(ILandroid/os/Bundle;)V

    .line 613
    .line 614
    .line 615
    :goto_d
    return-object v7

    .line 616
    :pswitch_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v0, Lcom/google/android/gms/internal/ads/nu;

    .line 619
    .line 620
    new-instance v2, Lcom/google/android/gms/internal/ads/ou;

    .line 621
    .line 622
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/nu;->b:Landroid/content/Context;

    .line 623
    .line 624
    invoke-static {v3}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/U1;->d()Z

    .line 629
    .line 630
    .line 631
    move-result v8

    .line 632
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 633
    .line 634
    iget-object v4, v4, Lk3/l;->c:Lo3/O;

    .line 635
    .line 636
    invoke-static {v3}, Lo3/O;->d(Landroid/content/Context;)Z

    .line 637
    .line 638
    .line 639
    move-result v9

    .line 640
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/nu;->c:Lp3/a;

    .line 641
    .line 642
    iget-object v10, v4, Lp3/a;->G:Ljava/lang/String;

    .line 643
    .line 644
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eqz v4, :cond_10

    .line 649
    .line 650
    const/16 v5, 0x3e8

    .line 651
    .line 652
    if-ne v4, v5, :cond_f

    .line 653
    .line 654
    goto :goto_e

    .line 655
    :cond_f
    const/4 v11, 0x0

    .line 656
    goto :goto_f

    .line 657
    :cond_10
    :goto_e
    const/4 v11, 0x1

    .line 658
    :goto_f
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    if-nez v4, :cond_11

    .line 663
    .line 664
    const/4 v12, 0x0

    .line 665
    goto :goto_10

    .line 666
    :cond_11
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 667
    .line 668
    move v12, v4

    .line 669
    :goto_10
    const-string v4, "com.google.android.gms.ads.dynamite"

    .line 670
    .line 671
    invoke-static {v3, v4, v6}, LS3/c;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 672
    .line 673
    .line 674
    move-result v13

    .line 675
    invoke-static {v3, v4}, LS3/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    move-result v14

    .line 679
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/nu;->d:Ljava/lang/String;

    .line 680
    .line 681
    move-object v7, v2

    .line 682
    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/ou;-><init>(ZZLjava/lang/String;ZIIILjava/lang/String;)V

    .line 683
    .line 684
    .line 685
    return-object v2

    .line 686
    :pswitch_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    .line 689
    .line 690
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ku;->a:Lcom/google/android/gms/internal/ads/Qd;

    .line 691
    .line 692
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ku;->c:Landroid/content/Context;

    .line 693
    .line 694
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    if-nez v3, :cond_12

    .line 699
    .line 700
    new-instance v0, Lcom/google/android/gms/internal/ads/lu;

    .line 701
    .line 702
    const/4 v6, 0x0

    .line 703
    const/4 v7, 0x0

    .line 704
    const/4 v5, 0x0

    .line 705
    const/4 v8, 0x0

    .line 706
    const/4 v9, 0x0

    .line 707
    move-object v4, v0

    .line 708
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/lu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    .line 710
    .line 711
    goto :goto_17

    .line 712
    :cond_12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Qd;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    const-string v4, ""

    .line 717
    .line 718
    if-nez v3, :cond_13

    .line 719
    .line 720
    move-object v6, v4

    .line 721
    goto :goto_11

    .line 722
    :cond_13
    move-object v6, v3

    .line 723
    :goto_11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Qd;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    if-nez v3, :cond_14

    .line 728
    .line 729
    move-object v7, v4

    .line 730
    goto :goto_12

    .line 731
    :cond_14
    move-object v7, v3

    .line 732
    :goto_12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Qd;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v3

    .line 736
    if-nez v3, :cond_15

    .line 737
    .line 738
    move-object v8, v4

    .line 739
    goto :goto_13

    .line 740
    :cond_15
    move-object v8, v3

    .line 741
    :goto_13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Qd;->e(Landroid/content/Context;)Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    const/4 v2, 0x1

    .line 746
    if-eq v2, v0, :cond_16

    .line 747
    .line 748
    const/4 v0, 0x0

    .line 749
    goto :goto_14

    .line 750
    :cond_16
    const-string v0, "fa"

    .line 751
    .line 752
    :goto_14
    const-string v2, "TIME_OUT"

    .line 753
    .line 754
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    if-eqz v2, :cond_17

    .line 759
    .line 760
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->e0:Lcom/google/android/gms/internal/ads/J7;

    .line 761
    .line 762
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 763
    .line 764
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 765
    .line 766
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    check-cast v2, Ljava/lang/Long;

    .line 771
    .line 772
    move-object v10, v2

    .line 773
    goto :goto_15

    .line 774
    :cond_17
    const/4 v10, 0x0

    .line 775
    :goto_15
    if-nez v0, :cond_18

    .line 776
    .line 777
    move-object v9, v4

    .line 778
    goto :goto_16

    .line 779
    :cond_18
    move-object v9, v0

    .line 780
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ads/lu;

    .line 781
    .line 782
    move-object v5, v0

    .line 783
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/lu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 784
    .line 785
    .line 786
    :goto_17
    return-object v0

    .line 787
    :pswitch_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 788
    .line 789
    move-object v2, v0

    .line 790
    check-cast v2, Lcom/google/android/gms/internal/ads/bu;

    .line 791
    .line 792
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    :try_start_3
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/bu;->a:Landroid/content/Context;

    .line 796
    .line 797
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/bu;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 798
    .line 799
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Yv;->b()Z

    .line 800
    .line 801
    .line 802
    move-result v9

    .line 803
    new-instance v3, Lcom/google/android/gms/internal/ads/Om;

    .line 804
    .line 805
    const/16 v4, 0x15

    .line 806
    .line 807
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 808
    .line 809
    .line 810
    new-instance v5, Lcom/google/android/gms/internal/ads/Om;

    .line 811
    .line 812
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 813
    .line 814
    .line 815
    if-eqz v9, :cond_19

    .line 816
    .line 817
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->O2:Lcom/google/android/gms/internal/ads/J7;

    .line 818
    .line 819
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 820
    .line 821
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 822
    .line 823
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    check-cast v4, Ljava/lang/Boolean;

    .line 828
    .line 829
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    if-nez v4, :cond_19

    .line 834
    .line 835
    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    .line 836
    .line 837
    const/4 v3, 0x1

    .line 838
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/cu;-><init>(Z)V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_1c

    .line 842
    .line 843
    :catch_3
    move-exception v0

    .line 844
    goto/16 :goto_1b

    .line 845
    .line 846
    :cond_19
    if-nez v9, :cond_1a

    .line 847
    .line 848
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->K2:Lcom/google/android/gms/internal/ads/J7;

    .line 849
    .line 850
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 851
    .line 852
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 853
    .line 854
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    check-cast v4, Ljava/lang/Boolean;

    .line 859
    .line 860
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    if-nez v4, :cond_1b

    .line 865
    .line 866
    :cond_1a
    if-eqz v9, :cond_1c

    .line 867
    .line 868
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->M2:Lcom/google/android/gms/internal/ads/J7;

    .line 869
    .line 870
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 871
    .line 872
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 873
    .line 874
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v4

    .line 878
    check-cast v4, Ljava/lang/Boolean;

    .line 879
    .line 880
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    if-eqz v4, :cond_1c

    .line 885
    .line 886
    :cond_1b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ty;->f(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Ty;

    .line 887
    .line 888
    .line 889
    move-result-object v10

    .line 890
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->X2:Lcom/google/android/gms/internal/ads/J7;

    .line 891
    .line 892
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 893
    .line 894
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 895
    .line 896
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v3

    .line 900
    check-cast v3, Ljava/lang/Long;

    .line 901
    .line 902
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 903
    .line 904
    .line 905
    move-result-wide v11

    .line 906
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 907
    .line 908
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 909
    .line 910
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {v3}, Lo3/L;->r()Z

    .line 915
    .line 916
    .line 917
    move-result v15

    .line 918
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    const-class v3, Lcom/google/android/gms/internal/ads/Ty;

    .line 922
    .line 923
    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 924
    const/4 v13, 0x0

    .line 925
    const/4 v14, 0x0

    .line 926
    :try_start_4
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/Sy;->a(JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;

    .line 927
    .line 928
    .line 929
    move-result-object v4

    .line 930
    monitor-exit v3

    .line 931
    move-object v3, v4

    .line 932
    goto :goto_18

    .line 933
    :catchall_0
    move-exception v0

    .line 934
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 935
    :try_start_5
    throw v0

    .line 936
    :cond_1c
    :goto_18
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->U2:Lcom/google/android/gms/internal/ads/J7;

    .line 937
    .line 938
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 939
    .line 940
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 941
    .line 942
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v4

    .line 946
    check-cast v4, Ljava/lang/Boolean;

    .line 947
    .line 948
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 949
    .line 950
    .line 951
    move-result v4

    .line 952
    if-eqz v4, :cond_1d

    .line 953
    .line 954
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bu;->d:Lp3/a;

    .line 955
    .line 956
    iget v4, v4, Lp3/a;->I:I

    .line 957
    .line 958
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->T2:Lcom/google/android/gms/internal/ads/J7;

    .line 959
    .line 960
    iget-object v8, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 961
    .line 962
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v7

    .line 966
    check-cast v7, Ljava/lang/Integer;

    .line 967
    .line 968
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 969
    .line 970
    .line 971
    move-result v7

    .line 972
    if-ge v4, v7, :cond_1d

    .line 973
    .line 974
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Uy;->g(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Uy;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Uy;->h()V

    .line 979
    .line 980
    .line 981
    :cond_1d
    if-nez v9, :cond_1e

    .line 982
    .line 983
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->L2:Lcom/google/android/gms/internal/ads/J7;

    .line 984
    .line 985
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 986
    .line 987
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    check-cast v4, Ljava/lang/Boolean;

    .line 992
    .line 993
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 994
    .line 995
    .line 996
    move-result v4

    .line 997
    if-nez v4, :cond_1f

    .line 998
    .line 999
    :cond_1e
    if-eqz v9, :cond_21

    .line 1000
    .line 1001
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->N2:Lcom/google/android/gms/internal/ads/J7;

    .line 1002
    .line 1003
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1004
    .line 1005
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    check-cast v4, Ljava/lang/Boolean;

    .line 1010
    .line 1011
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v4

    .line 1015
    if-eqz v4, :cond_21

    .line 1016
    .line 1017
    :cond_1f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Uy;->g(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Uy;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/bu;->d:Lp3/a;

    .line 1022
    .line 1023
    iget v4, v4, Lp3/a;->I:I

    .line 1024
    .line 1025
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->T2:Lcom/google/android/gms/internal/ads/J7;

    .line 1026
    .line 1027
    iget-object v8, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1028
    .line 1029
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v7

    .line 1033
    check-cast v7, Ljava/lang/Integer;

    .line 1034
    .line 1035
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1036
    .line 1037
    .line 1038
    move-result v7

    .line 1039
    if-lt v4, v7, :cond_20

    .line 1040
    .line 1041
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->Y2:Lcom/google/android/gms/internal/ads/J7;

    .line 1042
    .line 1043
    iget-object v5, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1044
    .line 1045
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v4

    .line 1049
    check-cast v4, Ljava/lang/Long;

    .line 1050
    .line 1051
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v4

    .line 1055
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 1056
    .line 1057
    iget-object v6, v6, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1058
    .line 1059
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v6

    .line 1063
    invoke-virtual {v6}, Lo3/L;->r()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v6

    .line 1067
    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/Uy;->f(JZ)Lcom/google/android/gms/internal/ads/Om;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v5

    .line 1071
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 1072
    .line 1073
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 1074
    .line 1075
    const-string v6, "paidv2_publisher_option"

    .line 1076
    .line 1077
    const/4 v7, 0x1

    .line 1078
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1079
    .line 1080
    .line 1081
    move-result v4

    .line 1082
    goto :goto_19

    .line 1083
    :cond_20
    const/4 v4, 0x1

    .line 1084
    :goto_19
    const-string v6, "paidv2_user_option"

    .line 1085
    .line 1086
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 1087
    .line 1088
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 1089
    .line 1090
    const/4 v7, 0x1

    .line 1091
    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v8

    .line 1095
    move v7, v4

    .line 1096
    move-object v6, v5

    .line 1097
    goto :goto_1a

    .line 1098
    :cond_21
    move-object v6, v5

    .line 1099
    const/4 v7, 0x1

    .line 1100
    const/4 v8, 0x1

    .line 1101
    :goto_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/cu;

    .line 1102
    .line 1103
    move-object v4, v0

    .line 1104
    move-object v5, v3

    .line 1105
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/cu;-><init>(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/Om;ZZZ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1106
    .line 1107
    .line 1108
    goto :goto_1c

    .line 1109
    :goto_1b
    const-string v3, "PerAppIdSignal"

    .line 1110
    .line 1111
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 1112
    .line 1113
    iget-object v4, v4, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1114
    .line 1115
    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1116
    .line 1117
    .line 1118
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/bu;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 1119
    .line 1120
    new-instance v2, Lcom/google/android/gms/internal/ads/cu;

    .line 1121
    .line 1122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yv;->b()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v0

    .line 1126
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/cu;-><init>(Z)V

    .line 1127
    .line 1128
    .line 1129
    move-object v0, v2

    .line 1130
    :goto_1c
    return-object v0

    .line 1131
    :pswitch_8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1132
    .line 1133
    check-cast v0, Lcom/google/android/gms/internal/ads/Xt;

    .line 1134
    .line 1135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1136
    .line 1137
    .line 1138
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->G4:Lcom/google/android/gms/internal/ads/J7;

    .line 1139
    .line 1140
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 1141
    .line 1142
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1143
    .line 1144
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v4

    .line 1148
    check-cast v4, Ljava/lang/Boolean;

    .line 1149
    .line 1150
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v4

    .line 1154
    if-eqz v4, :cond_24

    .line 1155
    .line 1156
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->R4:Lcom/google/android/gms/internal/ads/J7;

    .line 1157
    .line 1158
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1159
    .line 1160
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v4

    .line 1164
    check-cast v4, Ljava/lang/Boolean;

    .line 1165
    .line 1166
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v4

    .line 1170
    if-nez v4, :cond_22

    .line 1171
    .line 1172
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xt;->b:Ljava/util/Set;

    .line 1173
    .line 1174
    const-string v4, "rewarded"

    .line 1175
    .line 1176
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v4

    .line 1180
    if-nez v4, :cond_22

    .line 1181
    .line 1182
    const-string v4, "interstitial"

    .line 1183
    .line 1184
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v4

    .line 1188
    if-nez v4, :cond_22

    .line 1189
    .line 1190
    const-string v4, "native"

    .line 1191
    .line 1192
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v4

    .line 1196
    if-nez v4, :cond_22

    .line 1197
    .line 1198
    const-string v4, "banner"

    .line 1199
    .line 1200
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-eqz v0, :cond_24

    .line 1205
    .line 1206
    :cond_22
    new-instance v4, Lcom/google/android/gms/internal/ads/Cs;

    .line 1207
    .line 1208
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1209
    .line 1210
    iget-object v0, v0, Lk3/l;->v:Lc4/y;

    .line 1211
    .line 1212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v0

    .line 1219
    check-cast v0, Ljava/lang/Boolean;

    .line 1220
    .line 1221
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    if-nez v0, :cond_23

    .line 1226
    .line 1227
    :goto_1d
    const/4 v7, 0x0

    .line 1228
    goto :goto_1e

    .line 1229
    :cond_23
    :try_start_6
    const-string v7, "a.1.4.10-google_20240110"
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1230
    .line 1231
    goto :goto_1e

    .line 1232
    :catch_4
    move-exception v0

    .line 1233
    move-object v2, v0

    .line 1234
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 1235
    .line 1236
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1237
    .line 1238
    const-string v3, "omid exception"

    .line 1239
    .line 1240
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1241
    .line 1242
    .line 1243
    goto :goto_1d

    .line 1244
    :goto_1e
    invoke-direct {v4, v7, v5}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 1245
    .line 1246
    .line 1247
    goto :goto_1f

    .line 1248
    :cond_24
    new-instance v4, Lcom/google/android/gms/internal/ads/Cs;

    .line 1249
    .line 1250
    const/4 v2, 0x0

    .line 1251
    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/internal/ads/Cs;-><init>(Ljava/lang/String;I)V

    .line 1252
    .line 1253
    .line 1254
    :goto_1f
    return-object v4

    .line 1255
    :pswitch_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1256
    .line 1257
    check-cast v0, Lcom/google/android/gms/internal/ads/Ss;

    .line 1258
    .line 1259
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 1260
    .line 1261
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->g:Ljava/util/ArrayList;

    .line 1262
    .line 1263
    if-nez v2, :cond_25

    .line 1264
    .line 1265
    new-instance v0, Lcom/google/android/gms/internal/ads/Ut;

    .line 1266
    .line 1267
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/Ut;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    goto :goto_20

    .line 1271
    :cond_25
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    if-eqz v3, :cond_26

    .line 1276
    .line 1277
    new-instance v0, Lcom/google/android/gms/internal/ads/Ut;

    .line 1278
    .line 1279
    const/4 v2, 0x1

    .line 1280
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/Ut;-><init>(I)V

    .line 1281
    .line 1282
    .line 1283
    goto :goto_20

    .line 1284
    :cond_26
    new-instance v3, Lcom/google/android/gms/internal/ads/Vt;

    .line 1285
    .line 1286
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/Vt;-><init>(Lcom/google/android/gms/internal/ads/Ss;Ljava/util/ArrayList;)V

    .line 1287
    .line 1288
    .line 1289
    move-object v0, v3

    .line 1290
    :goto_20
    return-object v0

    .line 1291
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/he;->c()Lcom/google/android/gms/internal/ads/Pt;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    return-object v0

    .line 1296
    :pswitch_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1297
    .line 1298
    check-cast v0, Lcom/google/android/gms/internal/ads/Jt;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1301
    .line 1302
    .line 1303
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->t5:Lcom/google/android/gms/internal/ads/J7;

    .line 1304
    .line 1305
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 1306
    .line 1307
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1308
    .line 1309
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    check-cast v2, Ljava/lang/Boolean;

    .line 1314
    .line 1315
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v2

    .line 1319
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Jt;->d:Ljava/util/Set;

    .line 1320
    .line 1321
    if-eqz v2, :cond_28

    .line 1322
    .line 1323
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Jt;->b:Landroid/view/ViewGroup;

    .line 1324
    .line 1325
    if-eqz v2, :cond_28

    .line 1326
    .line 1327
    const-string v5, "banner"

    .line 1328
    .line 1329
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1330
    .line 1331
    .line 1332
    move-result v5

    .line 1333
    if-nez v5, :cond_27

    .line 1334
    .line 1335
    goto :goto_21

    .line 1336
    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/ads/Kt;

    .line 1337
    .line 1338
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v2

    .line 1342
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    invoke-direct {v0, v6, v2}, Lcom/google/android/gms/internal/ads/Kt;-><init>(ILjava/lang/Boolean;)V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_24

    .line 1350
    :cond_28
    :goto_21
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->u5:Lcom/google/android/gms/internal/ads/J7;

    .line 1351
    .line 1352
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1353
    .line 1354
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    check-cast v2, Ljava/lang/Boolean;

    .line 1359
    .line 1360
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1361
    .line 1362
    .line 1363
    move-result v2

    .line 1364
    if-eqz v2, :cond_2b

    .line 1365
    .line 1366
    const-string v2, "native"

    .line 1367
    .line 1368
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v2

    .line 1372
    if-eqz v2, :cond_2b

    .line 1373
    .line 1374
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Jt;->c:Landroid/content/Context;

    .line 1375
    .line 1376
    instance-of v2, v0, Landroid/app/Activity;

    .line 1377
    .line 1378
    if-eqz v2, :cond_2b

    .line 1379
    .line 1380
    new-instance v2, Lcom/google/android/gms/internal/ads/Kt;

    .line 1381
    .line 1382
    check-cast v0, Landroid/app/Activity;

    .line 1383
    .line 1384
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v3

    .line 1388
    if-eqz v3, :cond_29

    .line 1389
    .line 1390
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1395
    .line 1396
    const/high16 v4, 0x1000000

    .line 1397
    .line 1398
    and-int/2addr v3, v4

    .line 1399
    if-eqz v3, :cond_29

    .line 1400
    .line 1401
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1402
    .line 1403
    goto :goto_23

    .line 1404
    :cond_29
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v3

    .line 1408
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1417
    .line 1418
    and-int/lit16 v0, v0, 0x200

    .line 1419
    .line 1420
    if-eqz v0, :cond_2a

    .line 1421
    .line 1422
    const/4 v8, 0x1

    .line 1423
    goto :goto_22

    .line 1424
    :cond_2a
    const/4 v8, 0x0

    .line 1425
    :goto_22
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v7
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1429
    goto :goto_23

    .line 1430
    :catch_5
    const/4 v7, 0x0

    .line 1431
    :goto_23
    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/ads/Kt;-><init>(ILjava/lang/Boolean;)V

    .line 1432
    .line 1433
    .line 1434
    move-object v0, v2

    .line 1435
    goto :goto_24

    .line 1436
    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/ads/Kt;

    .line 1437
    .line 1438
    const/4 v2, 0x0

    .line 1439
    invoke-direct {v0, v6, v2}, Lcom/google/android/gms/internal/ads/Kt;-><init>(ILjava/lang/Boolean;)V

    .line 1440
    .line 1441
    .line 1442
    :goto_24
    return-object v0

    .line 1443
    :pswitch_c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1444
    .line 1445
    check-cast v0, Lcom/google/android/gms/internal/ads/Ht;

    .line 1446
    .line 1447
    new-instance v2, Lcom/google/android/gms/internal/ads/us;

    .line 1448
    .line 1449
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ht;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 1450
    .line 1451
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 1452
    .line 1453
    const-string v3, "requester_type_2"

    .line 1454
    .line 1455
    invoke-static {v0}, LU2/m;->k(Ll3/b1;)Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1460
    .line 1461
    .line 1462
    move-result v0

    .line 1463
    invoke-direct {v2, v0, v5}, Lcom/google/android/gms/internal/ads/us;-><init>(ZI)V

    .line 1464
    .line 1465
    .line 1466
    return-object v2

    .line 1467
    :pswitch_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1468
    .line 1469
    check-cast v0, Lcom/google/android/gms/internal/ads/Ft;

    .line 1470
    .line 1471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1472
    .line 1473
    .line 1474
    new-instance v2, Lcom/google/android/gms/internal/ads/ct;

    .line 1475
    .line 1476
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1477
    .line 1478
    iget-object v3, v3, Lk3/l;->c:Lo3/O;

    .line 1479
    .line 1480
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ft;->a:Landroid/content/Context;

    .line 1481
    .line 1482
    const-string v3, "display"

    .line 1483
    .line 1484
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0

    .line 1488
    instance-of v3, v0, Landroid/hardware/display/DisplayManager;

    .line 1489
    .line 1490
    if-eqz v3, :cond_2c

    .line 1491
    .line 1492
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1493
    .line 1494
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    array-length v0, v0

    .line 1499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v7

    .line 1503
    const/4 v0, 0x1

    .line 1504
    goto :goto_25

    .line 1505
    :cond_2c
    const/4 v0, 0x1

    .line 1506
    const/4 v7, 0x0

    .line 1507
    :goto_25
    invoke-direct {v2, v0, v7}, Lcom/google/android/gms/internal/ads/ct;-><init>(ILjava/lang/Integer;)V

    .line 1508
    .line 1509
    .line 1510
    return-object v2

    .line 1511
    :pswitch_e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1512
    .line 1513
    check-cast v0, Lcom/google/android/gms/internal/ads/yt;

    .line 1514
    .line 1515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1516
    .line 1517
    .line 1518
    new-instance v2, Lcom/google/android/gms/internal/ads/xs;

    .line 1519
    .line 1520
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1521
    .line 1522
    iget-object v3, v3, Lk3/l;->c:Lo3/O;

    .line 1523
    .line 1524
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->C5:Lcom/google/android/gms/internal/ads/J7;

    .line 1525
    .line 1526
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 1527
    .line 1528
    iget-object v7, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1529
    .line 1530
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    check-cast v3, Ljava/lang/Boolean;

    .line 1535
    .line 1536
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v3

    .line 1540
    const-string v7, "mobileads_consent"

    .line 1541
    .line 1542
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yt;->a:Landroid/content/Context;

    .line 1543
    .line 1544
    const-string v8, ""

    .line 1545
    .line 1546
    if-nez v3, :cond_2d

    .line 1547
    .line 1548
    move-object v3, v8

    .line 1549
    goto :goto_26

    .line 1550
    :cond_2d
    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v3

    .line 1554
    const-string v9, "consent_string"

    .line 1555
    .line 1556
    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v3

    .line 1560
    :goto_26
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->E5:Lcom/google/android/gms/internal/ads/J7;

    .line 1561
    .line 1562
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1563
    .line 1564
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v9

    .line 1568
    check-cast v9, Ljava/lang/Boolean;

    .line 1569
    .line 1570
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1571
    .line 1572
    .line 1573
    move-result v9

    .line 1574
    if-nez v9, :cond_2e

    .line 1575
    .line 1576
    goto :goto_27

    .line 1577
    :cond_2e
    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v7

    .line 1581
    const-string v9, "fc_consent"

    .line 1582
    .line 1583
    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v8

    .line 1587
    :goto_27
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->D5:Lcom/google/android/gms/internal/ads/J7;

    .line 1588
    .line 1589
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v5

    .line 1593
    check-cast v5, Ljava/lang/Boolean;

    .line 1594
    .line 1595
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1596
    .line 1597
    .line 1598
    move-result v5

    .line 1599
    if-nez v5, :cond_2f

    .line 1600
    .line 1601
    const/4 v7, 0x0

    .line 1602
    goto :goto_29

    .line 1603
    :cond_2f
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v0

    .line 1607
    new-instance v5, Landroid/os/Bundle;

    .line 1608
    .line 1609
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1610
    .line 1611
    .line 1612
    const-string v7, "IABConsent_CMPPresent"

    .line 1613
    .line 1614
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v9

    .line 1618
    if-eqz v9, :cond_30

    .line 1619
    .line 1620
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1621
    .line 1622
    .line 1623
    move-result v9

    .line 1624
    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1625
    .line 1626
    .line 1627
    :cond_30
    const-string v7, "IABConsent_SubjectToGDPR"

    .line 1628
    .line 1629
    const-string v9, "IABConsent_ConsentString"

    .line 1630
    .line 1631
    const-string v10, "IABConsent_ParsedPurposeConsents"

    .line 1632
    .line 1633
    const-string v11, "IABConsent_ParsedVendorConsents"

    .line 1634
    .line 1635
    filled-new-array {v7, v9, v10, v11}, [Ljava/lang/String;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v7

    .line 1639
    :goto_28
    if-ge v6, v4, :cond_32

    .line 1640
    .line 1641
    aget-object v9, v7, v6

    .line 1642
    .line 1643
    invoke-interface {v0, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v10

    .line 1647
    if-eqz v10, :cond_31

    .line 1648
    .line 1649
    const/4 v10, 0x0

    .line 1650
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v11

    .line 1654
    invoke-virtual {v5, v9, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    .line 1656
    .line 1657
    :cond_31
    add-int/lit8 v6, v6, 0x1

    .line 1658
    .line 1659
    goto :goto_28

    .line 1660
    :cond_32
    move-object v7, v5

    .line 1661
    :goto_29
    invoke-direct {v2, v3, v8, v7}, Lcom/google/android/gms/internal/ads/xs;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1662
    .line 1663
    .line 1664
    return-object v2

    .line 1665
    :pswitch_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1666
    .line 1667
    check-cast v0, Lcom/google/android/gms/internal/ads/vt;

    .line 1668
    .line 1669
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/vt;->d:Lcom/google/android/gms/internal/ads/Yv;

    .line 1670
    .line 1671
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 1672
    .line 1673
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vt;->b:Lcom/google/android/gms/internal/ads/sn;

    .line 1674
    .line 1675
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1676
    .line 1677
    .line 1678
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->K3:Lcom/google/android/gms/internal/ads/J7;

    .line 1679
    .line 1680
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 1681
    .line 1682
    iget-object v7, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1683
    .line 1684
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v4

    .line 1688
    check-cast v4, Ljava/lang/Boolean;

    .line 1689
    .line 1690
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1691
    .line 1692
    .line 1693
    move-result v4

    .line 1694
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1695
    .line 1696
    if-nez v4, :cond_33

    .line 1697
    .line 1698
    goto :goto_2a

    .line 1699
    :cond_33
    if-eqz v2, :cond_36

    .line 1700
    .line 1701
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vt;->c:Ljava/lang/String;

    .line 1702
    .line 1703
    if-eqz v0, :cond_36

    .line 1704
    .line 1705
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/sn;->d:Z

    .line 1706
    .line 1707
    if-nez v4, :cond_34

    .line 1708
    .line 1709
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/sn;->a()V

    .line 1710
    .line 1711
    .line 1712
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->L3:Lcom/google/android/gms/internal/ads/J7;

    .line 1713
    .line 1714
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v4

    .line 1718
    check-cast v4, Ljava/lang/Boolean;

    .line 1719
    .line 1720
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1721
    .line 1722
    .line 1723
    move-result v4

    .line 1724
    if-eqz v4, :cond_34

    .line 1725
    .line 1726
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sn;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1727
    .line 1728
    const/4 v7, 0x1

    .line 1729
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v4

    .line 1733
    if-nez v4, :cond_34

    .line 1734
    .line 1735
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 1736
    .line 1737
    iget-object v4, v4, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 1738
    .line 1739
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v4

    .line 1743
    new-instance v7, Lcom/google/android/gms/internal/ads/rn;

    .line 1744
    .line 1745
    invoke-direct {v7, v3, v5}, Lcom/google/android/gms/internal/ads/rn;-><init>(Lcom/google/android/gms/internal/ads/sn;I)V

    .line 1746
    .line 1747
    .line 1748
    iget-object v4, v4, Lo3/L;->c:Ljava/util/ArrayList;

    .line 1749
    .line 1750
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    .line 1752
    .line 1753
    :cond_34
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sn;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1754
    .line 1755
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v4

    .line 1759
    check-cast v4, Ljava/util/Map;

    .line 1760
    .line 1761
    if-eqz v4, :cond_36

    .line 1762
    .line 1763
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v5

    .line 1767
    check-cast v5, Lorg/json/JSONObject;

    .line 1768
    .line 1769
    if-eqz v5, :cond_35

    .line 1770
    .line 1771
    move-object v2, v5

    .line 1772
    goto :goto_2b

    .line 1773
    :cond_35
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/sn;->e:Lorg/json/JSONObject;

    .line 1774
    .line 1775
    invoke-static {v5, v2, v0}, Lo3/r;->n(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    if-eqz v0, :cond_36

    .line 1780
    .line 1781
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v0

    .line 1785
    move-object v2, v0

    .line 1786
    check-cast v2, Lorg/json/JSONObject;

    .line 1787
    .line 1788
    goto :goto_2b

    .line 1789
    :cond_36
    :goto_2a
    const/4 v2, 0x0

    .line 1790
    :goto_2b
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->M3:Lcom/google/android/gms/internal/ads/J7;

    .line 1791
    .line 1792
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v0

    .line 1796
    check-cast v0, Ljava/lang/Boolean;

    .line 1797
    .line 1798
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1799
    .line 1800
    .line 1801
    move-result v0

    .line 1802
    if-nez v0, :cond_37

    .line 1803
    .line 1804
    const/4 v7, 0x0

    .line 1805
    goto :goto_2c

    .line 1806
    :cond_37
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/sn;->b:Lorg/json/JSONObject;

    .line 1807
    .line 1808
    :goto_2c
    new-instance v0, Lcom/google/android/gms/internal/ads/Zs;

    .line 1809
    .line 1810
    const/4 v3, 0x1

    .line 1811
    invoke-direct {v0, v3, v2, v7}, Lcom/google/android/gms/internal/ads/Zs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1812
    .line 1813
    .line 1814
    return-object v0

    .line 1815
    :pswitch_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1816
    .line 1817
    check-cast v0, Lcom/google/android/gms/internal/ads/kt;

    .line 1818
    .line 1819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    .line 1821
    .line 1822
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->mb:Lcom/google/android/gms/internal/ads/J7;

    .line 1823
    .line 1824
    sget-object v7, Ll3/q;->d:Ll3/q;

    .line 1825
    .line 1826
    iget-object v7, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1827
    .line 1828
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v2

    .line 1832
    check-cast v2, Ljava/lang/Boolean;

    .line 1833
    .line 1834
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1835
    .line 1836
    .line 1837
    move-result v2

    .line 1838
    const/4 v7, 0x5

    .line 1839
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 1840
    .line 1841
    if-eqz v2, :cond_3b

    .line 1842
    .line 1843
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/kt;->b:Landroid/content/Context;

    .line 1844
    .line 1845
    const-string v10, "batterymanager"

    .line 1846
    .line 1847
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v2

    .line 1851
    check-cast v2, Landroid/os/BatteryManager;

    .line 1852
    .line 1853
    if-eqz v2, :cond_38

    .line 1854
    .line 1855
    invoke-virtual {v2, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 1856
    .line 1857
    .line 1858
    move-result v4

    .line 1859
    int-to-double v8, v4

    .line 1860
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 1861
    .line 1862
    div-double/2addr v8, v10

    .line 1863
    :cond_38
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1864
    .line 1865
    const/16 v10, 0x17

    .line 1866
    .line 1867
    if-lt v4, v10, :cond_39

    .line 1868
    .line 1869
    if-eqz v2, :cond_39

    .line 1870
    .line 1871
    invoke-static {v2}, Lb7/u;->w(Landroid/os/BatteryManager;)Z

    .line 1872
    .line 1873
    .line 1874
    move-result v0

    .line 1875
    goto :goto_2e

    .line 1876
    :cond_39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kt;->a()Landroid/content/Intent;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    if-eqz v0, :cond_3e

    .line 1881
    .line 1882
    const-string v2, "status"

    .line 1883
    .line 1884
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1885
    .line 1886
    .line 1887
    move-result v0

    .line 1888
    if-eq v0, v5, :cond_3a

    .line 1889
    .line 1890
    if-ne v0, v7, :cond_3e

    .line 1891
    .line 1892
    :cond_3a
    const/4 v6, 0x1

    .line 1893
    goto :goto_2d

    .line 1894
    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kt;->a()Landroid/content/Intent;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v0

    .line 1898
    if-eqz v0, :cond_3d

    .line 1899
    .line 1900
    const-string v2, "status"

    .line 1901
    .line 1902
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1903
    .line 1904
    .line 1905
    move-result v2

    .line 1906
    if-eq v2, v5, :cond_3c

    .line 1907
    .line 1908
    if-ne v2, v7, :cond_3d

    .line 1909
    .line 1910
    :cond_3c
    const/4 v6, 0x1

    .line 1911
    :cond_3d
    if-eqz v0, :cond_3e

    .line 1912
    .line 1913
    const-string v2, "level"

    .line 1914
    .line 1915
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1916
    .line 1917
    .line 1918
    move-result v2

    .line 1919
    const-string v4, "scale"

    .line 1920
    .line 1921
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1922
    .line 1923
    .line 1924
    move-result v0

    .line 1925
    int-to-double v2, v2

    .line 1926
    int-to-double v4, v0

    .line 1927
    div-double v8, v2, v4

    .line 1928
    .line 1929
    :cond_3e
    :goto_2d
    move v0, v6

    .line 1930
    :goto_2e
    new-instance v2, Lcom/google/android/gms/internal/ads/lt;

    .line 1931
    .line 1932
    invoke-direct {v2, v8, v9, v0}, Lcom/google/android/gms/internal/ads/lt;-><init>(DZ)V

    .line 1933
    .line 1934
    .line 1935
    return-object v2

    .line 1936
    :pswitch_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 1937
    .line 1938
    check-cast v0, Lcom/google/android/gms/internal/ads/et;

    .line 1939
    .line 1940
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/et;->b:Landroid/content/Context;

    .line 1941
    .line 1942
    const-string v4, "audio"

    .line 1943
    .line 1944
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v0

    .line 1948
    check-cast v0, Landroid/media/AudioManager;

    .line 1949
    .line 1950
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 1951
    .line 1952
    .line 1953
    move-result v7

    .line 1954
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 1955
    .line 1956
    .line 1957
    move-result v8

    .line 1958
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 1959
    .line 1960
    .line 1961
    move-result v9

    .line 1962
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 1963
    .line 1964
    .line 1965
    move-result v10

    .line 1966
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->ma:Lcom/google/android/gms/internal/ads/J7;

    .line 1967
    .line 1968
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 1969
    .line 1970
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 1971
    .line 1972
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v4

    .line 1976
    check-cast v4, Ljava/lang/Boolean;

    .line 1977
    .line 1978
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v4

    .line 1982
    if-eqz v4, :cond_3f

    .line 1983
    .line 1984
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 1985
    .line 1986
    iget-object v3, v3, Lk3/l;->e:LF2/G;

    .line 1987
    .line 1988
    invoke-virtual {v3, v0}, LF2/G;->V(Landroid/media/AudioManager;)I

    .line 1989
    .line 1990
    .line 1991
    move-result v3

    .line 1992
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 1993
    .line 1994
    .line 1995
    move-result v2

    .line 1996
    move v12, v2

    .line 1997
    move v11, v3

    .line 1998
    goto :goto_2f

    .line 1999
    :cond_3f
    const/4 v11, -0x1

    .line 2000
    const/4 v12, -0x1

    .line 2001
    :goto_2f
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 2002
    .line 2003
    .line 2004
    move-result v13

    .line 2005
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 2006
    .line 2007
    .line 2008
    move-result v14

    .line 2009
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 2010
    .line 2011
    iget-object v2, v0, Lk3/l;->h:Lo3/a;

    .line 2012
    .line 2013
    invoke-virtual {v2}, Lo3/a;->a()F

    .line 2014
    .line 2015
    .line 2016
    move-result v15

    .line 2017
    iget-object v0, v0, Lk3/l;->h:Lo3/a;

    .line 2018
    .line 2019
    invoke-virtual {v0}, Lo3/a;->d()Z

    .line 2020
    .line 2021
    .line 2022
    move-result v16

    .line 2023
    new-instance v0, Lcom/google/android/gms/internal/ads/ft;

    .line 2024
    .line 2025
    move-object v6, v0

    .line 2026
    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/ft;-><init>(IZZIIIIIFZ)V

    .line 2027
    .line 2028
    .line 2029
    return-object v0

    .line 2030
    :pswitch_12
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2031
    .line 2032
    check-cast v0, Lcom/google/android/gms/internal/ads/bt;

    .line 2033
    .line 2034
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bt;->b:Lp3/a;

    .line 2035
    .line 2036
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->p9:Lcom/google/android/gms/internal/ads/J7;

    .line 2037
    .line 2038
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 2039
    .line 2040
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2041
    .line 2042
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v3

    .line 2046
    check-cast v3, Ljava/lang/Boolean;

    .line 2047
    .line 2048
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2049
    .line 2050
    .line 2051
    move-result v3

    .line 2052
    if-eqz v3, :cond_42

    .line 2053
    .line 2054
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 2055
    .line 2056
    iget-object v3, v3, Lk3/l;->c:Lo3/O;

    .line 2057
    .line 2058
    :try_start_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2059
    .line 2060
    const/16 v5, 0x1e

    .line 2061
    .line 2062
    if-lt v3, v5, :cond_40

    .line 2063
    .line 2064
    invoke-static {}, Lb7/Z;->a()I

    .line 2065
    .line 2066
    .line 2067
    move-result v5

    .line 2068
    if-le v5, v2, :cond_40

    .line 2069
    .line 2070
    invoke-static {}, LE1/a;->v()I

    .line 2071
    .line 2072
    .line 2073
    move-result v0

    .line 2074
    goto :goto_32

    .line 2075
    :catch_6
    move-exception v0

    .line 2076
    goto :goto_31

    .line 2077
    :cond_40
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->s9:Lcom/google/android/gms/internal/ads/J7;

    .line 2078
    .line 2079
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v2

    .line 2083
    check-cast v2, Ljava/lang/Boolean;

    .line 2084
    .line 2085
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v2

    .line 2089
    if-eqz v2, :cond_41

    .line 2090
    .line 2091
    iget v0, v0, Lp3/a;->I:I

    .line 2092
    .line 2093
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->r9:Lcom/google/android/gms/internal/ads/J7;

    .line 2094
    .line 2095
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v2

    .line 2099
    check-cast v2, Ljava/lang/Integer;

    .line 2100
    .line 2101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2102
    .line 2103
    .line 2104
    move-result v2

    .line 2105
    if-lt v0, v2, :cond_41

    .line 2106
    .line 2107
    const/16 v0, 0x1f

    .line 2108
    .line 2109
    if-lt v3, v0, :cond_41

    .line 2110
    .line 2111
    invoke-static {}, LE1/a;->a()I

    .line 2112
    .line 2113
    .line 2114
    move-result v0

    .line 2115
    const/16 v2, 0x9

    .line 2116
    .line 2117
    if-lt v0, v2, :cond_41

    .line 2118
    .line 2119
    invoke-static {}, LE1/a;->a()I

    .line 2120
    .line 2121
    .line 2122
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 2123
    goto :goto_32

    .line 2124
    :cond_41
    :goto_30
    const/4 v0, 0x0

    .line 2125
    goto :goto_32

    .line 2126
    :goto_31
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 2127
    .line 2128
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 2129
    .line 2130
    const-string v3, "AdUtil.getAdServicesExtensionVersion"

    .line 2131
    .line 2132
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2133
    .line 2134
    .line 2135
    goto :goto_30

    .line 2136
    :goto_32
    new-instance v2, Lcom/google/android/gms/internal/ads/ct;

    .line 2137
    .line 2138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v0

    .line 2142
    invoke-direct {v2, v6, v0}, Lcom/google/android/gms/internal/ads/ct;-><init>(ILjava/lang/Integer;)V

    .line 2143
    .line 2144
    .line 2145
    goto :goto_33

    .line 2146
    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/ct;

    .line 2147
    .line 2148
    const/4 v3, 0x0

    .line 2149
    invoke-direct {v2, v6, v3}, Lcom/google/android/gms/internal/ads/ct;-><init>(ILjava/lang/Integer;)V

    .line 2150
    .line 2151
    .line 2152
    :goto_33
    return-object v2

    .line 2153
    :pswitch_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2154
    .line 2155
    check-cast v0, Lcom/google/android/gms/internal/ads/Ss;

    .line 2156
    .line 2157
    new-instance v2, Lcom/google/android/gms/internal/ads/Ts;

    .line 2158
    .line 2159
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Ss;->e:Ljava/lang/Object;

    .line 2160
    .line 2161
    check-cast v3, Lcom/google/android/gms/internal/ads/oe;

    .line 2162
    .line 2163
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ss;->d:Landroid/os/Parcelable;

    .line 2164
    .line 2165
    check-cast v4, Lp3/a;

    .line 2166
    .line 2167
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/oe;->g:Z

    .line 2168
    .line 2169
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ss;->c:Lcom/google/android/gms/internal/ads/Yv;

    .line 2170
    .line 2171
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->j:Ll3/h1;

    .line 2172
    .line 2173
    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/gms/internal/ads/Ts;-><init>(Ll3/h1;Lp3/a;Z)V

    .line 2174
    .line 2175
    .line 2176
    return-object v2

    .line 2177
    :pswitch_14
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2178
    .line 2179
    check-cast v0, Landroid/content/ContentResolver;

    .line 2180
    .line 2181
    new-instance v2, Lcom/google/android/gms/internal/ads/Qs;

    .line 2182
    .line 2183
    const-string v3, "advertising_id"

    .line 2184
    .line 2185
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v3

    .line 2189
    const-string v4, "limit_ad_tracking"

    .line 2190
    .line 2191
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 2192
    .line 2193
    .line 2194
    move-result v0

    .line 2195
    const/4 v4, 0x1

    .line 2196
    if-ne v0, v4, :cond_43

    .line 2197
    .line 2198
    const/4 v8, 0x1

    .line 2199
    goto :goto_34

    .line 2200
    :cond_43
    const/4 v8, 0x0

    .line 2201
    :goto_34
    invoke-direct {v2, v6, v3, v8}, Lcom/google/android/gms/internal/ads/Qs;-><init>(ILjava/lang/String;Z)V

    .line 2202
    .line 2203
    .line 2204
    return-object v2

    .line 2205
    :pswitch_15
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2206
    .line 2207
    move-object v2, v0

    .line 2208
    check-cast v2, Lcom/google/android/gms/internal/ads/Ls;

    .line 2209
    .line 2210
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2211
    .line 2212
    .line 2213
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->j1:Lcom/google/android/gms/internal/ads/J7;

    .line 2214
    .line 2215
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 2216
    .line 2217
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2218
    .line 2219
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v0

    .line 2223
    check-cast v0, Ljava/lang/String;

    .line 2224
    .line 2225
    const-string v3, ";"

    .line 2226
    .line 2227
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2228
    .line 2229
    .line 2230
    move-result-object v0

    .line 2231
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    new-instance v3, Landroid/os/Bundle;

    .line 2236
    .line 2237
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2238
    .line 2239
    .line 2240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v4

    .line 2244
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2245
    .line 2246
    .line 2247
    move-result v0

    .line 2248
    if-eqz v0, :cond_47

    .line 2249
    .line 2250
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v0

    .line 2254
    move-object v5, v0

    .line 2255
    check-cast v5, Ljava/lang/String;

    .line 2256
    .line 2257
    :try_start_9
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Ls;->b:Lcom/google/android/gms/internal/ads/qn;

    .line 2258
    .line 2259
    new-instance v6, Lorg/json/JSONObject;

    .line 2260
    .line 2261
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2262
    .line 2263
    .line 2264
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/qn;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gw;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v6

    .line 2268
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/gw;->a()Z

    .line 2269
    .line 2270
    .line 2271
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Ls;->c:Lcom/google/android/gms/internal/ads/eo;

    .line 2272
    .line 2273
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/eo;->b:Z

    .line 2274
    .line 2275
    new-instance v7, Landroid/os/Bundle;

    .line 2276
    .line 2277
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2278
    .line 2279
    .line 2280
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->Wa:Lcom/google/android/gms/internal/ads/J7;

    .line 2281
    .line 2282
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 2283
    .line 2284
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2285
    .line 2286
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v8

    .line 2290
    check-cast v8, Ljava/lang/Boolean;

    .line 2291
    .line 2292
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2293
    .line 2294
    .line 2295
    move-result v8
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_9 .. :try_end_9} :catch_9

    .line 2296
    if-eqz v8, :cond_44

    .line 2297
    .line 2298
    if-eqz v0, :cond_45

    .line 2299
    .line 2300
    :cond_44
    :try_start_a
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 2301
    .line 2302
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eb;->zzm()Lcom/google/android/gms/internal/ads/Ob;

    .line 2303
    .line 2304
    .line 2305
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2306
    if-eqz v0, :cond_45

    .line 2307
    .line 2308
    :try_start_b
    const-string v8, "sdk_version"

    .line 2309
    .line 2310
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ob;->toString()Ljava/lang/String;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v0

    .line 2314
    invoke-virtual {v7, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    .line 2316
    .line 2317
    goto :goto_36

    .line 2318
    :catchall_1
    move-exception v0

    .line 2319
    new-instance v8, Lcom/google/android/gms/internal/ads/aw;

    .line 2320
    .line 2321
    invoke-direct {v8, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2322
    .line 2323
    .line 2324
    throw v8
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_b .. :try_end_b} :catch_7

    .line 2325
    :catch_7
    :cond_45
    :goto_36
    :try_start_c
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 2326
    .line 2327
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eb;->zzl()Lcom/google/android/gms/internal/ads/Ob;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2331
    if-eqz v0, :cond_46

    .line 2332
    .line 2333
    :try_start_d
    const-string v6, "adapter_version"

    .line 2334
    .line 2335
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ob;->toString()Ljava/lang/String;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v0

    .line 2339
    invoke-virtual {v7, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    .line 2341
    .line 2342
    goto :goto_37

    .line 2343
    :catchall_2
    move-exception v0

    .line 2344
    new-instance v6, Lcom/google/android/gms/internal/ads/aw;

    .line 2345
    .line 2346
    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2347
    .line 2348
    .line 2349
    throw v6
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_d .. :try_end_d} :catch_8

    .line 2350
    :catch_8
    :cond_46
    :goto_37
    :try_start_e
    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/aw; {:try_start_e .. :try_end_e} :catch_9

    .line 2351
    .line 2352
    .line 2353
    goto :goto_35

    .line 2354
    :catch_9
    nop

    .line 2355
    goto :goto_35

    .line 2356
    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/ads/Ms;

    .line 2357
    .line 2358
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/Ms;-><init>(Landroid/os/Bundle;)V

    .line 2359
    .line 2360
    .line 2361
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->Wa:Lcom/google/android/gms/internal/ads/J7;

    .line 2362
    .line 2363
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 2364
    .line 2365
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2366
    .line 2367
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v3

    .line 2371
    check-cast v3, Ljava/lang/Boolean;

    .line 2372
    .line 2373
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2374
    .line 2375
    .line 2376
    move-result v3

    .line 2377
    if-eqz v3, :cond_48

    .line 2378
    .line 2379
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ls;->d:Lcom/google/android/gms/internal/ads/Ns;

    .line 2380
    .line 2381
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/Ns;->b:Lcom/google/android/gms/internal/ads/Ms;

    .line 2382
    .line 2383
    :cond_48
    return-object v0

    .line 2384
    :pswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/he;->b()Lcom/google/android/gms/internal/ads/Cs;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v0

    .line 2388
    return-object v0

    .line 2389
    :pswitch_17
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2390
    .line 2391
    check-cast v0, Lcom/google/android/gms/internal/ads/cq;

    .line 2392
    .line 2393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v0

    .line 2397
    return-object v0

    .line 2398
    :pswitch_18
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2399
    .line 2400
    check-cast v0, Lcom/google/android/gms/internal/ads/Op;

    .line 2401
    .line 2402
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v0

    .line 2406
    return-object v0

    .line 2407
    :pswitch_19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2408
    .line 2409
    check-cast v0, Landroid/webkit/CookieManager;

    .line 2410
    .line 2411
    if-nez v0, :cond_49

    .line 2412
    .line 2413
    const-string v0, ""

    .line 2414
    .line 2415
    goto :goto_38

    .line 2416
    :cond_49
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->H0:Lcom/google/android/gms/internal/ads/J7;

    .line 2417
    .line 2418
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 2419
    .line 2420
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 2421
    .line 2422
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v2

    .line 2426
    check-cast v2, Ljava/lang/String;

    .line 2427
    .line 2428
    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v0

    .line 2432
    :goto_38
    return-object v0

    .line 2433
    :pswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/he;->a()Ljava/lang/Long;

    .line 2434
    .line 2435
    .line 2436
    move-result-object v0

    .line 2437
    return-object v0

    .line 2438
    :pswitch_1b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2439
    .line 2440
    check-cast v0, Lcom/google/android/gms/internal/ads/bf;

    .line 2441
    .line 2442
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bf;->d:Ljava/lang/String;

    .line 2443
    .line 2444
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bf;->e:[Ljava/lang/String;

    .line 2445
    .line 2446
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bf;->c:Lcom/google/android/gms/internal/ads/jf;

    .line 2447
    .line 2448
    invoke-virtual {v4, v2, v3, v0}, Lcom/google/android/gms/internal/ads/jf;->t(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/bf;)Z

    .line 2449
    .line 2450
    .line 2451
    move-result v0

    .line 2452
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v0

    .line 2456
    return-object v0

    .line 2457
    :pswitch_1c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/he;->b:Ljava/lang/Object;

    .line 2458
    .line 2459
    check-cast v0, Lcom/google/android/gms/internal/ads/le;

    .line 2460
    .line 2461
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/le;->e:Landroid/content/Context;

    .line 2462
    .line 2463
    sget v2, Lcom/google/android/gms/internal/ads/cd;->a:I

    .line 2464
    .line 2465
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v2

    .line 2469
    if-nez v2, :cond_4a

    .line 2470
    .line 2471
    goto :goto_39

    .line 2472
    :cond_4a
    move-object v0, v2

    .line 2473
    :goto_39
    new-instance v2, Ljava/util/ArrayList;

    .line 2474
    .line 2475
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2476
    .line 2477
    .line 2478
    :try_start_f
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v3

    .line 2482
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2483
    .line 2484
    .line 2485
    move-result-object v0

    .line 2486
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2487
    .line 2488
    const/16 v4, 0x1000

    .line 2489
    .line 2490
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/measurement/U1;->c(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_a

    .line 2494
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2495
    .line 2496
    if-eqz v3, :cond_4c

    .line 2497
    .line 2498
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 2499
    .line 2500
    if-eqz v3, :cond_4c

    .line 2501
    .line 2502
    :goto_3a
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 2503
    .line 2504
    array-length v4, v3

    .line 2505
    if-ge v6, v4, :cond_4c

    .line 2506
    .line 2507
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 2508
    .line 2509
    aget v4, v4, v6

    .line 2510
    .line 2511
    and-int/2addr v4, v5

    .line 2512
    if-eqz v4, :cond_4b

    .line 2513
    .line 2514
    aget-object v3, v3, v6

    .line 2515
    .line 2516
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    .line 2518
    .line 2519
    :cond_4b
    add-int/lit8 v6, v6, 0x1

    .line 2520
    .line 2521
    goto :goto_3a

    .line 2522
    :catch_a
    :cond_4c
    return-object v2

    .line 2523
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
