.class public final Ld1/d;
.super LW0/z;
.source "SourceFile"


# instance fields
.field public final synthetic b:LW0/F;

.field public final synthetic c:Ld1/e;


# direct methods
.method public constructor <init>(Ld1/e;LW0/F;LW0/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/d;->c:Ld1/e;

    .line 2
    .line 3
    iput-object p3, p0, Ld1/d;->b:LW0/F;

    .line 4
    .line 5
    invoke-direct {p0, p2}, LW0/z;-><init>(LW0/F;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(J)LW0/E;
    .locals 8

    .line 1
    iget-object v0, p0, Ld1/d;->b:LW0/F;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LW0/F;->k(J)LW0/E;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, LW0/E;

    .line 8
    .line 9
    new-instance v0, LW0/G;

    .line 10
    .line 11
    iget-object v1, p1, LW0/E;->a:LW0/G;

    .line 12
    .line 13
    iget-wide v2, v1, LW0/G;->a:J

    .line 14
    .line 15
    iget-wide v4, v1, LW0/G;->b:J

    .line 16
    .line 17
    iget-object v1, p0, Ld1/d;->c:Ld1/e;

    .line 18
    .line 19
    iget-wide v6, v1, Ld1/e;->G:J

    .line 20
    .line 21
    add-long/2addr v4, v6

    .line 22
    invoke-direct {v0, v2, v3, v4, v5}, LW0/G;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    new-instance v1, LW0/G;

    .line 26
    .line 27
    iget-object p1, p1, LW0/E;->b:LW0/G;

    .line 28
    .line 29
    iget-wide v2, p1, LW0/G;->a:J

    .line 30
    .line 31
    iget-wide v4, p1, LW0/G;->b:J

    .line 32
    .line 33
    add-long/2addr v4, v6

    .line 34
    invoke-direct {v1, v2, v3, v4, v5}, LW0/G;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0, v1}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method
