.class public final LA0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/I;
.implements LA0/J;


# instance fields
.field public final G:LA0/K;

.field public final H:LA0/E;

.field public final I:LA0/h0;


# direct methods
.method public constructor <init>(LF/i;LA0/K;LA0/K;LA0/h0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eq p2, p3, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Creating a self loop in the chain: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, LA0/f;->G:LA0/K;

    .line 27
    .line 28
    new-instance p2, LA0/E;

    .line 29
    .line 30
    invoke-direct {p2, p1, p3, p4}, LA0/E;-><init>(LF/i;LA0/K;LA0/h0;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, LA0/f;->H:LA0/E;

    .line 34
    .line 35
    iput-object p4, p0, LA0/f;->I:LA0/h0;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A(Lm0/v;)V
    .locals 2

    .line 1
    new-instance v0, LA0/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iget-object v1, p0, LA0/f;->I:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/f;->H:LA0/E;

    .line 3
    .line 4
    invoke-virtual {v0}, LA0/E;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized i(Lm0/v;J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/f;->H:LA0/E;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2, p3}, LA0/E;->a(Lm0/v;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final declared-synchronized r()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/f;->H:LA0/E;

    .line 3
    .line 4
    invoke-virtual {v0}, LA0/E;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final declared-synchronized x()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/f;->H:LA0/E;

    .line 3
    .line 4
    invoke-virtual {v0}, LA0/E;->x()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, LA0/f;->I:LA0/h0;

    .line 8
    .line 9
    iget-object v1, p0, LA0/f;->G:LA0/K;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance v2, LA0/e;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, LA0/e;-><init>(LA0/K;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v2, v1}, LA0/h0;->f(LA0/g0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method
