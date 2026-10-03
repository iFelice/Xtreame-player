.class public final LA0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/I;


# instance fields
.field public final G:LF/i;

.field public final H:LA0/K;

.field public final I:LA0/h0;

.field public final J:Ljava/util/ArrayDeque;

.field public K:I


# direct methods
.method public constructor <init>(LF/i;LA0/K;LA0/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/E;->G:LF/i;

    .line 5
    .line 6
    iput-object p2, p0, LA0/E;->H:LA0/K;

    .line 7
    .line 8
    iput-object p3, p0, LA0/E;->I:LA0/h0;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic A(Lm0/v;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized a(Lm0/v;J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LA0/E;->K:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, LA0/E;->I:LA0/h0;

    .line 7
    .line 8
    new-instance v1, LA0/i;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, LA0/i;-><init>(LA0/E;Lm0/v;J)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, v1, p1}, LA0/h0;->f(LA0/g0;Z)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, LA0/E;->K:I

    .line 18
    .line 19
    sub-int/2addr p2, p1

    .line 20
    iput p2, p0, LA0/E;->K:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    new-instance v1, LA0/c0;

    .line 28
    .line 29
    invoke-direct {v1, p1, p2, p3}, LA0/c0;-><init>(Lm0/v;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    new-instance v1, LA0/c0;

    .line 13
    .line 14
    sget-object v2, Lm0/v;->e:Lm0/v;

    .line 15
    .line 16
    const-wide/high16 v3, -0x8000000000000000L

    .line 17
    .line 18
    invoke-direct {v1, v2, v3, v4}, LA0/c0;-><init>(Lm0/v;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, LA0/E;->I:LA0/h0;

    .line 28
    .line 29
    iget-object v1, p0, LA0/E;->H:LA0/K;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v2, LA0/e;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, v1, v3}, LA0/e;-><init>(LA0/K;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, LA0/h0;->f(LA0/g0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    :goto_0
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, LA0/c0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, LA0/E;->K:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iput v0, p0, LA0/E;->K:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    iget-object v2, p0, LA0/E;->I:LA0/h0;

    .line 23
    .line 24
    new-instance v3, LA0/d;

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    invoke-direct {v3, v4, p0, v0}, LA0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, LA0/c0;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-wide v2, v0, LA0/c0;->b:J

    .line 44
    .line 45
    const-wide/high16 v4, -0x8000000000000000L

    .line 46
    .line 47
    cmp-long v0, v2, v4

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, LA0/E;->I:LA0/h0;

    .line 52
    .line 53
    iget-object v2, p0, LA0/E;->H:LA0/K;

    .line 54
    .line 55
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    new-instance v3, LA0/e;

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    invoke-direct {v3, v2, v4}, LA0/e;-><init>(LA0/K;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, LA0/h0;->f(LA0/g0;Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_1
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_0
    monitor-exit p0

    .line 75
    throw v0
.end method

.method public final declared-synchronized x()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, LA0/E;->K:I

    .line 4
    .line 5
    iget-object v0, p0, LA0/E;->J:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method
