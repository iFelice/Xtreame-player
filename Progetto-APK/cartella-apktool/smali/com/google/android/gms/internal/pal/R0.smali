.class public final Lcom/google/android/gms/internal/pal/R0;
.super Lcom/google/android/gms/internal/pal/a1;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/ads/interactivemedia/pal/zzx;

.field public final f:Lg4/h;

.field public final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lg4/r;Lcom/google/ads/interactivemedia/pal/zzx;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pal/A0;->b(J)Lcom/google/android/gms/internal/pal/A0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/pal/a1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/pal/A0;)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/R0;->g:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/R0;->f:Lg4/h;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/pal/R0;->e:Lcom/google/ads/interactivemedia/pal/zzx;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pal/I2;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/R0;->f:Lg4/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->a(Lg4/h;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/b2;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/R0;->g:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pal/b2;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/pal/K2;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/pal/K2;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :catch_0
    const-string v0, "NonceGenerator"

    .line 25
    .line 26
    const-string v1, "Unexpected exception while gathering request signals."

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/R0;->e:Lcom/google/ads/interactivemedia/pal/zzx;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/pal/zzx;->zza(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/google/android/gms/internal/pal/G2;->G:Lcom/google/android/gms/internal/pal/G2;

    .line 38
    .line 39
    return-object v0
.end method
