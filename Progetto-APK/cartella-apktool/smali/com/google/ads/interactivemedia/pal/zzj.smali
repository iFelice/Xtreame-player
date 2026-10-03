.class final Lcom/google/ads/interactivemedia/pal/zzj;
.super Lcom/google/ads/interactivemedia/pal/zzw;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/pal/A0;

.field private final zzb:Lcom/google/android/gms/internal/pal/A0;

.field private final zzc:Lcom/google/android/gms/internal/pal/A0;

.field private final zzd:Lcom/google/android/gms/internal/pal/A0;

.field private final zze:Lcom/google/android/gms/internal/pal/A0;

.field private final zzf:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/pal/A0;Lcom/google/android/gms/internal/pal/A0;Lcom/google/android/gms/internal/pal/A0;Lcom/google/android/gms/internal/pal/A0;Lcom/google/android/gms/internal/pal/A0;ILcom/google/ads/interactivemedia/pal/zzi;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/pal/zzw;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zza:Lcom/google/android/gms/internal/pal/A0;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzb:Lcom/google/android/gms/internal/pal/A0;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzc:Lcom/google/android/gms/internal/pal/A0;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzd:Lcom/google/android/gms/internal/pal/A0;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zze:Lcom/google/android/gms/internal/pal/A0;

    iput p6, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzf:I

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
    instance-of v1, p1, Lcom/google/ads/interactivemedia/pal/zzw;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/google/ads/interactivemedia/pal/zzw;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zzc()Lcom/google/android/gms/internal/pal/A0;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/pal/B0;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zzd()Lcom/google/android/gms/internal/pal/A0;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/pal/B0;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzc:Lcom/google/android/gms/internal/pal/A0;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zzb()Lcom/google/android/gms/internal/pal/A0;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/pal/B0;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzd:Lcom/google/android/gms/internal/pal/A0;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zzf()Lcom/google/android/gms/internal/pal/A0;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/pal/B0;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zze:Lcom/google/android/gms/internal/pal/A0;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zze()Lcom/google/android/gms/internal/pal/A0;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/pal/B0;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzf:I

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/pal/zzw;->zza()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-ne v1, p1, :cond_1

    .line 79
    .line 80
    return v0

    .line 81
    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/B0;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int v0, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/B0;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v0, v2

    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzc:Lcom/google/android/gms/internal/pal/A0;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/B0;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    xor-int/2addr v0, v2

    .line 29
    mul-int v0, v0, v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzd:Lcom/google/android/gms/internal/pal/A0;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/B0;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    xor-int/2addr v0, v2

    .line 38
    mul-int v0, v0, v1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zze:Lcom/google/android/gms/internal/pal/A0;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/B0;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    xor-int/2addr v0, v2

    .line 47
    mul-int v0, v0, v1

    .line 48
    .line 49
    iget v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzf:I

    .line 50
    .line 51
    xor-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/B0;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/B0;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzc:Lcom/google/android/gms/internal/pal/A0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/B0;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzd:Lcom/google/android/gms/internal/pal/A0;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/B0;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zze:Lcom/google/android/gms/internal/pal/A0;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/B0;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v5, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzf:I

    .line 32
    .line 33
    const-string v6, "NonceTimingData{nonceLoaderInitTime="

    .line 34
    .line 35
    const-string v7, ", nonceRequestTime="

    .line 36
    .line 37
    const-string v8, ", nonceLoadedTime="

    .line 38
    .line 39
    invoke-static {v6, v0, v7, v1, v8}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, ", resourceFetchStartTime="

    .line 44
    .line 45
    const-string v6, ", resourceFetchEndTime="

    .line 46
    .line 47
    invoke-static {v0, v2, v1, v3, v6}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", nonceLength="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "}"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzf:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/pal/A0;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzc:Lcom/google/android/gms/internal/pal/A0;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/pal/A0;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zza:Lcom/google/android/gms/internal/pal/A0;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/pal/A0;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzb:Lcom/google/android/gms/internal/pal/A0;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/pal/A0;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zze:Lcom/google/android/gms/internal/pal/A0;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/pal/A0;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzj;->zzd:Lcom/google/android/gms/internal/pal/A0;

    return-object v0
.end method
