.class public abstract Lcom/google/android/gms/internal/pal/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lcom/google/android/gms/internal/pal/A0;

.field public final c:Landroid/os/Handler;

.field public d:Lg4/r;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/pal/A0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/pal/G2;->G:Lcom/google/android/gms/internal/pal/G2;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->k(Ljava/lang/Object;)Lg4/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->d:Lg4/r;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/pal/a1;->a:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/a1;->c:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/gms/internal/pal/a1;->b:Lcom/google/android/gms/internal/pal/A0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/pal/I2;
.end method

.method public final b()Lg4/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->d:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg4/r;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->d:Lg4/r;

    .line 10
    .line 11
    invoke-virtual {v0}, Lg4/r;->h()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/a1;->c()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->d:Lg4/r;

    .line 21
    .line 22
    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->c:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->c:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/pal/Y0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/pal/Y0;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/a1;->b:Lcom/google/android/gms/internal/pal/A0;

    .line 16
    .line 17
    iget-wide v2, v2, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 18
    .line 19
    const-wide/16 v4, 0x3e8

    .line 20
    .line 21
    div-long/2addr v2, v4

    .line 22
    mul-long v2, v2, v4

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    new-instance v1, Lcom/google/android/gms/internal/pal/Z0;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pal/Z0;-><init>(Lcom/google/android/gms/internal/pal/a1;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Cw;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg4/r;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/a1;->d:Lg4/r;

    .line 39
    .line 40
    return-void
.end method
