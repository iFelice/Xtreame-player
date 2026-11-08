.class public final Lcom/google/ads/interactivemedia/v3/internal/zzqc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

.field private zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzqb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 5
    .line 6
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzqa;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqa;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzqa;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 7
    .line 8
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zza:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x7b

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    :goto_0
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzb:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zza:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x3d

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    new-array v3, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    aput-object v4, v3, v5

    .line 60
    .line 61
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    add-int/lit8 v4, v4, -0x1

    .line 70
    .line 71
    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 79
    .line 80
    const-string v3, ", "

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const/16 v0, 0x7d

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqc;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzb:Ljava/lang/Object;

    .line 6
    .line 7
    const-string p2, "consentKeyTypes"

    .line 8
    .line 9
    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zza:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/zzqc;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqc;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzqa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzqa;->zzb:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p0
.end method
