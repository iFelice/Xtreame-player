.class public final LX1/u;
.super LX1/r;
.source "SourceFile"


# instance fields
.field public a:LX1/v;


# virtual methods
.method public final b(LX1/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, LX1/u;->a:LX1/v;

    .line 2
    .line 3
    iget v1, v0, LX1/v;->f0:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, LX1/v;->f0:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, LX1/v;->g0:Z

    .line 13
    .line 14
    invoke-virtual {v0}, LX1/q;->n()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, LX1/q;->w(LX1/p;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LX1/u;->a:LX1/v;

    .line 2
    .line 3
    iget-boolean v1, v0, LX1/v;->g0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, LX1/q;->G()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, LX1/v;->g0:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
