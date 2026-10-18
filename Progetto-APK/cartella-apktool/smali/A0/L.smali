.class public final LA0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/J;
.implements LA0/I;


# instance fields
.field public final G:LA0/f;

.field public H:Z


# direct methods
.method public constructor <init>(LF/i;LA0/y;LA0/K;LA0/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA0/f;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3, p4}, LA0/f;-><init>(LF/i;LA0/K;LA0/K;LA0/h0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LA0/L;->G:LA0/f;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final A(Lm0/v;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LA0/L;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LA0/L;->G:LA0/f;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, LA0/f;->A(Lm0/v;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LA0/L;->H:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LA0/L;->G:LA0/f;

    .line 7
    .line 8
    invoke-virtual {v0}, LA0/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public final declared-synchronized i(Lm0/v;J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LA0/L;->H:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LA0/L;->G:LA0/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, LA0/f;->i(Lm0/v;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw p1
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LA0/L;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LA0/L;->G:LA0/f;

    .line 6
    .line 7
    invoke-virtual {v0}, LA0/f;->r()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final declared-synchronized x()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, LA0/L;->H:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LA0/L;->G:LA0/f;

    .line 7
    .line 8
    invoke-virtual {v0}, LA0/f;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method
