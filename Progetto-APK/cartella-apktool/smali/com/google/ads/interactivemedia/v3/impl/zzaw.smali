.class public final synthetic Lcom/google/ads/interactivemedia/v3/impl/zzaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/d;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/impl/zzax;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/zzax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzax;

    return-void
.end method


# virtual methods
.method public final onComplete(Lg4/h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzaw;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzax;

    .line 8
    .line 9
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzax;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lg4/h;->e()Ljava/lang/Exception;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "Image companion error"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
