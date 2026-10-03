.class final Lcom/google/ads/interactivemedia/v3/impl/zzai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbh;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzai;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzb()Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 10
    .line 11
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 12
    .line 13
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->activate:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0x3e

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/16 p1, 0x3f

    .line 28
    .line 29
    if-eq v0, p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzai;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzg()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzai;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzf(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzcc;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->resizeAndPositionVideo:Lcom/google/ads/interactivemedia/v3/impl/data/zzce;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzcc;->zzf(Lcom/google/ads/interactivemedia/v3/impl/data/zzce;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzai;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzd(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzam;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzam;->zza(Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
