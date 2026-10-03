.class public final LO0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/E;
.implements LG0/p;


# instance fields
.field public final G:Ljava/lang/Object;

.field public H:LO0/D;

.field public I:LG0/o;

.field public final synthetic J:LO0/h;


# direct methods
.method public constructor <init>(LO0/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/f;->J:LO0/h;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, LO0/a;->a(LO0/y;)LO0/D;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, LO0/f;->H:LO0/D;

    .line 12
    .line 13
    new-instance v1, LG0/o;

    .line 14
    .line 15
    iget-object p1, p1, LO0/a;->d:LG0/o;

    .line 16
    .line 17
    iget-object p1, p1, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p1, v2, v0}, LG0/o;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, LO0/f;->I:LG0/o;

    .line 24
    .line 25
    iput-object v0, p0, LO0/f;->G:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final C(ILO0/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1}, LG0/o;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final E(ILO0/y;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1, p3}, LG0/o;->d(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final F(ILO0/y;LO0/p;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p4, LO0/B;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p4, p1, p3, p2, v0}, LO0/B;-><init>(LO0/D;LO0/p;LO0/u;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, LO0/D;->a(Lp0/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final H(ILO0/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1}, LG0/o;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final I(ILO0/y;LO0/p;LO0/u;I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, LC0/k;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    move-object v0, p2

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p3

    .line 19
    move v4, p5

    .line 20
    invoke-direct/range {v0 .. v5}, LC0/k;-><init>(Ljava/lang/Object;LO0/p;LO0/u;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, LO0/D;->a(Lp0/j;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final M(ILO0/y;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p3}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p3, LC0/d;

    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    invoke-direct {p3, v0, p1, p2}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, LO0/D;->a(Lp0/j;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final N(ILO0/y;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1, p3}, LG0/o;->e(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final a(ILO0/y;)V
    .locals 4

    .line 1
    iget-object v0, p0, LO0/f;->G:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, LO0/f;->J:LO0/h;

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, LO0/t;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Ljava/lang/Void;

    .line 15
    .line 16
    iget-object v2, v2, LO0/t;->o:LO0/r;

    .line 17
    .line 18
    iget-object v2, v2, LO0/r;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v3, p2, LO0/y;->a:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    sget-object v3, LO0/r;->e:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p2, v3}, LO0/y;->a(Ljava/lang/Object;)LO0/y;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p2, 0x0

    .line 38
    :goto_0
    move-object v2, v1

    .line 39
    check-cast v2, LO0/t;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast v0, Ljava/lang/Void;

    .line 45
    .line 46
    iget-object v0, p0, LO0/f;->H:LO0/D;

    .line 47
    .line 48
    iget v2, v0, LO0/D;->a:I

    .line 49
    .line 50
    if-ne v2, p1, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, LO0/D;->b:LO0/y;

    .line 53
    .line 54
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    :cond_2
    iget-object v0, v1, LO0/a;->c:LO0/D;

    .line 61
    .line 62
    new-instance v2, LO0/D;

    .line 63
    .line 64
    iget-object v0, v0, LO0/D;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    .line 66
    invoke-direct {v2, v0, p1, p2}, LO0/D;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, LO0/f;->H:LO0/D;

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, LO0/f;->I:LG0/o;

    .line 72
    .line 73
    iget v2, v0, LG0/o;->a:I

    .line 74
    .line 75
    if-ne v2, p1, :cond_4

    .line 76
    .line 77
    iget-object v0, v0, LG0/o;->b:LO0/y;

    .line 78
    .line 79
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    :cond_4
    iget-object v0, v1, LO0/a;->d:LG0/o;

    .line 86
    .line 87
    new-instance v1, LG0/o;

    .line 88
    .line 89
    iget-object v0, v0, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    .line 91
    invoke-direct {v1, v0, p1, p2}, LG0/o;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, LO0/f;->I:LG0/o;

    .line 95
    .line 96
    :cond_5
    return-void
.end method

.method public final b(LO0/u;)LO0/u;
    .locals 11

    .line 1
    iget-wide v6, p1, LO0/u;->f:J

    .line 2
    .line 3
    iget-object v0, p0, LO0/f;->J:LO0/h;

    .line 4
    .line 5
    check-cast v0, LO0/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LO0/f;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Void;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-wide v0, p1, LO0/u;->f:J

    .line 18
    .line 19
    iget-wide v8, p1, LO0/u;->g:J

    .line 20
    .line 21
    cmp-long v2, v6, v0

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    cmp-long v0, v8, v8

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance v10, LO0/u;

    .line 31
    .line 32
    iget v2, p1, LO0/u;->b:I

    .line 33
    .line 34
    iget-object v3, p1, LO0/u;->c:Lm0/t;

    .line 35
    .line 36
    iget v1, p1, LO0/u;->a:I

    .line 37
    .line 38
    iget v4, p1, LO0/u;->d:I

    .line 39
    .line 40
    iget-object v5, p1, LO0/u;->e:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v0, v10

    .line 43
    invoke-direct/range {v0 .. v9}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 44
    .line 45
    .line 46
    return-object v10
.end method

.method public final h(ILO0/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1}, LG0/o;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(ILO0/y;LO0/p;LO0/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p4, LO0/B;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p4, p1, p3, p2, v0}, LO0/B;-><init>(LO0/D;LO0/p;LO0/u;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, LO0/D;->a(Lp0/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final r(ILO0/y;LO0/u;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p3}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object p3, p1, LO0/D;->b:LO0/y;

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, LO0/A;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, p3, p2, v1}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, LO0/D;->a(Lp0/j;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final s(ILO0/y;LO0/p;LO0/u;Ljava/io/IOException;Z)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->H:LO0/D;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, LO0/f;->b(LO0/u;)LO0/u;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, LC0/p;

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p3

    .line 18
    move-object v4, p5

    .line 19
    move v5, p6

    .line 20
    invoke-direct/range {v0 .. v5}, LC0/p;-><init>(Ljava/lang/Object;LO0/p;LO0/u;Ljava/io/IOException;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, LO0/D;->a(Lp0/j;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final w(ILO0/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LO0/f;->a(ILO0/y;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, LO0/f;->I:LG0/o;

    .line 5
    .line 6
    invoke-virtual {p1}, LG0/o;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
