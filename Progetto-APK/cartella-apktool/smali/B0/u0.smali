.class public final LB0/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC0/I;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:LB0/t0;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashSet;

.field public final h:LC0/a;

.field public final i:Lp0/q;

.field public j:LO0/X;

.field public k:Z

.field public l:Ls0/O;


# direct methods
.method public constructor <init>(LB0/t0;LC0/a;Lp0/I;LC0/I;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, LB0/u0;->a:LC0/I;

    .line 5
    .line 6
    iput-object p1, p0, LB0/u0;->e:LB0/t0;

    .line 7
    .line 8
    new-instance p1, LO0/X;

    .line 9
    .line 10
    invoke-direct {p1}, LO0/X;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, LB0/u0;->j:LO0/X;

    .line 14
    .line 15
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, LB0/u0;->c:Ljava/util/IdentityHashMap;

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, LB0/u0;->d:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p2, p0, LB0/u0;->h:LC0/a;

    .line 37
    .line 38
    iput-object p3, p0, LB0/u0;->i:Lp0/q;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, LB0/u0;->f:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance p1, Ljava/util/HashSet;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, LB0/u0;->g:Ljava/util/HashSet;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;LO0/X;)Lm0/f0;
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
    iput-object p3, p0, LB0/u0;->j:LO0/X;

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
    check-cast v0, LB0/s0;

    .line 24
    .line 25
    iget-object v1, p0, LB0/u0;->b:Ljava/util/ArrayList;

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
    check-cast v3, LB0/s0;

    .line 37
    .line 38
    iget-object v4, v3, LB0/s0;->a:LO0/t;

    .line 39
    .line 40
    iget-object v4, v4, LO0/t;->o:LO0/r;

    .line 41
    .line 42
    iget v3, v3, LB0/s0;->d:I

    .line 43
    .line 44
    iget-object v4, v4, LO0/n;->b:Lm0/f0;

    .line 45
    .line 46
    invoke-virtual {v4}, Lm0/f0;->p()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v4, v3

    .line 51
    iput v4, v0, LB0/s0;->d:I

    .line 52
    .line 53
    iput-boolean v2, v0, LB0/s0;->e:Z

    .line 54
    .line 55
    iget-object v2, v0, LB0/s0;->c:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iput v2, v0, LB0/s0;->d:I

    .line 62
    .line 63
    iput-boolean v2, v0, LB0/s0;->e:Z

    .line 64
    .line 65
    iget-object v2, v0, LB0/s0;->c:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v2, v0, LB0/s0;->a:LO0/t;

    .line 71
    .line 72
    iget-object v2, v2, LO0/t;->o:LO0/r;

    .line 73
    .line 74
    iget-object v2, v2, LO0/n;->b:Lm0/f0;

    .line 75
    .line 76
    invoke-virtual {v2}, Lm0/f0;->p()I

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
    check-cast v4, LB0/s0;

    .line 92
    .line 93
    iget v5, v4, LB0/s0;->d:I

    .line 94
    .line 95
    add-int/2addr v5, v2

    .line 96
    iput v5, v4, LB0/s0;->d:I

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
    iget-object v1, p0, LB0/u0;->d:Ljava/util/HashMap;

    .line 105
    .line 106
    iget-object v2, v0, LB0/s0;->b:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, LB0/u0;->k:Z

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    invoke-virtual {p0, v0}, LB0/u0;->e(LB0/s0;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, LB0/u0;->c:Ljava/util/IdentityHashMap;

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
    iget-object v1, p0, LB0/u0;->g:Ljava/util/HashSet;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    iget-object v1, p0, LB0/u0;->f:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, LB0/r0;

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    iget-object v1, v0, LB0/r0;->a:LO0/a;

    .line 143
    .line 144
    iget-object v0, v0, LB0/r0;->b:LO0/z;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, LO0/a;->c(LO0/z;)V

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
    invoke-virtual {p0}, LB0/u0;->b()Lm0/f0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1
.end method

.method public final b()Lm0/f0;
    .locals 4

    .line 1
    iget-object v0, p0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lm0/f0;->a:Lm0/c0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v1, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, LB0/s0;

    .line 25
    .line 26
    iput v2, v3, LB0/s0;->d:I

    .line 27
    .line 28
    iget-object v3, v3, LB0/s0;->a:LO0/t;

    .line 29
    .line 30
    iget-object v3, v3, LO0/t;->o:LO0/r;

    .line 31
    .line 32
    iget-object v3, v3, LO0/n;->b:Lm0/f0;

    .line 33
    .line 34
    invoke-virtual {v3}, Lm0/f0;->p()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v2, v3

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, LB0/B0;

    .line 43
    .line 44
    iget-object v2, p0, LB0/u0;->j:LO0/X;

    .line 45
    .line 46
    invoke-direct {v1, v0, v2}, LB0/B0;-><init>(Ljava/util/List;LO0/X;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/u0;->g:Ljava/util/HashSet;

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
    check-cast v1, LB0/s0;

    .line 18
    .line 19
    iget-object v2, v1, LB0/s0;->c:Ljava/util/ArrayList;

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
    iget-object v2, p0, LB0/u0;->f:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, LB0/r0;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, LB0/r0;->a:LO0/a;

    .line 38
    .line 39
    iget-object v1, v1, LB0/r0;->b:LO0/z;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, LO0/a;->c(LO0/z;)V

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

.method public final d(LB0/s0;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, LB0/s0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, LB0/s0;->c:Ljava/util/ArrayList;

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
    iget-object v0, p0, LB0/u0;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, LB0/r0;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, LB0/r0;->a:LO0/a;

    .line 25
    .line 26
    iget-object v2, v0, LB0/r0;->b:LO0/z;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, LO0/a;->o(LO0/z;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, LB0/r0;->c:LB0/q0;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, LO0/a;->r(LO0/E;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, LO0/a;->q(LG0/p;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, LB0/u0;->g:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final e(LB0/s0;)V
    .locals 6

    .line 1
    iget-object v0, p1, LB0/s0;->a:LO0/t;

    .line 2
    .line 3
    new-instance v1, LB0/k0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, LB0/k0;-><init>(LB0/u0;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, LB0/q0;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, LB0/q0;-><init>(LB0/u0;LB0/s0;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, LB0/u0;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v4, LB0/r0;

    .line 16
    .line 17
    invoke-direct {v4, v0, v1, v2}, LB0/r0;-><init>(LO0/t;LB0/k0;LB0/q0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    new-instance v3, Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v0, LO0/a;->c:LO0/D;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v5, LO0/C;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v3, v5, LO0/C;->a:Landroid/os/Handler;

    .line 53
    .line 54
    iput-object v2, v5, LO0/C;->b:LO0/E;

    .line 55
    .line 56
    iget-object p1, p1, LO0/D;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object p1, v0, LO0/a;->d:LG0/o;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v4, LG0/n;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v3, v4, LG0/n;->a:Landroid/os/Handler;

    .line 88
    .line 89
    iput-object v2, v4, LG0/n;->b:LG0/p;

    .line 90
    .line 91
    iget-object p1, p1, LG0/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, LB0/u0;->l:Ls0/O;

    .line 97
    .line 98
    iget-object v2, p0, LB0/u0;->a:LC0/I;

    .line 99
    .line 100
    invoke-virtual {v0, v1, p1, v2}, LO0/a;->k(LO0/z;Ls0/O;LC0/I;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final f(LO0/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/u0;->c:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, LB0/s0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, LB0/s0;->a:LO0/t;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, LO0/t;->n(LO0/w;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, LB0/s0;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    check-cast p1, LO0/q;

    .line 20
    .line 21
    iget-object p1, p1, LO0/q;->G:LO0/y;

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
    invoke-virtual {p0}, LB0/u0;->c()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v1}, LB0/u0;->d(LB0/s0;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final g(II)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    :goto_0
    if-lt p2, p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, LB0/u0;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, LB0/s0;

    .line 12
    .line 13
    iget-object v3, p0, LB0/u0;->d:Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v4, v2, LB0/s0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v3, v2, LB0/s0;->a:LO0/t;

    .line 21
    .line 22
    iget-object v3, v3, LO0/t;->o:LO0/r;

    .line 23
    .line 24
    iget-object v3, v3, LO0/n;->b:Lm0/f0;

    .line 25
    .line 26
    invoke-virtual {v3}, Lm0/f0;->p()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    neg-int v3, v3

    .line 31
    move v4, p2

    .line 32
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ge v4, v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, LB0/s0;

    .line 43
    .line 44
    iget v6, v5, LB0/s0;->d:I

    .line 45
    .line 46
    add-int/2addr v6, v3

    .line 47
    iput v6, v5, LB0/s0;->d:I

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iput-boolean v0, v2, LB0/s0;->e:Z

    .line 53
    .line 54
    iget-boolean v1, p0, LB0/u0;->k:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v2}, LB0/u0;->d(LB0/s0;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method
