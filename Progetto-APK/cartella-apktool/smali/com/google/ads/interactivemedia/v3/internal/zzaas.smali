.class final Lcom/google/ads/interactivemedia/v3/internal/zzaas;
.super Lcom/google/ads/interactivemedia/v3/internal/zzwj;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzi()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x2

    .line 15
    if-eq v1, v3, :cond_5

    .line 16
    .line 17
    add-int/lit8 v3, v1, -0x1

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    if-eq v3, v4, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x7

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzq()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacd;->zza(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zze()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v2, "Invalid bitset value type: "

    .line 46
    .line 47
    const-string v3, "; at path "

    .line 48
    .line 49
    invoke-static {v2, v0, v3, p1}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzb()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v3, 0x1

    .line 65
    if-ne v1, v3, :cond_4

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzf()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "Invalid bitset value "

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", expected 0 or 1; at path "

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzk()V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    invoke-virtual {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzi(J)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 25
    .line 26
    .line 27
    return-void
.end method
