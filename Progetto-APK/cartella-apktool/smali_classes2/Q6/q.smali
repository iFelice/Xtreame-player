.class public final LQ6/q;
.super LQ6/G;
.source "SourceFile"


# instance fields
.field public a:LQ6/G;


# direct methods
.method public constructor <init>(LQ6/G;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LQ6/q;->a:LQ6/G;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final clearDeadline()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/G;->clearDeadline()LQ6/G;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final clearTimeout()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/G;->clearTimeout()LQ6/G;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    invoke-virtual {v0}, LQ6/G;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)LQ6/G;
    .locals 1

    .line 2
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    invoke-virtual {v0, p1, p2}, LQ6/G;->deadlineNanoTime(J)LQ6/G;

    move-result-object p1

    return-object p1
.end method

.method public final hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/G;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final throwIfReached()V
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/G;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;
    .locals 1

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, LQ6/G;->timeout(JLjava/util/concurrent/TimeUnit;)LQ6/G;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, LQ6/q;->a:LQ6/G;

    .line 2
    .line 3
    invoke-virtual {v0}, LQ6/G;->timeoutNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
