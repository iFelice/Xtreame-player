.class public final Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:[J

.field public final f:LW0/b;


# direct methods
.method public constructor <init>(LW0/b;JJ[JIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p9, LW0/b;

    .line 5
    .line 6
    invoke-direct {p9}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget v0, p1, LW0/b;->a:I

    .line 10
    .line 11
    iput v0, p9, LW0/b;->a:I

    .line 12
    .line 13
    iget-object v0, p1, LW0/b;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p9, LW0/b;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget v0, p1, LW0/b;->c:I

    .line 18
    .line 19
    iput v0, p9, LW0/b;->c:I

    .line 20
    .line 21
    iget v0, p1, LW0/b;->d:I

    .line 22
    .line 23
    iput v0, p9, LW0/b;->d:I

    .line 24
    .line 25
    iget v0, p1, LW0/b;->e:I

    .line 26
    .line 27
    iput v0, p9, LW0/b;->e:I

    .line 28
    .line 29
    iget v0, p1, LW0/b;->f:I

    .line 30
    .line 31
    iput v0, p9, LW0/b;->f:I

    .line 32
    .line 33
    iget p1, p1, LW0/b;->g:I

    .line 34
    .line 35
    iput p1, p9, LW0/b;->g:I

    .line 36
    .line 37
    iput-object p9, p0, Ln1/h;->f:LW0/b;

    .line 38
    .line 39
    iput-wide p2, p0, Ln1/h;->a:J

    .line 40
    .line 41
    iput-wide p4, p0, Ln1/h;->b:J

    .line 42
    .line 43
    iput-object p6, p0, Ln1/h;->e:[J

    .line 44
    .line 45
    iput p7, p0, Ln1/h;->c:I

    .line 46
    .line 47
    iput p8, p0, Ln1/h;->d:I

    .line 48
    .line 49
    return-void
.end method

.method public static b(LW0/b;Lcom/google/android/gms/internal/ads/jr;)Ln1/h;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, -0x1

    .line 18
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    :goto_1
    move-wide v10, v4

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    and-int/lit8 v4, v1, 0x4

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_3

    .line 35
    .line 36
    const/16 v4, 0x64

    .line 37
    .line 38
    new-array v6, v4, [J

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_3
    if-ge v7, v4, :cond_2

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    int-to-long v8, v8

    .line 48
    aput-wide v8, v6, v7

    .line 49
    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    move-object v12, v6

    .line 54
    goto :goto_4

    .line 55
    :cond_3
    const/4 v4, 0x0

    .line 56
    move-object v12, v4

    .line 57
    :goto_4
    and-int/lit8 v1, v1, 0x8

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v4, 0x18

    .line 69
    .line 70
    if-lt v1, v4, :cond_5

    .line 71
    .line 72
    const/16 v1, 0x15

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/jr;->y()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    shr-int/lit8 v3, v0, 0xc

    .line 82
    .line 83
    and-int/lit16 v0, v0, 0xfff

    .line 84
    .line 85
    move v14, v0

    .line 86
    move v13, v3

    .line 87
    goto :goto_5

    .line 88
    :cond_5
    const/4 v13, -0x1

    .line 89
    const/4 v14, -0x1

    .line 90
    :goto_5
    int-to-long v8, v2

    .line 91
    new-instance v0, Ln1/h;

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    move-object v6, v0

    .line 95
    move-object/from16 v7, p0

    .line 96
    .line 97
    invoke-direct/range {v6 .. v15}, Ln1/h;-><init>(LW0/b;JJ[JIII)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 7

    .line 1
    iget-wide v0, p0, Ln1/h;->a:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v6, v0, v4

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v4, p0, Ln1/h;->f:LW0/b;

    .line 17
    .line 18
    iget v5, v4, LW0/b;->g:I

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    mul-long v0, v0, v5

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    iget v2, v4, LW0/b;->d:I

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    return-wide v0

    .line 31
    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    return-wide v0
.end method
