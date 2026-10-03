.class public final Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;,
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;,
        Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

.field private zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

.field private zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

.field private zzg:Ljava/lang/Float;

.field private zzh:Ljava/util/List;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/Float;

.field private zzl:Ljava/lang/Float;

.field private zzm:Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;

.field private zzn:Lcom/google/ads/interactivemedia/v3/internal/zzqf;

.field private transient zzo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 7
    .line 8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 11
    .line 12
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getAdTagUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getExtraParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSecureSignals()Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzm:Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzo:Ljava/lang/Object;

    return-object v0
.end method

.method public final setAdTagUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    return-void
.end method

.method public final setAdWillAutoPlay(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    .line 9
    .line 10
    return-void
.end method

.method public final setAdWillPlayMuted(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;->MUTED:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;->UNMUTED:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    .line 9
    .line 10
    return-void
.end method

.method public final setAdsResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzb:Ljava/lang/String;

    return-void
.end method

.method public final setContentDuration(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzg:Ljava/lang/Float;

    .line 6
    .line 7
    return-void
.end method

.method public final setContentKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzh:Ljava/util/List;

    return-void
.end method

.method public final setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzc:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method

.method public final setContentTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final setContinuousPlayback(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->ON:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;->OFF:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    .line 7
    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    .line 9
    .line 10
    return-void
.end method

.method public final setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setLiveStreamPrefetchSeconds(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzl:Ljava/lang/Float;

    .line 6
    .line 7
    return-void
.end method

.method public final setSecureSignals(Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzm:Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;

    return-void
.end method

.method public final setUserRequestContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzo:Ljava/lang/Object;

    return-void
.end method

.method public final setVastLoadTimeout(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzk:Ljava/lang/Float;

    .line 6
    .line 7
    return-void
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzex;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzev;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzev;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzqf;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    return-object v0
.end method

.method public final zzc(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 10
    .line 11
    return-void
.end method

.method public final zzd()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzd:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$AutoPlayState;

    return-object v0
.end method

.method public final zze()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzf:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$ContinuousPlayState;

    return-object v0
.end method

.method public final zzf()Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zze:Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl$MutePlayState;

    return-object v0
.end method

.method public final zzg()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzg:Ljava/lang/Float;

    return-object v0
.end method

.method public final zzh()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzl:Ljava/lang/Float;

    return-object v0
.end method

.method public final zzi()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzk:Ljava/lang/Float;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/AdsRequestImpl;->zzh:Ljava/util/List;

    return-object v0
.end method
