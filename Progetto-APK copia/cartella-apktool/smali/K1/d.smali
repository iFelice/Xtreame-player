.class public final LK1/d;
.super Lz6/h;
.source "SourceFile"

# interfaces
.implements LC6/p;


# instance fields
.field public synthetic K:Ljava/lang/Object;

.field public final synthetic L:LK1/e;


# direct methods
.method public constructor <init>(LK1/e;Lx6/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, LK1/d;->L:LK1/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lz6/h;-><init>(Lx6/e;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, LK1/d;->d(Ljava/lang/Object;Lx6/e;)Lx6/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LK1/d;

    .line 10
    .line 11
    sget-object p2, Lt6/h;->a:Lt6/h;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LK1/d;->f(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, LK1/d;

    .line 2
    .line 3
    iget-object v1, p0, LK1/d;->L:LK1/e;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, LK1/d;-><init>(LK1/e;Lx6/e;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, LK1/d;->K:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lz4/q0;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LK1/d;->K:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, LJ6/p;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
