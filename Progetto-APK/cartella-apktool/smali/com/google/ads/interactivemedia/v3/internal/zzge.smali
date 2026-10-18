.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

.field public final synthetic zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field public final synthetic zzd:Lcom/google/ads/interactivemedia/v3/internal/zzfd;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzuv;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/internal/zzfd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zze(I)Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 7
    .line 8
    .line 9
    const-string v1, "a.3.35.1"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zzb(Z)Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zzc(Z)Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zza:Landroid/content/Context;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuv;

    .line 26
    .line 27
    const/16 v4, 0x1e

    .line 28
    .line 29
    if-ge v2, v4, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzc:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzel;->zzd(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzai;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzah;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzah;->zza(Z)Lcom/google/ads/interactivemedia/v3/internal/zzah;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzai;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzai;)Lcom/google/ads/interactivemedia/v3/internal/zzl;

    .line 54
    .line 55
    .line 56
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzlj;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzadu;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzady;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzm;

    .line 63
    .line 64
    invoke-direct {v2, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlj;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzm;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzfd;

    .line 74
    .line 75
    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;->SPAM_MS_PARAMETER_LOADER:Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;

    .line 76
    .line 77
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;->SETUP_AD_SHIELD:Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zzg(Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Exception;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_0
    return-object v0
.end method
