.class public final LU2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public G:Ls6/a;

.field public H:LK3/g;

.field public I:Ls6/a;

.field public J:LV2/e;

.field public K:Ls6/a;

.field public L:Ls6/a;


# virtual methods
.method public final bridge synthetic close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LU2/j;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, LU2/j;->K:Ls6/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ls6/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lb3/d;

    .line 8
    .line 9
    check-cast v0, Lb3/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Lb3/j;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
