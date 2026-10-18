.class public final Lcom/google/android/gms/internal/ads/pz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Gz;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/J;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public final g:Landroid/content/Intent;

.field public final h:Lcom/google/android/gms/internal/ads/lz;

.field public i:Lcom/google/android/gms/internal/ads/oz;

.field public j:Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/J;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pz;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pz;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 14
    .line 15
    const-string p1, "OverlayDisplayService"

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pz;->d:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pz;->g:Landroid/content/Intent;

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/kz;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/kz;-><init>()V

    .line 24
    .line 25
    .line 26
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/Iz;

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/Hz;

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    instance-of p2, p1, Ljava/io/Serializable;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    new-instance p2, Lcom/google/android/gms/internal/ads/Hz;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Hz;-><init>(Lcom/google/android/gms/internal/ads/Gz;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    move-object p1, p2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/Iz;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Iz;-><init>(Lcom/google/android/gms/internal/ads/Gz;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pz;->a:Lcom/google/android/gms/internal/ads/Gz;

    .line 53
    .line 54
    new-instance p1, Lcom/google/android/gms/internal/ads/lz;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/lz;-><init>(Lcom/google/android/gms/internal/ads/pz;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pz;->h:Lcom/google/android/gms/internal/ads/lz;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pz;->a:Lcom/google/android/gms/internal/ads/Gz;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Gz;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/mz;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/mz;-><init>(Lcom/google/android/gms/internal/ads/pz;Ljava/lang/Runnable;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
