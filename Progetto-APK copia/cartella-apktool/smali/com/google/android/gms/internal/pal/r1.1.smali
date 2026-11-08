.class public final Lcom/google/android/gms/internal/pal/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/pal/o3;
.implements Lcom/google/android/gms/internal/pal/g4;
.implements Lcom/google/android/gms/internal/ads/vi;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    if-eqz p1, :cond_1

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lk2/h;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lk2/h;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lc4/J0;->v(Landroid/net/ConnectivityManager;Lk2/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-class p1, Lcom/google/android/gms/internal/pal/r1;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/google/android/gms/internal/pal/m2;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/pal/y4;->N()[B

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/pal/y4;->z([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/pal/y4;->X([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v6, 0x2

    .line 18
    new-array v7, v6, [[B

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    aput-object v4, v7, v8

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    aput-object v0, v7, v9

    .line 25
    .line 26
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-array v7, v6, [[B

    .line 31
    .line 32
    sget-object v10, Lcom/google/android/gms/internal/pal/i4;->m:[B

    .line 33
    .line 34
    aput-object v10, v7, v8

    .line 35
    .line 36
    sget-object v10, Lcom/google/android/gms/internal/pal/i4;->b:[B

    .line 37
    .line 38
    aput-object v10, v7, v9

    .line 39
    .line 40
    invoke-static {v7}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    move-object/from16 v10, p0

    .line 45
    .line 46
    iget-object v11, v10, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v11, Lcom/google/android/gms/internal/pal/r1;

    .line 49
    .line 50
    invoke-virtual {v11}, Lcom/google/android/gms/internal/pal/r1;->b()I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    const-string v14, "eae_prk"

    .line 57
    .line 58
    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    sget-object v15, Lcom/google/android/gms/internal/pal/i4;->o:[B

    .line 63
    .line 64
    new-array v1, v3, [[B

    .line 65
    .line 66
    aput-object v15, v1, v8

    .line 67
    .line 68
    aput-object v7, v1, v9

    .line 69
    .line 70
    aput-object v14, v1, v6

    .line 71
    .line 72
    aput-object v5, v1, v2

    .line 73
    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-virtual {v11, v1, v5}, Lcom/google/android/gms/internal/pal/r1;->g([B[B)[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/pal/i4;->b(II)[B

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v14, "shared_secret"

    .line 88
    .line 89
    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    const/4 v14, 0x5

    .line 94
    new-array v3, v14, [[B

    .line 95
    .line 96
    aput-object v5, v3, v8

    .line 97
    .line 98
    aput-object v15, v3, v9

    .line 99
    .line 100
    aput-object v7, v3, v6

    .line 101
    .line 102
    aput-object v13, v3, v2

    .line 103
    .line 104
    const/4 v2, 0x4

    .line 105
    aput-object v0, v3, v2

    .line 106
    .line 107
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->Y([[B)[B

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v11, v12, v1, v0}, Lcom/google/android/gms/internal/pal/r1;->f(I[B[B)[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/google/android/gms/internal/pal/m2;

    .line 116
    .line 117
    invoke-direct {v1, v14, v0, v4}, Lcom/google/android/gms/internal/pal/m2;-><init>(ILjava/lang/Object;Ljava/lang/Cloneable;)V

    .line 118
    .line 119
    .line 120
    return-object v1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/pal/Q6;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/Q6;->a:[B

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    return v0

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/pal/l2;->a:LO1/y;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/h2;->c:Lcom/google/android/gms/internal/pal/k2;

    .line 15
    .line 16
    iget-boolean v2, v1, Lcom/google/android/gms/internal/pal/k2;->c:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/pal/k2;->a:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/k2;->c:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    monitor-exit v2

    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_4

    .line 33
    :cond_1
    iget-boolean v3, v1, Lcom/google/android/gms/internal/pal/k2;->d:Z

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/k2;->d:Z

    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    move-object v3, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_0
    iput-object v3, v1, Lcom/google/android/gms/internal/pal/k2;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :try_start_1
    invoke-static {v3}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v5, v1, Lcom/google/android/gms/internal/pal/k2;->g:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v6, 0x80

    .line 65
    .line 66
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 71
    .line 72
    iput-object v3, v1, Lcom/google/android/gms/internal/pal/k2;->f:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    :catch_0
    const/4 v3, 0x0

    .line 75
    :try_start_2
    invoke-static {v0}, LJ3/j;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    :cond_4
    move-object v0, v5

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 92
    .line 93
    iget-object v5, v5, Lcom/google/android/gms/internal/pal/h2;->b:Lcom/google/android/gms/internal/pal/c;

    .line 94
    .line 95
    const-string v5, "google_ads_flags"

    .line 96
    .line 97
    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, v1, Lcom/google/android/gms/internal/pal/k2;->e:Landroid/content/SharedPreferences;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/pal/j2;

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/j2;-><init>(Lcom/google/android/gms/internal/pal/k2;)V

    .line 111
    .line 112
    .line 113
    sget-object v5, Lcom/google/android/gms/internal/pal/n2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/k2;->b()V

    .line 119
    .line 120
    .line 121
    iput-boolean v4, v1, Lcom/google/android/gms/internal/pal/k2;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .line 123
    :try_start_3
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/k2;->d:Z

    .line 124
    .line 125
    iget-object v0, v1, Lcom/google/android/gms/internal/pal/k2;->b:Landroid/os/ConditionVariable;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 128
    .line 129
    .line 130
    monitor-exit v2

    .line 131
    :goto_2
    const/4 v0, 0x0

    .line 132
    return-object v0

    .line 133
    :goto_3
    iput-boolean v3, v1, Lcom/google/android/gms/internal/pal/k2;->d:Z

    .line 134
    .line 135
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/k2;->b:Landroid/os/ConditionVariable;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    throw v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Lcom/google/android/gms/internal/pal/k2;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/k2;->e:Landroid/content/SharedPreferences;

    .line 148
    .line 149
    const-string v1, "flag_configuration"

    .line 150
    .line 151
    const-string v2, "{}"

    .line 152
    .line 153
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    return-object p1

    .line 39
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public e()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x3aaea10e

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const v2, 0x3aaea52a

    .line 17
    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const v2, 0x3aaeabd1

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "HmacSha512"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string v1, "HmacSha384"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v1, "HmacSha256"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 58
    :goto_1
    if-eqz v0, :cond_6

    .line 59
    .line 60
    if-eq v0, v3, :cond_5

    .line 61
    .line 62
    if-ne v0, v4, :cond_4

    .line 63
    .line 64
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->h:[B

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 68
    .line 69
    const-string v1, "Could not determine HPKE KDF ID"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->g:[B

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->f:[B

    .line 79
    .line 80
    return-object v0
.end method

.method public f(I[B[B)[B
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->f:Lcom/google/android/gms/internal/pal/J6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    if-gt p1, v1, :cond_1

    .line 20
    .line 21
    new-array v1, p1, [B

    .line 22
    .line 23
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    new-array v2, p2, [B

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    :goto_0
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 44
    .line 45
    .line 46
    int-to-byte v2, v3

    .line 47
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    array-length v5, v2

    .line 55
    add-int v6, v4, v5

    .line 56
    .line 57
    if-ge v6, p1, :cond_0

    .line 58
    .line 59
    invoke-static {v2, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    move v4, v6

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sub-int/2addr p1, v4

    .line 67
    invoke-static {v2, p2, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 72
    .line 73
    const-string p2, "size too large"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public g([B[B)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/J6;->f:Lcom/google/android/gms/internal/pal/J6;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    new-array v1, v1, [B

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p2, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public zza()Ll3/B0;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/r1;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/sq;

    .line 9
    .line 10
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/Ib;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ib;->zze()Ll3/B0;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/aw;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/ads/gw;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gw;->a:Lcom/google/android/gms/internal/ads/eb;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eb;->zzh()Ll3/B0;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    new-instance v1, Lcom/google/android/gms/internal/ads/aw;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/ads/Ef;

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public zzb()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/pal/r1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r1;->e()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/pal/i4;->f:[B

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/pal/i4;->b:[B

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 21
    .line 22
    const-string v1, "Could not determine HPKE KEM ID"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method
