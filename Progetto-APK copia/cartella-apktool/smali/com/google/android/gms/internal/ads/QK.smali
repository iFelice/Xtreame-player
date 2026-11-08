.class public final Lcom/google/android/gms/internal/ads/QK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zL;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Lcom/google/android/gms/internal/ads/PK;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashSet;

.field public final h:Lcom/google/android/gms/internal/ads/cL;

.field public final i:Lcom/google/android/gms/internal/ads/un;

.field public j:Z

.field public k:Lcom/google/android/gms/internal/ads/lJ;

.field public l:Lcom/google/android/gms/internal/ads/WN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/PK;Lcom/google/android/gms/internal/ads/cL;Lcom/google/android/gms/internal/ads/ts;Lcom/google/android/gms/internal/ads/zL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/QK;->a:Lcom/google/android/gms/internal/ads/zL;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->e:Lcom/google/android/gms/internal/ads/PK;

    .line 7
    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/WN;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/WN;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->l:Lcom/google/android/gms/internal/ads/WN;

    .line 14
    .line 15
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->c:Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/QK;->h:Lcom/google/android/gms/internal/ads/cL;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/QK;->i:Lcom/google/android/gms/internal/ads/un;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance p1, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Ie;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/google/android/gms/internal/ads/OK;

    .line 22
    .line 23
    iput v2, v3, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 24
    .line 25
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/nN;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ie;->c()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v2, v3

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/WK;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QK;->l:Lcom/google/android/gms/internal/ads/WN;

    .line 42
    .line 43
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/WK;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/WN;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Ie;->a:Lcom/google/android/gms/internal/ads/Rd;

    .line 48
    .line 49
    return-object v0
.end method

.method public final b(IILjava/util/List;)Lcom/google/android/gms/internal/ads/Ie;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    if-gt p1, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-gt p2, v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-static {v3}, Lo3/r;->J(Z)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sub-int v4, p2, p1

    .line 26
    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-static {v1}, Lo3/r;->J(Z)V

    .line 32
    .line 33
    .line 34
    move v1, p1

    .line 35
    :goto_2
    if-ge v1, p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/google/android/gms/internal/ads/OK;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 44
    .line 45
    sub-int v3, v1, p1

    .line 46
    .line 47
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/google/android/gms/internal/ads/x6;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/tN;->p(Lcom/google/android/gms/internal/ads/x6;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/QK;->a()Lcom/google/android/gms/internal/ads/Ie;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/EO;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/QK;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->k:Lcom/google/android/gms/internal/ads/lJ;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge p1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/OK;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/QK;->k(Lcom/google/android/gms/internal/ads/OK;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/QK;->j:Z

    .line 37
    .line 38
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/vN;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->c:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/OK;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/tN;->a(Lcom/google/android/gms/internal/ads/vN;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/qN;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qN;->G:Lcom/google/android/gms/internal/ads/wN;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/QK;->i()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/QK;->j(Lcom/google/android/gms/internal/ads/OK;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(ILjava/util/List;Lcom/google/android/gms/internal/ads/WN;)Lcom/google/android/gms/internal/ads/Ie;
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/QK;->l:Lcom/google/android/gms/internal/ads/WN;

    .line 8
    .line 9
    move p3, p1

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, p1

    .line 15
    if-ge p3, v0, :cond_4

    .line 16
    .line 17
    sub-int v0, p3, p1

    .line 18
    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/OK;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-lez p3, :cond_0

    .line 29
    .line 30
    add-int/lit8 v3, p3, -0x1

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/google/android/gms/internal/ads/OK;

    .line 37
    .line 38
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 41
    .line 42
    iget v3, v3, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 43
    .line 44
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/nN;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ie;->c()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v4, v3

    .line 51
    iput v4, v0, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 52
    .line 53
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/OK;->e:Z

    .line 54
    .line 55
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iput v2, v0, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 62
    .line 63
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/OK;->e:Z

    .line 64
    .line 65
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/nN;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ie;->c()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    move v3, p3

    .line 81
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ge v3, v4, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/google/android/gms/internal/ads/OK;

    .line 92
    .line 93
    iget v5, v4, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 94
    .line 95
    add-int/2addr v5, v2

    .line 96
    iput v5, v4, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 97
    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->d:Ljava/util/HashMap;

    .line 105
    .line 106
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/OK;->b:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/QK;->j:Z

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/QK;->k(Lcom/google/android/gms/internal/ads/OK;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->c:Ljava/util/IdentityHashMap;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/google/android/gms/internal/ads/NK;

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/NK;->a:Lcom/google/android/gms/internal/ads/eN;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/NK;->b:Lcom/google/android/gms/internal/ads/xN;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eN;->e(Lcom/google/android/gms/internal/ads/xN;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/QK;->a()Lcom/google/android/gms/internal/ads/Ie;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1
.end method

.method public final f(IILcom/google/android/gms/internal/ads/WN;)Lcom/google/android/gms/internal/ads/Ie;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-gt p1, p2, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gt p2, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/QK;->l:Lcom/google/android/gms/internal/ads/WN;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/QK;->l(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/QK;->a()Lcom/google/android/gms/internal/ads/Ie;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final g(Ljava/util/List;Lcom/google/android/gms/internal/ads/WN;)Lcom/google/android/gms/internal/ads/Ie;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ads/QK;->l(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/QK;->e(ILjava/util/List;Lcom/google/android/gms/internal/ads/WN;)Lcom/google/android/gms/internal/ads/Ie;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final h(Lcom/google/android/gms/internal/ads/WN;)Lcom/google/android/gms/internal/ads/Ie;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/WN;->b:[I

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-eq v1, v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/WN;

    .line 13
    .line 14
    new-instance v2, Ljava/util/Random;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/WN;->a:Ljava/util/Random;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/WN;-><init>(Ljava/util/Random;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/WN;->a(I)Lcom/google/android/gms/internal/ads/WN;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->l:Lcom/google/android/gms/internal/ads/WN;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/QK;->a()Lcom/google/android/gms/internal/ads/Ie;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/OK;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/ads/NK;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/NK;->a:Lcom/google/android/gms/internal/ads/eN;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/NK;->b:Lcom/google/android/gms/internal/ads/xN;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/eN;->e(Lcom/google/android/gms/internal/ads/xN;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/OK;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/OK;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/OK;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/NK;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/NK;->a:Lcom/google/android/gms/internal/ads/eN;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/NK;->b:Lcom/google/android/gms/internal/ads/xN;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/eN;->l(Lcom/google/android/gms/internal/ads/xN;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/NK;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eN;->o(Lcom/google/android/gms/internal/ads/AN;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eN;->n(Lcom/google/android/gms/internal/ads/wM;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->g:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/OK;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/KK;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/KK;-><init>(Lcom/google/android/gms/internal/ads/QK;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/Om;

    .line 9
    .line 10
    const/16 v3, 0x1b

    .line 11
    .line 12
    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/gms/internal/ads/Om;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/google/android/gms/internal/ads/NK;

    .line 16
    .line 17
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/NK;-><init>(Lcom/google/android/gms/internal/ads/tN;Lcom/google/android/gms/internal/ads/KK;Lcom/google/android/gms/internal/ads/Om;)V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/QK;->f:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    new-instance v3, Landroid/os/Handler;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eN;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/google/android/gms/internal/ads/zN;

    .line 50
    .line 51
    invoke-direct {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zN;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/AN;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/f8;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    new-instance v3, Landroid/os/Handler;

    .line 73
    .line 74
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eN;->d:Lcom/google/android/gms/internal/ads/vM;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v3, Lcom/google/android/gms/internal/ads/uM;

    .line 83
    .line 84
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/uM;-><init>(Lcom/google/android/gms/internal/ads/wM;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/vM;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/QK;->k:Lcom/google/android/gms/internal/ads/lJ;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QK;->a:Lcom/google/android/gms/internal/ads/zL;

    .line 95
    .line 96
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/eN;->i(Lcom/google/android/gms/internal/ads/xN;Lcom/google/android/gms/internal/ads/lJ;Lcom/google/android/gms/internal/ads/zL;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final l(II)V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 2
    .line 3
    if-lt p2, p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/QK;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/OK;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/QK;->d:Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/OK;->b:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/OK;->a:Lcom/google/android/gms/internal/ads/tN;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/tN;->o:Lcom/google/android/gms/internal/ads/rN;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/nN;->b:Lcom/google/android/gms/internal/ads/Ie;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ie;->c()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    neg-int v2, v2

    .line 31
    move v3, p2

    .line 32
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/google/android/gms/internal/ads/OK;

    .line 43
    .line 44
    iget v5, v4, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 45
    .line 46
    add-int/2addr v5, v2

    .line 47
    iput v5, v4, Lcom/google/android/gms/internal/ads/OK;->d:I

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/OK;->e:Z

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/QK;->j:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/QK;->j(Lcom/google/android/gms/internal/ads/OK;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method
