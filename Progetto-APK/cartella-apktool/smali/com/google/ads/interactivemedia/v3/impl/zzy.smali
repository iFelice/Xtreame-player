.class public final Lcom/google/ads/interactivemedia/v3/impl/zzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

.field private final zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

.field private final zzd:Lcom/google/ads/interactivemedia/v3/impl/zzv;

.field private final zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/Map;

.field private final zzh:Ljava/util/Map;

.field private final zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

.field private final zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfp;

.field private final zzm:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

.field private final zzn:Lcom/google/ads/interactivemedia/v3/internal/zzgg;

.field private final zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

.field private final zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

.field private final zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private zzr:Lcom/google/ads/interactivemedia/v3/internal/zzet;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzba;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfj;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzv;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/zzv;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzv;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzg:Ljava/util/Map;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh:Ljava/util/Map;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 40
    .line 41
    if-nez p3, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v0, p3

    .line 53
    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 56
    .line 57
    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/zzvb;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 58
    .line 59
    .line 60
    move-result-object p6

    .line 61
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 62
    .line 63
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 68
    .line 69
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzb()Landroid/webkit/WebView;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, p1, v1, p7}, Lcom/google/ads/interactivemedia/v3/impl/zzbt;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbi;Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    .line 79
    .line 80
    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 81
    .line 82
    invoke-direct {p7, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzbi;Lcom/google/ads/interactivemedia/v3/internal/zzfj;)V

    .line 83
    .line 84
    .line 85
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 86
    .line 87
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 88
    .line 89
    invoke-direct {p1, p7}, Lcom/google/ads/interactivemedia/v3/impl/zzat;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 93
    .line 94
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->claim()V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzfp;

    .line 98
    .line 99
    invoke-direct {p1, p2, p6, p7, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzfp;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfd;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfp;

    .line 103
    .line 104
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 105
    .line 106
    invoke-direct {p1, p2, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 110
    .line 111
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzgg;

    .line 112
    .line 113
    invoke-direct {p1, p2, p6, p3, p7}, Lcom/google/ads/interactivemedia/v3/internal/zzgg;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzuv;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzgg;

    .line 117
    .line 118
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;->zzs()Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 123
    .line 124
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    return-object p0
.end method

.method public static zzc(Lcom/google/ads/interactivemedia/v3/impl/zzba;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfj;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)Lcom/google/ads/interactivemedia/v3/impl/zzy;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/zzy;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzba;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfj;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lcom/google/ads/interactivemedia/v3/impl/zzo;

    .line 19
    .line 20
    invoke-direct {p1, v8}, Lcom/google/ads/interactivemedia/v3/impl/zzo;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 24
    .line 25
    .line 26
    return-object v8
.end method

.method public static bridge synthetic zzd(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzat;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzba;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/impl/zzbt;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzi:Lcom/google/ads/interactivemedia/v3/impl/zzbt;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzfd;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Lcom/google/ads/interactivemedia/v3/internal/zzuv;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzg:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/ads/interactivemedia/v3/impl/zzy;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static synthetic zzo(Lcom/google/ads/interactivemedia/v3/impl/zzy;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 20
    .line 21
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 22
    .line 23
    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 24
    .line 25
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 26
    .line 27
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 28
    .line 29
    const-string v4, "core component initialization failed"

    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 42
    .line 43
    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->enableInstrumentation:Z

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzh(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->espAdapterTimeoutMs:Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->espAdapters:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 57
    .line 58
    invoke-virtual {v5, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zzc(Ljava/util/List;Ljava/lang/Integer;)Lg4/h;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzgd;->zzb()Lg4/h;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfp;

    .line 67
    .line 68
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->platformSignalCollectorTimeoutMs:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfp;->zzb(Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 74
    .line 75
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 78
    .line 79
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzes;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)Lcom/google/ads/interactivemedia/v3/internal/zzes;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 86
    .line 87
    move-object v5, v3

    .line 88
    invoke-direct/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/zzet;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzba;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzes;Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zze()V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-static {v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzahh;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvd;->zzc(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static final zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Error during initialization"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzuk;->zzd(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    new-instance v2, Ljava/lang/Exception;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public static final zzt(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzg(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private final zzu()Lcom/google/ads/interactivemedia/v3/impl/zzw;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 10
    .line 11
    const-string v3, "market://details?id=com.google.ads.interactivemedia.v3"

    .line 12
    .line 13
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    .line 19
    .line 20
    const/high16 v2, 0x10000

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    :try_start_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 43
    .line 44
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzw;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/zzw;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method private final zzv()Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    :goto_0
    move-object v0, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 27
    .line 28
    const-string v1, "connectivity"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v0}, LF2/D;->e(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getFeatureFlags()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const-string v4, "NATIVE_UI"

    .line 68
    .line 69
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    :cond_4
    if-nez v0, :cond_5

    .line 77
    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_5
    invoke-static {v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;->create(Ljava/lang/Integer;Z)Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method private final zzw(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzez;

    .line 18
    .line 19
    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/zzew;

    .line 20
    .line 21
    invoke-direct {v13, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzew;-><init>(Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)V

    .line 22
    .line 23
    .line 24
    iget-object v14, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 25
    .line 26
    iget-object v3, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getFeatureFlags()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v15

    .line 32
    iget-object v12, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v3, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 35
    .line 36
    move-object v11, v2

    .line 37
    move-object/from16 v16, v3

    .line 38
    .line 39
    invoke-direct/range {v11 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/zzez;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzew;Lcom/google/ads/interactivemedia/v3/internal/zzfd;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzq;

    .line 43
    .line 44
    move-object/from16 v7, p1

    .line 45
    .line 46
    invoke-direct {v3, v10, v2, v7, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzq;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzez;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 50
    .line 51
    invoke-interface {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzuv;->zza(Ljava/util/concurrent/Callable;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzr;

    .line 56
    .line 57
    invoke-direct {v1, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzahj;J)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 61
    .line 62
    invoke-interface {v8, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzs;

    .line 66
    .line 67
    invoke-direct {v1, v10, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzs;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuv;->zza(Ljava/util/concurrent/Callable;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzt;

    .line 77
    .line 78
    invoke-direct {v0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzahj;J)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 82
    .line 83
    invoke-interface {v9, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzgd;

    .line 87
    .line 88
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzu;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzgd;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuv;->zza(Ljava/util/concurrent/Callable;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzj;

    .line 103
    .line 104
    invoke-direct {v0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzahj;J)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 108
    .line 109
    invoke-interface {v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzfp;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfp;->zza()Lg4/h;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzpr;->zza(Lg4/h;Lg4/a;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzk;

    .line 124
    .line 125
    invoke-direct {v0, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/impl/zzk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzahj;J)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 129
    .line 130
    invoke-interface {v11, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x4

    .line 134
    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    aput-object v8, v0, v1

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    aput-object v9, v0, v1

    .line 141
    .line 142
    const/4 v1, 0x2

    .line 143
    aput-object v3, v0, v1

    .line 144
    .line 145
    const/4 v1, 0x3

    .line 146
    aput-object v11, v0, v1

    .line 147
    .line 148
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuk;->zza([Lcom/google/ads/interactivemedia/v3/internal/zzuu;)Lcom/google/ads/interactivemedia/v3/internal/zzuj;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    new-instance v13, Lcom/google/ads/interactivemedia/v3/impl/zzl;

    .line 153
    .line 154
    move-object v0, v13

    .line 155
    move-object/from16 v1, p0

    .line 156
    .line 157
    move-object/from16 v2, p1

    .line 158
    .line 159
    move-object v7, v8

    .line 160
    move-object v8, v9

    .line 161
    move-object v9, v11

    .line 162
    invoke-direct/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/zzl;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzahj;JLcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzuu;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 166
    .line 167
    invoke-virtual {v12, v13, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzuj;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method private final zzx()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method private final zzy()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    const-string v3, ":3.35.1:"

    .line 12
    .line 13
    invoke-static {v2, v0, v3, v1}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zza(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final contentComplete()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 2
    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 4
    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->contentComplete:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 6
    .line 7
    const-string v3, "*"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->destroy()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzk()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzg:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzb()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzd()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzd(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzf:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzx()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc(J)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzn;

    .line 13
    .line 14
    invoke-direct {v3, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzn;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 20
    .line 21
    invoke-virtual {v4, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzahh;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzx()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-interface {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzc(J)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/zzi;

    .line 13
    .line 14
    invoke-direct {v3, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzi;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 20
    .line 21
    invoke-virtual {v4, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzahh;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/ads/interactivemedia/v3/internal/zzez;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzez;->zza(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final synthetic zzj(Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzgg;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->msParameterTimeoutMs:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgg;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final zzk(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 12
    .line 13
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 14
    .line 15
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 16
    .line 17
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 18
    .line 19
    const-string v5, "Error initializing the SDK."

    .line 20
    .line 21
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-nez p1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 36
    .line 37
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 38
    .line 39
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 40
    .line 41
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 42
    .line 43
    const-string v5, "StreamRequest cannot be null."

    .line 44
    .line 45
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 53
    .line 54
    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 59
    .line 60
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 61
    .line 62
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 63
    .line 64
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 65
    .line 66
    const-string v5, "AdsLoader must be constructed with StreamDisplayContainer."

    .line 67
    .line 68
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 76
    .line 77
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 84
    .line 85
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 86
    .line 87
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 88
    .line 89
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 90
    .line 91
    const-string v5, "Stream requests must specify a player."

    .line 92
    .line 93
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v1, 0x0

    .line 101
    :goto_0
    if-eqz v1, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 106
    .line 107
    .line 108
    return-object p2

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzh:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzv;

    .line 117
    .line 118
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 119
    .line 120
    invoke-virtual {v1, p2, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzw(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzm;

    .line 128
    .line 129
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzm;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 133
    .line 134
    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 135
    .line 136
    .line 137
    return-object p2
.end method

.method public final synthetic zzp(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zza()Lcom/google/ads/interactivemedia/v3/impl/zzx;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzt(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/zzx;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzd()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zze()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v15

    .line 31
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzy()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzv()Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 57
    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzu()Lcom/google/ads/interactivemedia/v3/impl/zzw;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 65
    .line 66
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    const-string v9, "android:0"

    .line 75
    .line 76
    move-object/from16 v4, p3

    .line 77
    .line 78
    move-object/from16 v16, v3

    .line 79
    .line 80
    move-object/from16 v17, p2

    .line 81
    .line 82
    invoke-static/range {v4 .. v17}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbj;->create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/zzw;ZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbj;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 87
    .line 88
    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 89
    .line 90
    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->requestAds:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 91
    .line 92
    invoke-direct {v4, v5, v6, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzj(Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;)V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 114
    .line 115
    .line 116
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zze()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_0

    .line 125
    .line 126
    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzb()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 141
    .line 142
    .line 143
    :cond_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 144
    .line 145
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzahg;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final synthetic zzq(Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zza()Lcom/google/ads/interactivemedia/v3/impl/zzx;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzt(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/ads/interactivemedia/v3/impl/zzx;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 18
    .line 19
    move-object/from16 v17, v3

    .line 20
    .line 21
    check-cast v17, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzd()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zze()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/zzx;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzr:Lcom/google/ads/interactivemedia/v3/internal/zzet;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzet;->zza()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzy()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzv()Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzj:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 63
    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzu()Lcom/google/ads/interactivemedia/v3/impl/zzw;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zza:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzq:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 71
    .line 72
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzc(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const-string v9, "android:0"

    .line 81
    .line 82
    move-object/from16 v4, p2

    .line 83
    .line 84
    move-object/from16 v16, v3

    .line 85
    .line 86
    invoke-static/range {v4 .. v17}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbj;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/zzcn;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/zzw;ZZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbj;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;

    .line 91
    .line 92
    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 93
    .line 94
    sget-object v6, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->requestStream:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 95
    .line 96
    invoke-direct {v4, v5, v6, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;-><init>(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzj(Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzn(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zze()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_0

    .line 129
    .line 130
    invoke-interface/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzb()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 145
    .line 146
    .line 147
    :cond_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzp:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 148
    .line 149
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzc(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzahg;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final zzr(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzvd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 12
    .line 13
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 14
    .line 15
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 16
    .line 17
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 18
    .line 19
    const-string v5, "Error initializing the SDK."

    .line 20
    .line 21
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-nez p1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 36
    .line 37
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 38
    .line 39
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 40
    .line 41
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 42
    .line 43
    const-string v5, "AdsRequest cannot be null."

    .line 44
    .line 45
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 53
    .line 54
    instance-of v2, v1, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 59
    .line 60
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 61
    .line 62
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 63
    .line 64
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 65
    .line 66
    const-string v5, "AdsLoader must be constructed with AdDisplayContainer."

    .line 67
    .line 68
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 82
    .line 83
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 84
    .line 85
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 86
    .line 87
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 88
    .line 89
    const-string v5, "Ad display container must have a UI container."

    .line 90
    .line 91
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzc(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v2, 0x0

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzc(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 120
    .line 121
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 122
    .line 123
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 124
    .line 125
    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 126
    .line 127
    const-string v5, "Either ad tag url or ads response must non-null and non empty."

    .line 128
    .line 129
    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move-object v1, v2

    .line 137
    :goto_0
    if-eqz v1, :cond_5

    .line 138
    .line 139
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzk:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 146
    .line 147
    move-object v5, v1

    .line 148
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 149
    .line 150
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zze:Lcom/google/ads/interactivemedia/v3/impl/zzat;

    .line 157
    .line 158
    new-instance p2, Lcom/google/ads/interactivemedia/v3/impl/zzd;

    .line 159
    .line 160
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 161
    .line 162
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 163
    .line 164
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ADS_PLAYER_NOT_PROVIDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 165
    .line 166
    const-string v3, "VideoAdPlayer must be set on AdDisplayContainer before requesting ads."

    .line 167
    .line 168
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Ljava/lang/Object;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-direct {p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzd;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzat;->zzc(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzg:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc:Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzd:Lcom/google/ads/interactivemedia/v3/impl/zzv;

    .line 191
    .line 192
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    .line 193
    .line 194
    invoke-virtual {v1, p2, v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzba;->zzi(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/zzbh;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzw(Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/zzp;

    .line 202
    .line 203
    move-object v2, v1

    .line 204
    move-object v3, p0

    .line 205
    move-object v4, v0

    .line 206
    move-object v6, p1

    .line 207
    move-object v7, p2

    .line 208
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/impl/zzp;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 212
    .line 213
    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzuu;->zzo(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method
