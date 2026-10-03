.class public final Lcom/google/ads/interactivemedia/v3/internal/zzck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzdp;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzcz;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcz;->zzd(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcq;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcq;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzct;->zzd(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdk;->zzb(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdl;->zzd(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzdo;->zza(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcw;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzcw;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcw;->zzc(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzcp;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzcp;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzcp;->zzd(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzck;->zza:Z

    return v0
.end method
