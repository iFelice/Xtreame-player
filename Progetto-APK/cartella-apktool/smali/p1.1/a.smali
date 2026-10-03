.class public final Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/F;


# instance fields
.field public final synthetic a:Lp1/b;


# direct methods
.method public constructor <init>(Lp1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp1/a;->a:Lp1/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final k(J)LW0/E;
    .locals 17

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    iget-object v3, v2, Lp1/a;->a:Lp1/b;

    .line 6
    .line 7
    iget-object v4, v3, Lp1/b;->J:Lp1/j;

    .line 8
    .line 9
    iget v4, v4, Lp1/j;->e:I

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    mul-long v4, v4, v0

    .line 13
    .line 14
    const-wide/32 v6, 0xf4240

    .line 15
    .line 16
    .line 17
    div-long/2addr v4, v6

    .line 18
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-wide v5, v3, Lp1/b;->I:J

    .line 23
    .line 24
    iget-wide v7, v3, Lp1/b;->H:J

    .line 25
    .line 26
    sub-long v9, v5, v7

    .line 27
    .line 28
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-wide v9, v3, Lp1/b;->L:J

    .line 37
    .line 38
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    add-long/2addr v9, v7

    .line 51
    const-wide/16 v7, 0x7530

    .line 52
    .line 53
    sub-long v11, v9, v7

    .line 54
    .line 55
    const-wide/16 v7, 0x1

    .line 56
    .line 57
    sub-long v15, v5, v7

    .line 58
    .line 59
    iget-wide v13, v3, Lp1/b;->H:J

    .line 60
    .line 61
    invoke-static/range {v11 .. v16}, Lp0/M;->j(JJJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    new-instance v5, LW0/E;

    .line 66
    .line 67
    new-instance v6, LW0/G;

    .line 68
    .line 69
    invoke-direct {v6, v0, v1, v3, v4}, LW0/G;-><init>(JJ)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v6, v6}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 73
    .line 74
    .line 75
    return-object v5
.end method

.method public final m()J
    .locals 6

    .line 1
    iget-object v0, p0, Lp1/a;->a:Lp1/b;

    .line 2
    .line 3
    iget-object v1, v0, Lp1/b;->J:Lp1/j;

    .line 4
    .line 5
    iget-wide v2, v0, Lp1/b;->L:J

    .line 6
    .line 7
    const-wide/32 v4, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long v2, v2, v4

    .line 11
    .line 12
    iget v0, v1, Lp1/j;->e:I

    .line 13
    .line 14
    int-to-long v0, v0

    .line 15
    div-long/2addr v2, v0

    .line 16
    return-wide v2
.end method
