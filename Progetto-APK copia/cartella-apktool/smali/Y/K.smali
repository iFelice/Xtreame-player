.class public final LY/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lm2/u;

.field public B:Lm2/u;

.field public C:Lm2/u;

.field public D:Ljava/util/ArrayDeque;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Ljava/util/ArrayList;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:LY/M;

.field public final N:La/f;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lm2/o;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:LY/A;

.field public g:La/x;

.field public final h:LY/D;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field public final l:Ljava/util/Map;

.field public final m:Lm2/e;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final o:LY/B;

.field public final p:LY/B;

.field public final q:LY/B;

.field public final r:LY/B;

.field public final s:LY/E;

.field public t:I

.field public u:LY/u;

.field public v:Lf/b;

.field public w:LY/s;

.field public x:LY/s;

.field public final y:LY/F;

.field public final z:LY/C;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lm2/o;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lm2/o;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LY/K;->c:Lm2/o;

    .line 18
    .line 19
    new-instance v0, LY/A;

    .line 20
    .line 21
    invoke-direct {v0, p0}, LY/A;-><init>(LY/K;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, LY/K;->f:LY/A;

    .line 25
    .line 26
    new-instance v0, LY/D;

    .line 27
    .line 28
    invoke-direct {v0, p0}, LY/D;-><init>(LY/K;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, LY/K;->h:LY/D;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, LY/K;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, LY/K;->j:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v0, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, LY/K;->k:Ljava/util/Map;

    .line 61
    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, LY/K;->l:Ljava/util/Map;

    .line 72
    .line 73
    new-instance v0, Lm2/e;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lm2/e;-><init>(LY/K;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, LY/K;->m:Lm2/e;

    .line 79
    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, LY/K;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    .line 87
    new-instance v0, LY/B;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-direct {v0, p0, v2}, LY/B;-><init>(LY/K;I)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, LY/K;->o:LY/B;

    .line 94
    .line 95
    new-instance v0, LY/B;

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-direct {v0, p0, v2}, LY/B;-><init>(LY/K;I)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, LY/K;->p:LY/B;

    .line 102
    .line 103
    new-instance v0, LY/B;

    .line 104
    .line 105
    invoke-direct {v0, p0, v1}, LY/B;-><init>(LY/K;I)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, LY/K;->q:LY/B;

    .line 109
    .line 110
    new-instance v0, LY/B;

    .line 111
    .line 112
    const/4 v1, 0x3

    .line 113
    invoke-direct {v0, p0, v1}, LY/B;-><init>(LY/K;I)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, LY/K;->r:LY/B;

    .line 117
    .line 118
    new-instance v0, LY/E;

    .line 119
    .line 120
    invoke-direct {v0, p0}, LY/E;-><init>(LY/K;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, LY/K;->s:LY/E;

    .line 124
    .line 125
    const/4 v0, -0x1

    .line 126
    iput v0, p0, LY/K;->t:I

    .line 127
    .line 128
    new-instance v0, LY/F;

    .line 129
    .line 130
    invoke-direct {v0, p0}, LY/F;-><init>(LY/K;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, LY/K;->y:LY/F;

    .line 134
    .line 135
    new-instance v0, LY/C;

    .line 136
    .line 137
    invoke-direct {v0, p0, v2}, LY/C;-><init>(LY/K;I)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, LY/K;->z:LY/C;

    .line 141
    .line 142
    new-instance v0, Ljava/util/ArrayDeque;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, LY/K;->D:Ljava/util/ArrayDeque;

    .line 148
    .line 149
    new-instance v0, La/f;

    .line 150
    .line 151
    const/16 v1, 0x9

    .line 152
    .line 153
    invoke-direct {v0, p0, v1}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, LY/K;->N:La/f;

    .line 157
    .line 158
    return-void
.end method

.method public static G(LY/s;)Z
    .locals 3

    .line 1
    iget-object p0, p0, LY/s;->a0:LY/K;

    .line 2
    .line 3
    iget-object p0, p0, LY/K;->c:Lm2/o;

    .line 4
    .line 5
    invoke-virtual {p0}, Lm2/o;->n()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, LY/s;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, LY/K;->G(LY/s;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_2
    return v0
.end method

.method public static I(LY/s;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p0, LY/s;->j0:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, LY/s;->Y:LY/K;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, LY/s;->b0:LY/s;

    .line 14
    .line 15
    invoke-static {p0}, LY/K;->I(LY/s;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public static J(LY/s;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, LY/s;->Y:LY/K;

    .line 6
    .line 7
    iget-object v2, v1, LY/K;->x:LY/s;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, LY/s;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, v1, LY/K;->w:LY/s;

    .line 16
    .line 17
    invoke-static {p0}, LY/K;->J(LY/s;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public static Y(LY/s;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "show: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, LY/s;->f0:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, LY/s;->f0:Z

    .line 33
    .line 34
    iget-boolean v0, p0, LY/s;->q0:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, LY/s;->q0:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I)LY/s;
    .locals 4

    .line 1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 2
    .line 3
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, LY/s;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v3, v2, LY/s;->c0:I

    .line 28
    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, LY/P;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v2, v1, LY/P;->c:LY/s;

    .line 62
    .line 63
    iget v1, v2, LY/s;->c0:I

    .line 64
    .line 65
    if-ne v1, p1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v2, 0x0

    .line 69
    :goto_1
    return-object v2
.end method

.method public final B(Ljava/lang/String;)LY/s;
    .locals 4

    .line 1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, LY/s;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v3, v2, LY/s;->e0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object v0, v0, Lm2/o;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, LY/P;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v2, v1, LY/P;->c:LY/s;

    .line 70
    .line 71
    iget-object v1, v2, LY/s;->e0:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    :cond_4
    const/4 v2, 0x0

    .line 84
    :goto_1
    return-object v2
.end method

.method public final C(LY/s;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, LY/s;->l0:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, LY/s;->d0:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-gtz v0, :cond_2

    .line 10
    .line 11
    :cond_1
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, LY/K;->v:Lf/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lf/b;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, LY/K;->v:Lf/b;

    .line 22
    .line 23
    iget p1, p1, LY/s;->d0:I

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lf/b;->w(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method public final D()LY/F;
    .locals 1

    .line 1
    iget-object v0, p0, LY/K;->w:LY/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LY/s;->Y:LY/K;

    .line 6
    .line 7
    invoke-virtual {v0}, LY/K;->D()LY/F;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LY/K;->y:LY/F;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final E()LY/C;
    .locals 1

    .line 1
    iget-object v0, p0, LY/K;->w:LY/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LY/s;->Y:LY/K;

    .line 6
    .line 7
    invoke-virtual {v0}, LY/K;->E()LY/C;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LY/K;->z:LY/C;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final F(LY/s;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "hide: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p1, LY/s;->f0:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, LY/s;->f0:Z

    .line 33
    .line 34
    iget-boolean v1, p1, LY/s;->q0:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, LY/s;->q0:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, LY/K;->X(LY/s;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, LY/K;->w:LY/s;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, LY/s;->r()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, LY/K;->w:LY/s;

    .line 14
    .line 15
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, LY/K;->H()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1
.end method

.method public final K(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget p2, p0, LY/K;->t:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    iput p1, p0, LY/K;->t:I

    .line 25
    .line 26
    iget-object p1, p0, LY/K;->c:Lm2/o;

    .line 27
    .line 28
    iget-object p2, p1, Lm2/o;->G:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, LY/s;

    .line 47
    .line 48
    iget-object v1, p1, Lm2/o;->H:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v0, v0, LY/s;->L:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, LY/P;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, LY/P;->k()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object p2, p1, Lm2/o;->H:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p2, Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, LY/P;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0}, LY/P;->k()V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, LY/P;->c:LY/s;

    .line 96
    .line 97
    iget-boolean v2, v1, LY/s;->S:Z

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1}, LY/s;->t()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lm2/o;->r(LY/P;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {p0}, LY/K;->Z()V

    .line 112
    .line 113
    .line 114
    iget-boolean p1, p0, LY/K;->E:Z

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    iget p2, p0, LY/K;->t:I

    .line 123
    .line 124
    const/4 v0, 0x7

    .line 125
    if-ne p2, v0, :cond_7

    .line 126
    .line 127
    iget-object p1, p1, LY/u;->Q:LY/v;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, LY/K;->E:Z

    .line 134
    .line 135
    :cond_7
    :goto_3
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LY/K;->F:Z

    .line 8
    .line 9
    iput-boolean v0, p0, LY/K;->G:Z

    .line 10
    .line 11
    iget-object v1, p0, LY/K;->M:LY/M;

    .line 12
    .line 13
    iput-boolean v0, v1, LY/M;->g:Z

    .line 14
    .line 15
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, LY/s;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 40
    .line 41
    invoke-virtual {v1}, LY/K;->L()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final M()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, LY/K;->N(II)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final N(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LY/K;->x(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, LY/K;->w(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, LY/K;->x:LY/s;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, LY/s;->k()LY/K;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, LY/K;->M()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v3, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v2, v3, p1, p2}, LY/K;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, LY/K;->b:Z

    .line 37
    .line 38
    :try_start_0
    iget-object p2, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v1, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p0, p2, v1}, LY/K;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, LY/K;->d()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, LY/K;->d()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, LY/K;->c0()V

    .line 55
    .line 56
    .line 57
    iget-boolean p2, p0, LY/K;->I:Z

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iput-boolean v0, p0, LY/K;->I:Z

    .line 62
    .line 63
    invoke-virtual {p0}, LY/K;->Z()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p2, p0, LY/K;->c:Lm2/o;

    .line 67
    .line 68
    iget-object p2, p2, Lm2/o;->H:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move v1, p1

    .line 85
    :goto_1
    return v1
.end method

.method public final O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/4 p4, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p4, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_a

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :cond_1
    if-gez p3, :cond_3

    .line 22
    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_5

    .line 27
    :cond_2
    iget-object p3, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    add-int/lit8 v3, p3, -0x1

    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_3
    iget-object v2, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v2, v0

    .line 43
    :goto_1
    if-ltz v2, :cond_5

    .line 44
    .line 45
    iget-object v4, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, LY/a;

    .line 52
    .line 53
    if-ltz p3, :cond_4

    .line 54
    .line 55
    iget v4, v4, LY/a;->t:I

    .line 56
    .line 57
    if-ne p3, v4, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    if-gez v2, :cond_7

    .line 64
    .line 65
    :cond_6
    :goto_3
    move v3, v2

    .line 66
    goto :goto_5

    .line 67
    :cond_7
    if-eqz p4, :cond_8

    .line 68
    .line 69
    :goto_4
    if-lez v2, :cond_6

    .line 70
    .line 71
    iget-object p4, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    add-int/lit8 v3, v2, -0x1

    .line 74
    .line 75
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    check-cast p4, LY/a;

    .line 80
    .line 81
    if-ltz p3, :cond_6

    .line 82
    .line 83
    iget p4, p4, LY/a;->t:I

    .line 84
    .line 85
    if-ne p3, p4, :cond_6

    .line 86
    .line 87
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_8
    iget-object p3, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p3, v0

    .line 97
    if-ne v2, p3, :cond_9

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_a
    :goto_5
    if-gez v3, :cond_b

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    goto :goto_7

    .line 107
    :cond_b
    iget-object p3, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    sub-int/2addr p3, v0

    .line 114
    :goto_6
    if-lt p3, v3, :cond_c

    .line 115
    .line 116
    iget-object p4, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    check-cast p4, LY/a;

    .line 123
    .line 124
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 p3, p3, -0x1

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_c
    :goto_7
    return v0
.end method

.method public final P(LY/s;)V
    .locals 3

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, LY/s;->X:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, LY/s;->t()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    xor-int/2addr v0, v1

    .line 43
    iget-boolean v2, p1, LY/s;->g0:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lm2/o;->s(LY/s;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, LY/K;->G(LY/s;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iput-boolean v1, p0, LY/K;->E:Z

    .line 61
    .line 62
    :cond_2
    iput-boolean v1, p1, LY/s;->S:Z

    .line 63
    .line 64
    invoke-virtual {p0, p1}, LY/K;->X(LY/s;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, LY/a;

    .line 31
    .line 32
    iget-boolean v3, v3, LY/a;->q:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    if-eq v2, v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, LY/K;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :goto_1
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, LY/a;

    .line 74
    .line 75
    iget-boolean v3, v3, LY/a;->q:Z

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, LY/K;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-eq v2, v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, LY/K;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final R(Landroid/os/Parcelable;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    const-string v4, "result_"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v5, v0, LY/K;->u:LY/u;

    .line 42
    .line 43
    iget-object v5, v5, LY/u;->N:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x7

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v5, v0, LY/K;->k:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const-string v5, "state"

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    const-string v6, "fragment_"

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    iget-object v6, v0, LY/K;->u:LY/u;

    .line 105
    .line 106
    iget-object v6, v6, LY/u;->N:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, LY/O;

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object v3, v0, LY/K;->c:Lm2/o;

    .line 126
    .line 127
    iget-object v4, v3, Lm2/o;->I:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, LY/O;

    .line 149
    .line 150
    iget-object v6, v3, Lm2/o;->I:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v6, Ljava/util/HashMap;

    .line 153
    .line 154
    iget-object v7, v4, LY/O;->H:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, LY/L;

    .line 165
    .line 166
    if-nez v1, :cond_5

    .line 167
    .line 168
    goto/16 :goto_e

    .line 169
    .line 170
    :cond_5
    iget-object v2, v3, Lm2/o;->H:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 175
    .line 176
    .line 177
    iget-object v2, v1, LY/L;->G:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    const/4 v5, 0x2

    .line 188
    iget-object v6, v0, LY/K;->m:Lm2/e;

    .line 189
    .line 190
    const/4 v7, 0x0

    .line 191
    const-string v8, "): "

    .line 192
    .line 193
    const-string v9, "FragmentManager"

    .line 194
    .line 195
    if-eqz v4, :cond_a

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v3, v4, v7}, Lm2/o;->t(Ljava/lang/String;LY/O;)LY/O;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    if-eqz v15, :cond_6

    .line 208
    .line 209
    iget-object v4, v0, LY/K;->M:LY/M;

    .line 210
    .line 211
    iget-object v4, v4, LY/M;->b:Ljava/util/HashMap;

    .line 212
    .line 213
    iget-object v7, v15, LY/O;->H:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, LY/s;

    .line 220
    .line 221
    if-eqz v4, :cond_8

    .line 222
    .line 223
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_7

    .line 228
    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v10, "restoreSaveState: re-attaching retained "

    .line 232
    .line 233
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :cond_7
    new-instance v7, LY/P;

    .line 247
    .line 248
    invoke-direct {v7, v6, v3, v4, v15}, LY/P;-><init>(Lm2/e;Lm2/o;LY/s;LY/O;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_8
    new-instance v7, LY/P;

    .line 253
    .line 254
    iget-object v4, v0, LY/K;->u:LY/u;

    .line 255
    .line 256
    iget-object v4, v4, LY/u;->N:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    invoke-virtual/range {p0 .. p0}, LY/K;->D()LY/F;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    iget-object v11, v0, LY/K;->m:Lm2/e;

    .line 267
    .line 268
    iget-object v12, v0, LY/K;->c:Lm2/o;

    .line 269
    .line 270
    move-object v10, v7

    .line 271
    invoke-direct/range {v10 .. v15}, LY/P;-><init>(Lm2/e;Lm2/o;Ljava/lang/ClassLoader;LY/F;LY/O;)V

    .line 272
    .line 273
    .line 274
    :goto_4
    iget-object v4, v7, LY/P;->c:LY/s;

    .line 275
    .line 276
    iput-object v0, v4, LY/s;->Y:LY/K;

    .line 277
    .line 278
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_9

    .line 283
    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v6, "restoreSaveState: active ("

    .line 287
    .line 288
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v6, v4, LY/s;->L:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    :cond_9
    iget-object v4, v0, LY/K;->u:LY/u;

    .line 310
    .line 311
    iget-object v4, v4, LY/u;->N:Landroid/content/Context;

    .line 312
    .line 313
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-virtual {v7, v4}, LY/P;->m(Ljava/lang/ClassLoader;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v7}, Lm2/o;->q(LY/P;)V

    .line 321
    .line 322
    .line 323
    iget v4, v0, LY/K;->t:I

    .line 324
    .line 325
    iput v4, v7, LY/P;->e:I

    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :cond_a
    iget-object v2, v0, LY/K;->M:LY/M;

    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    new-instance v4, Ljava/util/ArrayList;

    .line 335
    .line 336
    iget-object v2, v2, LY/M;->b:Ljava/util/HashMap;

    .line 337
    .line 338
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    const/4 v10, 0x1

    .line 354
    if-eqz v4, :cond_d

    .line 355
    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    check-cast v4, LY/s;

    .line 361
    .line 362
    iget-object v11, v4, LY/s;->L:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v12, v3, Lm2/o;->H:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v12, Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    if-eqz v11, :cond_b

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_b
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    if-eqz v11, :cond_c

    .line 380
    .line 381
    new-instance v11, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v12, "Discarding retained Fragment "

    .line 384
    .line 385
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v12, " that was not found in the set of active Fragments "

    .line 392
    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v12, v1, LY/L;->G:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v11

    .line 405
    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    :cond_c
    iget-object v11, v0, LY/K;->M:LY/M;

    .line 409
    .line 410
    invoke-virtual {v11, v4}, LY/M;->f(LY/s;)V

    .line 411
    .line 412
    .line 413
    iput-object v0, v4, LY/s;->Y:LY/K;

    .line 414
    .line 415
    new-instance v11, LY/P;

    .line 416
    .line 417
    invoke-direct {v11, v6, v3, v4}, LY/P;-><init>(Lm2/e;Lm2/o;LY/s;)V

    .line 418
    .line 419
    .line 420
    iput v10, v11, LY/P;->e:I

    .line 421
    .line 422
    invoke-virtual {v11}, LY/P;->k()V

    .line 423
    .line 424
    .line 425
    iput-boolean v10, v4, LY/s;->S:Z

    .line 426
    .line 427
    invoke-virtual {v11}, LY/P;->k()V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_d
    iget-object v2, v1, LY/L;->H:Ljava/util/ArrayList;

    .line 432
    .line 433
    iget-object v4, v3, Lm2/o;->G:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v4, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 438
    .line 439
    .line 440
    if-eqz v2, :cond_10

    .line 441
    .line 442
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-eqz v4, :cond_10

    .line 451
    .line 452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    check-cast v4, Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {v3, v4}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    if-eqz v6, :cond_f

    .line 463
    .line 464
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-eqz v11, :cond_e

    .line 469
    .line 470
    new-instance v11, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    const-string v12, "restoreSaveState: added ("

    .line 473
    .line 474
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    :cond_e
    invoke-virtual {v3, v6}, Lm2/o;->d(LY/s;)V

    .line 494
    .line 495
    .line 496
    goto :goto_6

    .line 497
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 498
    .line 499
    const-string v2, "No instantiated fragment for ("

    .line 500
    .line 501
    const-string v3, ")"

    .line 502
    .line 503
    invoke-static {v2, v4, v3}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw v1

    .line 511
    :cond_10
    iget-object v2, v1, LY/L;->I:[LY/b;

    .line 512
    .line 513
    if-eqz v2, :cond_18

    .line 514
    .line 515
    new-instance v2, Ljava/util/ArrayList;

    .line 516
    .line 517
    iget-object v6, v1, LY/L;->I:[LY/b;

    .line 518
    .line 519
    array-length v6, v6

    .line 520
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    .line 522
    .line 523
    iput-object v2, v0, LY/K;->d:Ljava/util/ArrayList;

    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    :goto_7
    iget-object v6, v1, LY/L;->I:[LY/b;

    .line 527
    .line 528
    array-length v7, v6

    .line 529
    if-ge v2, v7, :cond_17

    .line 530
    .line 531
    aget-object v6, v6, v2

    .line 532
    .line 533
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    .line 535
    .line 536
    new-instance v7, LY/a;

    .line 537
    .line 538
    invoke-direct {v7, v0}, LY/a;-><init>(LY/K;)V

    .line 539
    .line 540
    .line 541
    const/4 v11, 0x0

    .line 542
    const/4 v12, 0x0

    .line 543
    :goto_8
    iget-object v13, v6, LY/b;->G:[I

    .line 544
    .line 545
    array-length v14, v13

    .line 546
    if-ge v11, v14, :cond_13

    .line 547
    .line 548
    new-instance v14, LY/Q;

    .line 549
    .line 550
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 551
    .line 552
    .line 553
    add-int/lit8 v15, v11, 0x1

    .line 554
    .line 555
    aget v4, v13, v11

    .line 556
    .line 557
    iput v4, v14, LY/Q;->a:I

    .line 558
    .line 559
    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 560
    .line 561
    .line 562
    move-result v4

    .line 563
    if-eqz v4, :cond_11

    .line 564
    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    const-string v5, "Instantiate "

    .line 568
    .line 569
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v5, " op #"

    .line 576
    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v5, " base fragment #"

    .line 584
    .line 585
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    aget v5, v13, v15

    .line 589
    .line 590
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    :cond_11
    invoke-static {}, Le0/j;->values()[Le0/j;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    iget-object v5, v6, LY/b;->I:[I

    .line 605
    .line 606
    aget v5, v5, v12

    .line 607
    .line 608
    aget-object v4, v4, v5

    .line 609
    .line 610
    iput-object v4, v14, LY/Q;->h:Le0/j;

    .line 611
    .line 612
    invoke-static {}, Le0/j;->values()[Le0/j;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    iget-object v5, v6, LY/b;->J:[I

    .line 617
    .line 618
    aget v5, v5, v12

    .line 619
    .line 620
    aget-object v4, v4, v5

    .line 621
    .line 622
    iput-object v4, v14, LY/Q;->i:Le0/j;

    .line 623
    .line 624
    add-int/lit8 v4, v11, 0x2

    .line 625
    .line 626
    aget v5, v13, v15

    .line 627
    .line 628
    if-eqz v5, :cond_12

    .line 629
    .line 630
    const/4 v5, 0x1

    .line 631
    goto :goto_9

    .line 632
    :cond_12
    const/4 v5, 0x0

    .line 633
    :goto_9
    iput-boolean v5, v14, LY/Q;->c:Z

    .line 634
    .line 635
    add-int/lit8 v5, v11, 0x3

    .line 636
    .line 637
    aget v4, v13, v4

    .line 638
    .line 639
    iput v4, v14, LY/Q;->d:I

    .line 640
    .line 641
    add-int/lit8 v15, v11, 0x4

    .line 642
    .line 643
    aget v5, v13, v5

    .line 644
    .line 645
    iput v5, v14, LY/Q;->e:I

    .line 646
    .line 647
    add-int/lit8 v16, v11, 0x5

    .line 648
    .line 649
    aget v15, v13, v15

    .line 650
    .line 651
    iput v15, v14, LY/Q;->f:I

    .line 652
    .line 653
    add-int/lit8 v11, v11, 0x6

    .line 654
    .line 655
    aget v13, v13, v16

    .line 656
    .line 657
    iput v13, v14, LY/Q;->g:I

    .line 658
    .line 659
    iput v4, v7, LY/a;->d:I

    .line 660
    .line 661
    iput v5, v7, LY/a;->e:I

    .line 662
    .line 663
    iput v15, v7, LY/a;->f:I

    .line 664
    .line 665
    iput v13, v7, LY/a;->g:I

    .line 666
    .line 667
    invoke-virtual {v7, v14}, LY/a;->b(LY/Q;)V

    .line 668
    .line 669
    .line 670
    add-int/lit8 v12, v12, 0x1

    .line 671
    .line 672
    const/4 v5, 0x2

    .line 673
    goto/16 :goto_8

    .line 674
    .line 675
    :cond_13
    iget v4, v6, LY/b;->K:I

    .line 676
    .line 677
    iput v4, v7, LY/a;->h:I

    .line 678
    .line 679
    iget-object v4, v6, LY/b;->L:Ljava/lang/String;

    .line 680
    .line 681
    iput-object v4, v7, LY/a;->j:Ljava/lang/String;

    .line 682
    .line 683
    iput-boolean v10, v7, LY/a;->i:Z

    .line 684
    .line 685
    iget v4, v6, LY/b;->N:I

    .line 686
    .line 687
    iput v4, v7, LY/a;->k:I

    .line 688
    .line 689
    iget-object v4, v6, LY/b;->O:Ljava/lang/CharSequence;

    .line 690
    .line 691
    iput-object v4, v7, LY/a;->l:Ljava/lang/CharSequence;

    .line 692
    .line 693
    iget v4, v6, LY/b;->P:I

    .line 694
    .line 695
    iput v4, v7, LY/a;->m:I

    .line 696
    .line 697
    iget-object v4, v6, LY/b;->Q:Ljava/lang/CharSequence;

    .line 698
    .line 699
    iput-object v4, v7, LY/a;->n:Ljava/lang/CharSequence;

    .line 700
    .line 701
    iget-object v4, v6, LY/b;->R:Ljava/util/ArrayList;

    .line 702
    .line 703
    iput-object v4, v7, LY/a;->o:Ljava/util/ArrayList;

    .line 704
    .line 705
    iget-object v4, v6, LY/b;->S:Ljava/util/ArrayList;

    .line 706
    .line 707
    iput-object v4, v7, LY/a;->p:Ljava/util/ArrayList;

    .line 708
    .line 709
    iget-boolean v4, v6, LY/b;->T:Z

    .line 710
    .line 711
    iput-boolean v4, v7, LY/a;->q:Z

    .line 712
    .line 713
    iget v4, v6, LY/b;->M:I

    .line 714
    .line 715
    iput v4, v7, LY/a;->t:I

    .line 716
    .line 717
    const/4 v4, 0x0

    .line 718
    :goto_a
    iget-object v5, v6, LY/b;->H:Ljava/util/ArrayList;

    .line 719
    .line 720
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 721
    .line 722
    .line 723
    move-result v11

    .line 724
    if-ge v4, v11, :cond_15

    .line 725
    .line 726
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    check-cast v5, Ljava/lang/String;

    .line 731
    .line 732
    if-eqz v5, :cond_14

    .line 733
    .line 734
    iget-object v11, v7, LY/a;->c:Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v11

    .line 740
    check-cast v11, LY/Q;

    .line 741
    .line 742
    invoke-virtual {v3, v5}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    iput-object v5, v11, LY/Q;->b:LY/s;

    .line 747
    .line 748
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 749
    .line 750
    goto :goto_a

    .line 751
    :cond_15
    invoke-virtual {v7, v10}, LY/a;->c(I)V

    .line 752
    .line 753
    .line 754
    const/4 v4, 0x2

    .line 755
    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    if-eqz v5, :cond_16

    .line 760
    .line 761
    const-string v5, "restoreAllState: back stack #"

    .line 762
    .line 763
    const-string v6, " (index "

    .line 764
    .line 765
    invoke-static {v5, v2, v6}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    iget v6, v7, LY/a;->t:I

    .line 770
    .line 771
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    new-instance v5, LY/b0;

    .line 788
    .line 789
    invoke-direct {v5}, LY/b0;-><init>()V

    .line 790
    .line 791
    .line 792
    new-instance v6, Ljava/io/PrintWriter;

    .line 793
    .line 794
    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 795
    .line 796
    .line 797
    const-string v5, "  "

    .line 798
    .line 799
    const/4 v11, 0x0

    .line 800
    invoke-virtual {v7, v5, v6, v11}, LY/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 804
    .line 805
    .line 806
    goto :goto_b

    .line 807
    :cond_16
    const/4 v11, 0x0

    .line 808
    :goto_b
    iget-object v5, v0, LY/K;->d:Ljava/util/ArrayList;

    .line 809
    .line 810
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    add-int/lit8 v2, v2, 0x1

    .line 814
    .line 815
    const/4 v5, 0x2

    .line 816
    goto/16 :goto_7

    .line 817
    .line 818
    :cond_17
    const/4 v11, 0x0

    .line 819
    goto :goto_c

    .line 820
    :cond_18
    const/4 v11, 0x0

    .line 821
    iput-object v7, v0, LY/K;->d:Ljava/util/ArrayList;

    .line 822
    .line 823
    :goto_c
    iget-object v2, v0, LY/K;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 824
    .line 825
    iget v4, v1, LY/L;->J:I

    .line 826
    .line 827
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 828
    .line 829
    .line 830
    iget-object v2, v1, LY/L;->K:Ljava/lang/String;

    .line 831
    .line 832
    if-eqz v2, :cond_19

    .line 833
    .line 834
    invoke-virtual {v3, v2}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    iput-object v2, v0, LY/K;->x:LY/s;

    .line 839
    .line 840
    invoke-virtual {v0, v2}, LY/K;->q(LY/s;)V

    .line 841
    .line 842
    .line 843
    :cond_19
    iget-object v2, v1, LY/L;->L:Ljava/util/ArrayList;

    .line 844
    .line 845
    if-eqz v2, :cond_1a

    .line 846
    .line 847
    const/4 v4, 0x0

    .line 848
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    if-ge v4, v3, :cond_1a

    .line 853
    .line 854
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    check-cast v3, Ljava/lang/String;

    .line 859
    .line 860
    iget-object v5, v1, LY/L;->M:Ljava/util/ArrayList;

    .line 861
    .line 862
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    check-cast v5, LY/c;

    .line 867
    .line 868
    iget-object v6, v0, LY/K;->j:Ljava/util/Map;

    .line 869
    .line 870
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    add-int/lit8 v4, v4, 0x1

    .line 874
    .line 875
    goto :goto_d

    .line 876
    :cond_1a
    new-instance v2, Ljava/util/ArrayDeque;

    .line 877
    .line 878
    iget-object v1, v1, LY/L;->N:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 881
    .line 882
    .line 883
    iput-object v2, v0, LY/K;->D:Ljava/util/ArrayDeque;

    .line 884
    .line 885
    :goto_e
    return-void
.end method

.method public final S()Landroid/os/Bundle;
    .locals 13

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LY/K;->e()Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LY/e0;

    .line 27
    .line 28
    iget-boolean v5, v2, LY/e0;->e:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const-string v5, "FragmentManager"

    .line 33
    .line 34
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const-string v4, "SpecialEffectsController: Forcing postponed operations"

    .line 41
    .line 42
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-boolean v3, v2, LY/e0;->e:Z

    .line 46
    .line 47
    invoke-virtual {v2}, LY/e0;->c()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, LY/K;->e()Ljava/util/HashSet;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, LY/e0;

    .line 70
    .line 71
    invoke-virtual {v2}, LY/e0;->e()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, LY/K;->x(Z)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, LY/K;->F:Z

    .line 80
    .line 81
    iget-object v2, p0, LY/K;->M:LY/M;

    .line 82
    .line 83
    iput-boolean v1, v2, LY/M;->g:Z

    .line 84
    .line 85
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v5, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v5, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, LY/P;

    .line 126
    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    invoke-virtual {v5}, LY/P;->o()V

    .line 130
    .line 131
    .line 132
    iget-object v5, v5, LY/P;->c:LY/s;

    .line 133
    .line 134
    iget-object v6, v5, LY/s;->L:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const-string v6, "FragmentManager"

    .line 140
    .line 141
    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_4

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v8, "Saved state of "

    .line 150
    .line 151
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v8, ": "

    .line 158
    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v5, v5, LY/s;->H:Landroid/os/Bundle;

    .line 163
    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v5, Ljava/util/ArrayList;

    .line 181
    .line 182
    iget-object v1, v1, Lm2/o;->I:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    const-string v1, "FragmentManager"

    .line 200
    .line 201
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_f

    .line 206
    .line 207
    const-string v1, "FragmentManager"

    .line 208
    .line 209
    const-string v2, "saveAllState: no fragments!"

    .line 210
    .line 211
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto/16 :goto_8

    .line 215
    .line 216
    :cond_6
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 217
    .line 218
    iget-object v6, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v6, Ljava/util/ArrayList;

    .line 221
    .line 222
    monitor-enter v6

    .line 223
    :try_start_0
    iget-object v7, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v7, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    const/4 v8, 0x0

    .line 232
    if-eqz v7, :cond_7

    .line 233
    .line 234
    monitor-exit v6

    .line 235
    move-object v7, v8

    .line 236
    goto :goto_4

    .line 237
    :catchall_0
    move-exception v0

    .line 238
    goto/16 :goto_9

    .line 239
    .line 240
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    .line 241
    .line 242
    iget-object v9, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v9, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v1, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_9

    .line 266
    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    check-cast v9, LY/s;

    .line 272
    .line 273
    iget-object v10, v9, LY/s;->L:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    const-string v10, "FragmentManager"

    .line 279
    .line 280
    invoke-static {v10, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    if-eqz v10, :cond_8

    .line 285
    .line 286
    const-string v10, "FragmentManager"

    .line 287
    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v12, "saveAllState: adding fragment ("

    .line 294
    .line 295
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v12, v9, LY/s;->L:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v12, "): "

    .line 304
    .line 305
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_4
    iget-object v1, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 321
    .line 322
    if-eqz v1, :cond_b

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-lez v1, :cond_b

    .line 329
    .line 330
    new-array v6, v1, [LY/b;

    .line 331
    .line 332
    :goto_5
    if-ge v3, v1, :cond_c

    .line 333
    .line 334
    new-instance v9, LY/b;

    .line 335
    .line 336
    iget-object v10, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    check-cast v10, LY/a;

    .line 343
    .line 344
    invoke-direct {v9, v10}, LY/b;-><init>(LY/a;)V

    .line 345
    .line 346
    .line 347
    aput-object v9, v6, v3

    .line 348
    .line 349
    const-string v9, "FragmentManager"

    .line 350
    .line 351
    invoke-static {v9, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-eqz v9, :cond_a

    .line 356
    .line 357
    const-string v9, "FragmentManager"

    .line 358
    .line 359
    const-string v10, "saveAllState: adding back stack #"

    .line 360
    .line 361
    const-string v11, ": "

    .line 362
    .line 363
    invoke-static {v10, v3, v11}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    iget-object v11, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v10

    .line 380
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_b
    move-object v6, v8

    .line 387
    :cond_c
    new-instance v1, LY/L;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 390
    .line 391
    .line 392
    iput-object v8, v1, LY/L;->K:Ljava/lang/String;

    .line 393
    .line 394
    new-instance v3, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .line 398
    .line 399
    iput-object v3, v1, LY/L;->L:Ljava/util/ArrayList;

    .line 400
    .line 401
    new-instance v4, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .line 405
    .line 406
    iput-object v4, v1, LY/L;->M:Ljava/util/ArrayList;

    .line 407
    .line 408
    iput-object v2, v1, LY/L;->G:Ljava/util/ArrayList;

    .line 409
    .line 410
    iput-object v7, v1, LY/L;->H:Ljava/util/ArrayList;

    .line 411
    .line 412
    iput-object v6, v1, LY/L;->I:[LY/b;

    .line 413
    .line 414
    iget-object v2, p0, LY/K;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    iput v2, v1, LY/L;->J:I

    .line 421
    .line 422
    iget-object v2, p0, LY/K;->x:LY/s;

    .line 423
    .line 424
    if-eqz v2, :cond_d

    .line 425
    .line 426
    iget-object v2, v2, LY/s;->L:Ljava/lang/String;

    .line 427
    .line 428
    iput-object v2, v1, LY/L;->K:Ljava/lang/String;

    .line 429
    .line 430
    :cond_d
    iget-object v2, p0, LY/K;->j:Ljava/util/Map;

    .line 431
    .line 432
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .line 438
    .line 439
    iget-object v2, p0, LY/K;->j:Ljava/util/Map;

    .line 440
    .line 441
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    .line 447
    .line 448
    new-instance v2, Ljava/util/ArrayList;

    .line 449
    .line 450
    iget-object v3, p0, LY/K;->D:Ljava/util/ArrayDeque;

    .line 451
    .line 452
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 453
    .line 454
    .line 455
    iput-object v2, v1, LY/L;->N:Ljava/util/ArrayList;

    .line 456
    .line 457
    const-string v2, "state"

    .line 458
    .line 459
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    .line 461
    .line 462
    iget-object v1, p0, LY/K;->k:Ljava/util/Map;

    .line 463
    .line 464
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_e

    .line 477
    .line 478
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    check-cast v2, Ljava/lang/String;

    .line 483
    .line 484
    const-string v3, "result_"

    .line 485
    .line 486
    invoke-static {v3, v2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    iget-object v4, p0, LY/K;->k:Ljava/util/Map;

    .line 491
    .line 492
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    check-cast v2, Landroid/os/Bundle;

    .line 497
    .line 498
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_f

    .line 511
    .line 512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, LY/O;

    .line 517
    .line 518
    new-instance v3, Landroid/os/Bundle;

    .line 519
    .line 520
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 521
    .line 522
    .line 523
    const-string v4, "state"

    .line 524
    .line 525
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 526
    .line 527
    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    const-string v5, "fragment_"

    .line 531
    .line 532
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iget-object v2, v2, LY/O;->H:Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 545
    .line 546
    .line 547
    goto :goto_7

    .line 548
    :cond_f
    :goto_8
    return-object v0

    .line 549
    :goto_9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    throw v0
.end method

.method public final T()V
    .locals 3

    .line 1
    iget-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 14
    .line 15
    iget-object v1, v1, LY/u;->O:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, LY/K;->N:La/f;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 23
    .line 24
    iget-object v1, v1, LY/u;->O:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, LY/K;->N:La/f;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, LY/K;->c0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public final U(LY/s;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LY/K;->C(LY/s;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, LY/y;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, LY/y;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, LY/y;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final V(LY/s;Le0/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, LY/s;->L:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, LY/s;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, LY/s;->Z:LY/u;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, LY/s;->Y:LY/K;

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iput-object p2, p1, LY/s;->t0:Le0/j;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final W(LY/s;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, LY/s;->L:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, LY/s;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, LY/s;->Z:LY/u;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, LY/s;->Y:LY/K;

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, LY/K;->x:LY/s;

    .line 55
    .line 56
    iput-object p1, p0, LY/K;->x:LY/s;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, LY/K;->q(LY/s;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, LY/K;->x:LY/s;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, LY/K;->q(LY/s;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final X(LY/s;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, LY/K;->C(LY/s;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v1, p1, LY/s;->p0:LY/q;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v1, LY/q;->b:I

    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v4, v1, LY/q;->c:I

    .line 21
    .line 22
    :goto_1
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    iget v3, v1, LY/q;->d:I

    .line 28
    .line 29
    :goto_2
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    iget v1, v1, LY/q;->e:I

    .line 35
    .line 36
    :goto_3
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_7

    .line 38
    .line 39
    const v1, 0x7f0b05ac

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, LY/s;

    .line 56
    .line 57
    iget-object p1, p1, LY/s;->p0:LY/q;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    iget-boolean v2, p1, LY/q;->a:Z

    .line 63
    .line 64
    :goto_4
    iget-object p1, v0, LY/s;->p0:LY/q;

    .line 65
    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_6
    invoke-virtual {v0}, LY/s;->i()LY/q;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-boolean v2, p1, LY/q;->a:Z

    .line 74
    .line 75
    :cond_7
    :goto_5
    return-void
.end method

.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm2/o;->l()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LY/P;

    .line 22
    .line 23
    iget-object v2, v1, LY/P;->c:LY/s;

    .line 24
    .line 25
    iget-boolean v3, v2, LY/s;->n0:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, LY/K;->b:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, LY/K;->I:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v2, LY/s;->n0:Z

    .line 39
    .line 40
    invoke-virtual {v1}, LY/P;->k()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final a(LY/s;)LY/P;
    .locals 3

    .line 1
    iget-object v0, p1, LY/s;->s0:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, v0}, LZ/c;->d(LY/s;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "add: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0, p1}, LY/K;->f(LY/s;)LY/P;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, LY/s;->Y:LY/K;

    .line 39
    .line 40
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lm2/o;->q(LY/P;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, LY/s;->g0:Z

    .line 46
    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lm2/o;->d(LY/s;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, LY/s;->S:Z

    .line 54
    .line 55
    iget-object v2, p1, LY/s;->m0:Landroid/view/View;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iput-boolean v1, p1, LY/s;->q0:Z

    .line 60
    .line 61
    :cond_2
    invoke-static {p1}, LY/K;->G(LY/s;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, LY/K;->E:Z

    .line 69
    .line 70
    :cond_3
    return-object v0
.end method

.method public final a0(Ljava/lang/IllegalStateException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, LY/b0;

    .line 16
    .line 17
    invoke-direct {v0}, LY/b0;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, LY/u;->Q:LY/v;

    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, LY/v;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, LY/K;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    throw p1
.end method

.method public final b(LY/u;Lf/b;LY/s;)V
    .locals 5

    .line 1
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    iput-object p1, p0, LY/K;->u:LY/u;

    .line 6
    .line 7
    iput-object p2, p0, LY/K;->v:Lf/b;

    .line 8
    .line 9
    iput-object p3, p0, LY/K;->w:LY/s;

    .line 10
    .line 11
    iget-object p2, p0, LY/K;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    new-instance v0, LY/G;

    .line 16
    .line 17
    invoke-direct {v0, p3}, LY/G;-><init>(LY/s;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, LY/N;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p2, p0, LY/K;->w:LY/s;

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, LY/K;->c0()V

    .line 36
    .line 37
    .line 38
    :cond_2
    instance-of p2, p1, La/y;

    .line 39
    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    iget-object p2, p1, LY/u;->Q:LY/v;

    .line 43
    .line 44
    iget-object p2, p2, La/m;->M:La/x;

    .line 45
    .line 46
    iput-object p2, p0, LY/K;->g:La/x;

    .line 47
    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    move-object v0, p3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-object v0, p1

    .line 53
    :goto_1
    iget-object v1, p0, LY/K;->h:LY/D;

    .line 54
    .line 55
    invoke-virtual {p2, v0, v1}, La/x;->a(Le0/m;LY/D;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    const/4 p2, 0x0

    .line 59
    if-eqz p3, :cond_6

    .line 60
    .line 61
    iget-object p1, p3, LY/s;->Y:LY/K;

    .line 62
    .line 63
    iget-object p1, p1, LY/K;->M:LY/M;

    .line 64
    .line 65
    iget-object v0, p1, LY/M;->c:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v1, p3, LY/s;->L:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, LY/M;

    .line 74
    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    new-instance v1, LY/M;

    .line 78
    .line 79
    iget-boolean p1, p1, LY/M;->e:Z

    .line 80
    .line 81
    invoke-direct {v1, p1}, LY/M;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p3, LY/s;->L:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_5
    iput-object v1, p0, LY/K;->M:LY/M;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    instance-of v0, p1, Le0/L;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    iget-object p1, p1, LY/u;->Q:LY/v;

    .line 97
    .line 98
    invoke-virtual {p1}, La/m;->c()Le0/K;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance v0, Le0/J;

    .line 103
    .line 104
    sget-object v1, LY/M;->h:LF2/G;

    .line 105
    .line 106
    invoke-direct {v0, p1, v1}, Le0/J;-><init>(Le0/K;LF2/G;)V

    .line 107
    .line 108
    .line 109
    const-class p1, LY/M;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Le0/J;->a(Ljava/lang/Class;)Le0/G;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, LY/M;

    .line 116
    .line 117
    iput-object p1, p0, LY/K;->M:LY/M;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    new-instance p1, LY/M;

    .line 121
    .line 122
    invoke-direct {p1, p2}, LY/M;-><init>(Z)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, LY/K;->M:LY/M;

    .line 126
    .line 127
    :goto_2
    iget-object p1, p0, LY/K;->M:LY/M;

    .line 128
    .line 129
    iget-boolean v0, p0, LY/K;->F:Z

    .line 130
    .line 131
    if-nez v0, :cond_9

    .line 132
    .line 133
    iget-boolean v0, p0, LY/K;->G:Z

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    const/4 v0, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_9
    :goto_3
    const/4 v0, 0x1

    .line 141
    :goto_4
    iput-boolean v0, p1, LY/M;->g:Z

    .line 142
    .line 143
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 144
    .line 145
    iput-object p1, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 146
    .line 147
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 148
    .line 149
    instance-of v0, p1, LS1/g;

    .line 150
    .line 151
    const/4 v1, 0x2

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    if-nez p3, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1}, LY/u;->d()LS1/e;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v0, La/d;

    .line 161
    .line 162
    invoke-direct {v0, p0, v1}, La/d;-><init>(Ljava/lang/Object;I)V

    .line 163
    .line 164
    .line 165
    const-string v2, "android:support:fragments"

    .line 166
    .line 167
    invoke-virtual {p1, v2, v0}, LS1/e;->c(Ljava/lang/String;LS1/d;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, LS1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0, p1}, LY/K;->R(Landroid/os/Parcelable;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 180
    .line 181
    instance-of v0, p1, Lc/f;

    .line 182
    .line 183
    if-eqz v0, :cond_c

    .line 184
    .line 185
    iget-object p1, p1, LY/u;->Q:LY/v;

    .line 186
    .line 187
    iget-object p1, p1, La/m;->P:La/h;

    .line 188
    .line 189
    if-eqz p3, :cond_b

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v2, p3, LY/s;->L:Ljava/lang/String;

    .line 197
    .line 198
    const-string v3, ":"

    .line 199
    .line 200
    invoke-static {v0, v2, v3}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_5

    .line 205
    :cond_b
    const-string v0, ""

    .line 206
    .line 207
    :goto_5
    const-string v2, "FragmentManager:"

    .line 208
    .line 209
    invoke-static {v2, v0}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v2, "StartActivityForResult"

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    new-instance v3, Ld/b;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    new-instance v4, LY/C;

    .line 225
    .line 226
    invoke-direct {v4, p0, v1}, LY/C;-><init>(LY/K;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v2, v3, v4}, Lc/e;->b(Ljava/lang/String;LQ3/b;LY/C;)Lm2/u;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iput-object v1, p0, LY/K;->A:Lm2/u;

    .line 234
    .line 235
    const-string v1, "StartIntentSenderForResult"

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    new-instance v2, LX1/i;

    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v3, LY/C;

    .line 247
    .line 248
    const/4 v4, 0x3

    .line 249
    invoke-direct {v3, p0, v4}, LY/C;-><init>(LY/K;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v1, v2, v3}, Lc/e;->b(Ljava/lang/String;LQ3/b;LY/C;)Lm2/u;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iput-object v1, p0, LY/K;->B:Lm2/u;

    .line 257
    .line 258
    const-string v1, "RequestPermissions"

    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    new-instance v1, Ld/a;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 267
    .line 268
    .line 269
    new-instance v2, LY/C;

    .line 270
    .line 271
    invoke-direct {v2, p0, p2}, LY/C;-><init>(LY/K;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0, v1, v2}, Lc/e;->b(Ljava/lang/String;LQ3/b;LY/C;)Lm2/u;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iput-object p1, p0, LY/K;->C:Lm2/u;

    .line 279
    .line 280
    :cond_c
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 281
    .line 282
    instance-of p2, p1, LE/d;

    .line 283
    .line 284
    if-eqz p2, :cond_d

    .line 285
    .line 286
    iget-object p2, p0, LY/K;->o:LY/B;

    .line 287
    .line 288
    invoke-virtual {p1, p2}, LY/u;->H0(LM/a;)V

    .line 289
    .line 290
    .line 291
    :cond_d
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 292
    .line 293
    instance-of p2, p1, LE/e;

    .line 294
    .line 295
    if-eqz p2, :cond_e

    .line 296
    .line 297
    iget-object p2, p0, LY/K;->p:LY/B;

    .line 298
    .line 299
    invoke-virtual {p1, p2}, LY/u;->K0(LY/B;)V

    .line 300
    .line 301
    .line 302
    :cond_e
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 303
    .line 304
    instance-of p2, p1, LD/v;

    .line 305
    .line 306
    if-eqz p2, :cond_f

    .line 307
    .line 308
    iget-object p2, p0, LY/K;->q:LY/B;

    .line 309
    .line 310
    invoke-virtual {p1, p2}, LY/u;->I0(LY/B;)V

    .line 311
    .line 312
    .line 313
    :cond_f
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 314
    .line 315
    instance-of p2, p1, LD/w;

    .line 316
    .line 317
    if-eqz p2, :cond_10

    .line 318
    .line 319
    iget-object p2, p0, LY/K;->r:LY/B;

    .line 320
    .line 321
    invoke-virtual {p1, p2}, LY/u;->J0(LY/B;)V

    .line 322
    .line 323
    .line 324
    :cond_10
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 325
    .line 326
    instance-of p2, p1, LN/n;

    .line 327
    .line 328
    if-eqz p2, :cond_11

    .line 329
    .line 330
    if-nez p3, :cond_11

    .line 331
    .line 332
    iget-object p2, p0, LY/K;->s:LY/E;

    .line 333
    .line 334
    invoke-virtual {p1, p2}, LY/u;->G0(LY/E;)V

    .line 335
    .line 336
    .line 337
    :cond_11
    return-void

    .line 338
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    const-string p2, "Already attached"

    .line 341
    .line 342
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw p1
.end method

.method public final b0()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, LY/K;->w:LY/s;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, LY/K;->w:LY/s;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_0
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final c(LY/s;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, LY/s;->g0:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p1, LY/s;->g0:Z

    .line 33
    .line 34
    iget-boolean v2, p1, LY/s;->R:Z

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, LY/K;->c:Lm2/o;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lm2/o;->d(LY/s;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {p1}, LY/K;->G(LY/s;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, LY/K;->E:Z

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public final c0()V
    .locals 3

    .line 1
    iget-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, LY/K;->h:LY/D;

    .line 14
    .line 15
    iput-boolean v2, v1, La/q;->a:Z

    .line 16
    .line 17
    iget-object v1, v1, La/q;->c:LC6/a;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, LC6/a;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, LY/K;->h:LY/D;

    .line 30
    .line 31
    iget-object v1, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, LY/K;->w:LY/s;

    .line 42
    .line 43
    invoke-static {v1}, LY/K;->J(LY/s;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v2, 0x0

    .line 51
    :goto_0
    iput-boolean v2, v0, La/q;->a:Z

    .line 52
    .line 53
    iget-object v0, v0, La/q;->c:LC6/a;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, LC6/a;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void

    .line 61
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v1
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LY/K;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()Ljava/util/HashSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 7
    .line 8
    invoke-virtual {v1}, Lm2/o;->l()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LY/P;

    .line 27
    .line 28
    iget-object v2, v2, LY/P;->c:LY/s;

    .line 29
    .line 30
    iget-object v2, v2, LY/s;->l0:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, LY/K;->E()LY/C;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final f(LY/s;)LY/P;
    .locals 3

    .line 1
    iget-object v0, p1, LY/s;->L:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 4
    .line 5
    iget-object v2, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LY/P;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, LY/P;

    .line 19
    .line 20
    iget-object v2, p0, LY/K;->m:Lm2/e;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, LY/P;-><init>(Lm2/e;Lm2/o;LY/s;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, LY/K;->u:LY/u;

    .line 26
    .line 27
    iget-object p1, p1, LY/u;->N:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, LY/P;->m(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, LY/K;->t:I

    .line 37
    .line 38
    iput p1, v0, LY/P;->e:I

    .line 39
    .line 40
    :goto_0
    return-object v0
.end method

.method public final g(LY/s;)V
    .locals 4

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v2, p1, LY/s;->g0:Z

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, LY/s;->g0:Z

    .line 33
    .line 34
    iget-boolean v3, p1, LY/s;->R:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lm2/o;->s(LY/s;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, LY/K;->G(LY/s;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iput-boolean v2, p0, LY/K;->E:Z

    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0, p1}, LY/K;->X(LY/s;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final h(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    instance-of v0, v0, LE/d;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, LY/K;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, LY/s;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput-boolean v2, v1, LY/s;->k0:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, LY/K;->h(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    return-void
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget v0, p0, LY/K;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, LY/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, LY/s;->f0:Z

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    iget-object v3, v3, LY/s;->a0:LY/K;

    .line 37
    .line 38
    invoke-virtual {v3}, LY/K;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    :goto_0
    return v1
.end method

.method public final j()Z
    .locals 7

    .line 1
    iget v0, p0, LY/K;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, LY/s;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, LY/K;->I(LY/s;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    iget-boolean v6, v5, LY/s;->f0:Z

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    iget-object v6, v5, LY/s;->a0:LY/K;

    .line 45
    .line 46
    invoke-virtual {v6}, LY/K;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    :goto_1
    iget-object v0, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ge v1, v0, :cond_6

    .line 75
    .line 76
    iget-object v0, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, LY/s;

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    iput-object v3, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    return v4
.end method

.method public final k()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/K;->H:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, LY/K;->x(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, LY/K;->e()Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, LY/e0;

    .line 26
    .line 27
    invoke-virtual {v2}, LY/e0;->e()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 32
    .line 33
    instance-of v2, v1, Le0/L;

    .line 34
    .line 35
    iget-object v3, p0, LY/K;->c:Lm2/o;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v0, v3, Lm2/o;->J:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, LY/M;

    .line 42
    .line 43
    iget-boolean v0, v0, LY/M;->f:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, v1, LY/u;->N:Landroid/content/Context;

    .line 47
    .line 48
    instance-of v2, v1, Landroid/app/Activity;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    check-cast v1, Landroid/app/Activity;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    xor-int/2addr v0, v1

    .line 59
    :goto_1
    if-eqz v0, :cond_5

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, LY/K;->j:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, LY/c;

    .line 82
    .line 83
    iget-object v1, v1, LY/c;->G:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, v3, Lm2/o;->J:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v4, LY/M;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const-string v5, "FragmentManager"

    .line 109
    .line 110
    const/4 v6, 0x3

    .line 111
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    const-string v6, "Clearing non-config state for saved state of Fragment "

    .line 118
    .line 119
    invoke-static {v6, v2, v5}, La/r;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-virtual {v4, v2}, LY/M;->e(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const/4 v0, -0x1

    .line 127
    invoke-virtual {p0, v0}, LY/K;->t(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 131
    .line 132
    instance-of v1, v0, LE/e;

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    iget-object v1, p0, LY/K;->p:LY/B;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, LY/u;->P0(LY/B;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 142
    .line 143
    instance-of v1, v0, LE/d;

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, LY/K;->o:LY/B;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, LY/u;->M0(LY/B;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 153
    .line 154
    instance-of v1, v0, LD/v;

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    iget-object v1, p0, LY/K;->q:LY/B;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, LY/u;->N0(LY/B;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 164
    .line 165
    instance-of v1, v0, LD/w;

    .line 166
    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    iget-object v1, p0, LY/K;->r:LY/B;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, LY/u;->O0(LY/B;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 175
    .line 176
    instance-of v1, v0, LN/n;

    .line 177
    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    iget-object v1, p0, LY/K;->s:LY/E;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, LY/u;->L0(LY/E;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, LY/K;->u:LY/u;

    .line 187
    .line 188
    iput-object v0, p0, LY/K;->v:Lf/b;

    .line 189
    .line 190
    iput-object v0, p0, LY/K;->w:LY/s;

    .line 191
    .line 192
    iget-object v1, p0, LY/K;->g:La/x;

    .line 193
    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    iget-object v1, p0, LY/K;->h:LY/D;

    .line 197
    .line 198
    iget-object v1, v1, La/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_b

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, La/a;

    .line 215
    .line 216
    invoke-interface {v2}, La/a;->cancel()V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_b
    iput-object v0, p0, LY/K;->g:La/x;

    .line 221
    .line 222
    :cond_c
    iget-object v0, p0, LY/K;->A:Lm2/u;

    .line 223
    .line 224
    if-eqz v0, :cond_d

    .line 225
    .line 226
    invoke-virtual {v0}, Lm2/u;->U()V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, LY/K;->B:Lm2/u;

    .line 230
    .line 231
    invoke-virtual {v0}, Lm2/u;->U()V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, LY/K;->C:Lm2/u;

    .line 235
    .line 236
    invoke-virtual {v0}, Lm2/u;->U()V

    .line 237
    .line 238
    .line 239
    :cond_d
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    instance-of v0, v0, LE/e;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, LY/K;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, LY/s;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput-boolean v2, v1, LY/s;->k0:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, LY/K;->l(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    return-void
.end method

.method public final m(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    instance-of v0, v0, LD/v;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, LY/K;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, LY/s;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, p1, v2}, LY/K;->m(ZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm2/o;->n()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LY/s;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, LY/s;->s()Z

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 29
    .line 30
    invoke-virtual {v1}, LY/K;->n()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 5

    .line 1
    iget v0, p0, LY/K;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, LY/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-boolean v4, v3, LY/s;->f0:Z

    .line 33
    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    iget-object v3, v3, LY/s;->a0:LY/K;

    .line 37
    .line 38
    invoke-virtual {v3}, LY/K;->o()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    :goto_0
    return v1
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, LY/K;->t:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 8
    .line 9
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LY/s;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-boolean v2, v1, LY/s;->f0:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 36
    .line 37
    invoke-virtual {v1}, LY/K;->p()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    return-void
.end method

.method public final q(LY/s;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, LY/s;->L:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, LY/s;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, LY/s;->Y:LY/K;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, LY/K;->J(LY/s;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, LY/s;->Q:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, LY/s;->Q:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget-object p1, p1, LY/s;->a0:LY/K;

    .line 43
    .line 44
    invoke-virtual {p1}, LY/K;->c0()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, LY/K;->x:LY/s;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, LY/K;->q(LY/s;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final r(ZZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    instance-of v0, v0, LD/w;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, LY/K;->a0(Ljava/lang/IllegalStateException;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 23
    .line 24
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, LY/s;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object v1, v1, LY/s;->a0:LY/K;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, p1, v2}, LY/K;->r(ZZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final s()Z
    .locals 5

    .line 1
    iget v0, p0, LY/K;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, LY/K;->c:Lm2/o;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm2/o;->o()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, LY/s;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v3}, LY/K;->I(LY/s;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-boolean v4, v3, LY/s;->f0:Z

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    iget-object v3, v3, LY/s;->a0:LY/K;

    .line 43
    .line 44
    invoke-virtual {v3}, LY/K;->s()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return v1
.end method

.method public final t(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, LY/K;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, LY/K;->c:Lm2/o;

    .line 6
    .line 7
    iget-object v2, v2, Lm2/o;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, LY/P;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iput p1, v3, LY/P;->e:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1, v1}, LY/K;->K(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, LY/K;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, LY/e0;

    .line 58
    .line 59
    invoke-virtual {v2}, LY/e0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-boolean v1, p0, LY/K;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, LY/K;->x(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iput-boolean v1, p0, LY/K;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY/K;->b0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, LY/K;->c:Lm2/o;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "Active Fragments:"

    .line 43
    .line 44
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lm2/o;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, LY/P;

    .line 70
    .line 71
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eqz v4, :cond_0

    .line 75
    .line 76
    iget-object v4, v4, LY/P;->c:LY/s;

    .line 77
    .line 78
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2, p2, p3, p4}, LY/s;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v4, "null"

    .line 86
    .line 87
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p2, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p2, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    const/4 p4, 0x0

    .line 100
    if-lez p2, :cond_2

    .line 101
    .line 102
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v2, "Added Fragments:"

    .line 106
    .line 107
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    :goto_1
    if-ge v2, p2, :cond_2

    .line 112
    .line 113
    iget-object v3, v1, Lm2/o;->G:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, LY/s;

    .line 122
    .line 123
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v4, "  #"

    .line 127
    .line 128
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 132
    .line 133
    .line 134
    const-string v4, ": "

    .line 135
    .line 136
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, LY/s;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    iget-object p2, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 150
    .line 151
    if-eqz p2, :cond_3

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-lez p2, :cond_3

    .line 158
    .line 159
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "Fragments Created Menus:"

    .line 163
    .line 164
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    :goto_2
    if-ge v1, p2, :cond_3

    .line 169
    .line 170
    iget-object v2, p0, LY/K;->e:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, LY/s;

    .line 177
    .line 178
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v3, "  #"

    .line 182
    .line 183
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 187
    .line 188
    .line 189
    const-string v3, ": "

    .line 190
    .line 191
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, LY/s;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    iget-object p2, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 205
    .line 206
    if-eqz p2, :cond_4

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-lez p2, :cond_4

    .line 213
    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const-string v1, "Back Stack:"

    .line 218
    .line 219
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    :goto_3
    if-ge v1, p2, :cond_4

    .line 224
    .line 225
    iget-object v2, p0, LY/K;->d:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, LY/a;

    .line 232
    .line 233
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v3, "  #"

    .line 237
    .line 238
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    .line 243
    .line 244
    const-string v3, ": "

    .line 245
    .line 246
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, LY/a;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const/4 v3, 0x1

    .line 257
    invoke-virtual {v2, v0, p3, v3}, LY/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v0, "Back Stack Index: "

    .line 269
    .line 270
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, LY/K;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object p2, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 290
    .line 291
    monitor-enter p2

    .line 292
    :try_start_0
    iget-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-lez v0, :cond_5

    .line 299
    .line 300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v1, "Pending Actions:"

    .line 304
    .line 305
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    if-ge p4, v0, :cond_5

    .line 309
    .line 310
    iget-object v1, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    check-cast v1, LY/I;

    .line 317
    .line 318
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v2, "  #"

    .line 322
    .line 323
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    .line 328
    .line 329
    const-string v2, ": "

    .line 330
    .line 331
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    add-int/lit8 p4, p4, 0x1

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :catchall_0
    move-exception p1

    .line 341
    goto :goto_5

    .line 342
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string p2, "FragmentManager misc state:"

    .line 347
    .line 348
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string p2, "  mHost="

    .line 355
    .line 356
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object p2, p0, LY/K;->u:LY/u;

    .line 360
    .line 361
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const-string p2, "  mContainer="

    .line 368
    .line 369
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object p2, p0, LY/K;->v:Lf/b;

    .line 373
    .line 374
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p2, p0, LY/K;->w:LY/s;

    .line 378
    .line 379
    if-eqz p2, :cond_6

    .line 380
    .line 381
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const-string p2, "  mParent="

    .line 385
    .line 386
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-object p2, p0, LY/K;->w:LY/s;

    .line 390
    .line 391
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string p2, "  mCurState="

    .line 398
    .line 399
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget p2, p0, LY/K;->t:I

    .line 403
    .line 404
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 405
    .line 406
    .line 407
    const-string p2, " mStateSaved="

    .line 408
    .line 409
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-boolean p2, p0, LY/K;->F:Z

    .line 413
    .line 414
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 415
    .line 416
    .line 417
    const-string p2, " mStopped="

    .line 418
    .line 419
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-boolean p2, p0, LY/K;->G:Z

    .line 423
    .line 424
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 425
    .line 426
    .line 427
    const-string p2, " mDestroyed="

    .line 428
    .line 429
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    iget-boolean p2, p0, LY/K;->H:Z

    .line 433
    .line 434
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 435
    .line 436
    .line 437
    iget-boolean p2, p0, LY/K;->E:Z

    .line 438
    .line 439
    if-eqz p2, :cond_7

    .line 440
    .line 441
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string p1, "  mNeedMenuInvalidate="

    .line 445
    .line 446
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-boolean p1, p0, LY/K;->E:Z

    .line 450
    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 452
    .line 453
    .line 454
    :cond_7
    return-void

    .line 455
    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    throw p1
.end method

.method public final v(LY/I;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, LY/K;->H:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-boolean v0, p0, LY/K;->F:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-boolean v0, p0, LY/K;->G:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_3
    :goto_0
    iget-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "Activity has been destroyed"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_5
    iget-object p2, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, LY/K;->T()V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    :goto_1
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public final w(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LY/K;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, LY/K;->H:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 34
    .line 35
    iget-object v1, v1, LY/u;->O:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_5

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, LY/K;->F:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-boolean p1, p0, LY/K;->G:Z

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    :goto_0
    iget-object p1, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final x(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, LY/K;->w(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v2, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v4, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_2

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_4

    .line 25
    :cond_0
    :try_start_1
    iget-object v4, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_1
    if-ge v5, v4, :cond_1

    .line 34
    .line 35
    iget-object v7, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, LY/I;

    .line 42
    .line 43
    invoke-interface {v7, v1, v2}, LY/I;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 44
    .line 45
    .line 46
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    or-int/2addr v6, v7

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :try_start_2
    iget-object v1, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, LY/K;->u:LY/u;

    .line 59
    .line 60
    iget-object v1, v1, LY/u;->O:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object v2, p0, LY/K;->N:La/f;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, LY/K;->b:Z

    .line 72
    .line 73
    :try_start_3
    iget-object v1, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v2, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0, v1, v2}, LY/K;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, LY/K;->d()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_2
    move-exception p1

    .line 85
    invoke-virtual {p0}, LY/K;->d()V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_2
    :goto_2
    invoke-virtual {p0}, LY/K;->c0()V

    .line 90
    .line 91
    .line 92
    iget-boolean v1, p0, LY/K;->I:Z

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    iput-boolean p1, p0, LY/K;->I:Z

    .line 97
    .line 98
    invoke-virtual {p0}, LY/K;->Z()V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, LY/K;->c:Lm2/o;

    .line 102
    .line 103
    iget-object p1, p1, Lm2/o;->H:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {p1, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    return v0

    .line 120
    :goto_3
    :try_start_4
    iget-object v0, p0, LY/K;->a:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 126
    .line 127
    iget-object v0, v0, LY/u;->O:Landroid/os/Handler;

    .line 128
    .line 129
    iget-object v1, p0, LY/K;->N:La/f;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    throw p1
.end method

.method public final y(LY/I;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, LY/K;->u:LY/u;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, LY/K;->H:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, LY/K;->w(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1, p2, v0}, LY/I;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, LY/K;->b:Z

    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, LY/K;->J:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object p2, p0, LY/K;->K:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, LY/K;->Q(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, LY/K;->d()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, LY/K;->d()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, LY/K;->c0()V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, LY/K;->I:Z

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, LY/K;->I:Z

    .line 53
    .line 54
    invoke-virtual {p0}, LY/K;->Z()V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, LY/K;->c:Lm2/o;

    .line 58
    .line 59
    iget-object p1, p1, Lm2/o;->H:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    return-void
.end method

.method public final z(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 20

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
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p3

    .line 10
    .line 11
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, LY/a;

    .line 16
    .line 17
    iget-boolean v5, v5, LY/a;->q:Z

    .line 18
    .line 19
    iget-object v6, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v6, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v7, v0, LY/K;->c:Lm2/o;

    .line 37
    .line 38
    invoke-virtual {v7}, Lm2/o;->o()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    iget-object v6, v0, LY/K;->x:LY/s;

    .line 46
    .line 47
    move v9, v4

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    const/4 v11, 0x1

    .line 50
    if-ge v9, v3, :cond_12

    .line 51
    .line 52
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    check-cast v13, LY/a;

    .line 57
    .line 58
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    check-cast v14, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-nez v14, :cond_c

    .line 69
    .line 70
    iget-object v14, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    :goto_2
    iget-object v8, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-ge v12, v8, :cond_b

    .line 80
    .line 81
    iget-object v8, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, LY/Q;

    .line 88
    .line 89
    iget v15, v8, LY/Q;->a:I

    .line 90
    .line 91
    if-eq v15, v11, :cond_3

    .line 92
    .line 93
    const/4 v11, 0x2

    .line 94
    const/16 v4, 0x9

    .line 95
    .line 96
    if-eq v15, v11, :cond_5

    .line 97
    .line 98
    const/4 v11, 0x3

    .line 99
    if-eq v15, v11, :cond_4

    .line 100
    .line 101
    const/4 v11, 0x6

    .line 102
    if-eq v15, v11, :cond_4

    .line 103
    .line 104
    const/4 v11, 0x7

    .line 105
    if-eq v15, v11, :cond_3

    .line 106
    .line 107
    const/16 v11, 0x8

    .line 108
    .line 109
    if-eq v15, v11, :cond_1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_1
    iget-object v11, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 113
    .line 114
    new-instance v15, LY/Q;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v15, v4, v6, v2}, LY/Q;-><init>(ILY/s;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v12, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    iput-boolean v2, v8, LY/Q;->c:Z

    .line 125
    .line 126
    add-int/lit8 v12, v12, 0x1

    .line 127
    .line 128
    iget-object v2, v8, LY/Q;->b:LY/s;

    .line 129
    .line 130
    move-object v6, v2

    .line 131
    :cond_2
    :goto_3
    move-object/from16 v18, v7

    .line 132
    .line 133
    :goto_4
    const/4 v1, 0x1

    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :cond_3
    move-object/from16 v18, v7

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    goto/16 :goto_8

    .line 140
    .line 141
    :cond_4
    iget-object v2, v8, LY/Q;->b:LY/s;

    .line 142
    .line 143
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v2, v8, LY/Q;->b:LY/s;

    .line 147
    .line 148
    if-ne v2, v6, :cond_2

    .line 149
    .line 150
    iget-object v6, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance v8, LY/Q;

    .line 153
    .line 154
    invoke-direct {v8, v4, v2}, LY/Q;-><init>(ILY/s;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v12, v12, 0x1

    .line 161
    .line 162
    move-object/from16 v18, v7

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    const/4 v6, 0x0

    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_5
    iget-object v2, v8, LY/Q;->b:LY/s;

    .line 169
    .line 170
    iget v11, v2, LY/s;->d0:I

    .line 171
    .line 172
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    const/16 v16, 0x1

    .line 177
    .line 178
    add-int/lit8 v15, v15, -0x1

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    :goto_5
    if-ltz v15, :cond_9

    .line 183
    .line 184
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v18

    .line 188
    move-object/from16 v4, v18

    .line 189
    .line 190
    check-cast v4, LY/s;

    .line 191
    .line 192
    move-object/from16 v18, v7

    .line 193
    .line 194
    iget v7, v4, LY/s;->d0:I

    .line 195
    .line 196
    if-ne v7, v11, :cond_8

    .line 197
    .line 198
    if-ne v4, v2, :cond_6

    .line 199
    .line 200
    move/from16 v19, v11

    .line 201
    .line 202
    const/16 v17, 0x1

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :cond_6
    if-ne v4, v6, :cond_7

    .line 206
    .line 207
    iget-object v6, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 208
    .line 209
    new-instance v7, LY/Q;

    .line 210
    .line 211
    move/from16 v19, v11

    .line 212
    .line 213
    const/16 v1, 0x9

    .line 214
    .line 215
    const/4 v11, 0x0

    .line 216
    invoke-direct {v7, v1, v4, v11}, LY/Q;-><init>(ILY/s;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v12, v12, 0x1

    .line 223
    .line 224
    const/4 v6, 0x0

    .line 225
    goto :goto_6

    .line 226
    :cond_7
    move/from16 v19, v11

    .line 227
    .line 228
    const/16 v1, 0x9

    .line 229
    .line 230
    const/4 v11, 0x0

    .line 231
    :goto_6
    new-instance v7, LY/Q;

    .line 232
    .line 233
    const/4 v1, 0x3

    .line 234
    invoke-direct {v7, v1, v4, v11}, LY/Q;-><init>(ILY/s;I)V

    .line 235
    .line 236
    .line 237
    iget v1, v8, LY/Q;->d:I

    .line 238
    .line 239
    iput v1, v7, LY/Q;->d:I

    .line 240
    .line 241
    iget v1, v8, LY/Q;->f:I

    .line 242
    .line 243
    iput v1, v7, LY/Q;->f:I

    .line 244
    .line 245
    iget v1, v8, LY/Q;->e:I

    .line 246
    .line 247
    iput v1, v7, LY/Q;->e:I

    .line 248
    .line 249
    iget v1, v8, LY/Q;->g:I

    .line 250
    .line 251
    iput v1, v7, LY/Q;->g:I

    .line 252
    .line 253
    iget-object v1, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v1, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    const/4 v1, 0x1

    .line 262
    add-int/2addr v12, v1

    .line 263
    goto :goto_7

    .line 264
    :cond_8
    move/from16 v19, v11

    .line 265
    .line 266
    :goto_7
    add-int/lit8 v15, v15, -0x1

    .line 267
    .line 268
    move-object/from16 v1, p1

    .line 269
    .line 270
    move-object/from16 v7, v18

    .line 271
    .line 272
    move/from16 v11, v19

    .line 273
    .line 274
    const/16 v4, 0x9

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_9
    move-object/from16 v18, v7

    .line 278
    .line 279
    if-eqz v17, :cond_a

    .line 280
    .line 281
    iget-object v1, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    add-int/lit8 v12, v12, -0x1

    .line 287
    .line 288
    goto/16 :goto_4

    .line 289
    .line 290
    :cond_a
    const/4 v1, 0x1

    .line 291
    iput v1, v8, LY/Q;->a:I

    .line 292
    .line 293
    iput-boolean v1, v8, LY/Q;->c:Z

    .line 294
    .line 295
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_9

    .line 299
    :goto_8
    iget-object v2, v8, LY/Q;->b:LY/s;

    .line 300
    .line 301
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    :goto_9
    add-int/2addr v12, v1

    .line 305
    move-object/from16 v1, p1

    .line 306
    .line 307
    move-object/from16 v2, p2

    .line 308
    .line 309
    move/from16 v4, p3

    .line 310
    .line 311
    move-object/from16 v7, v18

    .line 312
    .line 313
    const/4 v11, 0x1

    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :cond_b
    move-object/from16 v18, v7

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_c
    move-object/from16 v18, v7

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    iget-object v2, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 323
    .line 324
    iget-object v4, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    sub-int/2addr v4, v1

    .line 331
    :goto_a
    if-ltz v4, :cond_f

    .line 332
    .line 333
    iget-object v7, v13, LY/a;->c:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    check-cast v7, LY/Q;

    .line 340
    .line 341
    iget v8, v7, LY/Q;->a:I

    .line 342
    .line 343
    if-eq v8, v1, :cond_e

    .line 344
    .line 345
    const/4 v1, 0x3

    .line 346
    if-eq v8, v1, :cond_d

    .line 347
    .line 348
    packed-switch v8, :pswitch_data_0

    .line 349
    .line 350
    .line 351
    goto :goto_b

    .line 352
    :pswitch_0
    iget-object v8, v7, LY/Q;->h:Le0/j;

    .line 353
    .line 354
    iput-object v8, v7, LY/Q;->i:Le0/j;

    .line 355
    .line 356
    goto :goto_b

    .line 357
    :pswitch_1
    iget-object v6, v7, LY/Q;->b:LY/s;

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :pswitch_2
    const/4 v6, 0x0

    .line 361
    goto :goto_b

    .line 362
    :cond_d
    :pswitch_3
    iget-object v7, v7, LY/Q;->b:LY/s;

    .line 363
    .line 364
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_e
    const/4 v1, 0x3

    .line 369
    :pswitch_4
    iget-object v7, v7, LY/Q;->b:LY/s;

    .line 370
    .line 371
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    :goto_b
    add-int/lit8 v4, v4, -0x1

    .line 375
    .line 376
    const/4 v1, 0x1

    .line 377
    goto :goto_a

    .line 378
    :cond_f
    :goto_c
    if-nez v10, :cond_11

    .line 379
    .line 380
    iget-boolean v1, v13, LY/a;->i:Z

    .line 381
    .line 382
    if-eqz v1, :cond_10

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_10
    const/4 v10, 0x0

    .line 386
    goto :goto_e

    .line 387
    :cond_11
    :goto_d
    const/4 v10, 0x1

    .line 388
    :goto_e
    add-int/lit8 v9, v9, 0x1

    .line 389
    .line 390
    move-object/from16 v1, p1

    .line 391
    .line 392
    move-object/from16 v2, p2

    .line 393
    .line 394
    move/from16 v4, p3

    .line 395
    .line 396
    move-object/from16 v7, v18

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_12
    move-object/from16 v18, v7

    .line 401
    .line 402
    iget-object v1, v0, LY/K;->L:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 405
    .line 406
    .line 407
    if-nez v5, :cond_15

    .line 408
    .line 409
    iget v1, v0, LY/K;->t:I

    .line 410
    .line 411
    const/4 v2, 0x1

    .line 412
    if-lt v1, v2, :cond_15

    .line 413
    .line 414
    move/from16 v1, p3

    .line 415
    .line 416
    :goto_f
    if-ge v1, v3, :cond_15

    .line 417
    .line 418
    move-object/from16 v2, p1

    .line 419
    .line 420
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    check-cast v4, LY/a;

    .line 425
    .line 426
    iget-object v4, v4, LY/a;->c:Ljava/util/ArrayList;

    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_14

    .line 437
    .line 438
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    check-cast v5, LY/Q;

    .line 443
    .line 444
    iget-object v5, v5, LY/Q;->b:LY/s;

    .line 445
    .line 446
    if-eqz v5, :cond_13

    .line 447
    .line 448
    iget-object v6, v5, LY/s;->Y:LY/K;

    .line 449
    .line 450
    if-eqz v6, :cond_13

    .line 451
    .line 452
    invoke-virtual {v0, v5}, LY/K;->f(LY/s;)LY/P;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    move-object/from16 v6, v18

    .line 457
    .line 458
    invoke-virtual {v6, v5}, Lm2/o;->q(LY/P;)V

    .line 459
    .line 460
    .line 461
    goto :goto_11

    .line 462
    :cond_13
    move-object/from16 v6, v18

    .line 463
    .line 464
    :goto_11
    move-object/from16 v18, v6

    .line 465
    .line 466
    goto :goto_10

    .line 467
    :cond_14
    move-object/from16 v6, v18

    .line 468
    .line 469
    add-int/lit8 v1, v1, 0x1

    .line 470
    .line 471
    goto :goto_f

    .line 472
    :cond_15
    move-object/from16 v2, p1

    .line 473
    .line 474
    move/from16 v1, p3

    .line 475
    .line 476
    :goto_12
    const/4 v4, -0x1

    .line 477
    if-ge v1, v3, :cond_22

    .line 478
    .line 479
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    check-cast v5, LY/a;

    .line 484
    .line 485
    move-object/from16 v6, p2

    .line 486
    .line 487
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    check-cast v7, Ljava/lang/Boolean;

    .line 492
    .line 493
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    const-string v8, "Unknown cmd: "

    .line 498
    .line 499
    if-eqz v7, :cond_1e

    .line 500
    .line 501
    invoke-virtual {v5, v4}, LY/a;->c(I)V

    .line 502
    .line 503
    .line 504
    iget-object v4, v5, LY/a;->c:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    const/4 v7, 0x1

    .line 511
    sub-int/2addr v4, v7

    .line 512
    :goto_13
    if-ltz v4, :cond_1d

    .line 513
    .line 514
    iget-object v7, v5, LY/a;->c:Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    check-cast v7, LY/Q;

    .line 521
    .line 522
    iget-object v9, v7, LY/Q;->b:LY/s;

    .line 523
    .line 524
    if-eqz v9, :cond_1c

    .line 525
    .line 526
    iget-object v10, v9, LY/s;->p0:LY/q;

    .line 527
    .line 528
    if-nez v10, :cond_16

    .line 529
    .line 530
    goto :goto_14

    .line 531
    :cond_16
    invoke-virtual {v9}, LY/s;->i()LY/q;

    .line 532
    .line 533
    .line 534
    move-result-object v10

    .line 535
    const/4 v11, 0x1

    .line 536
    iput-boolean v11, v10, LY/q;->a:Z

    .line 537
    .line 538
    :goto_14
    iget v10, v5, LY/a;->h:I

    .line 539
    .line 540
    const/16 v11, 0x2002

    .line 541
    .line 542
    const/16 v12, 0x1001

    .line 543
    .line 544
    if-eq v10, v12, :cond_1a

    .line 545
    .line 546
    if-eq v10, v11, :cond_19

    .line 547
    .line 548
    const/16 v11, 0x1004

    .line 549
    .line 550
    const/16 v12, 0x2005

    .line 551
    .line 552
    if-eq v10, v12, :cond_1a

    .line 553
    .line 554
    const/16 v13, 0x1003

    .line 555
    .line 556
    if-eq v10, v13, :cond_18

    .line 557
    .line 558
    if-eq v10, v11, :cond_17

    .line 559
    .line 560
    const/4 v11, 0x0

    .line 561
    goto :goto_15

    .line 562
    :cond_17
    const/16 v11, 0x2005

    .line 563
    .line 564
    goto :goto_15

    .line 565
    :cond_18
    const/16 v11, 0x1003

    .line 566
    .line 567
    goto :goto_15

    .line 568
    :cond_19
    const/16 v11, 0x1001

    .line 569
    .line 570
    :cond_1a
    :goto_15
    iget-object v10, v9, LY/s;->p0:LY/q;

    .line 571
    .line 572
    if-nez v10, :cond_1b

    .line 573
    .line 574
    if-nez v11, :cond_1b

    .line 575
    .line 576
    goto :goto_16

    .line 577
    :cond_1b
    invoke-virtual {v9}, LY/s;->i()LY/q;

    .line 578
    .line 579
    .line 580
    iget-object v10, v9, LY/s;->p0:LY/q;

    .line 581
    .line 582
    iput v11, v10, LY/q;->f:I

    .line 583
    .line 584
    :goto_16
    iget-object v10, v5, LY/a;->p:Ljava/util/ArrayList;

    .line 585
    .line 586
    iget-object v11, v5, LY/a;->o:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {v9}, LY/s;->i()LY/q;

    .line 589
    .line 590
    .line 591
    iget-object v12, v9, LY/s;->p0:LY/q;

    .line 592
    .line 593
    iput-object v10, v12, LY/q;->g:Ljava/util/ArrayList;

    .line 594
    .line 595
    iput-object v11, v12, LY/q;->h:Ljava/util/ArrayList;

    .line 596
    .line 597
    :cond_1c
    iget v10, v7, LY/Q;->a:I

    .line 598
    .line 599
    iget-object v11, v5, LY/a;->r:LY/K;

    .line 600
    .line 601
    packed-switch v10, :pswitch_data_1

    .line 602
    .line 603
    .line 604
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 605
    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget v3, v7, LY/Q;->a:I

    .line 612
    .line 613
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v1

    .line 624
    :pswitch_6
    iget-object v7, v7, LY/Q;->h:Le0/j;

    .line 625
    .line 626
    invoke-virtual {v11, v9, v7}, LY/K;->V(LY/s;Le0/j;)V

    .line 627
    .line 628
    .line 629
    :goto_17
    const/4 v7, 0x1

    .line 630
    goto/16 :goto_18

    .line 631
    .line 632
    :pswitch_7
    invoke-virtual {v11, v9}, LY/K;->W(LY/s;)V

    .line 633
    .line 634
    .line 635
    goto :goto_17

    .line 636
    :pswitch_8
    const/4 v7, 0x0

    .line 637
    invoke-virtual {v11, v7}, LY/K;->W(LY/s;)V

    .line 638
    .line 639
    .line 640
    goto :goto_17

    .line 641
    :pswitch_9
    iget v10, v7, LY/Q;->d:I

    .line 642
    .line 643
    iget v12, v7, LY/Q;->e:I

    .line 644
    .line 645
    iget v13, v7, LY/Q;->f:I

    .line 646
    .line 647
    iget v7, v7, LY/Q;->g:I

    .line 648
    .line 649
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 650
    .line 651
    .line 652
    const/4 v7, 0x1

    .line 653
    invoke-virtual {v11, v9, v7}, LY/K;->U(LY/s;Z)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v11, v9}, LY/K;->g(LY/s;)V

    .line 657
    .line 658
    .line 659
    goto :goto_17

    .line 660
    :pswitch_a
    iget v10, v7, LY/Q;->d:I

    .line 661
    .line 662
    iget v12, v7, LY/Q;->e:I

    .line 663
    .line 664
    iget v13, v7, LY/Q;->f:I

    .line 665
    .line 666
    iget v7, v7, LY/Q;->g:I

    .line 667
    .line 668
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v11, v9}, LY/K;->c(LY/s;)V

    .line 672
    .line 673
    .line 674
    goto :goto_17

    .line 675
    :pswitch_b
    iget v10, v7, LY/Q;->d:I

    .line 676
    .line 677
    iget v12, v7, LY/Q;->e:I

    .line 678
    .line 679
    iget v13, v7, LY/Q;->f:I

    .line 680
    .line 681
    iget v7, v7, LY/Q;->g:I

    .line 682
    .line 683
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 684
    .line 685
    .line 686
    const/4 v7, 0x1

    .line 687
    invoke-virtual {v11, v9, v7}, LY/K;->U(LY/s;Z)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v11, v9}, LY/K;->F(LY/s;)V

    .line 691
    .line 692
    .line 693
    goto :goto_17

    .line 694
    :pswitch_c
    iget v10, v7, LY/Q;->d:I

    .line 695
    .line 696
    iget v12, v7, LY/Q;->e:I

    .line 697
    .line 698
    iget v13, v7, LY/Q;->f:I

    .line 699
    .line 700
    iget v7, v7, LY/Q;->g:I

    .line 701
    .line 702
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    .line 707
    .line 708
    invoke-static {v9}, LY/K;->Y(LY/s;)V

    .line 709
    .line 710
    .line 711
    goto :goto_17

    .line 712
    :pswitch_d
    iget v10, v7, LY/Q;->d:I

    .line 713
    .line 714
    iget v12, v7, LY/Q;->e:I

    .line 715
    .line 716
    iget v13, v7, LY/Q;->f:I

    .line 717
    .line 718
    iget v7, v7, LY/Q;->g:I

    .line 719
    .line 720
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v11, v9}, LY/K;->a(LY/s;)LY/P;

    .line 724
    .line 725
    .line 726
    goto :goto_17

    .line 727
    :pswitch_e
    iget v10, v7, LY/Q;->d:I

    .line 728
    .line 729
    iget v12, v7, LY/Q;->e:I

    .line 730
    .line 731
    iget v13, v7, LY/Q;->f:I

    .line 732
    .line 733
    iget v7, v7, LY/Q;->g:I

    .line 734
    .line 735
    invoke-virtual {v9, v10, v12, v13, v7}, LY/s;->O(IIII)V

    .line 736
    .line 737
    .line 738
    const/4 v7, 0x1

    .line 739
    invoke-virtual {v11, v9, v7}, LY/K;->U(LY/s;Z)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v11, v9}, LY/K;->P(LY/s;)V

    .line 743
    .line 744
    .line 745
    :goto_18
    add-int/lit8 v4, v4, -0x1

    .line 746
    .line 747
    goto/16 :goto_13

    .line 748
    .line 749
    :cond_1d
    const/4 v9, 0x0

    .line 750
    const/4 v11, 0x0

    .line 751
    goto/16 :goto_1e

    .line 752
    .line 753
    :cond_1e
    const/4 v7, 0x1

    .line 754
    invoke-virtual {v5, v7}, LY/a;->c(I)V

    .line 755
    .line 756
    .line 757
    iget-object v4, v5, LY/a;->c:Ljava/util/ArrayList;

    .line 758
    .line 759
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    const/4 v7, 0x0

    .line 764
    :goto_19
    if-ge v7, v4, :cond_1d

    .line 765
    .line 766
    iget-object v9, v5, LY/a;->c:Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v9

    .line 772
    check-cast v9, LY/Q;

    .line 773
    .line 774
    iget-object v10, v9, LY/Q;->b:LY/s;

    .line 775
    .line 776
    if-eqz v10, :cond_21

    .line 777
    .line 778
    iget-object v11, v10, LY/s;->p0:LY/q;

    .line 779
    .line 780
    if-nez v11, :cond_1f

    .line 781
    .line 782
    goto :goto_1a

    .line 783
    :cond_1f
    invoke-virtual {v10}, LY/s;->i()LY/q;

    .line 784
    .line 785
    .line 786
    move-result-object v11

    .line 787
    const/4 v12, 0x0

    .line 788
    iput-boolean v12, v11, LY/q;->a:Z

    .line 789
    .line 790
    :goto_1a
    iget v11, v5, LY/a;->h:I

    .line 791
    .line 792
    iget-object v12, v10, LY/s;->p0:LY/q;

    .line 793
    .line 794
    if-nez v12, :cond_20

    .line 795
    .line 796
    if-nez v11, :cond_20

    .line 797
    .line 798
    goto :goto_1b

    .line 799
    :cond_20
    invoke-virtual {v10}, LY/s;->i()LY/q;

    .line 800
    .line 801
    .line 802
    iget-object v12, v10, LY/s;->p0:LY/q;

    .line 803
    .line 804
    iput v11, v12, LY/q;->f:I

    .line 805
    .line 806
    :goto_1b
    iget-object v11, v5, LY/a;->o:Ljava/util/ArrayList;

    .line 807
    .line 808
    iget-object v12, v5, LY/a;->p:Ljava/util/ArrayList;

    .line 809
    .line 810
    invoke-virtual {v10}, LY/s;->i()LY/q;

    .line 811
    .line 812
    .line 813
    iget-object v13, v10, LY/s;->p0:LY/q;

    .line 814
    .line 815
    iput-object v11, v13, LY/q;->g:Ljava/util/ArrayList;

    .line 816
    .line 817
    iput-object v12, v13, LY/q;->h:Ljava/util/ArrayList;

    .line 818
    .line 819
    :cond_21
    iget v11, v9, LY/Q;->a:I

    .line 820
    .line 821
    iget-object v12, v5, LY/a;->r:LY/K;

    .line 822
    .line 823
    packed-switch v11, :pswitch_data_2

    .line 824
    .line 825
    .line 826
    :pswitch_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 827
    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    iget v3, v9, LY/Q;->a:I

    .line 834
    .line 835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    throw v1

    .line 846
    :pswitch_10
    iget-object v9, v9, LY/Q;->i:Le0/j;

    .line 847
    .line 848
    invoke-virtual {v12, v10, v9}, LY/K;->V(LY/s;Le0/j;)V

    .line 849
    .line 850
    .line 851
    const/4 v9, 0x0

    .line 852
    const/4 v11, 0x0

    .line 853
    goto/16 :goto_1d

    .line 854
    .line 855
    :pswitch_11
    const/4 v11, 0x0

    .line 856
    invoke-virtual {v12, v11}, LY/K;->W(LY/s;)V

    .line 857
    .line 858
    .line 859
    :goto_1c
    const/4 v9, 0x0

    .line 860
    goto :goto_1d

    .line 861
    :pswitch_12
    const/4 v11, 0x0

    .line 862
    invoke-virtual {v12, v10}, LY/K;->W(LY/s;)V

    .line 863
    .line 864
    .line 865
    goto :goto_1c

    .line 866
    :pswitch_13
    const/4 v11, 0x0

    .line 867
    iget v13, v9, LY/Q;->d:I

    .line 868
    .line 869
    iget v14, v9, LY/Q;->e:I

    .line 870
    .line 871
    iget v15, v9, LY/Q;->f:I

    .line 872
    .line 873
    iget v9, v9, LY/Q;->g:I

    .line 874
    .line 875
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 876
    .line 877
    .line 878
    const/4 v9, 0x0

    .line 879
    invoke-virtual {v12, v10, v9}, LY/K;->U(LY/s;Z)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v12, v10}, LY/K;->c(LY/s;)V

    .line 883
    .line 884
    .line 885
    goto :goto_1c

    .line 886
    :pswitch_14
    const/4 v11, 0x0

    .line 887
    iget v13, v9, LY/Q;->d:I

    .line 888
    .line 889
    iget v14, v9, LY/Q;->e:I

    .line 890
    .line 891
    iget v15, v9, LY/Q;->f:I

    .line 892
    .line 893
    iget v9, v9, LY/Q;->g:I

    .line 894
    .line 895
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v12, v10}, LY/K;->g(LY/s;)V

    .line 899
    .line 900
    .line 901
    goto :goto_1c

    .line 902
    :pswitch_15
    const/4 v11, 0x0

    .line 903
    iget v13, v9, LY/Q;->d:I

    .line 904
    .line 905
    iget v14, v9, LY/Q;->e:I

    .line 906
    .line 907
    iget v15, v9, LY/Q;->f:I

    .line 908
    .line 909
    iget v9, v9, LY/Q;->g:I

    .line 910
    .line 911
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 912
    .line 913
    .line 914
    const/4 v9, 0x0

    .line 915
    invoke-virtual {v12, v10, v9}, LY/K;->U(LY/s;Z)V

    .line 916
    .line 917
    .line 918
    invoke-static {v10}, LY/K;->Y(LY/s;)V

    .line 919
    .line 920
    .line 921
    goto :goto_1c

    .line 922
    :pswitch_16
    const/4 v11, 0x0

    .line 923
    iget v13, v9, LY/Q;->d:I

    .line 924
    .line 925
    iget v14, v9, LY/Q;->e:I

    .line 926
    .line 927
    iget v15, v9, LY/Q;->f:I

    .line 928
    .line 929
    iget v9, v9, LY/Q;->g:I

    .line 930
    .line 931
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v12, v10}, LY/K;->F(LY/s;)V

    .line 935
    .line 936
    .line 937
    goto :goto_1c

    .line 938
    :pswitch_17
    const/4 v11, 0x0

    .line 939
    iget v13, v9, LY/Q;->d:I

    .line 940
    .line 941
    iget v14, v9, LY/Q;->e:I

    .line 942
    .line 943
    iget v15, v9, LY/Q;->f:I

    .line 944
    .line 945
    iget v9, v9, LY/Q;->g:I

    .line 946
    .line 947
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v12, v10}, LY/K;->P(LY/s;)V

    .line 951
    .line 952
    .line 953
    goto :goto_1c

    .line 954
    :pswitch_18
    const/4 v11, 0x0

    .line 955
    iget v13, v9, LY/Q;->d:I

    .line 956
    .line 957
    iget v14, v9, LY/Q;->e:I

    .line 958
    .line 959
    iget v15, v9, LY/Q;->f:I

    .line 960
    .line 961
    iget v9, v9, LY/Q;->g:I

    .line 962
    .line 963
    invoke-virtual {v10, v13, v14, v15, v9}, LY/s;->O(IIII)V

    .line 964
    .line 965
    .line 966
    const/4 v9, 0x0

    .line 967
    invoke-virtual {v12, v10, v9}, LY/K;->U(LY/s;Z)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v12, v10}, LY/K;->a(LY/s;)LY/P;

    .line 971
    .line 972
    .line 973
    :goto_1d
    add-int/lit8 v7, v7, 0x1

    .line 974
    .line 975
    goto/16 :goto_19

    .line 976
    .line 977
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    .line 978
    .line 979
    goto/16 :goto_12

    .line 980
    .line 981
    :cond_22
    move-object/from16 v6, p2

    .line 982
    .line 983
    add-int/lit8 v1, v3, -0x1

    .line 984
    .line 985
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    check-cast v1, Ljava/lang/Boolean;

    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    move/from16 v5, p3

    .line 996
    .line 997
    :goto_1f
    if-ge v5, v3, :cond_27

    .line 998
    .line 999
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    check-cast v7, LY/a;

    .line 1004
    .line 1005
    if-eqz v1, :cond_24

    .line 1006
    .line 1007
    iget-object v8, v7, LY/a;->c:Ljava/util/ArrayList;

    .line 1008
    .line 1009
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1010
    .line 1011
    .line 1012
    move-result v8

    .line 1013
    const/4 v9, 0x1

    .line 1014
    sub-int/2addr v8, v9

    .line 1015
    :goto_20
    if-ltz v8, :cond_26

    .line 1016
    .line 1017
    iget-object v9, v7, LY/a;->c:Ljava/util/ArrayList;

    .line 1018
    .line 1019
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v9

    .line 1023
    check-cast v9, LY/Q;

    .line 1024
    .line 1025
    iget-object v9, v9, LY/Q;->b:LY/s;

    .line 1026
    .line 1027
    if-eqz v9, :cond_23

    .line 1028
    .line 1029
    invoke-virtual {v0, v9}, LY/K;->f(LY/s;)LY/P;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v9

    .line 1033
    invoke-virtual {v9}, LY/P;->k()V

    .line 1034
    .line 1035
    .line 1036
    :cond_23
    add-int/lit8 v8, v8, -0x1

    .line 1037
    .line 1038
    goto :goto_20

    .line 1039
    :cond_24
    iget-object v7, v7, LY/a;->c:Ljava/util/ArrayList;

    .line 1040
    .line 1041
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    :cond_25
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v8

    .line 1049
    if-eqz v8, :cond_26

    .line 1050
    .line 1051
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v8

    .line 1055
    check-cast v8, LY/Q;

    .line 1056
    .line 1057
    iget-object v8, v8, LY/Q;->b:LY/s;

    .line 1058
    .line 1059
    if-eqz v8, :cond_25

    .line 1060
    .line 1061
    invoke-virtual {v0, v8}, LY/K;->f(LY/s;)LY/P;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v8

    .line 1065
    invoke-virtual {v8}, LY/P;->k()V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_21

    .line 1069
    :cond_26
    add-int/lit8 v5, v5, 0x1

    .line 1070
    .line 1071
    goto :goto_1f

    .line 1072
    :cond_27
    iget v5, v0, LY/K;->t:I

    .line 1073
    .line 1074
    const/4 v7, 0x1

    .line 1075
    invoke-virtual {v0, v5, v7}, LY/K;->K(IZ)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v5, Ljava/util/HashSet;

    .line 1079
    .line 1080
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1081
    .line 1082
    .line 1083
    move/from16 v7, p3

    .line 1084
    .line 1085
    :goto_22
    if-ge v7, v3, :cond_2a

    .line 1086
    .line 1087
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v8

    .line 1091
    check-cast v8, LY/a;

    .line 1092
    .line 1093
    iget-object v8, v8, LY/a;->c:Ljava/util/ArrayList;

    .line 1094
    .line 1095
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v8

    .line 1099
    :cond_28
    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v9

    .line 1103
    if-eqz v9, :cond_29

    .line 1104
    .line 1105
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v9

    .line 1109
    check-cast v9, LY/Q;

    .line 1110
    .line 1111
    iget-object v9, v9, LY/Q;->b:LY/s;

    .line 1112
    .line 1113
    if-eqz v9, :cond_28

    .line 1114
    .line 1115
    iget-object v9, v9, LY/s;->l0:Landroid/view/ViewGroup;

    .line 1116
    .line 1117
    if-eqz v9, :cond_28

    .line 1118
    .line 1119
    invoke-virtual/range {p0 .. p0}, LY/K;->E()LY/C;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v10

    .line 1123
    invoke-static {v9, v10}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v9

    .line 1127
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1128
    .line 1129
    .line 1130
    goto :goto_23

    .line 1131
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 1132
    .line 1133
    goto :goto_22

    .line 1134
    :cond_2a
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v5

    .line 1138
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v7

    .line 1142
    if-eqz v7, :cond_2b

    .line 1143
    .line 1144
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v7

    .line 1148
    check-cast v7, LY/e0;

    .line 1149
    .line 1150
    iput-boolean v1, v7, LY/e0;->d:Z

    .line 1151
    .line 1152
    invoke-virtual {v7}, LY/e0;->g()V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v7}, LY/e0;->c()V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_24

    .line 1159
    :cond_2b
    move/from16 v1, p3

    .line 1160
    .line 1161
    :goto_25
    if-ge v1, v3, :cond_2d

    .line 1162
    .line 1163
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v5

    .line 1167
    check-cast v5, LY/a;

    .line 1168
    .line 1169
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v7

    .line 1173
    check-cast v7, Ljava/lang/Boolean;

    .line 1174
    .line 1175
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1176
    .line 1177
    .line 1178
    move-result v7

    .line 1179
    if-eqz v7, :cond_2c

    .line 1180
    .line 1181
    iget v7, v5, LY/a;->t:I

    .line 1182
    .line 1183
    if-ltz v7, :cond_2c

    .line 1184
    .line 1185
    iput v4, v5, LY/a;->t:I

    .line 1186
    .line 1187
    :cond_2c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    .line 1189
    .line 1190
    add-int/lit8 v1, v1, 0x1

    .line 1191
    .line 1192
    goto :goto_25

    .line 1193
    :cond_2d
    return-void

    .line 1194
    nop

    .line 1195
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
