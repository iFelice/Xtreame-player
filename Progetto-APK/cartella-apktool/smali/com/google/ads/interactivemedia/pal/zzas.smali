.class final Lcom/google/ads/interactivemedia/pal/zzas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/b;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/pal/NonceManager;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/zzas;->zza:Lcom/google/ads/interactivemedia/pal/NonceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lg4/h;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/zzas;->zza:Lcom/google/ads/interactivemedia/pal/NonceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/pal/NonceManager;->zza(Lcom/google/ads/interactivemedia/pal/NonceManager;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/pal/b2;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/zzas;->zza:Lcom/google/ads/interactivemedia/pal/NonceManager;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzb(Lcom/google/ads/interactivemedia/pal/NonceManager;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, LR3/b;

    .line 23
    .line 24
    invoke-direct {v2, v1}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, LR3/b;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v1, v3}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, LR3/b;

    .line 34
    .line 35
    invoke-direct {v3, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/b2;->a:Lcom/google/android/gms/internal/pal/f2;

    .line 39
    .line 40
    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/gms/internal/pal/f2;->zzk(LR3/a;LR3/a;LR3/a;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method
