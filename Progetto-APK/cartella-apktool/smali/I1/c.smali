.class public final LI1/c;
.super Lz6/h;
.source "SourceFile"

# interfaces
.implements LC6/p;


# instance fields
.field public K:I

.field public final synthetic L:LI1/d;

.field public final synthetic M:Landroid/net/Uri;


# direct methods
.method public constructor <init>(LI1/d;Landroid/net/Uri;Lx6/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI1/c;->L:LI1/d;

    .line 2
    .line 3
    iput-object p2, p0, LI1/c;->M:Landroid/net/Uri;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lz6/h;-><init>(Lx6/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LJ6/p;

    .line 2
    .line 3
    check-cast p2, Lx6/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, LI1/c;->d(Ljava/lang/Object;Lx6/e;)Lx6/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LI1/c;

    .line 10
    .line 11
    sget-object p2, Lt6/h;->a:Lt6/h;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LI1/c;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final d(Ljava/lang/Object;Lx6/e;)Lx6/e;
    .locals 2

    .line 1
    new-instance p1, LI1/c;

    .line 2
    .line 3
    iget-object v0, p0, LI1/c;->L:LI1/d;

    .line 4
    .line 5
    iget-object v1, p0, LI1/c;->M:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, LI1/c;-><init>(LI1/d;Landroid/net/Uri;Lx6/e;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ly6/a;->G:Ly6/a;

    .line 2
    .line 3
    iget v1, p0, LI1/c;->K:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lz4/q0;->H(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lz4/q0;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, LI1/c;->L:LI1/d;

    .line 26
    .line 27
    iget-object p1, p1, LI1/d;->a:LK1/e;

    .line 28
    .line 29
    iput v2, p0, LI1/c;->K:I

    .line 30
    .line 31
    iget-object v1, p0, LI1/c;->M:Landroid/net/Uri;

    .line 32
    .line 33
    invoke-virtual {p1, v1, p0}, LK1/e;->i(Landroid/net/Uri;Lx6/e;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    sget-object p1, Lt6/h;->a:Lt6/h;

    .line 41
    .line 42
    return-object p1
.end method
