.class public final Lcom/google/android/gms/internal/pal/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/pal/t4;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/t4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/t4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/t4;->b:Lcom/google/android/gms/internal/pal/t4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    new-instance v1, Lm2/i;

    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lm2/i;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/pal/B4;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/pal/B4;-><init>(Lm2/i;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/pal/j4;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lm2/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/pal/B4;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lm2/i;-><init>(Lcom/google/android/gms/internal/pal/B4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lm2/i;->s(Lcom/google/android/gms/internal/pal/j4;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/pal/B4;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/B4;-><init>(Lm2/i;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/pal/l4;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lm2/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/pal/B4;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lm2/i;-><init>(Lcom/google/android/gms/internal/pal/B4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lm2/i;->u(Lcom/google/android/gms/internal/pal/l4;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/pal/B4;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/B4;-><init>(Lm2/i;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/pal/u4;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lm2/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/pal/B4;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lm2/i;-><init>(Lcom/google/android/gms/internal/pal/B4;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lm2/i;->w(Lcom/google/android/gms/internal/pal/u4;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/pal/B4;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/B4;-><init>(Lm2/i;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/t4;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method
