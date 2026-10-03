.class public final LP2/d;
.super Lr/f;
.source "SourceFile"


# instance fields
.field public M:I


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP2/d;->M:I

    .line 3
    .line 4
    invoke-super {p0}, Lr/m;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(Lr/m;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP2/d;->M:I

    .line 3
    .line 4
    invoke-super {p0, p1}, Lr/m;->g(Lr/m;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP2/d;->M:I

    .line 3
    .line 4
    invoke-super {p0, p1}, Lr/m;->h(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, LP2/d;->M:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lr/m;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, LP2/d;->M:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, LP2/d;->M:I

    .line 12
    .line 13
    return v0
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP2/d;->M:I

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lr/m;->i(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LP2/d;->M:I

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
