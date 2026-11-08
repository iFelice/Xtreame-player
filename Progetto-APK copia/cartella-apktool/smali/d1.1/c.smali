.class public final Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/t;


# instance fields
.field public final a:LW0/t;

.field public final b:J


# direct methods
.method public constructor <init>(LW0/t;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld1/c;->a:LW0/t;

    .line 5
    .line 6
    invoke-interface {p1}, LW0/t;->r()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    cmp-long p1, v0, p2

    .line 11
    .line 12
    if-ltz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 18
    .line 19
    .line 20
    iput-wide p2, p0, Ld1/c;->b:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, LW0/t;->b([BIIZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(I[BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, LW0/t;->c(I[BI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LW0/t;->d(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, LW0/t;->e([BIIZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final f()J
    .locals 4

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/t;->f()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Ld1/c;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LW0/t;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(I[BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, LW0/t;->h(I[BI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final i(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LW0/t;->i(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final j()J
    .locals 4

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/t;->j()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Ld1/c;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final l(JLjava/io/IOException;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ld1/c;->b:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, LW0/t;->l(JLjava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/t;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LW0/t;->n(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LW0/t;->o(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final q([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lm0/j;->q([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final r()J
    .locals 4

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0}, LW0/t;->r()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Ld1/c;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final readFully([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:LW0/t;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, LW0/t;->readFully([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
