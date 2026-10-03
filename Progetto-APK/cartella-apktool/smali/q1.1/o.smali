.class public final Lq1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/L;


# instance fields
.field public final a:LW0/L;

.field public final b:Lq1/k;

.field public final c:LF2/G;

.field public final d:Lp0/E;

.field public e:I

.field public f:I

.field public g:[B

.field public h:Lq1/m;

.field public i:Lm0/t;

.field public j:Z


# direct methods
.method public constructor <init>(LW0/L;Lq1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/o;->a:LW0/L;

    .line 5
    .line 6
    iput-object p2, p0, Lq1/o;->b:Lq1/k;

    .line 7
    .line 8
    new-instance p1, LF2/G;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-direct {p1, p2}, LF2/G;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lq1/o;->c:LF2/G;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lq1/o;->e:I

    .line 18
    .line 19
    iput p1, p0, Lq1/o;->f:I

    .line 20
    .line 21
    sget-object p1, Lp0/M;->b:[B

    .line 22
    .line 23
    iput-object p1, p0, Lq1/o;->g:[B

    .line 24
    .line 25
    new-instance p1, Lp0/E;

    .line 26
    .line 27
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lq1/o;->d:Lp0/E;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(IILp0/E;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq1/o;->h:Lq1/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq1/o;->a:LW0/L;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, LW0/L;->a(IILp0/E;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lq1/o;->g(I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lq1/o;->g:[B

    .line 15
    .line 16
    iget v0, p0, Lq1/o;->f:I

    .line 17
    .line 18
    invoke-virtual {p3, v0, p2, p1}, Lp0/E;->j(I[BI)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lq1/o;->f:I

    .line 22
    .line 23
    add-int/2addr p2, p1

    .line 24
    iput p2, p0, Lq1/o;->f:I

    .line 25
    .line 26
    return-void
.end method

.method public final b(Lm0/t;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lm0/O;->i(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lq1/o;->i:Lm0/t;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lm0/t;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lq1/o;->b:Lq1/k;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Lq1/o;->i:Lm0/t;

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    check-cast v1, LF2/G;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, LF2/G;->K(Lm0/t;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    check-cast v1, LF2/G;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, LF2/G;->x(Lm0/t;)Lq1/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_1
    iput-object v1, p0, Lq1/o;->h:Lq1/m;

    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lq1/o;->h:Lq1/m;

    .line 54
    .line 55
    iget-object v3, p0, Lq1/o;->a:LW0/L;

    .line 56
    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v3, p1}, LW0/L;->b(Lm0/t;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v4, "application/x-media3-cues"

    .line 68
    .line 69
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iput-object v4, v1, Lm0/s;->n:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v0, v1, Lm0/s;->j:Ljava/lang/String;

    .line 76
    .line 77
    const-wide v4, 0x7fffffffffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    iput-wide v4, v1, Lm0/s;->s:J

    .line 83
    .line 84
    check-cast v2, LF2/G;

    .line 85
    .line 86
    invoke-virtual {v2, p1}, LF2/G;->D(Lm0/t;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, v1, Lm0/s;->L:I

    .line 91
    .line 92
    invoke-virtual {v1}, Lm0/s;->a()Lm0/t;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {v3, p1}, LW0/L;->b(Lm0/t;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void
.end method

.method public final c(Lm0/j;IZ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/o;->h:Lq1/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq1/o;->a:LW0/L;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, LW0/L;->c(Lm0/j;IZ)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lq1/o;->g(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lq1/o;->g:[B

    .line 16
    .line 17
    iget v1, p0, Lq1/o;->f:I

    .line 18
    .line 19
    invoke-interface {p1, v0, v1, p2}, Lm0/j;->q([BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, -0x1

    .line 24
    if-ne p1, p2, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    iget p2, p0, Lq1/o;->f:I

    .line 36
    .line 37
    add-int/2addr p2, p1

    .line 38
    iput p2, p0, Lq1/o;->f:I

    .line 39
    .line 40
    return p1
.end method

.method public final d(JIIILW0/K;)V
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    iget-object v0, v7, Lq1/o;->h:Lq1/m;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v8, v7, Lq1/o;->a:LW0/L;

    .line 7
    .line 8
    move-wide/from16 v9, p1

    .line 9
    .line 10
    move/from16 v11, p3

    .line 11
    .line 12
    move/from16 v12, p4

    .line 13
    .line 14
    move/from16 v13, p5

    .line 15
    .line 16
    move-object/from16 v14, p6

    .line 17
    .line 18
    invoke-interface/range {v8 .. v14}, LW0/L;->d(JIIILW0/K;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v8, 0x0

    .line 23
    if-nez p6, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    iget v0, v7, Lq1/o;->f:I

    .line 34
    .line 35
    sub-int v0, v0, p5

    .line 36
    .line 37
    sub-int v9, v0, p4

    .line 38
    .line 39
    :try_start_0
    iget-object v0, v7, Lq1/o;->h:Lq1/m;

    .line 40
    .line 41
    iget-object v10, v7, Lq1/o;->g:[B

    .line 42
    .line 43
    sget-object v11, Lq1/l;->c:Lq1/l;

    .line 44
    .line 45
    new-instance v12, LC0/e;

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    move-object v1, v12

    .line 49
    move/from16 v2, p3

    .line 50
    .line 51
    move-wide/from16 v4, p1

    .line 52
    .line 53
    move-object v6, p0

    .line 54
    invoke-direct/range {v1 .. v6}, LC0/e;-><init>(IIJLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v0

    .line 58
    move-object v2, v10

    .line 59
    move v3, v9

    .line 60
    move/from16 v4, p4

    .line 61
    .line 62
    move-object v5, v11

    .line 63
    move-object v6, v12

    .line 64
    invoke-interface/range {v1 .. v6}, Lq1/m;->b([BIILq1/l;Lp0/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-boolean v1, v7, Lq1/o;->j:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    const-string v1, "SubtitleTranscodingTO"

    .line 74
    .line 75
    const-string v2, "Parsing subtitles failed, ignoring sample."

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    add-int v9, v9, p4

    .line 81
    .line 82
    iput v9, v7, Lq1/o;->e:I

    .line 83
    .line 84
    iget v0, v7, Lq1/o;->f:I

    .line 85
    .line 86
    if-ne v9, v0, :cond_2

    .line 87
    .line 88
    iput v8, v7, Lq1/o;->e:I

    .line 89
    .line 90
    iput v8, v7, Lq1/o;->f:I

    .line 91
    .line 92
    :cond_2
    return-void

    .line 93
    :cond_3
    throw v0
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
    invoke-virtual {p0, p1, p2, p3}, Lq1/o;->c(Lm0/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq1/o;->g:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lq1/o;->f:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-lt v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lq1/o;->e:I

    .line 11
    .line 12
    sub-int/2addr v1, v0

    .line 13
    mul-int/lit8 v0, v1, 0x2

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lq1/o;->g:[B

    .line 21
    .line 22
    array-length v2, v0

    .line 23
    if-gt p1, v2, :cond_1

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    iget v2, p0, Lq1/o;->e:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v3, p0, Lq1/o;->e:I

    .line 36
    .line 37
    iput v1, p0, Lq1/o;->f:I

    .line 38
    .line 39
    iput-object p1, p0, Lq1/o;->g:[B

    .line 40
    .line 41
    return-void
.end method
