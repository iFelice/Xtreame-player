.class public final Lcom/google/ads/interactivemedia/v3/internal/zzih;
.super Lcom/google/ads/interactivemedia/v3/internal/zzig;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzig;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzu(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)Lcom/google/ads/interactivemedia/v3/internal/zzih;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzig;->zzr(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzih;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzih;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzif;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zzo(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzan;Lcom/google/ads/interactivemedia/v3/internal/zzy;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzk()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzig;->zzu:Lcom/google/ads/interactivemedia/v3/internal/zzif;

    .line 9
    .line 10
    iget-boolean p4, p4, Lcom/google/ads/interactivemedia/v3/internal/zzif;->zza:Z

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zza()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    new-instance p4, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzig;->zzo(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzan;Lcom/google/ads/interactivemedia/v3/internal/zzy;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzkb;

    .line 32
    .line 33
    const/16 v7, 0x18

    .line 34
    .line 35
    const-string v3, "CgPRYuzQrSKB4HHU/qweoT6whjRKh5s88SYFeVTlix/HzZdKOZnoIu1auPhHwMiw"

    .line 36
    .line 37
    const-string v4, "UcPRGM0BZSE4Gd9/Us196LnIBiXWDE9D3TOlCfboVSQ="

    .line 38
    .line 39
    move-object v1, p2

    .line 40
    move-object v2, p1

    .line 41
    move-object v5, p3

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/zzkb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object p4

    .line 49
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzig;->zzo(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zzan;Lcom/google/ads/interactivemedia/v3/internal/zzy;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method
