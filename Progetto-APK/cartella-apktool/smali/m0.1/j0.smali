.class public Lm0/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Ljava/util/HashMap;

.field public E:Ljava/util/HashSet;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lz4/H;

.field public n:Lz4/H;

.field public o:I

.field public p:Lz4/H;

.field public q:I

.field public r:I

.field public s:I

.field public t:Lz4/H;

.field public u:Lm0/i0;

.field public v:Lz4/H;

.field public w:I

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lm0/j0;->a:I

    .line 3
    iput v0, p0, Lm0/j0;->b:I

    .line 4
    iput v0, p0, Lm0/j0;->c:I

    .line 5
    iput v0, p0, Lm0/j0;->d:I

    .line 6
    iput v0, p0, Lm0/j0;->i:I

    .line 7
    iput v0, p0, Lm0/j0;->j:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lm0/j0;->k:Z

    .line 9
    iput-boolean v1, p0, Lm0/j0;->l:Z

    .line 10
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 11
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 12
    iput-object v2, p0, Lm0/j0;->m:Lz4/H;

    .line 13
    iput-object v2, p0, Lm0/j0;->n:Lz4/H;

    const/4 v3, 0x0

    .line 14
    iput v3, p0, Lm0/j0;->o:I

    .line 15
    iput-object v2, p0, Lm0/j0;->p:Lz4/H;

    .line 16
    iput v3, p0, Lm0/j0;->q:I

    .line 17
    iput v0, p0, Lm0/j0;->r:I

    .line 18
    iput v0, p0, Lm0/j0;->s:I

    .line 19
    iput-object v2, p0, Lm0/j0;->t:Lz4/H;

    .line 20
    sget-object v0, Lm0/i0;->a:Lm0/i0;

    iput-object v0, p0, Lm0/j0;->u:Lm0/i0;

    .line 21
    iput-object v2, p0, Lm0/j0;->v:Lz4/H;

    .line 22
    iput v3, p0, Lm0/j0;->w:I

    .line 23
    iput-boolean v1, p0, Lm0/j0;->x:Z

    .line 24
    iput v3, p0, Lm0/j0;->y:I

    .line 25
    iput-boolean v3, p0, Lm0/j0;->z:Z

    .line 26
    iput-boolean v3, p0, Lm0/j0;->A:Z

    .line 27
    iput-boolean v3, p0, Lm0/j0;->B:Z

    .line 28
    iput-boolean v3, p0, Lm0/j0;->C:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm0/j0;->D:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lm0/j0;->E:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lm0/k0;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lm0/j0;->d(Lm0/k0;)V

    return-void
.end method


# virtual methods
.method public a(Lm0/h0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/j0;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lm0/h0;->a:Lm0/g0;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b()Lm0/k0;
    .locals 1

    .line 1
    new-instance v0, Lm0/k0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm0/k0;-><init>(Lm0/j0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(I)Lm0/j0;
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/j0;->D:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lm0/h0;

    .line 22
    .line 23
    iget-object v1, v1, Lm0/h0;->a:Lm0/g0;

    .line 24
    .line 25
    iget v1, v1, Lm0/g0;->c:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object p0
.end method

.method public final d(Lm0/k0;)V
    .locals 2

    .line 1
    iget v0, p1, Lm0/k0;->a:I

    .line 2
    .line 3
    iput v0, p0, Lm0/j0;->a:I

    .line 4
    .line 5
    iget v0, p1, Lm0/k0;->b:I

    .line 6
    .line 7
    iput v0, p0, Lm0/j0;->b:I

    .line 8
    .line 9
    iget v0, p1, Lm0/k0;->c:I

    .line 10
    .line 11
    iput v0, p0, Lm0/j0;->c:I

    .line 12
    .line 13
    iget v0, p1, Lm0/k0;->d:I

    .line 14
    .line 15
    iput v0, p0, Lm0/j0;->d:I

    .line 16
    .line 17
    iget v0, p1, Lm0/k0;->e:I

    .line 18
    .line 19
    iput v0, p0, Lm0/j0;->e:I

    .line 20
    .line 21
    iget v0, p1, Lm0/k0;->f:I

    .line 22
    .line 23
    iput v0, p0, Lm0/j0;->f:I

    .line 24
    .line 25
    iget v0, p1, Lm0/k0;->g:I

    .line 26
    .line 27
    iput v0, p0, Lm0/j0;->g:I

    .line 28
    .line 29
    iget v0, p1, Lm0/k0;->h:I

    .line 30
    .line 31
    iput v0, p0, Lm0/j0;->h:I

    .line 32
    .line 33
    iget v0, p1, Lm0/k0;->i:I

    .line 34
    .line 35
    iput v0, p0, Lm0/j0;->i:I

    .line 36
    .line 37
    iget v0, p1, Lm0/k0;->j:I

    .line 38
    .line 39
    iput v0, p0, Lm0/j0;->j:I

    .line 40
    .line 41
    iget-boolean v0, p1, Lm0/k0;->k:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lm0/j0;->k:Z

    .line 44
    .line 45
    iget-boolean v0, p1, Lm0/k0;->l:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lm0/j0;->l:Z

    .line 48
    .line 49
    iget-object v0, p1, Lm0/k0;->m:Lz4/H;

    .line 50
    .line 51
    iput-object v0, p0, Lm0/j0;->m:Lz4/H;

    .line 52
    .line 53
    iget-object v0, p1, Lm0/k0;->n:Lz4/H;

    .line 54
    .line 55
    iput-object v0, p0, Lm0/j0;->n:Lz4/H;

    .line 56
    .line 57
    iget v0, p1, Lm0/k0;->o:I

    .line 58
    .line 59
    iput v0, p0, Lm0/j0;->o:I

    .line 60
    .line 61
    iget-object v0, p1, Lm0/k0;->p:Lz4/H;

    .line 62
    .line 63
    iput-object v0, p0, Lm0/j0;->p:Lz4/H;

    .line 64
    .line 65
    iget v0, p1, Lm0/k0;->q:I

    .line 66
    .line 67
    iput v0, p0, Lm0/j0;->q:I

    .line 68
    .line 69
    iget v0, p1, Lm0/k0;->r:I

    .line 70
    .line 71
    iput v0, p0, Lm0/j0;->r:I

    .line 72
    .line 73
    iget v0, p1, Lm0/k0;->s:I

    .line 74
    .line 75
    iput v0, p0, Lm0/j0;->s:I

    .line 76
    .line 77
    iget-object v0, p1, Lm0/k0;->t:Lz4/H;

    .line 78
    .line 79
    iput-object v0, p0, Lm0/j0;->t:Lz4/H;

    .line 80
    .line 81
    iget-object v0, p1, Lm0/k0;->u:Lm0/i0;

    .line 82
    .line 83
    iput-object v0, p0, Lm0/j0;->u:Lm0/i0;

    .line 84
    .line 85
    iget-object v0, p1, Lm0/k0;->v:Lz4/H;

    .line 86
    .line 87
    iput-object v0, p0, Lm0/j0;->v:Lz4/H;

    .line 88
    .line 89
    iget v0, p1, Lm0/k0;->w:I

    .line 90
    .line 91
    iput v0, p0, Lm0/j0;->w:I

    .line 92
    .line 93
    iget-boolean v0, p1, Lm0/k0;->x:Z

    .line 94
    .line 95
    iput-boolean v0, p0, Lm0/j0;->x:Z

    .line 96
    .line 97
    iget v0, p1, Lm0/k0;->y:I

    .line 98
    .line 99
    iput v0, p0, Lm0/j0;->y:I

    .line 100
    .line 101
    iget-boolean v0, p1, Lm0/k0;->z:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lm0/j0;->z:Z

    .line 104
    .line 105
    iget-boolean v0, p1, Lm0/k0;->A:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lm0/j0;->A:Z

    .line 108
    .line 109
    iget-boolean v0, p1, Lm0/k0;->B:Z

    .line 110
    .line 111
    iput-boolean v0, p0, Lm0/j0;->B:Z

    .line 112
    .line 113
    iget-boolean v0, p1, Lm0/k0;->C:Z

    .line 114
    .line 115
    iput-boolean v0, p0, Lm0/j0;->C:Z

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashSet;

    .line 118
    .line 119
    iget-object v1, p1, Lm0/k0;->E:Lz4/L;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lm0/j0;->E:Ljava/util/HashSet;

    .line 125
    .line 126
    new-instance v0, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object p1, p1, Lm0/k0;->D:Lz4/J;

    .line 129
    .line 130
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lm0/j0;->D:Ljava/util/HashMap;

    .line 134
    .line 135
    return-void
.end method

.method public e()Lm0/j0;
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lm0/j0;->y:I

    .line 3
    .line 4
    return-object p0
.end method

.method public f(Lm0/h0;)Lm0/j0;
    .locals 2

    .line 1
    iget-object v0, p1, Lm0/h0;->a:Lm0/g0;

    .line 2
    .line 3
    iget v1, v0, Lm0/g0;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lm0/j0;->c(I)Lm0/j0;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lm0/j0;->D:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public g()Lm0/j0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lm0/j0;->h([Ljava/lang/String;)Lm0/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public varargs h([Ljava/lang/String;)Lm0/j0;
    .locals 5

    .line 1
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, p1, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v4}, Lp0/M;->S(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v0, v4}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lm0/j0;->v:Lz4/H;

    .line 30
    .line 31
    iput-boolean v2, p0, Lm0/j0;->x:Z

    .line 32
    .line 33
    return-object p0
.end method

.method public i()Lm0/j0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm0/j0;->w:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lm0/j0;->x:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public j(IZ)Lm0/j0;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lm0/j0;->E:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lm0/j0;->E:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method
