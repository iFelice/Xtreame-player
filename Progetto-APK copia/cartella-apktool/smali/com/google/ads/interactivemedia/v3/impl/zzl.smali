.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

.field public final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

.field public final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzahj;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

.field public final synthetic zzf:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

.field public final synthetic zzg:Lcom/google/ads/interactivemedia/v3/internal/zzuu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzy;Lcom/google/ads/interactivemedia/v3/api/BaseRequest;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzahj;JLcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzuu;Lcom/google/ads/interactivemedia/v3/internal/zzuu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzd:J

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zza:Lcom/google/ads/interactivemedia/v3/api/BaseRequest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseRequest;->getSecureSignals()Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzt(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzcf;->createBy1stPartyData(Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignals;)Lcom/google/ads/interactivemedia/v3/impl/data/zzcf;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzuu;

    .line 34
    .line 35
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzd:J

    .line 36
    .line 37
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/impl/zzl;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    invoke-static {v4, v5, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/zzfd;->zza(JJ)Lcom/google/ads/interactivemedia/v3/internal/zzahh;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzahj;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzahh;)Lcom/google/ads/interactivemedia/v3/internal/zzahj;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzuk;->zzd(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/zzbn;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zzuk;->zzd(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrm;->zzk(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/zzrm;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v4, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/zzy;->zzt(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/Map;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzc(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v4, Lcom/google/ads/interactivemedia/v3/impl/zzad;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzqf;->zzh(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqf;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzad;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzqf;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzrm;Lcom/google/ads/interactivemedia/v3/internal/zzrp;)V

    .line 88
    .line 89
    .line 90
    return-object v4
.end method
