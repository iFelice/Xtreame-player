.class public final LO0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/w;
.implements LO0/v;


# instance fields
.field public final G:LO0/y;

.field public final H:J

.field public final I:LS0/d;

.field public J:LO0/a;

.field public K:LO0/w;

.field public L:LO0/v;

.field public M:J


# direct methods
.method public constructor <init>(LO0/y;LS0/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/q;->G:LO0/y;

    .line 5
    .line 6
    iput-object p2, p0, LO0/q;->I:LS0/d;

    .line 7
    .line 8
    iput-wide p3, p0, LO0/q;->H:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, LO0/q;->M:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(JLB0/I0;)J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, LO0/w;->a(JLB0/I0;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public final b(LO0/y;)V
    .locals 5

    .line 1
    iget-wide v0, p0, LO0/q;->M:J

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
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p0, LO0/q;->H:J

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, LO0/q;->J:LO0/a;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, LO0/q;->I:LS0/d;

    .line 21
    .line 22
    invoke-virtual {v2, p1, v3, v0, v1}, LO0/a;->b(LO0/y;LS0/d;J)LO0/w;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LO0/q;->K:LO0/w;

    .line 27
    .line 28
    iget-object v2, p0, LO0/q;->L:LO0/v;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p1, p0, v0, v1}, LO0/w;->m(LO0/v;J)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0}, LO0/W;->e()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final g(LB0/d0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, LO0/W;->g(LB0/d0;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LO0/w;->h()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, LO0/q;->J:LO0/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, LO0/a;->j()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final i(J)J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, LO0/w;->i(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LO0/W;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final l([LR0/t;[Z[LO0/U;[ZJ)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, LO0/q;->M:J

    .line 3
    .line 4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    iget-wide v5, v0, LO0/q;->H:J

    .line 14
    .line 15
    cmp-long v7, p5, v5

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    move-wide v13, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide/from16 v13, p5

    .line 22
    .line 23
    :goto_0
    iput-wide v3, v0, LO0/q;->M:J

    .line 24
    .line 25
    iget-object v8, v0, LO0/q;->K:LO0/w;

    .line 26
    .line 27
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 28
    .line 29
    move-object/from16 v9, p1

    .line 30
    .line 31
    move-object/from16 v10, p2

    .line 32
    .line 33
    move-object/from16 v11, p3

    .line 34
    .line 35
    move-object/from16 v12, p4

    .line 36
    .line 37
    invoke-interface/range {v8 .. v14}, LO0/w;->l([LR0/t;[Z[LO0/U;[ZJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    return-wide v1
.end method

.method public final m(LO0/v;J)V
    .locals 3

    .line 1
    iput-object p1, p0, LO0/q;->L:LO0/v;

    .line 2
    .line 3
    iget-object p1, p0, LO0/q;->K:LO0/w;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-wide p2, p0, LO0/q;->M:J

    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v2, p2, v0

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide p2, p0, LO0/q;->H:J

    .line 20
    .line 21
    :goto_0
    invoke-interface {p1, p0, p2, p3}, LO0/w;->m(LO0/v;J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0}, LO0/w;->q()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final r(LO0/W;)V
    .locals 1

    .line 1
    check-cast p1, LO0/w;

    .line 2
    .line 3
    iget-object p1, p0, LO0/q;->L:LO0/v;

    .line 4
    .line 5
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, p0}, LO0/V;->r(LO0/W;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s()LO0/Z;
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0}, LO0/w;->s()LO0/Z;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final t(LO0/w;)V
    .locals 1

    .line 1
    iget-object p1, p0, LO0/q;->L:LO0/v;

    .line 2
    .line 3
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, p0}, LO0/v;->t(LO0/w;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u()J
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0}, LO0/W;->u()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final v(JZ)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, LO0/w;->v(JZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(J)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/q;->K:LO0/w;

    .line 2
    .line 3
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, LO0/W;->w(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
