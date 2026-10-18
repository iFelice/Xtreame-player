.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/ads/interactivemedia/v3/impl/data/zzbb;
.end method

.method public abstract height(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
.end method

.method public abstract left(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
.end method

.method public locationOnScreenOfView(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v1, v0, v1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzba;->left(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    aget v0, v0, v2

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/zzba;->top(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzba;->height(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzba;->width(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public abstract top(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
.end method

.method public abstract width(I)Lcom/google/ads/interactivemedia/v3/impl/data/zzba;
.end method
