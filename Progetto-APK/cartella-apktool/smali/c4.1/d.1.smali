.class public final Lc4/d;
.super Lc4/u1;
.source "SourceFile"


# instance fields
.field public J:Ljava/lang/String;

.field public K:Ljava/util/HashSet;

.field public L:Lr/f;

.field public M:Ljava/lang/Long;

.field public N:Ljava/lang/Long;


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q(Ljava/lang/Integer;)Lc4/K1;
    .locals 2

    .line 1
    iget-object v0, p0, Lc4/d;->L:Lr/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr/f;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lc4/d;->L:Lr/f;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lc4/K1;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Lc4/K1;

    .line 19
    .line 20
    iget-object v1, p0, Lc4/d;->J:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lc4/K1;-><init>(Lc4/d;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lc4/d;->L:Lr/f;

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
