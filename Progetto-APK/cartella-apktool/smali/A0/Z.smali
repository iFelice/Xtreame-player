.class public final LA0/Z;
.super LA0/a0;
.source "SourceFile"


# instance fields
.field public J:LA0/E;

.field public final K:LF/i;


# direct methods
.method public constructor <init>(LF/i;LA0/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, LA0/a0;-><init>(LA0/h0;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/Z;->K:LF/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Lm0/v;)V
    .locals 2

    .line 1
    new-instance v0, LA0/d;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0, p1}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iget-object v1, p0, LA0/a0;->G:LA0/h0;

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
    iget-object v0, p0, LA0/Z;->J:LA0/E;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, LA0/E;->x()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, LA0/a0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, LA0/Z;->J:LA0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, v0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0

    .line 17
    throw v1
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final h(Lm0/u;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(LA0/m;)V
    .locals 3

    .line 1
    new-instance v0, LA0/E;

    .line 2
    .line 3
    iget-object v1, p0, LA0/Z;->K:LF/i;

    .line 4
    .line 5
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 6
    .line 7
    invoke-direct {v0, v1, p1, v2}, LA0/E;-><init>(LF/i;LA0/K;LA0/h0;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LA0/Z;->J:LA0/E;

    .line 11
    .line 12
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    new-instance v0, LA0/p;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, LA0/p;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 9
    .line 10
    invoke-virtual {v2, v0, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/Z;->J:LA0/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LA0/Z;->J:LA0/E;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, LA0/p;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-direct {v1, v0, v2}, LA0/p;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iget-object v2, p0, LA0/a0;->G:LA0/h0;

    .line 19
    .line 20
    invoke-virtual {v2, v1, v0}, LA0/h0;->f(LA0/g0;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
