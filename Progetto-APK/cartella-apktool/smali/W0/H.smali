.class public final LW0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:LW0/u;

.field public g:LW0/L;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LW0/H;->a:I

    .line 5
    .line 6
    iput p2, p0, LW0/H;->b:I

    .line 7
    .line 8
    iput-object p3, p0, LW0/H;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 3

    .line 1
    iput-object p1, p0, LW0/H;->f:LW0/u;

    .line 2
    .line 3
    const/16 v0, 0x400

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p1, v0, v1}, LW0/u;->t(II)LW0/L;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, LW0/H;->g:LW0/L;

    .line 11
    .line 12
    new-instance v0, Lm0/s;

    .line 13
    .line 14
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, LW0/H;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lm0/s;->m:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Lm0/t;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lm0/t;-><init>(Lm0/s;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, LW0/L;->b(Lm0/t;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, LW0/H;->f:LW0/u;

    .line 40
    .line 41
    invoke-interface {p1}, LW0/u;->j()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, LW0/H;->f:LW0/u;

    .line 45
    .line 46
    new-instance v0, LW0/I;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, LW0/u;->r(LW0/F;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput p1, p0, LW0/H;->e:I

    .line 56
    .line 57
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, LW0/H;->b:I

    .line 4
    .line 5
    iget v3, p0, LW0/H;->a:I

    .line 6
    .line 7
    const/4 v4, -0x1

    .line 8
    if-eq v3, v4, :cond_0

    .line 9
    .line 10
    if-eq v2, v4, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lp0/E;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Lp0/E;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v5, v4, Lp0/E;->a:[B

    .line 24
    .line 25
    invoke-interface {p1, v1, v5, v2}, LW0/t;->c(I[BI)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lp0/E;->F()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_1
    return v0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 9

    .line 1
    iget p2, p0, LW0/H;->e:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p2, v2, :cond_1

    .line 7
    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    iget-object p2, p0, LW0/H;->g:LW0/L;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x400

    .line 23
    .line 24
    invoke-interface {p2, p1, v3, v2}, LW0/L;->f(Lm0/j;IZ)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    iput v1, p0, LW0/H;->e:I

    .line 32
    .line 33
    iget-object v2, p0, LW0/H;->g:LW0/L;

    .line 34
    .line 35
    iget v6, p0, LW0/H;->d:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-interface/range {v2 .. v8}, LW0/L;->d(JIIILW0/K;)V

    .line 43
    .line 44
    .line 45
    iput p2, p0, LW0/H;->d:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, LW0/H;->d:I

    .line 49
    .line 50
    add-int/2addr v0, p1

    .line 51
    iput v0, p0, LW0/H;->d:I

    .line 52
    .line 53
    :goto_0
    return p2
.end method

.method public final i(JJ)V
    .locals 2

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    cmp-long v1, p1, p3

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget p1, p0, LW0/H;->e:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iput v0, p0, LW0/H;->e:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, LW0/H;->d:I

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
