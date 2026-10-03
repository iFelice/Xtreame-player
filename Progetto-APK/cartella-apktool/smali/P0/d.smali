.class public final LP0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/L;


# instance fields
.field public final a:I

.field public final b:Lm0/t;

.field public final c:LW0/q;

.field public d:Lm0/t;

.field public e:LW0/L;

.field public f:J


# direct methods
.method public constructor <init>(Lm0/t;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LP0/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LP0/d;->b:Lm0/t;

    .line 7
    .line 8
    new-instance p1, LW0/q;

    .line 9
    .line 10
    invoke-direct {p1}, LW0/q;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LP0/d;->c:LW0/q;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(IILp0/E;)V
    .locals 1

    .line 1
    iget-object p2, p0, LP0/d;->e:LW0/L;

    .line 2
    .line 3
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p2, p1, p3}, LW0/L;->e(ILp0/E;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lm0/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, LP0/d;->b:Lm0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lm0/t;->e(Lm0/t;)Lm0/t;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iput-object p1, p0, LP0/d;->d:Lm0/t;

    .line 10
    .line 11
    iget-object v0, p0, LP0/d;->e:LW0/L;

    .line 12
    .line 13
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, p1}, LW0/L;->b(Lm0/t;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c(Lm0/j;IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, LP0/d;->e:LW0/L;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, LW0/L;->f(Lm0/j;IZ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final d(JIIILW0/K;)V
    .locals 8

    .line 1
    iget-wide v0, p0, LP0/d;->f:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-ltz v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, LP0/d;->c:LW0/q;

    .line 17
    .line 18
    iput-object v0, p0, LP0/d;->e:LW0/L;

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, LP0/d;->e:LW0/L;

    .line 21
    .line 22
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 23
    .line 24
    move-wide v2, p1

    .line 25
    move v4, p3

    .line 26
    move v5, p4

    .line 27
    move v6, p5

    .line 28
    move-object v7, p6

    .line 29
    invoke-interface/range {v1 .. v7}, LW0/L;->d(JIIILW0/K;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final synthetic e(ILp0/E;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, LA0/O;->b(LW0/L;Lp0/E;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Lm0/j;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LP0/d;->c(Lm0/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
