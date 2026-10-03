.class final Lcom/google/ads/interactivemedia/v3/impl/zzar;
.super Lcom/google/ads/interactivemedia/v3/impl/zzbw;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V
    .locals 0

    .line 1
    const-wide/16 p2, 0xc8

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/zzbw;-><init>(J)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzar;->zza:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "IMASDK"

    .line 10
    .line 11
    const-string v1, "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 17
    .line 18
    :cond_0
    return-object v0
.end method
