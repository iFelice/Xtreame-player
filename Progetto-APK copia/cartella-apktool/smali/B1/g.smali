.class public final LB1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/F;


# instance fields
.field public final a:LB1/e;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(LB1/e;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB1/g;->a:LB1/e;

    .line 5
    .line 6
    iput p2, p0, LB1/g;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, LB1/g;->c:J

    .line 9
    .line 10
    sub-long/2addr p5, p3

    .line 11
    iget p1, p1, LB1/e;->e:I

    .line 12
    .line 13
    int-to-long p1, p1

    .line 14
    div-long/2addr p5, p1

    .line 15
    iput-wide p5, p0, LB1/g;->d:J

    .line 16
    .line 17
    invoke-virtual {p0, p5, p6}, LB1/g;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, LB1/g;->e:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(J)J
    .locals 9

    .line 1
    iget v0, p0, LB1/g;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long v2, p1, v0

    .line 5
    .line 6
    iget-object p1, p0, LB1/g;->a:LB1/e;

    .line 7
    .line 8
    iget p1, p1, LB1/e;->c:I

    .line 9
    .line 10
    int-to-long v6, p1

    .line 11
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 14
    .line 15
    const-wide/32 v4, 0xf4240

    .line 16
    .line 17
    .line 18
    invoke-static/range {v2 .. v8}, Lp0/M;->Z(JJJLjava/math/RoundingMode;)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final k(J)LW0/E;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, LB1/g;->a:LB1/e;

    .line 3
    .line 4
    iget v2, v1, LB1/e;->c:I

    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    mul-long v2, v2, p1

    .line 8
    .line 9
    iget v4, v0, LB1/g;->b:I

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    const-wide/32 v6, 0xf4240

    .line 13
    .line 14
    .line 15
    mul-long v4, v4, v6

    .line 16
    .line 17
    div-long v6, v2, v4

    .line 18
    .line 19
    iget-wide v2, v0, LB1/g;->d:J

    .line 20
    .line 21
    const-wide/16 v4, 0x1

    .line 22
    .line 23
    sub-long v10, v2, v4

    .line 24
    .line 25
    const-wide/16 v8, 0x0

    .line 26
    .line 27
    invoke-static/range {v6 .. v11}, Lp0/M;->j(JJJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget v8, v1, LB1/e;->e:I

    .line 32
    .line 33
    int-to-long v8, v8

    .line 34
    mul-long v8, v8, v6

    .line 35
    .line 36
    iget-wide v10, v0, LB1/g;->c:J

    .line 37
    .line 38
    add-long/2addr v8, v10

    .line 39
    invoke-virtual {p0, v6, v7}, LB1/g;->b(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v12

    .line 43
    new-instance v14, LW0/G;

    .line 44
    .line 45
    invoke-direct {v14, v12, v13, v8, v9}, LW0/G;-><init>(JJ)V

    .line 46
    .line 47
    .line 48
    cmp-long v8, v12, p1

    .line 49
    .line 50
    if-gez v8, :cond_1

    .line 51
    .line 52
    sub-long/2addr v2, v4

    .line 53
    cmp-long v8, v6, v2

    .line 54
    .line 55
    if-nez v8, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    add-long/2addr v6, v4

    .line 59
    iget v1, v1, LB1/e;->e:I

    .line 60
    .line 61
    int-to-long v1, v1

    .line 62
    mul-long v1, v1, v6

    .line 63
    .line 64
    add-long/2addr v1, v10

    .line 65
    invoke-virtual {p0, v6, v7}, LB1/g;->b(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    new-instance v5, LW0/G;

    .line 70
    .line 71
    invoke-direct {v5, v3, v4, v1, v2}, LW0/G;-><init>(JJ)V

    .line 72
    .line 73
    .line 74
    new-instance v1, LW0/E;

    .line 75
    .line 76
    invoke-direct {v1, v14, v5}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_1
    :goto_0
    new-instance v1, LW0/E;

    .line 81
    .line 82
    invoke-direct {v1, v14, v14}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 83
    .line 84
    .line 85
    return-object v1
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-wide v0, p0, LB1/g;->e:J

    .line 2
    .line 3
    return-wide v0
.end method
