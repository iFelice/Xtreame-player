.class public final Lcom/google/ads/interactivemedia/v3/internal/zzez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Z

.field private final zzc:J

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final zze:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

.field private final zzf:Lcom/google/ads/interactivemedia/v3/internal/zzew;

.field private final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzej;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzew;Lcom/google/ads/interactivemedia/v3/internal/zzfd;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zza:Z

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzb:Z

    .line 11
    .line 12
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zzb:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-gtz v4, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x96

    .line 21
    .line 22
    :cond_0
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzc:J

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzew;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzd:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 29
    .line 30
    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/zzej;

    .line 31
    .line 32
    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/zzew;->zze:I

    .line 33
    .line 34
    if-eqz p4, :cond_2

    .line 35
    .line 36
    :try_start_0
    const-string v0, "IDENTITY_TOKEN_CUSTOM_TIMEOUT_AND_MEASUREMENT"

    .line 37
    .line 38
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    check-cast p4, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    const/4 p4, 0x0

    .line 50
    :goto_0
    if-gtz p4, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move p2, p4

    .line 54
    :cond_2
    :goto_1
    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zzei;

    .line 55
    .line 56
    invoke-direct {p4, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzei;-><init>(Landroid/content/Context;ILcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p5, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzej;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzei;)V

    .line 60
    .line 61
    .line 62
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzej;

    .line 63
    .line 64
    return-void
.end method

.method private final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzeu;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzeu;->zzc()Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :catch_2
    move-exception p1

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 18
    .line 19
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;->IDENTIFIER_INFO_FACTORY:Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;

    .line 20
    .line 21
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;->SAFE_BLOCKING_GET_IDLESS:Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzg(Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzeu;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v2}, Lj3/b;->a(Landroid/content/Context;)Lj3/a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, v2, Lj3/a;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean v2, v2, Lj3/a;->b:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :try_start_1
    const-string v4, "adid"
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    move v7, v2

    .line 29
    move-object v5, v3

    .line 30
    :goto_0
    move-object v6, v4

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-object v3, v0

    .line 33
    const/4 v2, 0x0

    .line 34
    :catch_1
    :try_start_2
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "advertising_id"

    .line 41
    .line 42
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "limit_ad_tracking"

    .line 47
    .line 48
    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 52
    const/4 v3, 0x1

    .line 53
    if-ne v2, v3, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    .line 58
    :goto_1
    :try_start_3
    const-string v4, "afai"
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 59
    .line 60
    move v7, v2

    .line 61
    goto :goto_0

    .line 62
    :catch_2
    move-object v3, v5

    .line 63
    :catch_3
    const-string v4, "Failed to get advertising ID."

    .line 64
    .line 65
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v6, v0

    .line 69
    move v7, v2

    .line 70
    move-object v5, v3

    .line 71
    :goto_2
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzb:Z

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    :try_start_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 76
    .line 77
    new-instance v3, LW3/i;

    .line 78
    .line 79
    invoke-direct {v3, v2}, LW3/i;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, LW3/i;->a()Lg4/h;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzc:J

    .line 87
    .line 88
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    invoke-static {v2, v3, v4, v8}, Lcom/google/android/gms/internal/ads/Cw;->b(Lg4/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, LA3/b;

    .line 95
    .line 96
    iget-object v3, v2, LA3/b;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 97
    .line 98
    :try_start_5
    iget p2, v2, LA3/b;->b:I
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 99
    .line 100
    move v9, p2

    .line 101
    move-object v8, v3

    .line 102
    goto :goto_5

    .line 103
    :catch_4
    move-object v3, v0

    .line 104
    :catch_5
    const-string v2, "Unable to contact the App Set SDK."

    .line 105
    .line 106
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    move-object v8, v3

    .line 110
    :goto_4
    const/4 v9, 0x0

    .line 111
    goto :goto_5

    .line 112
    :catch_6
    move-object v3, v0

    .line 113
    :catch_7
    const-string v2, "Timeout getting AppSet ID."

    .line 114
    .line 115
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    move-object v8, v0

    .line 120
    goto :goto_4

    .line 121
    :goto_5
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzd:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 124
    .line 125
    invoke-static {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzex;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzew;

    .line 134
    .line 135
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza:Landroid/content/Context;

    .line 136
    .line 137
    invoke-interface {p1, v2, v3, v7, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzex;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzew;Landroid/content/Context;ZZ)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzej;

    .line 144
    .line 145
    if-eqz p2, :cond_3

    .line 146
    .line 147
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/zzau;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzau;

    .line 148
    .line 149
    :cond_3
    invoke-virtual {p1, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzej;->zza(Lcom/google/ads/interactivemedia/v3/impl/zzau;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :cond_4
    move-object v10, v0

    .line 154
    invoke-static/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    return-object p1
.end method
