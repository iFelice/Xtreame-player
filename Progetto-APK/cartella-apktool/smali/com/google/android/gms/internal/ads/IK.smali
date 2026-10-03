.class public final Lcom/google/android/gms/internal/ads/IK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/je;

.field public final b:Lcom/google/android/gms/internal/ads/we;

.field public final c:Lcom/google/android/gms/internal/ads/cL;

.field public final d:Lcom/google/android/gms/internal/ads/un;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lcom/google/android/gms/internal/ads/GK;

.field public i:Lcom/google/android/gms/internal/ads/GK;

.field public j:Lcom/google/android/gms/internal/ads/GK;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J

.field public n:Ljava/util/ArrayList;

.field public final o:Lcom/google/android/gms/internal/ads/Xu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cL;Lcom/google/android/gms/internal/ads/ts;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/nK;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->c:Lcom/google/android/gms/internal/ads/cL;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/IK;->d:Lcom/google/android/gms/internal/ads/un;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/IK;->o:Lcom/google/android/gms/internal/ads/Xu;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/je;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/we;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/we;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 2
    .line 3
    .line 4
    iget p2, p7, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, p2, p6, v0, v1}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    iget-object p2, p7, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 20
    .line 21
    .line 22
    iget-object p0, p7, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 23
    .line 24
    const/4 p2, -0x1

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 26
    .line 27
    .line 28
    sget p0, Lcom/google/android/gms/internal/ads/a;->f:I

    .line 29
    .line 30
    new-instance p0, Lcom/google/android/gms/internal/ads/wN;

    .line 31
    .line 32
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;IJ)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/HK;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v6, Lcom/google/android/gms/internal/ads/wN;

    .line 21
    .line 22
    const/4 v4, -0x1

    .line 23
    move-wide/from16 v7, p7

    .line 24
    .line 25
    invoke-direct {v6, v2, v4, v7, v8}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;IJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    xor-int/lit8 v15, v2, 0x1

    .line 33
    .line 34
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/IK;->e(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Z

    .line 35
    .line 36
    .line 37
    move-result v16

    .line 38
    invoke-virtual {v0, v1, v6, v15}, Lcom/google/android/gms/internal/ads/IK;->d(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v17

    .line 42
    iget-wide v13, v3, Lcom/google/android/gms/internal/ads/je;->d:J

    .line 43
    .line 44
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v3, v13, v1

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    cmp-long v1, p3, v13

    .line 54
    .line 55
    if-ltz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v1, -0x1

    .line 58
    .line 59
    add-long/2addr v1, v13

    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    move-wide v7, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    move-wide/from16 v7, p3

    .line 69
    .line 70
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/HK;

    .line 71
    .line 72
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    move-object v5, v1

    .line 78
    move-wide/from16 v9, p5

    .line 79
    .line 80
    invoke-direct/range {v5 .. v17}, Lcom/google/android/gms/internal/ads/HK;-><init>(Lcom/google/android/gms/internal/ads/wN;JJJJZZZ)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public final c()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/rA;

    .line 2
    .line 3
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_1
    move-object v3, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :goto_2
    new-instance v6, LK/a;

    .line 33
    .line 34
    const/16 v4, 0x1a

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, v6

    .line 38
    move-object v1, p0

    .line 39
    invoke-direct/range {v0 .. v5}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->d:Lcom/google/android/gms/internal/ads/un;

    .line 43
    .line 44
    check-cast v0, Lcom/google/android/gms/internal/ads/ts;

    .line 45
    .line 46
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/ts;->b(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p2, p2, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/we;->g:Z

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget v4, p0, Lcom/google/android/gms/internal/ads/IK;->f:I

    .line 29
    .line 30
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/IK;->g:Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ie;->i(ILcom/google/android/gms/internal/ads/je;Lcom/google/android/gms/internal/ads/we;IZ)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 p2, -0x1

    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_0
    return v6
.end method

.method public final e(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p2, Lcom/google/android/gms/internal/ads/wN;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Lcom/google/android/gms/internal/ads/we;->l:I

    .line 43
    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    return v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/Ie;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    move v3, v2

    .line 14
    :goto_0
    iget v6, p0, Lcom/google/android/gms/internal/ads/IK;->f:I

    .line 15
    .line 16
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/IK;->g:Z

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Ie;->i(ILcom/google/android/gms/internal/ads/je;Lcom/google/android/gms/internal/ads/we;IZ)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 35
    .line 36
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/HK;->f:Z

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    move-object v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v4, -0x1

    .line 43
    if-eq v3, v4, :cond_4

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eq v4, v3, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object v0, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/IK;->r(Lcom/google/android/gms/internal/ads/GK;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/IK;->m(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/HK;)Lcom/google/android/gms/internal/ads/HK;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 70
    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    return v1

    .line 74
    :cond_5
    const/4 p1, 0x0

    .line 75
    return p1
.end method

.method public final g()Lcom/google/android/gms/internal/ads/GK;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 12
    .line 13
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GK;->g()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->l:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 37
    .line 38
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/IK;->m:J

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->c()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 52
    .line 53
    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/GK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->c()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 14
    .line 15
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final i(Lcom/google/android/gms/internal/ads/HK;)Lcom/google/android/gms/internal/ads/GK;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide v3, 0xe8d4a51000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    :goto_0
    move-wide v7, v3

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 17
    .line 18
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 19
    .line 20
    add-long/2addr v3, v5

    .line 21
    sub-long/2addr v3, v1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/4 v0, 0x0

    .line 24
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-ge v0, v3, :cond_3

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/google/android/gms/internal/ads/GK;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 42
    .line 43
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 44
    .line 45
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    cmp-long v11, v5, v9

    .line 51
    .line 52
    if-eqz v11, :cond_1

    .line 53
    .line 54
    iget-wide v9, p1, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 55
    .line 56
    cmp-long v11, v5, v9

    .line 57
    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 61
    .line 62
    cmp-long v9, v5, v1

    .line 63
    .line 64
    if-nez v9, :cond_2

    .line 65
    .line 66
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 67
    .line 68
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/wN;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/google/android/gms/internal/ads/GK;

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    move-object v0, v4

    .line 89
    :goto_3
    if-nez v0, :cond_4

    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->o:Lcom/google/android/gms/internal/ads/Xu;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lcom/google/android/gms/internal/ads/BK;

    .line 96
    .line 97
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/BK;->L:Lcom/google/android/gms/internal/ads/DK;

    .line 98
    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/GK;

    .line 100
    .line 101
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/DK;->zzj()Lcom/google/android/gms/internal/ads/CO;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/BK;->I:[Lcom/google/android/gms/internal/ads/aK;

    .line 106
    .line 107
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/BK;->X:Lcom/google/android/gms/internal/ads/QK;

    .line 108
    .line 109
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/BK;->J:Lcom/google/android/gms/internal/ads/wO;

    .line 110
    .line 111
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/BK;->K:Lcom/google/android/gms/internal/ads/yO;

    .line 112
    .line 113
    move-object v5, v2

    .line 114
    move-object v12, p1

    .line 115
    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/GK;-><init>([Lcom/google/android/gms/internal/ads/aK;JLcom/google/android/gms/internal/ads/wO;Lcom/google/android/gms/internal/ads/CO;Lcom/google/android/gms/internal/ads/QK;Lcom/google/android/gms/internal/ads/HK;Lcom/google/android/gms/internal/ads/yO;)V

    .line 116
    .line 117
    .line 118
    move-object v0, v2

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 121
    .line 122
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 123
    .line 124
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 129
    .line 130
    if-ne v0, v1, :cond_5

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/GK;->i()V

    .line 134
    .line 135
    .line 136
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 142
    .line 143
    :goto_5
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/IK;->l:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 146
    .line 147
    iget p1, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 148
    .line 149
    add-int/lit8 p1, p1, 0x1

    .line 150
    .line 151
    iput p1, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->c()V

    .line 154
    .line 155
    .line 156
    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/GK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/GK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    return-object v0
.end method

.method public final l(JLcom/google/android/gms/internal/ads/RK;)Lcom/google/android/gms/internal/ads/HK;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 6
    .line 7
    iget-object v3, p3, Lcom/google/android/gms/internal/ads/RK;->b:Lcom/google/android/gms/internal/ads/wN;

    .line 8
    .line 9
    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/RK;->c:J

    .line 10
    .line 11
    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/RK;->r:J

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/IK;->y(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJ)Lcom/google/android/gms/internal/ads/HK;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/RK;->a:Lcom/google/android/gms/internal/ads/Ie;

    .line 20
    .line 21
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/IK;->x(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/GK;J)Lcom/google/android/gms/internal/ads/HK;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/HK;)Lcom/google/android/gms/internal/ads/HK;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, -0x1

    .line 14
    iget v6, v3, Lcom/google/android/gms/internal/ads/wN;->e:I

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    if-ne v6, v5, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v11, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v4, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/IK;->e(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;)Z

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v0, v1, v3, v11}, Lcom/google/android/gms/internal/ads/IK;->d(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 38
    .line 39
    invoke-virtual {v1, v4, v7}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-wide/16 v8, 0x0

    .line 47
    .line 48
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-ne v6, v5, :cond_2

    .line 56
    .line 57
    :cond_1
    move-wide/from16 v16, v14

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 61
    .line 62
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-wide/from16 v16, v8

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v4, v3, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    iget v1, v3, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 80
    .line 81
    invoke-virtual {v7, v4, v1}, Lcom/google/android/gms/internal/ads/je;->a(II)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    :goto_2
    move-wide v9, v8

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    cmp-long v1, v16, v14

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    move-wide/from16 v16, v8

    .line 92
    .line 93
    move-wide/from16 v9, v16

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/je;->d:J

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/je;->c(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    if-eq v6, v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/je;->c(I)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_4
    new-instance v14, Lcom/google/android/gms/internal/ads/HK;

    .line 115
    .line 116
    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 117
    .line 118
    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 119
    .line 120
    move-object v1, v14

    .line 121
    move-object v2, v3

    .line 122
    move-wide v3, v7

    .line 123
    move-wide/from16 v7, v16

    .line 124
    .line 125
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/HK;-><init>(Lcom/google/android/gms/internal/ads/wN;JJJJZZZ)V

    .line 126
    .line 127
    .line 128
    return-object v14
.end method

.method public final n(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/wN;
    .locals 10

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    iget v3, v3, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/IK;->l:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, -0x1

    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eq v4, v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v4, v2, v5}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v4, v4, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 26
    .line 27
    if-ne v4, v3, :cond_1

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/IK;->m:J

    .line 30
    .line 31
    :cond_0
    :goto_0
    move-wide v4, v3

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 34
    .line 35
    :goto_1
    if-eqz v4, :cond_3

    .line 36
    .line 37
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 48
    .line 49
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 56
    .line 57
    :goto_2
    if-eqz v4, :cond_5

    .line 58
    .line 59
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eq v7, v6, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1, v7, v2, v5}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iget v7, v7, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 72
    .line 73
    if-ne v7, v3, :cond_4

    .line 74
    .line 75
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 76
    .line 77
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 78
    .line 79
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/IK;->w(Ljava/lang/Object;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    const-wide/16 v7, -0x1

    .line 90
    .line 91
    cmp-long v5, v3, v7

    .line 92
    .line 93
    if-eqz v5, :cond_6

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/IK;->e:J

    .line 97
    .line 98
    const-wide/16 v7, 0x1

    .line 99
    .line 100
    add-long/2addr v7, v3

    .line 101
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/IK;->e:J

    .line 102
    .line 103
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 104
    .line 105
    if-nez v5, :cond_0

    .line 106
    .line 107
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/IK;->l:Ljava/lang/Object;

    .line 108
    .line 109
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/IK;->m:J

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_3
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 113
    .line 114
    .line 115
    iget v3, v2, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 116
    .line 117
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 118
    .line 119
    const-wide/16 v8, 0x0

    .line 120
    .line 121
    invoke-virtual {p1, v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    :goto_4
    iget v8, v7, Lcom/google/android/gms/internal/ads/we;->k:I

    .line 129
    .line 130
    if-lt v3, v8, :cond_7

    .line 131
    .line 132
    const/4 v8, 0x1

    .line 133
    invoke-virtual {p1, v3, v2, v8}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 134
    .line 135
    .line 136
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 142
    .line 143
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 144
    .line 145
    .line 146
    sget v8, Lcom/google/android/gms/internal/ads/a;->f:I

    .line 147
    .line 148
    add-int/lit8 v3, v3, -0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 152
    .line 153
    move-object v0, p1

    .line 154
    move-object v1, p2

    .line 155
    move-wide v2, p3

    .line 156
    move-object v6, v7

    .line 157
    move-object v7, v8

    .line 158
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/IK;->b(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 7
    .line 8
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->l:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 18
    .line 19
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/IK;->m:J

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GK;->g()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->c()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/GK;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/GK;->g()V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/nK;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->p()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/GK;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 22
    .line 23
    if-ne p1, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/GK;->g()V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    iput v2, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/GK;->i()V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    iput-object v2, p1, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 55
    .line 56
    :goto_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 57
    .line 58
    iget v3, v2, Lcom/google/android/gms/internal/ads/yO;->a:I

    .line 59
    .line 60
    if-ge v1, v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/yO;->b(I)Z

    .line 63
    .line 64
    .line 65
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 68
    .line 69
    aget-object v2, v2, v1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/IK;->c()V

    .line 75
    .line 76
    .line 77
    return v0
.end method

.method public final s()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 7
    .line 8
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/HK;->h:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GK;->h()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/IK;->j:Lcom/google/android/gms/internal/ads/GK;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 22
    .line 23
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 24
    .line 25
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmp-long v0, v4, v6

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/IK;->k:I

    .line 35
    .line 36
    const/16 v2, 0x64

    .line 37
    .line 38
    if-ge v0, v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return v3

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method public final t(Lcom/google/android/gms/internal/ads/Ie;JJ)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/IK;->h:Lcom/google/android/gms/internal/ads/GK;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_e

    .line 10
    .line 11
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/IK;->m(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/HK;)Lcom/google/android/gms/internal/ads/HK;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    move-wide/from16 v7, p2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-wide/from16 v7, p2

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/IK;->x(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/GK;J)Lcom/google/android/gms/internal/ads/HK;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    if-nez v9, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/IK;->r(Lcom/google/android/gms/internal/ads/GK;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    return v4

    .line 38
    :cond_1
    return v6

    .line 39
    :cond_2
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 40
    .line 41
    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 42
    .line 43
    cmp-long v14, v10, v12

    .line 44
    .line 45
    if-nez v14, :cond_c

    .line 46
    .line 47
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 48
    .line 49
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 50
    .line 51
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/wN;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_c

    .line 56
    .line 57
    move-object v3, v9

    .line 58
    :goto_1
    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 59
    .line 60
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 61
    .line 62
    cmp-long v11, v13, v9

    .line 63
    .line 64
    if-nez v11, :cond_3

    .line 65
    .line 66
    move-object v1, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    new-instance v22, Lcom/google/android/gms/internal/ads/HK;

    .line 69
    .line 70
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 71
    .line 72
    iget-boolean v15, v3, Lcom/google/android/gms/internal/ads/HK;->f:Z

    .line 73
    .line 74
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 75
    .line 76
    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 77
    .line 78
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/HK;->d:J

    .line 79
    .line 80
    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/HK;->g:Z

    .line 81
    .line 82
    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/HK;->h:Z

    .line 83
    .line 84
    move-wide/from16 v16, v8

    .line 85
    .line 86
    move-object/from16 v9, v22

    .line 87
    .line 88
    move-wide/from16 v18, v11

    .line 89
    .line 90
    move-wide v11, v6

    .line 91
    move v6, v15

    .line 92
    move-wide/from16 v15, v16

    .line 93
    .line 94
    move-wide/from16 v17, v18

    .line 95
    .line 96
    move/from16 v19, v6

    .line 97
    .line 98
    move/from16 v20, v4

    .line 99
    .line 100
    move/from16 v21, v1

    .line 101
    .line 102
    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/HK;-><init>(Lcom/google/android/gms/internal/ads/wN;JJJJZZZ)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v1, v22

    .line 106
    .line 107
    :goto_2
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 108
    .line 109
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 115
    .line 116
    cmp-long v8, v4, v6

    .line 117
    .line 118
    if-eqz v8, :cond_b

    .line 119
    .line 120
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 121
    .line 122
    cmp-long v3, v4, v8

    .line 123
    .line 124
    if-nez v3, :cond_4

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_4
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 128
    .line 129
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/hN;

    .line 130
    .line 131
    const-wide/high16 v10, -0x8000000000000000L

    .line 132
    .line 133
    if-eqz v4, :cond_6

    .line 134
    .line 135
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/HK;->d:J

    .line 136
    .line 137
    cmp-long v1, v4, v6

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    move-wide v4, v10

    .line 142
    :cond_5
    check-cast v3, Lcom/google/android/gms/internal/ads/hN;

    .line 143
    .line 144
    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/hN;->K:J

    .line 145
    .line 146
    :cond_6
    cmp-long v1, v8, v6

    .line 147
    .line 148
    if-nez v1, :cond_7

    .line 149
    .line 150
    const-wide v3, 0x7fffffffffffffffL

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 157
    .line 158
    add-long/2addr v3, v8

    .line 159
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/IK;->i:Lcom/google/android/gms/internal/ads/GK;

    .line 160
    .line 161
    if-ne v2, v1, :cond_9

    .line 162
    .line 163
    cmp-long v1, p4, v10

    .line 164
    .line 165
    if-eqz v1, :cond_8

    .line 166
    .line 167
    cmp-long v1, p4, v3

    .line 168
    .line 169
    if-ltz v1, :cond_9

    .line 170
    .line 171
    :cond_8
    const/4 v1, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    const/4 v1, 0x0

    .line 174
    :goto_4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/IK;->r(Lcom/google/android/gms/internal/ads/GK;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_a

    .line 179
    .line 180
    if-nez v1, :cond_a

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    return v1

    .line 184
    :cond_a
    const/4 v1, 0x0

    .line 185
    return v1

    .line 186
    :cond_b
    :goto_5
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 187
    .line 188
    move-object v3, v2

    .line 189
    move-object v2, v1

    .line 190
    move-object/from16 v1, p1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_c
    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/IK;->r(Lcom/google/android/gms/internal/ads/GK;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_d

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    return v2

    .line 203
    :cond_d
    return v1

    .line 204
    :cond_e
    const/4 v2, 0x1

    .line 205
    return v2
.end method

.method public final u(Lcom/google/android/gms/internal/ads/Ie;I)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/IK;->f:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/IK;->f(Lcom/google/android/gms/internal/ads/Ie;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final v(Lcom/google/android/gms/internal/ads/Ie;Z)Z
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/IK;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/IK;->f(Lcom/google/android/gms/internal/ads/Ie;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final w(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/IK;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/GK;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 29
    .line 30
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, -0x1

    .line 37
    .line 38
    return-wide v0
.end method

.method public final x(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/GK;J)Lcom/google/android/gms/internal/ads/HK;
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 8
    .line 9
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 10
    .line 11
    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    sub-long v6, v0, p3

    .line 15
    .line 16
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/HK;->f:Z

    .line 17
    .line 18
    const/4 v12, -0x1

    .line 19
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 20
    .line 21
    const/4 v14, 0x1

    .line 22
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 28
    .line 29
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 30
    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    iget v0, v9, Lcom/google/android/gms/internal/ads/IK;->f:I

    .line 40
    .line 41
    iget-boolean v5, v9, Lcom/google/android/gms/internal/ads/IK;->g:Z

    .line 42
    .line 43
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 44
    .line 45
    iget-object v15, v9, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 46
    .line 47
    move/from16 v18, v0

    .line 48
    .line 49
    move-object/from16 v0, p1

    .line 50
    .line 51
    move-object/from16 v19, v1

    .line 52
    .line 53
    move v1, v11

    .line 54
    move-wide/from16 v20, v2

    .line 55
    .line 56
    move-object v2, v15

    .line 57
    move-object v3, v4

    .line 58
    move/from16 v4, v18

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ie;->i(ILcom/google/android/gms/internal/ads/je;Lcom/google/android/gms/internal/ads/we;IZ)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ne v0, v12, :cond_0

    .line 65
    .line 66
    :goto_0
    const/4 v15, 0x0

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_0
    invoke-virtual {v8, v0, v13, v14}, Lcom/google/android/gms/internal/ads/Ie;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, v1, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 74
    .line 75
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/je;->b:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    invoke-virtual {v8, v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget v2, v2, Lcom/google/android/gms/internal/ads/we;->k:I

    .line 89
    .line 90
    if-ne v2, v0, :cond_4

    .line 91
    .line 92
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 97
    .line 98
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 99
    .line 100
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    move-object/from16 v0, p1

    .line 106
    .line 107
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/Ie;->m(Lcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;IJJ)Landroid/util/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 115
    .line 116
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Ljava/lang/Long;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 139
    .line 140
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 141
    .line 142
    :cond_2
    :goto_1
    move-wide v14, v2

    .line 143
    move-wide/from16 v11, v16

    .line 144
    .line 145
    move-object/from16 v10, v19

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/IK;->w(Ljava/lang/Object;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    const-wide/16 v6, -0x1

    .line 153
    .line 154
    cmp-long v0, v4, v6

    .line 155
    .line 156
    if-nez v0, :cond_2

    .line 157
    .line 158
    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/IK;->e:J

    .line 159
    .line 160
    const-wide/16 v6, 0x1

    .line 161
    .line 162
    add-long/2addr v6, v4

    .line 163
    iput-wide v6, v9, Lcom/google/android/gms/internal/ads/IK;->e:J

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    move-object/from16 v10, v19

    .line 167
    .line 168
    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 169
    .line 170
    move-wide v11, v4

    .line 171
    move-wide v14, v11

    .line 172
    move-wide v4, v2

    .line 173
    :goto_2
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 174
    .line 175
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 176
    .line 177
    move-object/from16 v0, p1

    .line 178
    .line 179
    move-wide v2, v14

    .line 180
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/IK;->b(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/wN;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    cmp-long v0, v11, v16

    .line 185
    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    cmp-long v0, v20, v16

    .line 189
    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 193
    .line 194
    invoke-virtual {v8, v0, v13}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    :cond_5
    move-object/from16 v0, p0

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    move-wide v3, v11

    .line 213
    move-wide v5, v14

    .line 214
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/IK;->y(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJ)Lcom/google/android/gms/internal/ads/HK;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_6
    move-object v10, v1

    .line 221
    move-wide/from16 v20, v2

    .line 222
    .line 223
    const-wide/16 v4, 0x0

    .line 224
    .line 225
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {v8, v0, v13}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 235
    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 239
    .line 240
    iget v3, v10, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 241
    .line 242
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget v0, v0, Lcom/google/android/gms/internal/ads/a;->a:I

    .line 247
    .line 248
    if-ne v0, v12, :cond_7

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_7
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 253
    .line 254
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget v1, v10, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 259
    .line 260
    add-int/2addr v1, v14

    .line 261
    move v12, v1

    .line 262
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/a;->d:[I

    .line 263
    .line 264
    array-length v2, v1

    .line 265
    if-ge v12, v2, :cond_9

    .line 266
    .line 267
    aget v1, v1, v12

    .line 268
    .line 269
    if-eqz v1, :cond_9

    .line 270
    .line 271
    if-ne v1, v14, :cond_8

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_9
    :goto_4
    if-gez v12, :cond_a

    .line 278
    .line 279
    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 280
    .line 281
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 282
    .line 283
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 284
    .line 285
    move-object/from16 v0, p0

    .line 286
    .line 287
    move-object/from16 v1, p1

    .line 288
    .line 289
    move v4, v12

    .line 290
    move-wide v7, v13

    .line 291
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/IK;->z(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    goto/16 :goto_8

    .line 296
    .line 297
    :cond_a
    cmp-long v0, v20, v16

    .line 298
    .line 299
    if-nez v0, :cond_c

    .line 300
    .line 301
    iget v3, v13, Lcom/google/android/gms/internal/ads/je;->c:I

    .line 302
    .line 303
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 304
    .line 305
    .line 306
    move-result-wide v6

    .line 307
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/IK;->b:Lcom/google/android/gms/internal/ads/we;

    .line 308
    .line 309
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    move-object/from16 v0, p1

    .line 315
    .line 316
    move-object v2, v13

    .line 317
    move-object/from16 v18, v11

    .line 318
    .line 319
    move-wide v11, v4

    .line 320
    move-wide/from16 v4, v16

    .line 321
    .line 322
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/Ie;->m(Lcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;IJJ)Landroid/util/Pair;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-nez v0, :cond_b

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_b
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Ljava/lang/Long;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 335
    .line 336
    .line 337
    move-result-wide v2

    .line 338
    goto :goto_5

    .line 339
    :cond_c
    move-object/from16 v18, v11

    .line 340
    .line 341
    move-wide v11, v4

    .line 342
    move-wide/from16 v2, v20

    .line 343
    .line 344
    :goto_5
    invoke-virtual {v8, v15, v13}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 345
    .line 346
    .line 347
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 348
    .line 349
    iget v1, v10, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    iget-wide v11, v10, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 372
    .line 373
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 374
    .line 375
    move-object/from16 v0, v18

    .line 376
    .line 377
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 378
    .line 379
    move-object/from16 v0, p0

    .line 380
    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    move-wide v7, v11

    .line 384
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/IK;->a(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 385
    .line 386
    .line 387
    move-result-object v15

    .line 388
    goto/16 :goto_8

    .line 389
    .line 390
    :cond_d
    move-object v0, v11

    .line 391
    iget v1, v10, Lcom/google/android/gms/internal/ads/wN;->e:I

    .line 392
    .line 393
    if-eq v1, v12, :cond_e

    .line 394
    .line 395
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    if-ne v1, v12, :cond_e

    .line 401
    .line 402
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 403
    .line 404
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 405
    .line 406
    .line 407
    sget v2, Lcom/google/android/gms/internal/ads/a;->f:I

    .line 408
    .line 409
    :cond_e
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    const/4 v3, 0x0

    .line 416
    const/4 v4, 0x0

    .line 417
    :goto_6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/a;->d:[I

    .line 418
    .line 419
    array-length v5, v3

    .line 420
    if-ge v4, v5, :cond_10

    .line 421
    .line 422
    aget v3, v3, v4

    .line 423
    .line 424
    if-eqz v3, :cond_10

    .line 425
    .line 426
    if-ne v3, v14, :cond_f

    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 430
    .line 431
    goto :goto_6

    .line 432
    :cond_10
    :goto_7
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/je;->c(I)V

    .line 433
    .line 434
    .line 435
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 436
    .line 437
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    iget v2, v2, Lcom/google/android/gms/internal/ads/a;->a:I

    .line 442
    .line 443
    if-eq v4, v2, :cond_11

    .line 444
    .line 445
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 446
    .line 447
    iget v3, v10, Lcom/google/android/gms/internal/ads/wN;->e:I

    .line 448
    .line 449
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 450
    .line 451
    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 452
    .line 453
    move-object/from16 v0, p0

    .line 454
    .line 455
    move-object/from16 v1, p1

    .line 456
    .line 457
    move-wide v7, v10

    .line 458
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/IK;->z(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 459
    .line 460
    .line 461
    move-result-object v15

    .line 462
    goto :goto_8

    .line 463
    :cond_11
    invoke-virtual {v8, v15, v13}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 464
    .line 465
    .line 466
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 467
    .line 468
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 476
    .line 477
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 485
    .line 486
    const-wide/16 v3, 0x0

    .line 487
    .line 488
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 489
    .line 490
    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 491
    .line 492
    move-object/from16 v0, p0

    .line 493
    .line 494
    move-object/from16 v1, p1

    .line 495
    .line 496
    move-wide v7, v10

    .line 497
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/IK;->a(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 498
    .line 499
    .line 500
    move-result-object v15

    .line 501
    :goto_8
    return-object v15
.end method

.method public final y(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/wN;JJ)Lcom/google/android/gms/internal/ads/HK;
    .locals 12

    .line 1
    move-object v0, p2

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 3
    .line 4
    move-object v11, p0

    .line 5
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/wN;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v6, v0, Lcom/google/android/gms/internal/ads/wN;->c:I

    .line 18
    .line 19
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 20
    .line 21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iget v5, v0, Lcom/google/android/gms/internal/ads/wN;->b:I

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-wide v7, p3

    .line 28
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/IK;->z(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 34
    .line 35
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/wN;->d:J

    .line 36
    .line 37
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-wide/from16 v5, p5

    .line 40
    .line 41
    move-wide v7, p3

    .line 42
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/IK;->a(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/HK;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method public final z(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/HK;
    .locals 17

    .line 1
    move/from16 v7, p3

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    new-instance v9, Lcom/google/android/gms/internal/ads/wN;

    .line 6
    .line 7
    const/4 v6, -0x1

    .line 8
    move-object v0, v9

    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    move/from16 v2, p3

    .line 12
    .line 13
    move/from16 v3, p4

    .line 14
    .line 15
    move-wide/from16 v4, p7

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/wN;-><init>(Ljava/lang/Object;IIJI)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v13, p0

    .line 21
    .line 22
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/IK;->a:Lcom/google/android/gms/internal/ads/je;

    .line 23
    .line 24
    move-object/from16 v1, p1

    .line 25
    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/je;->a(II)J

    .line 33
    .line 34
    .line 35
    move-result-wide v10

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 37
    .line 38
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/T5;->a(I)Lcom/google/android/gms/internal/ads/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/a;->d:[I

    .line 44
    .line 45
    array-length v4, v3

    .line 46
    if-ge v2, v4, :cond_1

    .line 47
    .line 48
    aget v3, v3, v2

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    if-ne v3, v4, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    if-ne v8, v2, :cond_2

    .line 60
    .line 61
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/je;->f:Lcom/google/android/gms/internal/ads/T5;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/je;->c(I)V

    .line 67
    .line 68
    .line 69
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide/16 v2, 0x0

    .line 75
    .line 76
    cmp-long v4, v10, v0

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    cmp-long v0, v10, v2

    .line 81
    .line 82
    if-gtz v0, :cond_3

    .line 83
    .line 84
    const-wide/16 v0, -0x1

    .line 85
    .line 86
    add-long/2addr v0, v10

    .line 87
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    move-wide v2, v0

    .line 92
    :cond_3
    new-instance v14, Lcom/google/android/gms/internal/ads/HK;

    .line 93
    .line 94
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    const/4 v15, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    move-object v0, v14

    .line 104
    move-object v1, v9

    .line 105
    move-wide/from16 v4, p5

    .line 106
    .line 107
    move-wide v8, v10

    .line 108
    move v10, v12

    .line 109
    move v11, v15

    .line 110
    move/from16 v12, v16

    .line 111
    .line 112
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/HK;-><init>(Lcom/google/android/gms/internal/ads/wN;JJJJZZZ)V

    .line 113
    .line 114
    .line 115
    return-object v14
.end method
