.class public final Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/f;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:LW0/D;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide v5, p1

    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v7, LW0/D;

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    new-array v9, v8, [J

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    aput-wide v1, v9, v10

    .line 17
    .line 18
    const-wide/16 v11, 0x0

    .line 19
    .line 20
    new-array v8, v8, [J

    .line 21
    .line 22
    aput-wide v11, v8, v10

    .line 23
    .line 24
    invoke-direct {v7, p1, p2, v9, v8}, LW0/D;-><init>(J[J[J)V

    .line 25
    .line 26
    .line 27
    iput-object v7, v0, Ln1/b;->d:LW0/D;

    .line 28
    .line 29
    iput-wide v1, v0, Ln1/b;->a:J

    .line 30
    .line 31
    iput-wide v3, v0, Ln1/b;->b:J

    .line 32
    .line 33
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const v9, -0x7fffffff

    .line 39
    .line 40
    .line 41
    cmp-long v10, v5, v7

    .line 42
    .line 43
    if-eqz v10, :cond_1

    .line 44
    .line 45
    sub-long/2addr v1, v3

    .line 46
    const-wide/16 v3, 0x8

    .line 47
    .line 48
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 49
    .line 50
    move-wide v5, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    cmp-long v3, v1, v11

    .line 56
    .line 57
    if-lez v3, :cond_0

    .line 58
    .line 59
    const-wide/32 v3, 0x7fffffff

    .line 60
    .line 61
    .line 62
    cmp-long v5, v1, v3

    .line 63
    .line 64
    if-gtz v5, :cond_0

    .line 65
    .line 66
    long-to-int v9, v1

    .line 67
    :cond_0
    iput v9, v0, Ln1/b;->c:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iput v9, v0, Ln1/b;->c:I

    .line 71
    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/b;->d:LW0/D;

    .line 2
    .line 3
    iget-object v1, v0, LW0/D;->b:Lp0/y;

    .line 4
    .line 5
    iget v2, v1, Lp0/y;->a:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, LW0/D;->a:Lp0/y;

    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Lp0/M;->b(Lp0/y;J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v1, p1}, Lp0/y;->c(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln1/b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln1/b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/b;->d:LW0/D;

    .line 2
    .line 3
    invoke-virtual {v0}, LW0/D;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final k(J)LW0/E;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/b;->d:LW0/D;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LW0/D;->k(J)LW0/E;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Ln1/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/b;->d:LW0/D;

    .line 2
    .line 3
    iget-wide v0, v0, LW0/D;->c:J

    .line 4
    .line 5
    return-wide v0
.end method
