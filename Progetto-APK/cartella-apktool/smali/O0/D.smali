.class public final LO0/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:LO0/y;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILO0/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/D;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    iput p2, p0, LO0/D;->a:I

    .line 7
    .line 8
    iput-object p3, p0, LO0/D;->b:LO0/y;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lp0/j;)V
    .locals 5

    .line 1
    iget-object v0, p0, LO0/D;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LO0/C;

    .line 18
    .line 19
    iget-object v2, v1, LO0/C;->b:LO0/E;

    .line 20
    .line 21
    new-instance v3, Lf/t;

    .line 22
    .line 23
    const/16 v4, 0x1b

    .line 24
    .line 25
    invoke-direct {v3, v4, p1, v2}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, LO0/C;->a:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-static {v1, v3}, Lp0/M;->V(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final b(ILm0/t;ILjava/lang/Object;J)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, LO0/u;

    .line 3
    .line 4
    invoke-static/range {p5 .. p6}, Lp0/M;->e0(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v7

    .line 8
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    move-object v1, v11

    .line 15
    move v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move v5, p3

    .line 18
    move-object/from16 v6, p4

    .line 19
    .line 20
    invoke-direct/range {v1 .. v10}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 21
    .line 22
    .line 23
    new-instance v1, LC0/d;

    .line 24
    .line 25
    const/16 v2, 0xc

    .line 26
    .line 27
    invoke-direct {v1, v2, p0, v11}, LC0/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, LO0/D;->a(Lp0/j;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, LO0/u;

    .line 3
    .line 4
    invoke-static/range {p7 .. p8}, Lp0/M;->e0(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v7

    .line 8
    invoke-static/range {p9 .. p10}, Lp0/M;->e0(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v9

    .line 12
    move-object v1, v11

    .line 13
    move v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object/from16 v4, p4

    .line 16
    .line 17
    move/from16 v5, p5

    .line 18
    .line 19
    move-object/from16 v6, p6

    .line 20
    .line 21
    invoke-direct/range {v1 .. v10}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 22
    .line 23
    .line 24
    new-instance v1, LO0/B;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    move-object v3, p1

    .line 28
    invoke-direct {v1, p0, p1, v11, v2}, LO0/B;-><init>(LO0/D;LO0/p;LO0/u;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, LO0/D;->a(Lp0/j;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, LO0/u;

    .line 3
    .line 4
    invoke-static/range {p7 .. p8}, Lp0/M;->e0(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v7

    .line 8
    invoke-static/range {p9 .. p10}, Lp0/M;->e0(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v9

    .line 12
    move-object v1, v11

    .line 13
    move v2, p2

    .line 14
    move v3, p3

    .line 15
    move-object/from16 v4, p4

    .line 16
    .line 17
    move/from16 v5, p5

    .line 18
    .line 19
    move-object/from16 v6, p6

    .line 20
    .line 21
    invoke-direct/range {v1 .. v10}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 22
    .line 23
    .line 24
    new-instance v1, LO0/B;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    move-object v3, p1

    .line 28
    invoke-direct {v1, p0, p1, v11, v2}, LO0/B;-><init>(LO0/D;LO0/p;LO0/u;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, LO0/D;->a(Lp0/j;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final e(LO0/p;IILm0/t;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11

    .line 1
    new-instance v10, LO0/u;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lp0/M;->e0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lp0/M;->e0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    new-instance v0, LC0/p;

    .line 23
    .line 24
    move-object p2, v0

    .line 25
    move-object p3, p0

    .line 26
    move-object p4, p1

    .line 27
    move-object/from16 p5, v10

    .line 28
    .line 29
    move-object/from16 p6, p11

    .line 30
    .line 31
    move/from16 p7, p12

    .line 32
    .line 33
    invoke-direct/range {p2 .. p7}, LC0/p;-><init>(Ljava/lang/Object;LO0/p;LO0/u;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    move-object v1, p0

    .line 37
    invoke-virtual {p0, v0}, LO0/D;->a(Lp0/j;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final f(LO0/p;ILjava/io/IOException;Z)V
    .locals 13

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v3, -0x1

    .line 4
    const/4 v4, 0x0

    .line 5
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move-object/from16 v11, p3

    .line 19
    .line 20
    move/from16 v12, p4

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v12}, LO0/D;->e(LO0/p;IILm0/t;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V
    .locals 11

    .line 1
    new-instance v10, LO0/u;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lp0/M;->e0(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lp0/M;->e0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    new-instance v0, LC0/k;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    move-object p2, v0

    .line 26
    move-object p3, p0

    .line 27
    move-object p4, p1

    .line 28
    move-object/from16 p5, v10

    .line 29
    .line 30
    move/from16 p6, p11

    .line 31
    .line 32
    move/from16 p7, v1

    .line 33
    .line 34
    invoke-direct/range {p2 .. p7}, LC0/k;-><init>(Ljava/lang/Object;LO0/p;LO0/u;II)V

    .line 35
    .line 36
    .line 37
    move-object v1, p0

    .line 38
    invoke-virtual {p0, v0}, LO0/D;->a(Lp0/j;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final h(IJJ)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, LO0/u;

    .line 3
    .line 4
    invoke-static {p2, p3}, Lp0/M;->e0(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v7

    .line 8
    invoke-static/range {p4 .. p5}, Lp0/M;->e0(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v9

    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v1, v11

    .line 17
    move v3, p1

    .line 18
    invoke-direct/range {v1 .. v10}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, LO0/D;->b:LO0/y;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, LO0/A;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v2, p0, v1, v11, v3}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, LO0/D;->a(Lp0/j;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
