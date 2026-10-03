.class final Lcom/google/ads/interactivemedia/v3/internal/zztv;
.super Lcom/google/ads/interactivemedia/v3/internal/zzts;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zztu;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzts;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zztr;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zztw;)I
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zztw;)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zztw;->zzy(Lcom/google/ads/interactivemedia/v3/internal/zztw;I)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method
