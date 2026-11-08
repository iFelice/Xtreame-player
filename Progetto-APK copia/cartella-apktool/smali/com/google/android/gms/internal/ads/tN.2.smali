.class public final Lcom/google/android/gms/internal/ads/tN;
.super Lcom/google/android/gms/internal/ads/kN;
.source "SourceFile"


# instance fields
.field public final k:Lcom/google/android/gms/internal/ads/eN;

.field public final l:Z

.field public final m:Lcom/google/android/gms/internal/ads/we;

.field public final n:Lcom/google/android/gms/internal/ads/je;

.field public o:Lcom/google/android/gms/internal/ads/rN;

.field public p:Lcom/google/android/gms/internal/ads/qN;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eN;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kN;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eN;->q()V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/tN;->l:Z

    .line 15
    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/we;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/we;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->m:Lcom/google/android/gms/internal/ads/we;

    .line 22
    .line 23
    new-instance p2, Lcom/google/android/gms/internal/ads/je;

    .line 24
    .line 25
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/je;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->n:Lcom/google/android/gms/internal/ads/je;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eN;->d()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eN;->c()Lcom/google/android/gms/internal/ads/x6;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/google/android/gms/internal/ads/rN;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/sN;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/sN;-><init>(Lcom/google/android/gms/internal/ads/x6;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/google/android/gms/internal/ads/we;->m:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vN;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/qN;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qN;->J:Lcom/google/android/gms/internal/ads/vN;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qN;->I:Lcom/google/android/gms/internal/ads/eN;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eN;->a(Lcom/google/android/gms/internal/ads/vN;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/vN;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/tN;->x(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/qN;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eN;->c()Lcom/google/android/gms/internal/ads/x6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eN;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kN;->j:Lcom/google/android/gms/internal/ads/lJ;

    .line 2
    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kN;->i:Landroid/os/Handler;

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->l:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->q:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 28
    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/kN;->t(Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/eN;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tN;->r:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tN;->q:Z

    .line 5
    .line 6
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kN;->m()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/x6;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/tN;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/VK;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/nN;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 12
    .line 13
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/VK;-><init>(Lcom/google/android/gms/internal/ads/Ie;Lcom/google/android/gms/internal/ads/x6;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/rN;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/rN;->c:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/rN;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/sN;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/sN;-><init>(Lcom/google/android/gms/internal/ads/x6;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/we;->m:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v3, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eN;->p(Lcom/google/android/gms/internal/ads/x6;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eN;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eN;Lcom/google/android/gms/internal/ads/Ie;)V
    .locals 12

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->r:Z

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/rN;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rN;->c:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/qN;->L:J

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/tN;->y(J)Z

    .line 28
    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/Ie;->o()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->s:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 43
    .line 44
    new-instance v0, Lcom/google/android/gms/internal/ads/rN;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/rN;->c:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-direct {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/we;->m:Ljava/lang/Object;

    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/ads/rN;

    .line 59
    .line 60
    invoke-direct {v1, p3, p1, v0}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    move-object v0, v1

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->m:Lcom/google/android/gms/internal/ads/we;

    .line 70
    .line 71
    const-wide/16 v1, 0x0

    .line 72
    .line 73
    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Ie;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 74
    .line 75
    .line 76
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/we;->a:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 83
    .line 84
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/qN;->G:Lcom/google/android/gms/internal/ads/wN;

    .line 85
    .line 86
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tN;->n:Lcom/google/android/gms/internal/ads/je;

    .line 89
    .line 90
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/Ie;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/je;)Lcom/google/android/gms/internal/ads/je;

    .line 91
    .line 92
    .line 93
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 94
    .line 95
    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/rN;->e(ILcom/google/android/gms/internal/ads/we;J)Lcom/google/android/gms/internal/ads/we;

    .line 96
    .line 97
    .line 98
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/qN;->H:J

    .line 99
    .line 100
    cmp-long p1, v4, v1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    move-wide v10, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move-wide v10, v1

    .line 107
    :goto_1
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/tN;->n:Lcom/google/android/gms/internal/ads/je;

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/tN;->m:Lcom/google/android/gms/internal/ads/we;

    .line 111
    .line 112
    move-object v6, p3

    .line 113
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/Ie;->l(Lcom/google/android/gms/internal/ads/we;Lcom/google/android/gms/internal/ads/je;IJ)Landroid/util/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->s:Z

    .line 128
    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 132
    .line 133
    new-instance v0, Lcom/google/android/gms/internal/ads/rN;

    .line 134
    .line 135
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/rN;->c:Ljava/lang/Object;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-direct {v0, p3, v3, p1}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/rN;

    .line 144
    .line 145
    invoke-direct {p1, p3, v3, v0}, Lcom/google/android/gms/internal/ads/rN;-><init>(Lcom/google/android/gms/internal/ads/Ie;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move-object v0, p1

    .line 149
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 152
    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/tN;->y(J)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    if-eqz p3, :cond_6

    .line 160
    .line 161
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qN;->G:Lcom/google/android/gms/internal/ads/wN;

    .line 162
    .line 163
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 164
    .line 165
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 166
    .line 167
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 168
    .line 169
    if-eqz p3, :cond_5

    .line 170
    .line 171
    sget-object p3, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_5

    .line 178
    .line 179
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 180
    .line 181
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 182
    .line 183
    :cond_5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wN;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/wN;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->s:Z

    .line 189
    .line 190
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->r:Z

    .line 191
    .line 192
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eN;->k(Lcom/google/android/gms/internal/ads/Ie;)V

    .line 195
    .line 196
    .line 197
    if-eqz p2, :cond_7

    .line 198
    .line 199
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/qN;->g(Lcom/google/android/gms/internal/ads/wN;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    return-void
.end method

.method public final bridge synthetic u(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    return-void
.end method

.method public final synthetic v(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/wN;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/wN;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/wN;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final x(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/qN;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/qN;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/qN;-><init>(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/qN;->I:Lcom/google/android/gms/internal/ads/eN;

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-static {p2}, Lo3/r;->M(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->k:Lcom/google/android/gms/internal/ads/eN;

    .line 18
    .line 19
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/qN;->I:Lcom/google/android/gms/internal/ads/eN;

    .line 20
    .line 21
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/tN;->r:Z

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    sget-object p2, Lcom/google/android/gms/internal/ads/rN;->e:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 42
    .line 43
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/rN;->d:Ljava/lang/Object;

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/wN;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/wN;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qN;->g(Lcom/google/android/gms/internal/ads/wN;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tN;->q:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/tN;->q:Z

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/kN;->t(Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/eN;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final y(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tN;->p:Lcom/google/android/gms/internal/ads/qN;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qN;->G:Lcom/google/android/gms/internal/ads/wN;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rN;->a(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tN;->n:Lcom/google/android/gms/internal/ads/je;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/rN;->d(ILcom/google/android/gms/internal/ads/je;Z)Lcom/google/android/gms/internal/ads/je;

    .line 23
    .line 24
    .line 25
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/je;->d:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    cmp-long v3, p1, v1

    .line 37
    .line 38
    if-ltz v3, :cond_1

    .line 39
    .line 40
    const-wide/16 p1, -0x1

    .line 41
    .line 42
    add-long/2addr v1, p1

    .line 43
    const-wide/16 p1, 0x0

    .line 44
    .line 45
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    :cond_1
    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/qN;->L:J

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method
