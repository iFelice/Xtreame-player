.class public final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzpp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/d;


# instance fields
.field public final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzpq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzpq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    return-void
.end method


# virtual methods
.method public final onComplete(Lg4/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzpp;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpq;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Lg4/r;

    .line 5
    .line 6
    iget-boolean v1, v1, Lg4/r;->d:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zztg;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzc(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p1}, Lg4/h;->e()Ljava/lang/Exception;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzpq;->zzd(Ljava/lang/Throwable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method
