.class public Lcom/google/android/gms/internal/ads/te;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD4/b;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/pC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/pC;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/GB;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pC;->f(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 10
    .line 11
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v2, "Provided SettableFuture with multiple values."

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "SettableFuture"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return p1
.end method

.method public final c(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pC;->g(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 10
    .line 11
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v2, "Provided SettableFuture with multiple values."

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "SettableFuture"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/le;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return p1
.end method

.method public cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/GB;->cancel(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GB;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/GB;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GB;->G:Ljava/lang/Object;

    .line 4
    .line 5
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/vB;

    .line 6
    .line 7
    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GB;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
