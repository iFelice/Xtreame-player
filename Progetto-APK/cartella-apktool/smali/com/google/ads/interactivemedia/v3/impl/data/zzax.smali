.class final Lcom/google/ads/interactivemedia/v3/impl/data/zzax;
.super Lcom/google/ads/interactivemedia/v3/impl/data/zzco;
.source "SourceFile"


# instance fields
.field private set$0:B

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzco;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/zzcp;
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzax;->set$0:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzaz;

    .line 7
    .line 8
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzax;->volume:F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/zzaz;-><init>(FLcom/google/ads/interactivemedia/v3/impl/data/zzay;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Missing required properties: volume"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public volume(F)Lcom/google/ads/interactivemedia/v3/impl/data/zzco;
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzax;->volume:F

    iget-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzax;->set$0:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/zzax;->set$0:B

    return-object p0
.end method
