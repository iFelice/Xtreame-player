.class Lcom/google/ads/interactivemedia/v3/internal/zzsy;
.super Lcom/google/ads/interactivemedia/v3/internal/zzsz;
.source "SourceFile"


# instance fields
.field private volatile zza:Lcom/google/ads/interactivemedia/v3/internal/zzsz;

.field final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

.field final zzc:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzsu;Ljava/lang/Character;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzsz;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/16 v1, 0x3d

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zze(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string p1, "Padding character %s was already in alphabet"

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzg(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsu;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzsy;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 21
    .line 22
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BaseEncoding."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 14
    .line 15
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    rem-int/2addr v2, v1

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, ".omitPadding()"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, ".withPadChar(\'"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\')"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public zza([BLjava/lang/CharSequence;)I
    .locals 13

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v1, v3, :cond_3

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_1
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 31
    .line 32
    iget v8, v7, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzc:I

    .line 33
    .line 34
    if-ge v5, v8, :cond_1

    .line 35
    .line 36
    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 37
    .line 38
    shl-long/2addr v3, v7

    .line 39
    add-int v7, v1, v5

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-ge v7, v8, :cond_0

    .line 46
    .line 47
    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 48
    .line 49
    add-int/lit8 v8, v6, 0x1

    .line 50
    .line 51
    add-int/2addr v6, v1

    .line 52
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb(C)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    int-to-long v6, v6

    .line 61
    or-long/2addr v3, v6

    .line 62
    move v6, v8

    .line 63
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget v5, v7, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 67
    .line 68
    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 69
    .line 70
    mul-int v6, v6, v7

    .line 71
    .line 72
    add-int/lit8 v7, v5, -0x1

    .line 73
    .line 74
    mul-int/lit8 v7, v7, 0x8

    .line 75
    .line 76
    :goto_2
    mul-int/lit8 v8, v5, 0x8

    .line 77
    .line 78
    sub-int/2addr v8, v6

    .line 79
    if-lt v7, v8, :cond_2

    .line 80
    .line 81
    add-int/lit8 v8, v2, 0x1

    .line 82
    .line 83
    ushr-long v9, v3, v7

    .line 84
    .line 85
    const-wide/16 v11, 0xff

    .line 86
    .line 87
    and-long/2addr v9, v11

    .line 88
    long-to-int v10, v9

    .line 89
    int-to-byte v9, v10

    .line 90
    aput-byte v9, p1, v2

    .line 91
    .line 92
    add-int/lit8 v7, v7, -0x8

    .line 93
    .line 94
    move v2, v8

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 97
    .line 98
    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzc:I

    .line 99
    .line 100
    add-int/2addr v1, v3

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return v2

    .line 103
    :cond_4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzsx;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    const-string v0, "Invalid input length "

    .line 110
    .line 111
    invoke-static {v0, p2}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsx;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public zzb(Lcom/google/ads/interactivemedia/v3/internal/zzsu;Ljava/lang/Character;)Lcom/google/ads/interactivemedia/v3/internal/zzsz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzsu;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public zzc(Ljava/lang/Appendable;[BII)V
    .locals 2

    .line 1
    array-length p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzh(III)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge v0, p4, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 9
    .line 10
    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 11
    .line 12
    sub-int v1, p4, v0

    .line 13
    .line 14
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzh(Ljava/lang/Appendable;[BII)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 22
    .line 23
    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 24
    .line 25
    add-int/2addr v0, p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final zzd(I)I
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public final zze(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 4
    .line 5
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 6
    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zztd;->zza(IILjava/math/RoundingMode;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzc:I

    .line 12
    .line 13
    mul-int v0, v0, p1

    .line 14
    .line 15
    return v0
.end method

.method public final zzf()Lcom/google/ads/interactivemedia/v3/internal/zzsz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsz;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzsu;Ljava/lang/Character;)Lcom/google/ads/interactivemedia/v3/internal/zzsz;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsz;

    .line 22
    .line 23
    :cond_1
    return-object v0
.end method

.method public final zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    if-ltz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x3d

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final zzh(Ljava/lang/Appendable;[BII)V
    .locals 7

    .line 1
    add-int v0, p3, p4

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    invoke-static {p3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzh(III)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-gt p4, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzd(Z)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_1
    const/16 v4, 0x8

    .line 24
    .line 25
    if-ge v0, p4, :cond_1

    .line 26
    .line 27
    add-int v5, p3, v0

    .line 28
    .line 29
    aget-byte v5, p2, v5

    .line 30
    .line 31
    and-int/lit16 v5, v5, 0xff

    .line 32
    .line 33
    int-to-long v5, v5

    .line 34
    or-long/2addr v2, v5

    .line 35
    shl-long/2addr v2, v4

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 p2, p4, 0x1

    .line 40
    .line 41
    mul-int/lit8 p2, p2, 0x8

    .line 42
    .line 43
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 44
    .line 45
    :goto_2
    mul-int/lit8 v0, p4, 0x8

    .line 46
    .line 47
    if-ge v1, v0, :cond_2

    .line 48
    .line 49
    iget v0, p3, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 50
    .line 51
    sub-int v0, p2, v0

    .line 52
    .line 53
    sub-int/2addr v0, v1

    .line 54
    ushr-long v5, v2, v0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 57
    .line 58
    long-to-int v6, v5

    .line 59
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zza:I

    .line 60
    .line 61
    and-int/2addr v5, v6

    .line 62
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zza(I)C

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 70
    .line 71
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 72
    .line 73
    add-int/2addr v1, v0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    :goto_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 80
    .line 81
    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzd:I

    .line 82
    .line 83
    mul-int/lit8 p2, p2, 0x8

    .line 84
    .line 85
    if-ge v1, p2, :cond_3

    .line 86
    .line 87
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzc:Ljava/lang/Character;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/16 p2, 0x3d

    .line 93
    .line 94
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzsy;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzsu;

    .line 98
    .line 99
    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/zzsu;->zzb:I

    .line 100
    .line 101
    add-int/2addr v1, p2

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    return-void
.end method
