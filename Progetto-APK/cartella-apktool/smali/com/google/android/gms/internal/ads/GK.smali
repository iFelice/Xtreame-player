.class public final Lcom/google/android/gms/internal/ads/GK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/vN;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/android/gms/internal/ads/UN;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/android/gms/internal/ads/HK;

.field public g:Z

.field public final h:[Z

.field public final i:[Lcom/google/android/gms/internal/ads/aK;

.field public final j:Lcom/google/android/gms/internal/ads/wO;

.field public final k:Lcom/google/android/gms/internal/ads/QK;

.field public l:Lcom/google/android/gms/internal/ads/GK;

.field public m:Lcom/google/android/gms/internal/ads/bO;

.field public n:Lcom/google/android/gms/internal/ads/yO;

.field public o:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/aK;JLcom/google/android/gms/internal/ads/wO;Lcom/google/android/gms/internal/ads/CO;Lcom/google/android/gms/internal/ads/QK;Lcom/google/android/gms/internal/ads/HK;Lcom/google/android/gms/internal/ads/yO;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GK;->i:[Lcom/google/android/gms/internal/ads/aK;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/GK;->j:Lcom/google/android/gms/internal/ads/wO;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/GK;->k:Lcom/google/android/gms/internal/ads/QK;

    .line 11
    .line 12
    iget-object p1, p7, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 13
    .line 14
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GK;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 19
    .line 20
    sget-object p2, Lcom/google/android/gms/internal/ads/bO;->d:Lcom/google/android/gms/internal/ads/bO;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GK;->m:Lcom/google/android/gms/internal/ads/bO;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 25
    .line 26
    const/4 p2, 0x2

    .line 27
    new-array p3, p2, [Lcom/google/android/gms/internal/ads/UN;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/GK;->c:[Lcom/google/android/gms/internal/ads/UN;

    .line 30
    .line 31
    new-array p2, p2, [Z

    .line 32
    .line 33
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/GK;->h:[Z

    .line 34
    .line 35
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget p2, Lcom/google/android/gms/internal/ads/WK;->k:I

    .line 39
    .line 40
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Landroid/util/Pair;

    .line 43
    .line 44
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wN;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/wN;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p6, Lcom/google/android/gms/internal/ads/QK;->d:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/google/android/gms/internal/ads/OK;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p3, p6, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object p3, p6, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Lcom/google/android/gms/internal/ads/NK;

    .line 75
    .line 76
    if-eqz p3, :cond_0

    .line 77
    .line 78
    iget-object p4, p3, Lcom/google/android/gms/internal/ads/NK;->a:Lcom/google/android/gms/internal/ads/eN;

    .line 79
    .line 80
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/NK;->b:Lcom/google/android/gms/internal/ads/xN;

    .line 81
    .line 82
    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/eN;->g(Lcom/google/android/gms/internal/ads/xN;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 91
    .line 92
    iget-wide v0, p7, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 93
    .line 94
    invoke-virtual {p3, p1, p5, v0, v1}, Lcom/google/android/gms/internal/ads/tN;->x(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/qN;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object p3, p6, Lcom/google/android/gms/internal/ads/QK;->c:Ljava/util/IdentityHashMap;

    .line 99
    .line 100
    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/QK;->i()V

    .line 104
    .line 105
    .line 106
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    iget-wide p4, p7, Lcom/google/android/gms/internal/ads/HK;->d:J

    .line 112
    .line 113
    cmp-long p6, p4, p2

    .line 114
    .line 115
    if-eqz p6, :cond_1

    .line 116
    .line 117
    new-instance p2, Lcom/google/android/gms/internal/ads/hN;

    .line 118
    .line 119
    invoke-direct {p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/hN;-><init>(Lcom/google/android/gms/internal/ads/qN;J)V

    .line 120
    .line 121
    .line 122
    move-object p1, p2

    .line 123
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/yO;JZ[Z)J
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/yO;->a:I

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v3, v4, :cond_1

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 13
    .line 14
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/ads/yO;->a(Lcom/google/android/gms/internal/ads/yO;I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    :goto_1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/GK;->h:[Z

    .line 23
    .line 24
    aput-boolean v5, v4, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    :goto_2
    const/4 v4, 0x2

    .line 31
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/GK;->i:[Lcom/google/android/gms/internal/ads/aK;

    .line 32
    .line 33
    if-ge v3, v4, :cond_2

    .line 34
    .line 35
    aget-object v4, v6, v3

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/GK;->i()V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 54
    .line 55
    iget v8, v7, Lcom/google/android/gms/internal/ads/yO;->a:I

    .line 56
    .line 57
    if-ge v3, v8, :cond_3

    .line 58
    .line 59
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/yO;->b(I)Z

    .line 60
    .line 61
    .line 62
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 63
    .line 64
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 65
    .line 66
    aget-object v7, v7, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 72
    .line 73
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/GK;->c:[Lcom/google/android/gms/internal/ads/UN;

    .line 74
    .line 75
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 76
    .line 77
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/GK;->h:[Z

    .line 78
    .line 79
    move-object/from16 v11, p5

    .line 80
    .line 81
    move-wide/from16 v12, p2

    .line 82
    .line 83
    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/vN;->k([Lcom/google/android/gms/internal/ads/uO;[Z[Lcom/google/android/gms/internal/ads/UN;[ZJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    const/4 v3, 0x0

    .line 88
    :goto_4
    if-ge v3, v4, :cond_4

    .line 89
    .line 90
    aget-object v9, v6, v3

    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/GK;->e:Z

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    :goto_5
    if-ge v3, v4, :cond_7

    .line 102
    .line 103
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/GK;->c:[Lcom/google/android/gms/internal/ads/UN;

    .line 104
    .line 105
    aget-object v9, v9, v3

    .line 106
    .line 107
    if-eqz v9, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/yO;->b(I)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-static {v9}, Lo3/r;->M(Z)V

    .line 114
    .line 115
    .line 116
    aget-object v9, v6, v3

    .line 117
    .line 118
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/GK;->e:Z

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_5
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 125
    .line 126
    aget-object v9, v9, v3

    .line 127
    .line 128
    if-nez v9, :cond_6

    .line 129
    .line 130
    const/4 v9, 0x1

    .line 131
    goto :goto_6

    .line 132
    :cond_6
    const/4 v9, 0x0

    .line 133
    :goto_6
    invoke-static {v9}, Lo3/r;->M(Z)V

    .line 134
    .line 135
    .line 136
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_7
    return-wide v7
.end method

.method public final b()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GK;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GK;->e:Z

    .line 11
    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/VN;->zzb()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-wide v3, v1

    .line 24
    :goto_0
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 29
    .line 30
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_2
    return-wide v3
.end method

.method public final c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/yO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/Ie;)Lcom/google/android/gms/internal/ads/yO;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GK;->m:Lcom/google/android/gms/internal/ads/bO;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GK;->j:Lcom/google/android/gms/internal/ads/wO;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [I

    .line 16
    .line 17
    new-array v5, v3, [[Lcom/google/android/gms/internal/ads/Ve;

    .line 18
    .line 19
    new-array v12, v3, [[[I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v6, v3, :cond_0

    .line 23
    .line 24
    iget v7, v1, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 25
    .line 26
    new-array v8, v7, [Lcom/google/android/gms/internal/ads/Ve;

    .line 27
    .line 28
    aput-object v8, v5, v6

    .line 29
    .line 30
    new-array v7, v7, [[I

    .line 31
    .line 32
    aput-object v7, v12, v6

    .line 33
    .line 34
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x2

    .line 38
    new-array v14, v3, [I

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/GK;->i:[Lcom/google/android/gms/internal/ads/aK;

    .line 42
    .line 43
    if-ge v6, v3, :cond_1

    .line 44
    .line 45
    aget-object v7, v15, v6

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/16 v7, 0x8

    .line 51
    .line 52
    aput v7, v14, v6

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v6, 0x0

    .line 58
    :goto_2
    iget v7, v1, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 59
    .line 60
    const/16 v16, 0x1

    .line 61
    .line 62
    if-ge v6, v7, :cond_9

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x2

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v11, 0x1

    .line 72
    :goto_3
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 73
    .line 74
    iget v0, v7, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 75
    .line 76
    if-ge v8, v3, :cond_6

    .line 77
    .line 78
    aget-object v3, v15, v8

    .line 79
    .line 80
    move-object/from16 v17, v1

    .line 81
    .line 82
    move-object/from16 v18, v2

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    :goto_4
    if-ge v1, v0, :cond_2

    .line 87
    .line 88
    move-object/from16 v19, v14

    .line 89
    .line 90
    aget-object v14, v13, v1

    .line 91
    .line 92
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/aK;->q(Lcom/google/android/gms/internal/ads/p0;)I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    and-int/lit8 v14, v14, 0x7

    .line 97
    .line 98
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    move-object/from16 v14, v19

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_2
    move-object/from16 v19, v14

    .line 108
    .line 109
    aget v0, v4, v8

    .line 110
    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_3
    const/4 v0, 0x0

    .line 116
    :goto_5
    if-gt v2, v10, :cond_4

    .line 117
    .line 118
    if-ne v2, v10, :cond_5

    .line 119
    .line 120
    const/4 v1, 0x5

    .line 121
    iget v3, v7, Lcom/google/android/gms/internal/ads/Ve;->c:I

    .line 122
    .line 123
    if-ne v3, v1, :cond_5

    .line 124
    .line 125
    if-nez v11, :cond_5

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    move v10, v2

    .line 130
    move v9, v8

    .line 131
    const/4 v11, 0x1

    .line 132
    goto :goto_6

    .line 133
    :cond_4
    move v11, v0

    .line 134
    move v10, v2

    .line 135
    move v9, v8

    .line 136
    :cond_5
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 137
    .line 138
    move-object/from16 v0, p0

    .line 139
    .line 140
    move-object/from16 v1, v17

    .line 141
    .line 142
    move-object/from16 v2, v18

    .line 143
    .line 144
    move-object/from16 v14, v19

    .line 145
    .line 146
    const/4 v3, 0x2

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    move-object/from16 v17, v1

    .line 149
    .line 150
    move-object/from16 v18, v2

    .line 151
    .line 152
    move-object/from16 v19, v14

    .line 153
    .line 154
    const/4 v1, 0x2

    .line 155
    if-ne v9, v1, :cond_7

    .line 156
    .line 157
    new-array v0, v0, [I

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_7
    aget-object v1, v15, v9

    .line 161
    .line 162
    new-array v2, v0, [I

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    :goto_7
    if-ge v3, v0, :cond_8

    .line 166
    .line 167
    aget-object v8, v13, v3

    .line 168
    .line 169
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/aK;->q(Lcom/google/android/gms/internal/ads/p0;)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    aput v8, v2, v3

    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_8
    move-object v0, v2

    .line 179
    :goto_8
    aget v1, v4, v9

    .line 180
    .line 181
    aget-object v2, v5, v9

    .line 182
    .line 183
    aput-object v7, v2, v1

    .line 184
    .line 185
    aget-object v2, v12, v9

    .line 186
    .line 187
    aput-object v0, v2, v1

    .line 188
    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    .line 191
    aput v1, v4, v9

    .line 192
    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 194
    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    move-object/from16 v1, v17

    .line 198
    .line 199
    move-object/from16 v2, v18

    .line 200
    .line 201
    move-object/from16 v14, v19

    .line 202
    .line 203
    const/4 v3, 0x2

    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_9
    move-object/from16 v18, v2

    .line 207
    .line 208
    move-object/from16 v19, v14

    .line 209
    .line 210
    const/4 v0, 0x2

    .line 211
    new-array v8, v0, [Lcom/google/android/gms/internal/ads/bO;

    .line 212
    .line 213
    new-array v1, v0, [Ljava/lang/String;

    .line 214
    .line 215
    new-array v7, v0, [I

    .line 216
    .line 217
    const/4 v2, 0x0

    .line 218
    :goto_9
    if-ge v2, v0, :cond_a

    .line 219
    .line 220
    aget v0, v4, v2

    .line 221
    .line 222
    new-instance v3, Lcom/google/android/gms/internal/ads/bO;

    .line 223
    .line 224
    aget-object v6, v5, v2

    .line 225
    .line 226
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/Et;->g(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, [Lcom/google/android/gms/internal/ads/Ve;

    .line 231
    .line 232
    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/bO;-><init>([Lcom/google/android/gms/internal/ads/Ve;)V

    .line 233
    .line 234
    .line 235
    aput-object v3, v8, v2

    .line 236
    .line 237
    aget-object v3, v12, v2

    .line 238
    .line 239
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/Et;->g(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, [[I

    .line 244
    .line 245
    aput-object v0, v12, v2

    .line 246
    .line 247
    aget-object v0, v15, v2

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aK;->m()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    aput-object v0, v1, v2

    .line 254
    .line 255
    aget-object v0, v15, v2

    .line 256
    .line 257
    iget v0, v0, Lcom/google/android/gms/internal/ads/aK;->b:I

    .line 258
    .line 259
    aput v0, v7, v2

    .line 260
    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 262
    .line 263
    const/4 v0, 0x2

    .line 264
    goto :goto_9

    .line 265
    :cond_a
    aget v1, v4, v0

    .line 266
    .line 267
    new-instance v11, Lcom/google/android/gms/internal/ads/bO;

    .line 268
    .line 269
    aget-object v2, v5, v0

    .line 270
    .line 271
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Et;->g(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, [Lcom/google/android/gms/internal/ads/Ve;

    .line 276
    .line 277
    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/bO;-><init>([Lcom/google/android/gms/internal/ads/Ve;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/google/android/gms/internal/ads/vO;

    .line 281
    .line 282
    move-object v6, v0

    .line 283
    move-object/from16 v9, v19

    .line 284
    .line 285
    move-object v10, v12

    .line 286
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/vO;-><init>([I[Lcom/google/android/gms/internal/ads/bO;[I[[[ILcom/google/android/gms/internal/ads/bO;)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v1, v18

    .line 290
    .line 291
    move-object/from16 v2, v19

    .line 292
    .line 293
    invoke-virtual {v1, v0, v12, v2}, Lcom/google/android/gms/internal/ads/wO;->a(Lcom/google/android/gms/internal/ads/vO;[[[I[I)Landroid/util/Pair;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, [Lcom/google/android/gms/internal/ads/uO;

    .line 300
    .line 301
    array-length v3, v2

    .line 302
    new-array v3, v3, [Ljava/util/List;

    .line 303
    .line 304
    const/4 v4, 0x0

    .line 305
    :goto_a
    array-length v5, v2

    .line 306
    if-ge v4, v5, :cond_c

    .line 307
    .line 308
    aget-object v5, v2, v4

    .line 309
    .line 310
    if-eqz v5, :cond_b

    .line 311
    .line 312
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    goto :goto_b

    .line 317
    :cond_b
    sget-object v5, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 318
    .line 319
    :goto_b
    aput-object v5, v3, v4

    .line 320
    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/rA;

    .line 325
    .line 326
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x2

    .line 330
    const/4 v5, 0x0

    .line 331
    :goto_c
    if-ge v5, v4, :cond_17

    .line 332
    .line 333
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/vO;->b:[Lcom/google/android/gms/internal/ads/bO;

    .line 334
    .line 335
    aget-object v7, v6, v5

    .line 336
    .line 337
    aget-object v8, v3, v5

    .line 338
    .line 339
    const/4 v9, 0x0

    .line 340
    :goto_d
    iget v10, v7, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 341
    .line 342
    if-ge v9, v10, :cond_16

    .line 343
    .line 344
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    aget-object v11, v6, v5

    .line 349
    .line 350
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    iget v11, v11, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 355
    .line 356
    new-array v12, v11, [I

    .line 357
    .line 358
    const/4 v13, 0x0

    .line 359
    const/4 v14, 0x0

    .line 360
    :goto_e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vO;->d:[[[I

    .line 361
    .line 362
    if-ge v13, v11, :cond_e

    .line 363
    .line 364
    aget-object v4, v4, v5

    .line 365
    .line 366
    aget-object v4, v4, v9

    .line 367
    .line 368
    aget v4, v4, v13

    .line 369
    .line 370
    and-int/lit8 v4, v4, 0x7

    .line 371
    .line 372
    move-object/from16 v17, v3

    .line 373
    .line 374
    const/4 v3, 0x4

    .line 375
    if-ne v4, v3, :cond_d

    .line 376
    .line 377
    add-int/lit8 v3, v14, 0x1

    .line 378
    .line 379
    aput v13, v12, v14

    .line 380
    .line 381
    move v14, v3

    .line 382
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 383
    .line 384
    move-object/from16 v3, v17

    .line 385
    .line 386
    goto :goto_e

    .line 387
    :cond_e
    move-object/from16 v17, v3

    .line 388
    .line 389
    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    const/4 v11, 0x0

    .line 394
    const/16 v12, 0x10

    .line 395
    .line 396
    move-object/from16 v19, v7

    .line 397
    .line 398
    const/4 v13, 0x0

    .line 399
    const/4 v14, 0x0

    .line 400
    const/16 v18, 0x0

    .line 401
    .line 402
    :goto_f
    array-length v7, v3

    .line 403
    if-ge v13, v7, :cond_10

    .line 404
    .line 405
    aget v7, v3, v13

    .line 406
    .line 407
    move-object/from16 v20, v3

    .line 408
    .line 409
    aget-object v3, v6, v5

    .line 410
    .line 411
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 416
    .line 417
    aget-object v3, v3, v7

    .line 418
    .line 419
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 420
    .line 421
    add-int/lit8 v7, v18, 0x1

    .line 422
    .line 423
    if-nez v18, :cond_f

    .line 424
    .line 425
    move-object v11, v3

    .line 426
    goto :goto_10

    .line 427
    :cond_f
    invoke-static {v11, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    xor-int/lit8 v3, v3, 0x1

    .line 432
    .line 433
    or-int/2addr v14, v3

    .line 434
    :goto_10
    aget-object v3, v4, v5

    .line 435
    .line 436
    aget-object v3, v3, v9

    .line 437
    .line 438
    aget v3, v3, v13

    .line 439
    .line 440
    and-int/lit8 v3, v3, 0x18

    .line 441
    .line 442
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    add-int/lit8 v13, v13, 0x1

    .line 447
    .line 448
    move/from16 v18, v7

    .line 449
    .line 450
    move-object/from16 v3, v20

    .line 451
    .line 452
    goto :goto_f

    .line 453
    :cond_10
    if-eqz v14, :cond_11

    .line 454
    .line 455
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vO;->c:[I

    .line 456
    .line 457
    aget v3, v3, v5

    .line 458
    .line 459
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    :cond_11
    if-eqz v12, :cond_12

    .line 464
    .line 465
    const/4 v3, 0x1

    .line 466
    goto :goto_11

    .line 467
    :cond_12
    const/4 v3, 0x0

    .line 468
    :goto_11
    iget v7, v10, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 469
    .line 470
    new-array v11, v7, [I

    .line 471
    .line 472
    new-array v12, v7, [Z

    .line 473
    .line 474
    const/4 v13, 0x0

    .line 475
    :goto_12
    if-ge v13, v7, :cond_15

    .line 476
    .line 477
    aget-object v14, v4, v5

    .line 478
    .line 479
    aget-object v14, v14, v9

    .line 480
    .line 481
    aget v14, v14, v13

    .line 482
    .line 483
    and-int/lit8 v14, v14, 0x7

    .line 484
    .line 485
    aput v14, v11, v13

    .line 486
    .line 487
    move-object/from16 v18, v4

    .line 488
    .line 489
    const/4 v14, 0x0

    .line 490
    :goto_13
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-ge v14, v4, :cond_14

    .line 495
    .line 496
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Lcom/google/android/gms/internal/ads/uO;

    .line 501
    .line 502
    move-object/from16 v20, v6

    .line 503
    .line 504
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uO;->zze()Lcom/google/android/gms/internal/ads/Ve;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/Ve;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_13

    .line 513
    .line 514
    invoke-interface {v4, v13}, Lcom/google/android/gms/internal/ads/uO;->zzb(I)I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    const/4 v6, -0x1

    .line 519
    if-eq v4, v6, :cond_13

    .line 520
    .line 521
    const/4 v4, 0x1

    .line 522
    goto :goto_14

    .line 523
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 524
    .line 525
    move-object/from16 v6, v20

    .line 526
    .line 527
    goto :goto_13

    .line 528
    :cond_14
    move-object/from16 v20, v6

    .line 529
    .line 530
    const/4 v4, 0x0

    .line 531
    :goto_14
    aput-boolean v4, v12, v13

    .line 532
    .line 533
    add-int/lit8 v13, v13, 0x1

    .line 534
    .line 535
    move-object/from16 v4, v18

    .line 536
    .line 537
    move-object/from16 v6, v20

    .line 538
    .line 539
    goto :goto_12

    .line 540
    :cond_15
    move-object/from16 v20, v6

    .line 541
    .line 542
    new-instance v4, Lcom/google/android/gms/internal/ads/wg;

    .line 543
    .line 544
    invoke-direct {v4, v10, v3, v11, v12}, Lcom/google/android/gms/internal/ads/wg;-><init>(Lcom/google/android/gms/internal/ads/Ve;Z[I[Z)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    add-int/lit8 v9, v9, 0x1

    .line 551
    .line 552
    move-object/from16 v3, v17

    .line 553
    .line 554
    move-object/from16 v7, v19

    .line 555
    .line 556
    move-object/from16 v6, v20

    .line 557
    .line 558
    const/4 v4, 0x2

    .line 559
    goto/16 :goto_d

    .line 560
    .line 561
    :cond_16
    move-object/from16 v17, v3

    .line 562
    .line 563
    add-int/lit8 v5, v5, 0x1

    .line 564
    .line 565
    const/4 v4, 0x2

    .line 566
    goto/16 :goto_c

    .line 567
    .line 568
    :cond_17
    const/4 v3, 0x0

    .line 569
    :goto_15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/vO;->e:Lcom/google/android/gms/internal/ads/bO;

    .line 570
    .line 571
    iget v5, v4, Lcom/google/android/gms/internal/ads/bO;->a:I

    .line 572
    .line 573
    if-ge v3, v5, :cond_18

    .line 574
    .line 575
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    iget v5, v4, Lcom/google/android/gms/internal/ads/Ve;->a:I

    .line 580
    .line 581
    new-array v6, v5, [I

    .line 582
    .line 583
    const/4 v7, 0x0

    .line 584
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 585
    .line 586
    .line 587
    new-array v5, v5, [Z

    .line 588
    .line 589
    new-instance v8, Lcom/google/android/gms/internal/ads/wg;

    .line 590
    .line 591
    invoke-direct {v8, v4, v7, v6, v5}, Lcom/google/android/gms/internal/ads/wg;-><init>(Lcom/google/android/gms/internal/ads/Ve;Z[I[Z)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    add-int/lit8 v3, v3, 0x1

    .line 598
    .line 599
    goto :goto_15

    .line 600
    :cond_18
    const/4 v7, 0x0

    .line 601
    new-instance v3, Lcom/google/android/gms/internal/ads/Hg;

    .line 602
    .line 603
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Hg;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 608
    .line 609
    .line 610
    new-instance v2, Lcom/google/android/gms/internal/ads/yO;

    .line 611
    .line 612
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v4, [Lcom/google/android/gms/internal/ads/YK;

    .line 615
    .line 616
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v1, [Lcom/google/android/gms/internal/ads/uO;

    .line 619
    .line 620
    invoke-direct {v2, v4, v1, v3, v0}, Lcom/google/android/gms/internal/ads/yO;-><init>([Lcom/google/android/gms/internal/ads/YK;[Lcom/google/android/gms/internal/ads/uO;Lcom/google/android/gms/internal/ads/Hg;Lcom/google/android/gms/internal/ads/vO;)V

    .line 621
    .line 622
    .line 623
    const/4 v0, 0x0

    .line 624
    :goto_16
    iget v1, v2, Lcom/google/android/gms/internal/ads/yO;->a:I

    .line 625
    .line 626
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 627
    .line 628
    if-ge v0, v1, :cond_1c

    .line 629
    .line 630
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/yO;->b(I)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_1a

    .line 635
    .line 636
    aget-object v1, v3, v0

    .line 637
    .line 638
    if-nez v1, :cond_19

    .line 639
    .line 640
    aget-object v1, v15, v0

    .line 641
    .line 642
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    const/4 v1, 0x0

    .line 646
    goto :goto_17

    .line 647
    :cond_19
    const/4 v1, 0x1

    .line 648
    :goto_17
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 649
    .line 650
    .line 651
    goto :goto_19

    .line 652
    :cond_1a
    aget-object v1, v3, v0

    .line 653
    .line 654
    if-nez v1, :cond_1b

    .line 655
    .line 656
    const/4 v1, 0x1

    .line 657
    goto :goto_18

    .line 658
    :cond_1b
    const/4 v1, 0x0

    .line 659
    :goto_18
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 660
    .line 661
    .line 662
    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 663
    .line 664
    goto :goto_16

    .line 665
    :cond_1c
    array-length v0, v3

    .line 666
    const/4 v13, 0x0

    .line 667
    :goto_1a
    if-ge v13, v0, :cond_1d

    .line 668
    .line 669
    aget-object v1, v3, v13

    .line 670
    .line 671
    add-int/lit8 v13, v13, 0x1

    .line 672
    .line 673
    goto :goto_1a

    .line 674
    :cond_1d
    return-object v2
.end method

.method public final f(FLcom/google/android/gms/internal/ads/Ie;)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/GK;->d:Z

    .line 5
    .line 6
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vN;->zzi()Lcom/google/android/gms/internal/ads/bO;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, v6, Lcom/google/android/gms/internal/ads/GK;->m:Lcom/google/android/gms/internal/ads/bO;

    .line 13
    .line 14
    move-object/from16 v0, p2

    .line 15
    .line 16
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/GK;->e(Lcom/google/android/gms/internal/ads/Ie;)Lcom/google/android/gms/internal/ads/yO;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 21
    .line 22
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 23
    .line 24
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 30
    .line 31
    cmp-long v0, v7, v4

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    cmp-long v0, v2, v7

    .line 36
    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    const-wide/16 v2, -0x1

    .line 40
    .line 41
    add-long/2addr v7, v2

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    :cond_0
    const/4 v0, 0x2

    .line 49
    new-array v5, v0, [Z

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/GK;->a(Lcom/google/android/gms/internal/ads/yO;JZ[Z)J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 59
    .line 60
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 61
    .line 62
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/HK;->b:J

    .line 63
    .line 64
    sub-long v7, v3, v9

    .line 65
    .line 66
    add-long/2addr v7, v0

    .line 67
    iput-wide v7, v6, Lcom/google/android/gms/internal/ads/GK;->o:J

    .line 68
    .line 69
    cmp-long v0, v9, v3

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/HK;

    .line 75
    .line 76
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/HK;->e:J

    .line 77
    .line 78
    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/HK;->f:Z

    .line 79
    .line 80
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/HK;->a:Lcom/google/android/gms/internal/ads/wN;

    .line 81
    .line 82
    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/HK;->c:J

    .line 83
    .line 84
    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/HK;->d:J

    .line 85
    .line 86
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/HK;->g:Z

    .line 87
    .line 88
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/HK;->h:Z

    .line 89
    .line 90
    move-object v7, v0

    .line 91
    move-wide v15, v3

    .line 92
    move/from16 v17, v1

    .line 93
    .line 94
    move/from16 v18, v5

    .line 95
    .line 96
    move/from16 v19, v2

    .line 97
    .line 98
    invoke-direct/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/HK;-><init>(Lcom/google/android/gms/internal/ads/wN;JJJJZZZ)V

    .line 99
    .line 100
    .line 101
    move-object v2, v0

    .line 102
    :goto_0
    iput-object v2, v6, Lcom/google/android/gms/internal/ads/GK;->f:Lcom/google/android/gms/internal/ads/HK;

    .line 103
    .line 104
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/GK;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 5
    .line 6
    :try_start_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/hN;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/GK;->k:Lcom/google/android/gms/internal/ads/QK;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/hN;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/hN;->G:Lcom/google/android/gms/internal/ads/vN;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/QK;->d(Lcom/google/android/gms/internal/ads/vN;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/QK;->d(Lcom/google/android/gms/internal/ads/vN;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_0
    const-string v1, "MediaPeriodHolder"

    .line 27
    .line 28
    const-string v2, "Period release failed."

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final h()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GK;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/GK;->e:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->a:Lcom/google/android/gms/internal/ads/vN;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/VN;->zzb()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide/high16 v5, -0x8000000000000000L

    .line 18
    .line 19
    cmp-long v0, v3, v5

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v2

    .line 25
    :cond_1
    const/4 v1, 0x1

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/GK;->l:Lcom/google/android/gms/internal/ads/GK;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 7
    .line 8
    iget v2, v1, Lcom/google/android/gms/internal/ads/yO;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yO;->b(I)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/GK;->n:Lcom/google/android/gms/internal/ads/yO;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yO;->c:[Lcom/google/android/gms/internal/ads/uO;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
