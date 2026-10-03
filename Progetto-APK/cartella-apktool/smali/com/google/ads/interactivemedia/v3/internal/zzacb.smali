.class final Lcom/google/ads/interactivemedia/v3/internal/zzacb;
.super Lcom/google/ads/interactivemedia/v3/internal/zzxp;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzyz;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzyz;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyz;->zzn()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzs()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_1
    const/16 v1, 0xd

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/16 v1, 0xc

    .line 29
    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    const/16 v1, 0xe

    .line 38
    .line 39
    if-ne v0, v1, :cond_4

    .line 40
    .line 41
    const/16 v0, 0xa

    .line 42
    .line 43
    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zza:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    const-string v0, "a name"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzu(Lcom/google/ads/interactivemedia/v3/internal/zzacc;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    throw p1
.end method
