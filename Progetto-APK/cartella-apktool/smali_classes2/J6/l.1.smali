.class public final LJ6/l;
.super Lx6/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    sget-object p1, Lx6/f;->G:Lx6/f;

    .line 5
    .line 6
    new-instance v1, LI6/f;

    .line 7
    .line 8
    invoke-direct {v1, v0}, LI6/f;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v1}, Lx6/b;-><init>(Lx6/i;LI6/f;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object p1, LJ6/m;->H:LJ6/l;

    .line 16
    .line 17
    new-instance v0, LI6/f;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, LI6/f;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Lx6/b;-><init>(Lx6/i;LI6/f;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
