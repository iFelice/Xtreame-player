.class public final synthetic LB0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/v;
.implements Lp0/d;
.implements Lp0/u;


# instance fields
.field public final synthetic G:LB0/O;


# direct methods
.method public synthetic constructor <init>(LB0/O;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/H;->G:LB0/O;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, LB0/H;->G:LB0/O;

    .line 10
    .line 11
    invoke-virtual {v0}, LB0/O;->c0()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2, v2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-virtual {v0, v3, p2, v2}, LB0/O;->O(ILjava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance p2, LB0/G;

    .line 25
    .line 26
    invoke-direct {p2, p1, v1}, LB0/G;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, LB0/O;->S:Lx/e;

    .line 30
    .line 31
    const/16 v0, 0x15

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Lx/e;->l(ILp0/u;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c(Ljava/lang/Object;Lm0/r;)V
    .locals 1

    .line 1
    check-cast p1, Lm0/W;

    .line 2
    .line 3
    iget-object v0, p0, LB0/H;->G:LB0/O;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lm0/V;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Lm0/V;-><init>(Lm0/r;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lm0/W;->D(Lm0/V;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lm0/W;

    .line 2
    .line 3
    iget-object v0, p0, LB0/H;->G:LB0/O;

    .line 4
    .line 5
    iget-object v0, v0, LB0/O;->t0:Lm0/U;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lm0/W;->d(Lm0/U;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
