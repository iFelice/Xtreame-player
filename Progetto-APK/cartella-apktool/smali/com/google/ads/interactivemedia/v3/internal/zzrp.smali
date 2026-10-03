.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient zza:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

.field private transient zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

.field private transient zzc:Lcom/google/ads/interactivemedia/v3/internal/zzri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/util/SortedMap;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzk()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of v0, p0, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v0, 0x4

    .line 34
    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzro;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzb(Ljava/lang/Iterable;)Lcom/google/ads/interactivemedia/v3/internal/zzro;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzro;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static zzd()Lcom/google/ads/interactivemedia/v3/internal/zzrp;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrp;

    return-object v0
.end method

.method public static zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p0, v0, v1

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    aput-object p1, v0, p0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsj;->zzl(I[Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzro;)Lcom/google/ads/interactivemedia/v3/internal/zzsj;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static zzf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzrp;
    .locals 0

    .line 1
    const-string p0, "IABTCF_AddtlConsent"

    .line 2
    .line 3
    const-string p1, "String"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string p2, "IABTCF_gdprApplies"

    .line 9
    .line 10
    const-string p3, "Number"

    .line 11
    .line 12
    invoke-static {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string p4, "IABTCF_TCString"

    .line 16
    .line 17
    invoke-static {p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string p5, "IABUSPrivacy_String"

    .line 21
    .line 22
    invoke-static {p5, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string p6, "IABGPP_HDR_GppString"

    .line 26
    .line 27
    invoke-static {p6, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string p7, "IABGPP_GppSID"

    .line 31
    .line 32
    invoke-static {p7, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/16 p8, 0xc

    .line 36
    .line 37
    new-array p8, p8, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 p9, 0x0

    .line 40
    aput-object p0, p8, p9

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    aput-object p1, p8, p0

    .line 44
    .line 45
    const/4 p0, 0x2

    .line 46
    aput-object p2, p8, p0

    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    aput-object p3, p8, p0

    .line 50
    .line 51
    const/4 p0, 0x4

    .line 52
    aput-object p4, p8, p0

    .line 53
    .line 54
    const/4 p0, 0x5

    .line 55
    aput-object p1, p8, p0

    .line 56
    .line 57
    const/4 p0, 0x6

    .line 58
    aput-object p5, p8, p0

    .line 59
    .line 60
    const/4 p2, 0x7

    .line 61
    aput-object p1, p8, p2

    .line 62
    .line 63
    const/16 p2, 0x8

    .line 64
    .line 65
    aput-object p6, p8, p2

    .line 66
    .line 67
    const/16 p2, 0x9

    .line 68
    .line 69
    aput-object p1, p8, p2

    .line 70
    .line 71
    const/16 p2, 0xa

    .line 72
    .line 73
    aput-object p7, p8, p2

    .line 74
    .line 75
    const/16 p2, 0xb

    .line 76
    .line 77
    aput-object p1, p8, p2

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    invoke-static {p0, p8, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsj;->zzl(I[Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/zzro;)Lcom/google/ads/interactivemedia/v3/internal/zzsj;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzri;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1

    .line 11
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzso;->zza(Ljava/util/Set;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzj()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "size"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqt;->zza(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    const-wide/16 v2, 0x8

    .line 12
    .line 13
    mul-long v0, v0, v2

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-wide/32 v3, 0x40000000

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int v1, v0

    .line 25
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x7b

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    const-string v1, ", "

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x3d

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const/16 v0, 0x7d

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract zza()Lcom/google/ads/interactivemedia/v3/internal/zzri;
.end method

.method public zzb()Lcom/google/ads/interactivemedia/v3/internal/zzri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzri;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public abstract zzg()Lcom/google/ads/interactivemedia/v3/internal/zzrr;
.end method

.method public abstract zzh()Lcom/google/ads/interactivemedia/v3/internal/zzrr;
.end method

.method public final zzi()Lcom/google/ads/interactivemedia/v3/internal/zzrr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public zzj()Lcom/google/ads/interactivemedia/v3/internal/zzrr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrp;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrr;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public abstract zzk()Z
.end method
