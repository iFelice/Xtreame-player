.class public LN6/t;
.super LJ6/a;
.source "SourceFile"

# interfaces
.implements Lz6/d;


# instance fields
.field public final J:Lx6/e;


# direct methods
.method public constructor <init>(Lx6/e;Lx6/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0}, LJ6/a;-><init>(Lx6/j;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LN6/t;->J:Lx6/e;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Lz6/d;
    .locals 2

    .line 1
    iget-object v0, p0, LN6/t;->J:Lx6/e;

    .line 2
    .line 3
    instance-of v1, v0, Lz6/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lz6/d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LN6/t;->J:Lx6/e;

    .line 2
    .line 3
    invoke-static {v0}, LS3/e;->h(Lx6/e;)Lx6/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, p1, LJ6/k;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p1, LJ6/k;

    .line 12
    .line 13
    iget-object p1, p1, LJ6/k;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    invoke-static {p1}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    invoke-static {p1, v0}, LN6/e;->b(Ljava/lang/Object;Lx6/e;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, LJ6/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, LJ6/k;

    .line 6
    .line 7
    iget-object p1, p1, LJ6/k;->a:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-static {p1}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    iget-object v0, p0, LN6/t;->J:Lx6/e;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lx6/e;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
