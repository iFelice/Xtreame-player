.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private static final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzff;


# instance fields
.field private zzc:I

.field private zzd:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzff;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzff;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzff;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzc:I

    return-void
.end method

.method public static createAdDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzc;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzc;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method private createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zza(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p2, p4, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zzb(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public static createAudioAdDisplayContainer(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzac;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzac;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method public static createStreamDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbx;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbx;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V

    return-object v0
.end method

.method public static getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Landroid/net/Uri;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzff;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p3, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zzb(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 7
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 9
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzff;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private final zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzff;

    .line 6
    .line 7
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, p1, p2, v3, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzff;->zza(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/internal/zzfe;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 16
    .line 17
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzc:I

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x1

    .line 20
    .line 21
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzc:I

    .line 22
    .line 23
    invoke-direct {p5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p5, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zzf(Lcom/google/ads/interactivemedia/v3/internal/zzahj;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzb()Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzf()Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzfe;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzfl;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    move-object v3, p1

    .line 46
    move-object v4, p3

    .line 47
    move-object v5, p4

    .line 48
    move-object v6, p5

    .line 49
    invoke-static/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzba;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/zzfj;Ljava/util/concurrent/ExecutorService;Lcom/google/ads/interactivemedia/v3/internal/zzfl;)Lcom/google/ads/interactivemedia/v3/impl/zzy;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p5}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzahh;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zzb(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 62
    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p4

    .line 68
    invoke-virtual {p3, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/zzahg;->zza(J)Lcom/google/ads/interactivemedia/v3/internal/zzahg;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzahg;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 72
    .line 73
    .line 74
    return-object p1
.end method


# virtual methods
.method public createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzc;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 7

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zza(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 7

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zza(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/util/concurrent/ExecutorService;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    return-object p1
.end method

.method public createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzh;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzh;-><init>()V

    return-object v0
.end method

.method public createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createAudioAdDisplayContainer(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzac;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzac;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    return-object v0
.end method

.method public createCompanionAdSlot()Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createFriendlyObstruction(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbh;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;->view(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;->purpose(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;->detailedReason(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbg;->build()Lcom/google/ads/interactivemedia/v3/impl/data/zzbh;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ImaSdkSettingsImpl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/ImaSdkSettingsImpl;-><init>()V

    return-object v0
.end method

.method public createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzf(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zze(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public createPodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzk(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzi(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zze(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public createPodVodStreamRequest(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzk(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzbx;-><init>(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V

    return-object v0
.end method

.method public createVideoStitcherLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzk(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzi(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzj(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzn(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzm(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p6}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public createVideoStitcherVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzk(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzn(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzm(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzp(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVideoStitcherVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzh(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzk(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzn(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzm(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p5}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p6}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzd(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzg(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zzo(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbz;->zze(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzff;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zza(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getTestingConfig()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zza()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 4
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzff;->zzb(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final zza()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "imasdk-%d"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zzb()Ljava/util/concurrent/ThreadFactory;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->zzd:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    return-object v0
.end method
