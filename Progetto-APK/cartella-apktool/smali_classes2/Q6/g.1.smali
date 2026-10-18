.class public final LQ6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/B;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final timeout()LQ6/G;
    .locals 1

    .line 1
    sget-object v0, LQ6/G;->NONE:LQ6/G;

    .line 2
    .line 3
    return-object v0
.end method

.method public final write(LQ6/j;J)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, LQ6/j;->b(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
