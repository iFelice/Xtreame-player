.class public final Lcom/google/android/gms/internal/ads/L1;
.super Lp1/j;
.source "SourceFile"


# instance fields
.field public n:Lcom/google/android/gms/internal/ads/Q;

.field public o:Lcom/google/android/gms/internal/ads/J1;


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/jr;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aget-byte v0, v0, v2

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    shr-int/2addr v0, v2

    .line 16
    const/4 v3, 0x6

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->G()J

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {v0, p1}, Lo3/r;->k(ILcom/google/android/gms/internal/ads/jr;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 34
    .line 35
    .line 36
    int-to-long v0, v0

    .line 37
    return-wide v0

    .line 38
    :cond_2
    const-wide/16 v0, -0x1

    .line 39
    .line 40
    return-wide v0
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp1/j;->f(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L1;->n:Lcom/google/android/gms/internal/ads/Q;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/L1;->o:Lcom/google/android/gms/internal/ads/J1;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/jr;JLcom/google/android/gms/internal/ads/x;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/L1;->n:Lcom/google/android/gms/internal/ads/Q;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Lcom/google/android/gms/internal/ads/Q;

    .line 15
    .line 16
    const/16 v6, 0x11

    .line 17
    .line 18
    invoke-direct {v4, v3, v6}, Lcom/google/android/gms/internal/ads/Q;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/L1;->n:Lcom/google/android/gms/internal/ads/Q;

    .line 22
    .line 23
    iget v1, v1, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 24
    .line 25
    const/16 v6, 0x9

    .line 26
    .line 27
    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/Q;->b([BLcom/google/android/gms/internal/ads/Q9;)Lcom/google/android/gms/internal/ads/p0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 37
    .line 38
    return v5

    .line 39
    :cond_0
    const/4 v6, 0x0

    .line 40
    aget-byte v3, v3, v6

    .line 41
    .line 42
    and-int/lit8 v7, v3, 0x7f

    .line 43
    .line 44
    const/4 v8, 0x3

    .line 45
    if-ne v7, v8, :cond_1

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, LU2/m;->i(Lcom/google/android/gms/internal/ads/jr;)Lcom/google/android/gms/internal/ads/x;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/google/android/gms/internal/ads/Q;

    .line 52
    .line 53
    iget v3, v4, Lcom/google/android/gms/internal/ads/Q;->h:I

    .line 54
    .line 55
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 56
    .line 57
    iget v10, v4, Lcom/google/android/gms/internal/ads/Q;->a:I

    .line 58
    .line 59
    iget v11, v4, Lcom/google/android/gms/internal/ads/Q;->b:I

    .line 60
    .line 61
    iget v12, v4, Lcom/google/android/gms/internal/ads/Q;->c:I

    .line 62
    .line 63
    iget v13, v4, Lcom/google/android/gms/internal/ads/Q;->d:I

    .line 64
    .line 65
    iget v14, v4, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 66
    .line 67
    iget v15, v4, Lcom/google/android/gms/internal/ads/Q;->g:I

    .line 68
    .line 69
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Q;->l:Lcom/google/android/gms/internal/ads/Q9;

    .line 70
    .line 71
    move-object v9, v2

    .line 72
    move/from16 v16, v3

    .line 73
    .line 74
    move-wide/from16 v17, v6

    .line 75
    .line 76
    move-object/from16 v19, v1

    .line 77
    .line 78
    move-object/from16 v20, v4

    .line 79
    .line 80
    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/Q;-><init>(IIIIIIIJLcom/google/android/gms/internal/ads/x;Lcom/google/android/gms/internal/ads/Q9;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/L1;->n:Lcom/google/android/gms/internal/ads/Q;

    .line 84
    .line 85
    new-instance v3, Lcom/google/android/gms/internal/ads/J1;

    .line 86
    .line 87
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/J1;-><init>(Lcom/google/android/gms/internal/ads/Q;Lcom/google/android/gms/internal/ads/x;)V

    .line 88
    .line 89
    .line 90
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/L1;->o:Lcom/google/android/gms/internal/ads/J1;

    .line 91
    .line 92
    return v5

    .line 93
    :cond_1
    const/4 v1, -0x1

    .line 94
    if-ne v3, v1, :cond_3

    .line 95
    .line 96
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/L1;->o:Lcom/google/android/gms/internal/ads/J1;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    move-wide/from16 v3, p2

    .line 101
    .line 102
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/J1;->I:J

    .line 103
    .line 104
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 105
    .line 106
    :cond_2
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lcom/google/android/gms/internal/ads/p0;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    return v6

    .line 114
    :cond_3
    return v5
.end method
