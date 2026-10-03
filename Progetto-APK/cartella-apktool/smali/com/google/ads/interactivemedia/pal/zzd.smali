.class final Lcom/google/ads/interactivemedia/pal/zzd;
.super Lcom/google/ads/interactivemedia/pal/ConsentSettings;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Boolean;

.field private final zzb:Ljava/lang/Boolean;

.field private final zzc:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/ads/interactivemedia/pal/zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zza:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzb:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzc:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/pal/ConsentSettings;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/google/ads/interactivemedia/pal/ConsentSettings;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zza:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zzc()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zzc()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzb:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zza()Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzc:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/ConsentSettings;->zzb()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return v0

    .line 58
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zza:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const v1, 0xf4243

    .line 12
    .line 13
    .line 14
    xor-int/2addr v0, v1

    .line 15
    mul-int v0, v0, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzb:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    xor-int/2addr v0, v2

    .line 24
    mul-int v0, v0, v1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzc:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    xor-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final toBuilder()Lcom/google/ads/interactivemedia/pal/ConsentSettings$Builder;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/pal/zzb;-><init>(Lcom/google/ads/interactivemedia/pal/ConsentSettings;Lcom/google/ads/interactivemedia/pal/zza;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zza:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzb:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzc:Ljava/lang/Boolean;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "ConsentSettings{enableCookiesFor3pServerSideAdInsertion="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", allowStorage="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", directedForChildOrUnknownAge="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "}"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public final zza()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzd;->zza:Ljava/lang/Boolean;

    return-object v0
.end method
