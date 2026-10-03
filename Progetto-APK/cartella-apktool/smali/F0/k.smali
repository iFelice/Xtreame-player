.class public final LF0/k;
.super LF0/m;
.source "SourceFile"

# interfaces
.implements LE0/k;


# instance fields
.field public final h:LF0/n;


# direct methods
.method public constructor <init>(JLm0/t;Lz4/H;LF0/n;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-object v2, p4

    .line 4
    move-object v3, p5

    .line 5
    move-object v4, p6

    .line 6
    move-object v5, p7

    .line 7
    move-object v6, p8

    .line 8
    invoke-direct/range {v0 .. v6}, LF0/m;-><init>(Lm0/t;Lz4/H;LF0/s;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iput-object p5, p0, LF0/k;->h:LF0/n;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LF0/n;->g(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->e(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final c(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->c(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final d(JJ)J
    .locals 3

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    iget-object v1, v0, LF0/n;->f:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->c(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->b(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p3

    .line 21
    add-long/2addr p3, v1

    .line 22
    invoke-virtual {v0, p3, p4}, LF0/n;->g(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, p3, p4, p1, p2}, LF0/n;->e(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    add-long/2addr p1, v1

    .line 31
    iget-wide p3, v0, LF0/n;->i:J

    .line 32
    .line 33
    sub-long/2addr p1, p3

    .line 34
    :goto_0
    return-wide p1
.end method

.method public final e(J)LF0/j;
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p0}, LF0/n;->h(JLF0/m;)LF0/j;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final f(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->f(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0}, LF0/n;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final h()J
    .locals 2

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    iget-wide v0, v0, LF0/n;->d:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final i(J)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LF0/n;->d(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final j(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, LF0/k;->h:LF0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, LF0/n;->b(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final l()LE0/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final m()LF0/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
