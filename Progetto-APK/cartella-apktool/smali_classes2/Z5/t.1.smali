.class public abstract LZ5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/n;


# virtual methods
.method public final a(LZ5/S;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, LZ5/T;->a(LZ5/S;)Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(LY5/B;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, LZ5/T;->b(LY5/B;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()LY5/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, LZ5/n;->c()LY5/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(LY5/B;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, LZ5/T;->d(LY5/B;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()LY5/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, LY5/l;->e()LY5/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract f()LZ5/n;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->n(Ljava/lang/Object;)Lo3/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delegate"

    .line 6
    .line 7
    invoke-virtual {p0}, LZ5/t;->f()LZ5/n;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2, v1}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lo3/G;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
