.class public abstract LV5/b;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public I:LF/i;

.field public J:LV5/a;


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, LV5/b;->I:LF/i;

    .line 4
    .line 5
    iget-object v3, v2, LF/i;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v0, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0}, LF/i;->v(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return v1
.end method
