.class final Lcom/google/ads/interactivemedia/v3/impl/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/zzbh;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaj;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage;->zzc()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->iconsView:Lcom/google/ads/interactivemedia/v3/impl/data/zzbm;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbm;->icons()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbu;->iconsView:Lcom/google/ads/interactivemedia/v3/impl/data/zzbm;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbm;->icons()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/google/ads/interactivemedia/v3/impl/data/zzbl;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaj;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzak;

    .line 49
    .line 50
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/zze;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zze(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Lcom/google/ads/interactivemedia/v3/impl/zzba;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzh(Lcom/google/ads/interactivemedia/v3/impl/zzak;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v1, v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/zze;-><init>(Lcom/google/ads/interactivemedia/v3/impl/zzba;Ljava/util/List;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/impl/zzak;->zzo(Lcom/google/ads/interactivemedia/v3/api/zza;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
