.class public final Lcom/google/ads/interactivemedia/v3/internal/zzmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field volatile zza:Z

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Landroid/os/ConditionVariable;

.field private volatile zzd:Z

.field private zze:Landroid/content/SharedPreferences;

.field private zzf:Landroid/os/Bundle;

.field private zzg:Landroid/content/Context;

.field private zzh:Lorg/json/JSONObject;

.field private zzi:Z

.field private zzj:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzb:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/ConditionVariable;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    new-instance v1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzf:Landroid/os/Bundle;

    .line 32
    .line 33
    new-instance v1, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzh:Lorg/json/JSONObject;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzi:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzj:Z

    .line 43
    .line 44
    return-void
.end method

.method private final zze(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzme;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzme;-><init>(Landroid/content/SharedPreferences;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzqn;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzh:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :catch_0
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "flag_configuration"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze(Landroid/content/SharedPreferences;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 2
    .line 3
    const-wide/16 v1, 0x1388

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzb:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Flags.initialize() was not called!"

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzj:Z

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzb:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z

    .line 48
    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    if-eqz v1, :cond_8

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzj:Z

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzd()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x2

    .line 66
    if-ne v0, v1, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzf:Landroid/os/Bundle;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzi()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzb(Landroid/os/Bundle;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzd()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x1

    .line 87
    if-ne v0, v1, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzh:Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzj()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzh:Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzmf;

    .line 109
    .line 110
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzmf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzmh;Lcom/google/ads/interactivemedia/v3/internal/zzma;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzmk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzqn;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :catchall_1
    move-exception p1

    .line 119
    goto :goto_3

    .line 120
    :cond_8
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzi()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    monitor-exit v0

    .line 125
    return-object p1

    .line 126
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    throw p1
.end method

.method public final synthetic zzb(Lcom/google/ads/interactivemedia/v3/internal/zzma;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzma;->zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzb:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 24
    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "com.google.android.gms"

    .line 30
    .line 31
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzi:Z

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_3
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :try_start_1
    invoke-static {p1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/16 v3, 0x80

    .line 60
    .line 61
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/measurement/U1;->b(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzf:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    :catch_0
    const/4 p1, 0x0

    .line 70
    :try_start_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v1}, LJ3/j;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    :cond_4
    move-object v1, v3

    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception v1

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 92
    .line 93
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzmc;

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmc;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    const/4 v3, 0x0

    .line 102
    :goto_1
    if-eqz v3, :cond_7

    .line 103
    .line 104
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzmg;

    .line 105
    .line 106
    invoke-direct {v4, p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzmg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzmh;Landroid/content/SharedPreferences;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzms;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzmq;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzi:Z

    .line 113
    .line 114
    const-wide/16 v4, 0x0

    .line 115
    .line 116
    if-nez v3, :cond_8

    .line 117
    .line 118
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzmm;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzml;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide v6

    .line 130
    cmp-long v8, v6, v4

    .line 131
    .line 132
    if-lez v8, :cond_8

    .line 133
    .line 134
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zza(Landroid/content/Context;)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    int-to-long v6, v6

    .line 141
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/Long;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v8

    .line 151
    cmp-long v3, v6, v8

    .line 152
    .line 153
    if-ltz v3, :cond_8

    .line 154
    .line 155
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzj:Z

    .line 156
    .line 157
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .line 159
    :try_start_3
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 160
    .line 161
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 164
    .line 165
    .line 166
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    return-void

    .line 168
    :cond_8
    :try_start_4
    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzi:Z

    .line 169
    .line 170
    if-nez v3, :cond_9

    .line 171
    .line 172
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzmm;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzml;

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Ljava/lang/Long;

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 181
    .line 182
    .line 183
    move-result-wide v6

    .line 184
    cmp-long v8, v6, v4

    .line 185
    .line 186
    if-lez v8, :cond_9

    .line 187
    .line 188
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzb(Landroid/content/Context;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    int-to-long v4, v4

    .line 195
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Ljava/lang/Long;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    cmp-long v3, v4, v6

    .line 206
    .line 207
    if-ltz v3, :cond_9

    .line 208
    .line 209
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzj:Z

    .line 210
    .line 211
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    .line 213
    :try_start_5
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 214
    .line 215
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 218
    .line 219
    .line 220
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    return-void

    .line 222
    :cond_9
    :try_start_6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;

    .line 223
    .line 224
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzmn;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzml;

    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    check-cast v4, Ljava/lang/Boolean;

    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_a

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_a
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzmn;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzml;

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_b

    .line 252
    .line 253
    const-string v4, "admob"

    .line 254
    .line 255
    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-eqz v3, :cond_b

    .line 260
    .line 261
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzmd;

    .line 262
    .line 263
    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzmd;-><init>(Landroid/content/SharedPreferences;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzmk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzqn;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    check-cast v3, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    .line 272
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    .line 273
    .line 274
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v3, "local_flags_enabled"

    .line 278
    .line 279
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v3
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    if-eqz v3, :cond_b

    .line 284
    .line 285
    :goto_2
    :try_start_8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzg:Landroid/content/Context;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :catch_1
    nop

    .line 289
    :cond_b
    :goto_3
    if-nez v1, :cond_c

    .line 290
    .line 291
    :try_start_9
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 292
    .line 293
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 296
    .line 297
    .line 298
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 299
    return-void

    .line 300
    :cond_c
    :try_start_a
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzls;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzmc;

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmc;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 308
    .line 309
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzmn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzml;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzml;->zzc()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_d

    .line 322
    .line 323
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 324
    .line 325
    if-eqz v1, :cond_d

    .line 326
    .line 327
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 328
    .line 329
    .line 330
    :cond_d
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze:Landroid/content/SharedPreferences;

    .line 331
    .line 332
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zze(Landroid/content/SharedPreferences;)V

    .line 333
    .line 334
    .line 335
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzd:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 336
    .line 337
    :try_start_b
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 338
    .line 339
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 340
    .line 341
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 342
    .line 343
    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 346
    :goto_4
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zza:Z

    .line 347
    .line 348
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzc:Landroid/os/ConditionVariable;

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 351
    .line 352
    .line 353
    throw v1

    .line 354
    :goto_5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 355
    throw p1
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzmh;->zzi:Z

    return v0
.end method
