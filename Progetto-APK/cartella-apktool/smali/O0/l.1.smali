.class public final LO0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/x;


# instance fields
.field public final a:LO0/k;


# direct methods
.method public constructor <init>(Ls0/n;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LO0/k;

    .line 5
    .line 6
    invoke-direct {v0}, LO0/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LO0/l;->a:LO0/k;

    .line 10
    .line 11
    iget-object v1, v0, LO0/k;->c:Ls0/h;

    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    iput-object p1, v0, LO0/k;->c:Ls0/h;

    .line 16
    .line 17
    iget-object p1, v0, LO0/k;->a:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, LO0/k;->b:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(LG0/j;)LO0/x;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LO0/l;->b(LG0/j;)LO0/l;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final b(LG0/j;)LO0/l;
    .locals 2

    .line 1
    iget-object v0, p0, LO0/l;->a:LO0/k;

    .line 2
    .line 3
    iget-object v0, v0, LO0/k;->b:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, LO0/x;

    .line 24
    .line 25
    invoke-interface {v1, p1}, LO0/x;->a(LG0/j;)LO0/x;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object p0
.end method
