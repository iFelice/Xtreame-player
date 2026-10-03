.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public final L:Lcom/google/android/gms/internal/ads/dc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Ll3/p;->f:Ll3/p;

    .line 5
    .line 6
    iget-object p2, p2, Ll3/p;->b:Ll3/n;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Ll3/f;

    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, Ll3/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ab;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, p1, v0}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/ads/dc;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;->L:Lcom/google/android/gms/internal/ads/dc;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final doWork()Ld2/l;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;->L:Lcom/google/android/gms/internal/ads/dc;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dc;->zzh()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ld2/k;

    .line 7
    .line 8
    sget-object v1, Ld2/e;->c:Ld2/e;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ld2/k;-><init>(Ld2/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    new-instance v0, Ld2/i;

    .line 15
    .line 16
    invoke-direct {v0}, Ld2/i;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
