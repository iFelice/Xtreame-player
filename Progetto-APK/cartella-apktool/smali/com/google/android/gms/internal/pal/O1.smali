.class public final Lcom/google/android/gms/internal/pal/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pal/A1;

.field public final b:Lcom/google/android/gms/internal/pal/L4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pal/O1;->a:Lcom/google/android/gms/internal/pal/A1;

    iput-object p2, p0, Lcom/google/android/gms/internal/pal/O1;->b:Lcom/google/android/gms/internal/pal/L4;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/O1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->k:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/O1;->a:Lcom/google/android/gms/internal/pal/A1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/A1;->j:Lcom/google/android/gms/internal/pal/m0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/O1;->b:Lcom/google/android/gms/internal/pal/L4;

    .line 17
    .line 18
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/O1;->b:Lcom/google/android/gms/internal/pal/L4;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/j;->b()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    array-length v4, v0

    .line 30
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/internal/pal/C;->c([BILcom/google/android/gms/internal/pal/x;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method
