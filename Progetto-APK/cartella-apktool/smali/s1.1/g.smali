.class public final Ls1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Cloneable;

.field public d:Ljava/lang/Cloneable;

.field public final e:Ljava/lang/Cloneable;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ls1/g;->a:I

    .line 4
    iput p2, p0, Ls1/g;->b:I

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->f:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->g:Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls1/g;->a:I

    iput p2, p0, Ls1/g;->b:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->c:Ljava/lang/Cloneable;

    new-instance p1, Landroid/util/SparseArray;

    .line 11
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    new-instance p1, Landroid/util/SparseArray;

    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->f:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    .line 14
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls1/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls1/g;->c:Ljava/lang/Cloneable;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 19
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls1/g;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Ls1/g;->a:I

    .line 21
    iput p1, p0, Ls1/g;->b:I

    return-void
.end method


# virtual methods
.method public final a(LO1/c0;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->l(LO1/c0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->U0:LO1/e0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v2, p1, LO1/c0;->G:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, LO1/e0;->e:LO1/d0;

    .line 16
    .line 17
    instance-of v3, v0, LO1/d0;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, LO1/d0;->e:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, LN/b;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    :goto_0
    invoke-static {v2, v0}, LN/N;->m(Landroid/view/View;LN/b;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p2, :cond_5

    .line 35
    .line 36
    iget-object p2, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->U:LO1/T;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    check-cast p2, Landroidx/leanback/widget/a;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/a;->a(LO1/c0;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p2, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->V:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/4 v0, 0x0

    .line 60
    :goto_1
    if-ge v0, p2, :cond_3

    .line 61
    .line 62
    iget-object v3, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->V:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, LO1/T;

    .line 73
    .line 74
    check-cast v3, Landroidx/leanback/widget/a;

    .line 75
    .line 76
    invoke-virtual {v3, p1}, Landroidx/leanback/widget/a;->a(LO1/c0;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object p2, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v0, p2

    .line 85
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 88
    .line 89
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 96
    .line 97
    invoke-virtual {p2, p1}, LO1/o0;->m(LO1/c0;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 101
    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "dispatchViewRecycled: "

    .line 107
    .line 108
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string v0, "RecyclerView"

    .line 119
    .line 120
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    iput-object v1, p1, LO1/c0;->Y:LO1/C;

    .line 124
    .line 125
    iput-object v1, p1, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    invoke-virtual {p0}, Ls1/g;->c()LO1/S;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget v0, p1, LO1/c0;->L:I

    .line 135
    .line 136
    invoke-virtual {p2, v0}, LO1/S;->a(I)LO1/Q;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v1, v1, LO1/Q;->a:Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object p2, p2, LO1/S;->a:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, LO1/Q;

    .line 149
    .line 150
    iget p2, p2, LO1/Q;->b:I

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-gt p2, v0, :cond_6

    .line 157
    .line 158
    invoke-static {v2}, Lo3/r;->d(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 163
    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-nez p2, :cond_7

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string p2, "this scrap item already exists"

    .line 176
    .line 177
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_8
    :goto_2
    invoke-virtual {p1}, LO1/c0;->o()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :goto_3
    return-void
.end method

.method public final b(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 8
    .line 9
    invoke-virtual {v0}, LO1/Y;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 21
    .line 22
    iget-boolean v1, v1, LO1/Y;->g:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p1, v1}, LO1/b;->f(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 38
    .line 39
    const-string v1, "invalid position "

    .line 40
    .line 41
    const-string v2, ". State item count is "

    .line 42
    .line 43
    invoke-static {v1, p1, v2}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 52
    .line 53
    invoke-virtual {v1}, LO1/Y;->b()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-static {v1, p1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method

.method public final c()LO1/S;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/g;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO1/S;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LO1/S;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, LO1/S;->a:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, v0, LO1/S;->b:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, LO1/S;->c:Ljava/util/Set;

    .line 32
    .line 33
    iput-object v0, p0, Ls1/g;->g:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0}, Ls1/g;->e()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Ls1/g;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, LO1/S;

    .line 41
    .line 42
    return-object v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Ls1/g;->l(IJ)LO1/c0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 11
    .line 12
    return-object p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/g;->g:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LO1/S;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->c0:Z

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v0, LO1/S;

    .line 25
    .line 26
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 29
    .line 30
    iget-object v0, v0, LO1/S;->c:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final f(LO1/C;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/g;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO1/S;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, LO1/S;->c:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const/4 p2, 0x0

    .line 22
    :goto_0
    iget-object v1, v0, LO1/S;->a:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge p2, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, LO1/Q;

    .line 39
    .line 40
    iget-object v1, v1, LO1/Q;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ge v2, v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, LO1/c0;

    .line 54
    .line 55
    iget-object v3, v3, LO1/c0;->G:Landroid/view/View;

    .line 56
    .line 57
    invoke-static {v3}, Lo3/r;->d(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ls1/g;->h(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->M0:Lr/h;

    .line 31
    .line 32
    iget-object v1, v0, Lr/h;->d:[I

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lr/h;->e:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 2
    .line 3
    const-string v1, "RecyclerView"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Recycling cached view at index "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, LO1/c0;

    .line 34
    .line 35
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "CachedViewHolder to be recycled: "

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 v1, 0x1

    .line 57
    invoke-virtual {p0, v2, v1}, Ls1/g;->a(LO1/c0;Z)V

    .line 58
    .line 59
    .line 60
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, LO1/c0;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, LO1/c0;->k()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, v0, LO1/c0;->T:Ls1/g;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ls1/g;->m(LO1/c0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, LO1/c0;->r()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, v0, LO1/c0;->P:I

    .line 38
    .line 39
    and-int/lit8 p1, p1, -0x21

    .line 40
    .line 41
    iput p1, v0, LO1/c0;->P:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ls1/g;->j(LO1/c0;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, LO1/c0;->i()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, LO1/H;->d(LO1/c0;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method public final j(LO1/c0;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, LO1/c0;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p1, LO1/c0;->G:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_12

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_9

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, LO1/c0;->l()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_11

    .line 24
    .line 25
    invoke-virtual {p1}, LO1/c0;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_10

    .line 30
    .line 31
    iget v0, p1, LO1/c0;->P:I

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x10

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v4, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :cond_2
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 62
    .line 63
    iget-object v5, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    move-object v4, v5

    .line 68
    check-cast v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "cached view received recycle internal? "

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    :goto_1
    invoke-virtual {p1}, LO1/c0;->i()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_e

    .line 106
    .line 107
    iget v4, p0, Ls1/g;->b:I

    .line 108
    .line 109
    if-lez v4, :cond_b

    .line 110
    .line 111
    const/16 v4, 0x20e

    .line 112
    .line 113
    invoke-virtual {p1, v4}, LO1/c0;->f(I)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_b

    .line 118
    .line 119
    check-cast v5, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    iget v6, p0, Ls1/g;->b:I

    .line 126
    .line 127
    if-lt v4, v6, :cond_5

    .line 128
    .line 129
    if-lez v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ls1/g;->h(I)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, -0x1

    .line 135
    .line 136
    :cond_5
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 137
    .line 138
    if-eqz v6, :cond_a

    .line 139
    .line 140
    if-lez v4, :cond_a

    .line 141
    .line 142
    iget-object v6, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    .line 146
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->M0:Lr/h;

    .line 147
    .line 148
    iget v7, p1, LO1/c0;->I:I

    .line 149
    .line 150
    iget-object v8, v6, Lr/h;->d:[I

    .line 151
    .line 152
    if-eqz v8, :cond_7

    .line 153
    .line 154
    iget v8, v6, Lr/h;->e:I

    .line 155
    .line 156
    mul-int/lit8 v8, v8, 0x2

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    :goto_2
    if-ge v9, v8, :cond_7

    .line 160
    .line 161
    iget-object v10, v6, Lr/h;->d:[I

    .line 162
    .line 163
    aget v10, v10, v9

    .line 164
    .line 165
    if-ne v10, v7, :cond_6

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 172
    .line 173
    :goto_3
    if-ltz v4, :cond_9

    .line 174
    .line 175
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    check-cast v6, LO1/c0;

    .line 180
    .line 181
    iget v6, v6, LO1/c0;->I:I

    .line 182
    .line 183
    iget-object v7, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->M0:Lr/h;

    .line 188
    .line 189
    iget-object v8, v7, Lr/h;->d:[I

    .line 190
    .line 191
    if-eqz v8, :cond_9

    .line 192
    .line 193
    iget v8, v7, Lr/h;->e:I

    .line 194
    .line 195
    mul-int/lit8 v8, v8, 0x2

    .line 196
    .line 197
    const/4 v9, 0x0

    .line 198
    :goto_4
    if-ge v9, v8, :cond_9

    .line 199
    .line 200
    iget-object v10, v7, Lr/h;->d:[I

    .line 201
    .line 202
    aget v10, v10, v9

    .line 203
    .line 204
    if-ne v10, v6, :cond_8

    .line 205
    .line 206
    add-int/lit8 v4, v4, -0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    add-int/lit8 v9, v9, 0x2

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_9
    add-int/2addr v4, v2

    .line 213
    :cond_a
    :goto_5
    invoke-virtual {v5, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const/4 v4, 0x1

    .line 217
    goto :goto_6

    .line 218
    :cond_b
    const/4 v4, 0x0

    .line 219
    :goto_6
    if-nez v4, :cond_c

    .line 220
    .line 221
    invoke-virtual {p0, p1, v2}, Ls1/g;->a(LO1/c0;Z)V

    .line 222
    .line 223
    .line 224
    move v1, v4

    .line 225
    goto :goto_8

    .line 226
    :cond_c
    move v1, v4

    .line 227
    :cond_d
    :goto_7
    const/4 v2, 0x0

    .line 228
    goto :goto_8

    .line 229
    :cond_e
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 230
    .line 231
    if-eqz v2, :cond_d

    .line 232
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v4, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 236
    .line 237
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v4, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->B()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const-string v4, "RecyclerView"

    .line 256
    .line 257
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :goto_8
    iget-object v4, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 264
    .line 265
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->M:LO1/o0;

    .line 266
    .line 267
    invoke-virtual {v4, p1}, LO1/o0;->m(LO1/c0;)V

    .line 268
    .line 269
    .line 270
    if-nez v1, :cond_f

    .line 271
    .line 272
    if-nez v2, :cond_f

    .line 273
    .line 274
    if-eqz v0, :cond_f

    .line 275
    .line 276
    invoke-static {v3}, Lo3/r;->d(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    const/4 v0, 0x0

    .line 280
    iput-object v0, p1, LO1/c0;->Y:LO1/C;

    .line 281
    .line 282
    iput-object v0, p1, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    .line 284
    :cond_f
    return-void

    .line 285
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 297
    .line 298
    invoke-static {v1, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p1

    .line 306
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 311
    .line 312
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 321
    .line 322
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_12
    :goto_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    .line 335
    .line 336
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, LO1/c0;->k()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string p1, " isAttached:"

    .line 347
    .line 348
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-eqz p1, :cond_13

    .line 356
    .line 357
    const/4 v1, 0x1

    .line 358
    :cond_13
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 364
    .line 365
    invoke-static {p1, v4}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {p1, v0}, LO1/c0;->f(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, LO1/c0;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, LO1/c0;->e()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v0, LO1/j;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-boolean v0, v0, LO1/j;->g:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, LO1/c0;->h()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 51
    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 62
    .line 63
    :cond_1
    iput-object p0, p1, LO1/c0;->T:Ls1/g;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p1, LO1/c0;->U:Z

    .line 67
    .line 68
    iget-object v0, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p1}, LO1/c0;->h()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, LO1/c0;->j()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-static {v1, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_4
    :goto_1
    iput-object p0, p1, LO1/c0;->T:Ls1/g;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p1, LO1/c0;->U:Z

    .line 123
    .line 124
    iget-object v0, p0, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 125
    .line 126
    check-cast v0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void
.end method

.method public final l(IJ)LO1/c0;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ltz v0, :cond_48

    .line 9
    .line 10
    iget-object v5, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 15
    .line 16
    invoke-virtual {v5}, LO1/Y;->b()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-ge v0, v5, :cond_48

    .line 21
    .line 22
    iget-object v5, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 27
    .line 28
    iget-boolean v5, v5, LO1/Y;->g:Z

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/16 v7, 0x20

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    iget-object v5, v1, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 36
    .line 37
    check-cast v5, Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v8, 0x0

    .line 49
    :goto_0
    if-ge v8, v5, :cond_2

    .line 50
    .line 51
    iget-object v9, v1, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 52
    .line 53
    check-cast v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, LO1/c0;

    .line 60
    .line 61
    invoke-virtual {v9}, LO1/c0;->r()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-nez v10, :cond_1

    .line 66
    .line 67
    invoke-virtual {v9}, LO1/c0;->d()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-ne v10, v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v9, v7}, LO1/c0;->b(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    add-int/2addr v8, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v5, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    move-object v9, v6

    .line 89
    :goto_2
    if-eqz v9, :cond_5

    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move-object v9, v6

    .line 94
    :cond_5
    const/4 v5, 0x0

    .line 95
    :goto_3
    const-string v8, "RecyclerView"

    .line 96
    .line 97
    if-nez v9, :cond_1b

    .line 98
    .line 99
    iget-object v9, v1, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 100
    .line 101
    check-cast v9, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    const/4 v11, 0x0

    .line 108
    :goto_4
    if-ge v11, v10, :cond_8

    .line 109
    .line 110
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, LO1/c0;

    .line 115
    .line 116
    invoke-virtual {v12}, LO1/c0;->r()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-nez v13, :cond_7

    .line 121
    .line 122
    invoke-virtual {v12}, LO1/c0;->d()I

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-ne v13, v0, :cond_7

    .line 127
    .line 128
    invoke-virtual {v12}, LO1/c0;->h()Z

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    if-nez v13, :cond_7

    .line 133
    .line 134
    iget-object v13, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 139
    .line 140
    iget-boolean v13, v13, LO1/Y;->g:Z

    .line 141
    .line 142
    if-nez v13, :cond_6

    .line 143
    .line 144
    invoke-virtual {v12}, LO1/c0;->j()Z

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    if-nez v13, :cond_7

    .line 149
    .line 150
    :cond_6
    invoke-virtual {v12, v7}, LO1/c0;->b(I)V

    .line 151
    .line 152
    .line 153
    move-object v9, v12

    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :cond_7
    add-int/2addr v11, v4

    .line 157
    goto :goto_4

    .line 158
    :cond_8
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    .line 162
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 163
    .line 164
    iget-object v9, v7, LO1/c;->c:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    const/4 v11, 0x0

    .line 171
    :goto_5
    if-ge v11, v10, :cond_a

    .line 172
    .line 173
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Landroid/view/View;

    .line 178
    .line 179
    iget-object v13, v7, LO1/c;->a:LO1/B;

    .line 180
    .line 181
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-virtual {v13}, LO1/c0;->d()I

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-ne v14, v0, :cond_9

    .line 193
    .line 194
    invoke-virtual {v13}, LO1/c0;->h()Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    if-nez v14, :cond_9

    .line 199
    .line 200
    invoke-virtual {v13}, LO1/c0;->j()Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    if-nez v13, :cond_9

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    add-int/2addr v11, v4

    .line 208
    goto :goto_5

    .line 209
    :cond_a
    move-object v12, v6

    .line 210
    :goto_6
    if-eqz v12, :cond_e

    .line 211
    .line 212
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)LO1/c0;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    iget-object v9, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    .line 220
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 221
    .line 222
    iget-object v10, v9, LO1/c;->a:LO1/B;

    .line 223
    .line 224
    iget-object v10, v10, LO1/B;->G:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-ltz v10, :cond_d

    .line 231
    .line 232
    iget-object v11, v9, LO1/c;->b:Lf6/c;

    .line 233
    .line 234
    invoke-virtual {v11, v10}, Lf6/c;->d(I)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_c

    .line 239
    .line 240
    invoke-virtual {v11, v10}, Lf6/c;->a(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v12}, LO1/c;->l(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    iget-object v9, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 249
    .line 250
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 251
    .line 252
    invoke-virtual {v9, v12}, LO1/c;->j(Landroid/view/View;)I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-eq v9, v2, :cond_b

    .line 257
    .line 258
    iget-object v10, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 261
    .line 262
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->L:LO1/c;

    .line 263
    .line 264
    invoke-virtual {v10, v9}, LO1/c;->c(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v12}, Ls1/g;->k(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    const/16 v9, 0x2020

    .line 271
    .line 272
    invoke-virtual {v7, v9}, LO1/c0;->b(I)V

    .line 273
    .line 274
    .line 275
    move-object v9, v7

    .line 276
    goto/16 :goto_9

    .line 277
    .line 278
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 283
    .line 284
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 293
    .line 294
    invoke-static {v3, v2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 303
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v3, "trying to unhide a view that was not hidden"

    .line 307
    .line 308
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 323
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v3, "view is not a child, cannot hide "

    .line 327
    .line 328
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0

    .line 342
    :cond_e
    iget-object v7, v1, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 343
    .line 344
    check-cast v7, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    const/4 v10, 0x0

    .line 351
    :goto_7
    if-ge v10, v9, :cond_12

    .line 352
    .line 353
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    check-cast v11, LO1/c0;

    .line 358
    .line 359
    invoke-virtual {v11}, LO1/c0;->h()Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-nez v12, :cond_11

    .line 364
    .line 365
    invoke-virtual {v11}, LO1/c0;->d()I

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-ne v12, v0, :cond_11

    .line 370
    .line 371
    iget-object v12, v11, LO1/c0;->G:Landroid/view/View;

    .line 372
    .line 373
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    if-eqz v13, :cond_f

    .line 378
    .line 379
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    iget-object v13, v11, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 384
    .line 385
    if-eq v12, v13, :cond_f

    .line 386
    .line 387
    goto :goto_8

    .line 388
    :cond_f
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 392
    .line 393
    if-eqz v7, :cond_10

    .line 394
    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v9, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 398
    .line 399
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v9, ") found match in cache: "

    .line 406
    .line 407
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :cond_10
    move-object v9, v11

    .line 421
    goto :goto_9

    .line 422
    :cond_11
    :goto_8
    add-int/2addr v10, v4

    .line 423
    goto :goto_7

    .line 424
    :cond_12
    move-object v9, v6

    .line 425
    :goto_9
    if-eqz v9, :cond_1b

    .line 426
    .line 427
    invoke-virtual {v9}, LO1/c0;->j()Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-eqz v7, :cond_15

    .line 432
    .line 433
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 434
    .line 435
    if-eqz v7, :cond_14

    .line 436
    .line 437
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 440
    .line 441
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 442
    .line 443
    iget-boolean v7, v7, LO1/Y;->g:Z

    .line 444
    .line 445
    if-eqz v7, :cond_13

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 449
    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v3, "should not receive a removed view unless it is pre layout"

    .line 453
    .line 454
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 460
    .line 461
    invoke-static {v3, v2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw v0

    .line 469
    :cond_14
    :goto_a
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 472
    .line 473
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 474
    .line 475
    iget-boolean v7, v7, LO1/Y;->g:Z

    .line 476
    .line 477
    if-nez v7, :cond_19

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_15
    iget v7, v9, LO1/c0;->I:I

    .line 481
    .line 482
    if-ltz v7, :cond_1a

    .line 483
    .line 484
    iget-object v10, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 487
    .line 488
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 489
    .line 490
    invoke-virtual {v10}, LO1/C;->a()I

    .line 491
    .line 492
    .line 493
    move-result v10

    .line 494
    if-ge v7, v10, :cond_1a

    .line 495
    .line 496
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 499
    .line 500
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 501
    .line 502
    iget-boolean v10, v10, LO1/Y;->g:Z

    .line 503
    .line 504
    if-nez v10, :cond_18

    .line 505
    .line 506
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 507
    .line 508
    iget v10, v9, LO1/c0;->I:I

    .line 509
    .line 510
    invoke-virtual {v7, v10}, LO1/C;->b(I)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    iget v10, v9, LO1/c0;->L:I

    .line 515
    .line 516
    if-eq v7, v10, :cond_18

    .line 517
    .line 518
    :goto_b
    const/4 v7, 0x4

    .line 519
    invoke-virtual {v9, v7}, LO1/c0;->b(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v9}, LO1/c0;->k()Z

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    if-eqz v7, :cond_16

    .line 527
    .line 528
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 531
    .line 532
    iget-object v10, v9, LO1/c0;->G:Landroid/view/View;

    .line 533
    .line 534
    invoke-virtual {v7, v10, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 535
    .line 536
    .line 537
    iget-object v7, v9, LO1/c0;->T:Ls1/g;

    .line 538
    .line 539
    invoke-virtual {v7, v9}, Ls1/g;->m(LO1/c0;)V

    .line 540
    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_16
    invoke-virtual {v9}, LO1/c0;->r()Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-eqz v7, :cond_17

    .line 548
    .line 549
    iget v7, v9, LO1/c0;->P:I

    .line 550
    .line 551
    and-int/lit8 v7, v7, -0x21

    .line 552
    .line 553
    iput v7, v9, LO1/c0;->P:I

    .line 554
    .line 555
    :cond_17
    :goto_c
    invoke-virtual {v1, v9}, Ls1/g;->j(LO1/c0;)V

    .line 556
    .line 557
    .line 558
    move-object v9, v6

    .line 559
    goto :goto_d

    .line 560
    :cond_18
    iget-object v5, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 563
    .line 564
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 565
    .line 566
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    :cond_19
    const/4 v5, 0x1

    .line 570
    goto :goto_d

    .line 571
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 572
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 576
    .line 577
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 586
    .line 587
    invoke-static {v3, v2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    throw v0

    .line 595
    :cond_1b
    :goto_d
    const-wide/16 v14, 0x0

    .line 596
    .line 597
    const-wide v16, 0x7fffffffffffffffL

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    if-nez v9, :cond_29

    .line 603
    .line 604
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 607
    .line 608
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 609
    .line 610
    invoke-virtual {v7, v0, v3}, LO1/b;->f(II)I

    .line 611
    .line 612
    .line 613
    move-result v7

    .line 614
    if-ltz v7, :cond_28

    .line 615
    .line 616
    iget-object v10, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 619
    .line 620
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 621
    .line 622
    invoke-virtual {v10}, LO1/C;->a()I

    .line 623
    .line 624
    .line 625
    move-result v10

    .line 626
    if-ge v7, v10, :cond_28

    .line 627
    .line 628
    iget-object v10, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 631
    .line 632
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 633
    .line 634
    invoke-virtual {v10, v7}, LO1/C;->b(I)I

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    iget-object v10, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 641
    .line 642
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 643
    .line 644
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 645
    .line 646
    .line 647
    if-nez v9, :cond_1c

    .line 648
    .line 649
    iget-object v10, v1, Ls1/g;->h:Ljava/lang/Object;

    .line 650
    .line 651
    invoke-static {v10}, LA0/O;->I(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    :cond_1c
    if-nez v9, :cond_20

    .line 655
    .line 656
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 657
    .line 658
    if-eqz v9, :cond_1d

    .line 659
    .line 660
    new-instance v9, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    const-string v10, "tryGetViewHolderForPositionByDeadline("

    .line 663
    .line 664
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v10, ") fetching from shared pool"

    .line 671
    .line 672
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v9

    .line 679
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Ls1/g;->c()LO1/S;

    .line 683
    .line 684
    .line 685
    move-result-object v9

    .line 686
    iget-object v9, v9, LO1/S;->a:Landroid/util/SparseArray;

    .line 687
    .line 688
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v9

    .line 692
    check-cast v9, LO1/Q;

    .line 693
    .line 694
    if-eqz v9, :cond_1f

    .line 695
    .line 696
    iget-object v9, v9, LO1/Q;->a:Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 699
    .line 700
    .line 701
    move-result v10

    .line 702
    if-nez v10, :cond_1f

    .line 703
    .line 704
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 705
    .line 706
    .line 707
    move-result v10

    .line 708
    sub-int/2addr v10, v4

    .line 709
    :goto_e
    if-ltz v10, :cond_1f

    .line 710
    .line 711
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v11

    .line 715
    check-cast v11, LO1/c0;

    .line 716
    .line 717
    iget-object v12, v11, LO1/c0;->G:Landroid/view/View;

    .line 718
    .line 719
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 720
    .line 721
    .line 722
    move-result-object v13

    .line 723
    if-eqz v13, :cond_1e

    .line 724
    .line 725
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 726
    .line 727
    .line 728
    move-result-object v12

    .line 729
    iget-object v11, v11, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 730
    .line 731
    if-eq v12, v11, :cond_1e

    .line 732
    .line 733
    add-int/2addr v10, v2

    .line 734
    goto :goto_e

    .line 735
    :cond_1e
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    check-cast v2, LO1/c0;

    .line 740
    .line 741
    move-object v9, v2

    .line 742
    goto :goto_f

    .line 743
    :cond_1f
    move-object v9, v6

    .line 744
    :goto_f
    if-eqz v9, :cond_20

    .line 745
    .line 746
    invoke-virtual {v9}, LO1/c0;->o()V

    .line 747
    .line 748
    .line 749
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 750
    .line 751
    :cond_20
    if-nez v9, :cond_29

    .line 752
    .line 753
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 756
    .line 757
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 758
    .line 759
    .line 760
    move-result-wide v9

    .line 761
    cmp-long v2, p2, v16

    .line 762
    .line 763
    if-eqz v2, :cond_22

    .line 764
    .line 765
    iget-object v2, v1, Ls1/g;->g:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v2, LO1/S;

    .line 768
    .line 769
    invoke-virtual {v2, v7}, LO1/S;->a(I)LO1/Q;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    iget-wide v11, v2, LO1/Q;->c:J

    .line 774
    .line 775
    cmp-long v2, v11, v14

    .line 776
    .line 777
    if-eqz v2, :cond_22

    .line 778
    .line 779
    add-long/2addr v11, v9

    .line 780
    cmp-long v2, v11, p2

    .line 781
    .line 782
    if-gez v2, :cond_21

    .line 783
    .line 784
    goto :goto_10

    .line 785
    :cond_21
    return-object v6

    .line 786
    :cond_22
    :goto_10
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 787
    .line 788
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 789
    .line 790
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 791
    .line 792
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    :try_start_0
    invoke-static {}, LJ/k;->a()Z

    .line 796
    .line 797
    .line 798
    move-result v12

    .line 799
    if-eqz v12, :cond_23

    .line 800
    .line 801
    const-string v12, "RV onCreateViewHolder type=0x%X"

    .line 802
    .line 803
    new-array v13, v4, [Ljava/lang/Object;

    .line 804
    .line 805
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 806
    .line 807
    .line 808
    move-result-object v22

    .line 809
    aput-object v22, v13, v3

    .line 810
    .line 811
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v12

    .line 815
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    goto :goto_11

    .line 819
    :catchall_0
    move-exception v0

    .line 820
    goto :goto_13

    .line 821
    :cond_23
    :goto_11
    invoke-virtual {v11, v2, v7}, LO1/C;->d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    iget-object v11, v2, LO1/c0;->G:Landroid/view/View;

    .line 826
    .line 827
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 828
    .line 829
    .line 830
    move-result-object v11

    .line 831
    if-nez v11, :cond_27

    .line 832
    .line 833
    iput v7, v2, LO1/c0;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .line 835
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 836
    .line 837
    .line 838
    sget-boolean v11, Landroidx/recyclerview/widget/RecyclerView;->n1:Z

    .line 839
    .line 840
    if-eqz v11, :cond_24

    .line 841
    .line 842
    iget-object v11, v2, LO1/c0;->G:Landroid/view/View;

    .line 843
    .line 844
    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView;->G(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    if-eqz v11, :cond_24

    .line 849
    .line 850
    new-instance v12, Ljava/lang/ref/WeakReference;

    .line 851
    .line 852
    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iput-object v12, v2, LO1/c0;->H:Ljava/lang/ref/WeakReference;

    .line 856
    .line 857
    :cond_24
    iget-object v11, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 858
    .line 859
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 860
    .line 861
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 862
    .line 863
    .line 864
    move-result-wide v11

    .line 865
    iget-object v13, v1, Ls1/g;->g:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v13, LO1/S;

    .line 868
    .line 869
    sub-long/2addr v11, v9

    .line 870
    invoke-virtual {v13, v7}, LO1/S;->a(I)LO1/Q;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    iget-wide v9, v7, LO1/Q;->c:J

    .line 875
    .line 876
    cmp-long v13, v9, v14

    .line 877
    .line 878
    if-nez v13, :cond_25

    .line 879
    .line 880
    goto :goto_12

    .line 881
    :cond_25
    const-wide/16 v20, 0x4

    .line 882
    .line 883
    div-long v9, v9, v20

    .line 884
    .line 885
    const-wide/16 v18, 0x3

    .line 886
    .line 887
    mul-long v9, v9, v18

    .line 888
    .line 889
    div-long v11, v11, v20

    .line 890
    .line 891
    add-long/2addr v11, v9

    .line 892
    :goto_12
    iput-wide v11, v7, LO1/Q;->c:J

    .line 893
    .line 894
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->j1:Z

    .line 895
    .line 896
    if-eqz v7, :cond_26

    .line 897
    .line 898
    const-string v7, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 899
    .line 900
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .line 902
    .line 903
    :cond_26
    move-object v9, v2

    .line 904
    goto :goto_14

    .line 905
    :cond_27
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 906
    .line 907
    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 908
    .line 909
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    :goto_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 914
    .line 915
    .line 916
    throw v0

    .line 917
    :cond_28
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 918
    .line 919
    const-string v3, "Inconsistency detected. Invalid item position "

    .line 920
    .line 921
    const-string v4, "(offset:"

    .line 922
    .line 923
    const-string v5, ").state:"

    .line 924
    .line 925
    invoke-static {v3, v0, v4, v7, v5}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 932
    .line 933
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 934
    .line 935
    invoke-virtual {v3}, LO1/Y;->b()I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 945
    .line 946
    invoke-static {v3, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    throw v2

    .line 954
    :cond_29
    :goto_14
    const/4 v2, 0x2

    .line 955
    if-eqz v5, :cond_2a

    .line 956
    .line 957
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 960
    .line 961
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 962
    .line 963
    iget-boolean v7, v7, LO1/Y;->g:Z

    .line 964
    .line 965
    if-nez v7, :cond_2a

    .line 966
    .line 967
    const/16 v7, 0x2000

    .line 968
    .line 969
    invoke-virtual {v9, v7}, LO1/c0;->f(I)Z

    .line 970
    .line 971
    .line 972
    move-result v7

    .line 973
    if-eqz v7, :cond_2a

    .line 974
    .line 975
    iget v7, v9, LO1/c0;->P:I

    .line 976
    .line 977
    and-int/lit16 v7, v7, -0x2001

    .line 978
    .line 979
    iput v7, v9, LO1/c0;->P:I

    .line 980
    .line 981
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 982
    .line 983
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 984
    .line 985
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 986
    .line 987
    iget-boolean v7, v7, LO1/Y;->j:Z

    .line 988
    .line 989
    if-eqz v7, :cond_2a

    .line 990
    .line 991
    invoke-static {v9}, LO1/H;->b(LO1/c0;)V

    .line 992
    .line 993
    .line 994
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 995
    .line 996
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 997
    .line 998
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->v0:LO1/H;

    .line 999
    .line 1000
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 1001
    .line 1002
    invoke-virtual {v9}, LO1/c0;->e()Ljava/util/List;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    .line 1007
    .line 1008
    new-instance v7, Lj0/c;

    .line 1009
    .line 1010
    invoke-direct {v7, v2}, Lj0/c;-><init>(I)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v7, v9}, Lj0/c;->b(LO1/c0;)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v8, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 1019
    .line 1020
    invoke-virtual {v8, v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->a0(LO1/c0;Lj0/c;)V

    .line 1021
    .line 1022
    .line 1023
    :cond_2a
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 1026
    .line 1027
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 1028
    .line 1029
    iget-boolean v7, v7, LO1/Y;->g:Z

    .line 1030
    .line 1031
    iget-object v8, v9, LO1/c0;->G:Landroid/view/View;

    .line 1032
    .line 1033
    if-eqz v7, :cond_2b

    .line 1034
    .line 1035
    invoke-virtual {v9}, LO1/c0;->g()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v7

    .line 1039
    if-eqz v7, :cond_2b

    .line 1040
    .line 1041
    iput v0, v9, LO1/c0;->M:I

    .line 1042
    .line 1043
    goto :goto_15

    .line 1044
    :cond_2b
    invoke-virtual {v9}, LO1/c0;->g()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v7

    .line 1048
    if-eqz v7, :cond_2e

    .line 1049
    .line 1050
    iget v7, v9, LO1/c0;->P:I

    .line 1051
    .line 1052
    and-int/2addr v2, v7

    .line 1053
    if-eqz v2, :cond_2c

    .line 1054
    .line 1055
    goto :goto_16

    .line 1056
    :cond_2c
    invoke-virtual {v9}, LO1/c0;->h()Z

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    if-eqz v2, :cond_2d

    .line 1061
    .line 1062
    goto :goto_16

    .line 1063
    :cond_2d
    :goto_15
    const/4 v0, 0x0

    .line 1064
    goto/16 :goto_1f

    .line 1065
    .line 1066
    :cond_2e
    :goto_16
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 1067
    .line 1068
    if-eqz v2, :cond_30

    .line 1069
    .line 1070
    invoke-virtual {v9}, LO1/c0;->j()Z

    .line 1071
    .line 1072
    .line 1073
    move-result v2

    .line 1074
    if-nez v2, :cond_2f

    .line 1075
    .line 1076
    goto :goto_17

    .line 1077
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1078
    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string v3, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1082
    .line 1083
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1092
    .line 1093
    invoke-static {v3, v2}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v2

    .line 1097
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    throw v0

    .line 1101
    :cond_30
    :goto_17
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1102
    .line 1103
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1104
    .line 1105
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->K:LO1/b;

    .line 1106
    .line 1107
    invoke-virtual {v2, v0, v3}, LO1/b;->f(II)I

    .line 1108
    .line 1109
    .line 1110
    move-result v2

    .line 1111
    iput-object v6, v9, LO1/c0;->Y:LO1/C;

    .line 1112
    .line 1113
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 1116
    .line 1117
    iput-object v7, v9, LO1/c0;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 1118
    .line 1119
    iget v10, v9, LO1/c0;->L:I

    .line 1120
    .line 1121
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v11

    .line 1125
    cmp-long v7, p2, v16

    .line 1126
    .line 1127
    if-eqz v7, :cond_31

    .line 1128
    .line 1129
    iget-object v7, v1, Ls1/g;->g:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v7, LO1/S;

    .line 1132
    .line 1133
    invoke-virtual {v7, v10}, LO1/S;->a(I)LO1/Q;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v7

    .line 1137
    iget-wide v6, v7, LO1/Q;->d:J

    .line 1138
    .line 1139
    cmp-long v13, v6, v14

    .line 1140
    .line 1141
    if-eqz v13, :cond_31

    .line 1142
    .line 1143
    add-long/2addr v6, v11

    .line 1144
    cmp-long v13, v6, p2

    .line 1145
    .line 1146
    if-gez v13, :cond_2d

    .line 1147
    .line 1148
    :cond_31
    invoke-virtual {v9}, LO1/c0;->l()Z

    .line 1149
    .line 1150
    .line 1151
    move-result v6

    .line 1152
    if-eqz v6, :cond_32

    .line 1153
    .line 1154
    iget-object v6, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1155
    .line 1156
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 1157
    .line 1158
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1159
    .line 1160
    .line 1161
    move-result v7

    .line 1162
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v13

    .line 1166
    invoke-static {v6, v8, v7, v13}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    .line 1168
    .line 1169
    const/4 v6, 0x1

    .line 1170
    goto :goto_18

    .line 1171
    :cond_32
    const/4 v6, 0x0

    .line 1172
    :goto_18
    iget-object v7, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 1175
    .line 1176
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->S:LO1/C;

    .line 1177
    .line 1178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    .line 1180
    .line 1181
    iget-object v13, v9, LO1/c0;->Y:LO1/C;

    .line 1182
    .line 1183
    if-nez v13, :cond_33

    .line 1184
    .line 1185
    const/4 v13, 0x1

    .line 1186
    goto :goto_19

    .line 1187
    :cond_33
    const/4 v13, 0x0

    .line 1188
    :goto_19
    if-eqz v13, :cond_34

    .line 1189
    .line 1190
    iput v2, v9, LO1/c0;->I:I

    .line 1191
    .line 1192
    iget v10, v9, LO1/c0;->P:I

    .line 1193
    .line 1194
    and-int/lit16 v10, v10, -0x208

    .line 1195
    .line 1196
    or-int/2addr v10, v4

    .line 1197
    iput v10, v9, LO1/c0;->P:I

    .line 1198
    .line 1199
    invoke-static {}, LJ/k;->a()Z

    .line 1200
    .line 1201
    .line 1202
    move-result v10

    .line 1203
    if-eqz v10, :cond_34

    .line 1204
    .line 1205
    iget v10, v9, LO1/c0;->L:I

    .line 1206
    .line 1207
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v10

    .line 1211
    new-array v14, v4, [Ljava/lang/Object;

    .line 1212
    .line 1213
    aput-object v10, v14, v3

    .line 1214
    .line 1215
    const-string v10, "RV onBindViewHolder type=0x%X"

    .line 1216
    .line 1217
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v10

    .line 1221
    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    :cond_34
    iput-object v7, v9, LO1/c0;->Y:LO1/C;

    .line 1225
    .line 1226
    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->i1:Z

    .line 1227
    .line 1228
    if-eqz v10, :cond_38

    .line 1229
    .line 1230
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v10

    .line 1234
    if-nez v10, :cond_36

    .line 1235
    .line 1236
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1237
    .line 1238
    .line 1239
    move-result v10

    .line 1240
    invoke-virtual {v9}, LO1/c0;->l()Z

    .line 1241
    .line 1242
    .line 1243
    move-result v14

    .line 1244
    if-ne v10, v14, :cond_35

    .line 1245
    .line 1246
    goto :goto_1a

    .line 1247
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1248
    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    const-string v3, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1252
    .line 1253
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v9}, LO1/c0;->l()Z

    .line 1257
    .line 1258
    .line 1259
    move-result v3

    .line 1260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    const-string v3, ", attached to window: "

    .line 1264
    .line 1265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v3

    .line 1272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    const-string v3, ", holder: "

    .line 1276
    .line 1277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v2

    .line 1287
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    throw v0

    .line 1291
    :cond_36
    :goto_1a
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v10

    .line 1295
    if-nez v10, :cond_38

    .line 1296
    .line 1297
    invoke-virtual {v8}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1298
    .line 1299
    .line 1300
    move-result v10

    .line 1301
    if-nez v10, :cond_37

    .line 1302
    .line 1303
    goto :goto_1b

    .line 1304
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1305
    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    const-string v3, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1309
    .line 1310
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v2

    .line 1320
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    throw v0

    .line 1324
    :cond_38
    :goto_1b
    invoke-virtual {v9}, LO1/c0;->e()Ljava/util/List;

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v7, v9, v2}, LO1/C;->c(LO1/c0;I)V

    .line 1328
    .line 1329
    .line 1330
    if-eqz v13, :cond_3b

    .line 1331
    .line 1332
    iget-object v2, v9, LO1/c0;->Q:Ljava/util/ArrayList;

    .line 1333
    .line 1334
    if-eqz v2, :cond_39

    .line 1335
    .line 1336
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1337
    .line 1338
    .line 1339
    :cond_39
    iget v2, v9, LO1/c0;->P:I

    .line 1340
    .line 1341
    and-int/lit16 v2, v2, -0x401

    .line 1342
    .line 1343
    iput v2, v9, LO1/c0;->P:I

    .line 1344
    .line 1345
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v2

    .line 1349
    instance-of v7, v2, LO1/M;

    .line 1350
    .line 1351
    if-eqz v7, :cond_3a

    .line 1352
    .line 1353
    check-cast v2, LO1/M;

    .line 1354
    .line 1355
    iput-boolean v4, v2, LO1/M;->c:Z

    .line 1356
    .line 1357
    :cond_3a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1358
    .line 1359
    .line 1360
    :cond_3b
    if-eqz v6, :cond_3c

    .line 1361
    .line 1362
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1363
    .line 1364
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1365
    .line 1366
    invoke-static {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 1367
    .line 1368
    .line 1369
    :cond_3c
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1372
    .line 1373
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1374
    .line 1375
    .line 1376
    move-result-wide v6

    .line 1377
    iget-object v2, v1, Ls1/g;->g:Ljava/lang/Object;

    .line 1378
    .line 1379
    check-cast v2, LO1/S;

    .line 1380
    .line 1381
    iget v10, v9, LO1/c0;->L:I

    .line 1382
    .line 1383
    sub-long/2addr v6, v11

    .line 1384
    invoke-virtual {v2, v10}, LO1/S;->a(I)LO1/Q;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    iget-wide v10, v2, LO1/Q;->d:J

    .line 1389
    .line 1390
    const-wide/16 v12, 0x0

    .line 1391
    .line 1392
    cmp-long v14, v10, v12

    .line 1393
    .line 1394
    if-nez v14, :cond_3d

    .line 1395
    .line 1396
    goto :goto_1c

    .line 1397
    :cond_3d
    const-wide/16 v12, 0x4

    .line 1398
    .line 1399
    div-long/2addr v10, v12

    .line 1400
    const-wide/16 v14, 0x3

    .line 1401
    .line 1402
    mul-long v10, v10, v14

    .line 1403
    .line 1404
    div-long/2addr v6, v12

    .line 1405
    add-long/2addr v6, v10

    .line 1406
    :goto_1c
    iput-wide v6, v2, LO1/Q;->d:J

    .line 1407
    .line 1408
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1409
    .line 1410
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1411
    .line 1412
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroid/view/accessibility/AccessibilityManager;

    .line 1413
    .line 1414
    if-eqz v2, :cond_43

    .line 1415
    .line 1416
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1417
    .line 1418
    .line 1419
    move-result v2

    .line 1420
    if-eqz v2, :cond_43

    .line 1421
    .line 1422
    invoke-virtual {v8}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1423
    .line 1424
    .line 1425
    move-result v2

    .line 1426
    if-nez v2, :cond_3e

    .line 1427
    .line 1428
    invoke-virtual {v8, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1429
    .line 1430
    .line 1431
    :cond_3e
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1432
    .line 1433
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1434
    .line 1435
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->U0:LO1/e0;

    .line 1436
    .line 1437
    if-nez v2, :cond_3f

    .line 1438
    .line 1439
    goto :goto_1e

    .line 1440
    :cond_3f
    iget-object v2, v2, LO1/e0;->e:LO1/d0;

    .line 1441
    .line 1442
    instance-of v6, v2, LO1/d0;

    .line 1443
    .line 1444
    if-eqz v6, :cond_42

    .line 1445
    .line 1446
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    .line 1448
    .line 1449
    invoke-static {v8}, LN/N;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v6

    .line 1453
    if-nez v6, :cond_40

    .line 1454
    .line 1455
    const/4 v6, 0x0

    .line 1456
    goto :goto_1d

    .line 1457
    :cond_40
    instance-of v7, v6, LN/a;

    .line 1458
    .line 1459
    if-eqz v7, :cond_41

    .line 1460
    .line 1461
    check-cast v6, LN/a;

    .line 1462
    .line 1463
    iget-object v6, v6, LN/a;->a:LN/b;

    .line 1464
    .line 1465
    goto :goto_1d

    .line 1466
    :cond_41
    new-instance v7, LN/b;

    .line 1467
    .line 1468
    invoke-direct {v7, v6}, LN/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1469
    .line 1470
    .line 1471
    move-object v6, v7

    .line 1472
    :goto_1d
    if-eqz v6, :cond_42

    .line 1473
    .line 1474
    if-eq v6, v2, :cond_42

    .line 1475
    .line 1476
    iget-object v7, v2, LO1/d0;->e:Ljava/util/WeakHashMap;

    .line 1477
    .line 1478
    invoke-virtual {v7, v8, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    :cond_42
    invoke-static {v8, v2}, LN/N;->m(Landroid/view/View;LN/b;)V

    .line 1482
    .line 1483
    .line 1484
    :cond_43
    :goto_1e
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1487
    .line 1488
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 1489
    .line 1490
    iget-boolean v2, v2, LO1/Y;->g:Z

    .line 1491
    .line 1492
    if-eqz v2, :cond_44

    .line 1493
    .line 1494
    iput v0, v9, LO1/c0;->M:I

    .line 1495
    .line 1496
    :cond_44
    const/4 v0, 0x1

    .line 1497
    :goto_1f
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v2

    .line 1501
    if-nez v2, :cond_45

    .line 1502
    .line 1503
    iget-object v2, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1504
    .line 1505
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1506
    .line 1507
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v2

    .line 1511
    check-cast v2, LO1/M;

    .line 1512
    .line 1513
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1514
    .line 1515
    .line 1516
    goto :goto_20

    .line 1517
    :cond_45
    iget-object v6, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1518
    .line 1519
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 1520
    .line 1521
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v6

    .line 1525
    if-nez v6, :cond_46

    .line 1526
    .line 1527
    iget-object v6, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 1530
    .line 1531
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    check-cast v2, LO1/M;

    .line 1536
    .line 1537
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    .line 1539
    .line 1540
    goto :goto_20

    .line 1541
    :cond_46
    check-cast v2, LO1/M;

    .line 1542
    .line 1543
    :goto_20
    iput-object v9, v2, LO1/M;->a:LO1/c0;

    .line 1544
    .line 1545
    if-eqz v5, :cond_47

    .line 1546
    .line 1547
    if-eqz v0, :cond_47

    .line 1548
    .line 1549
    const/4 v3, 0x1

    .line 1550
    :cond_47
    iput-boolean v3, v2, LO1/M;->d:Z

    .line 1551
    .line 1552
    return-object v9

    .line 1553
    :cond_48
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 1554
    .line 1555
    const-string v3, "Invalid item position "

    .line 1556
    .line 1557
    const-string v4, "("

    .line 1558
    .line 1559
    const-string v5, "). Item count:"

    .line 1560
    .line 1561
    invoke-static {v3, v0, v4, v0, v5}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v0

    .line 1565
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1566
    .line 1567
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1568
    .line 1569
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->N0:LO1/Y;

    .line 1570
    .line 1571
    invoke-virtual {v3}, LO1/Y;->b()I

    .line 1572
    .line 1573
    .line 1574
    move-result v3

    .line 1575
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    iget-object v3, v1, Ls1/g;->i:Ljava/lang/Object;

    .line 1579
    .line 1580
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 1581
    .line 1582
    invoke-static {v3, v0}, Lcom/google/protobuf/U2;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1587
    .line 1588
    .line 1589
    throw v2
.end method

.method public final m(LO1/c0;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, LO1/c0;->U:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ls1/g;->d:Ljava/lang/Cloneable;

    .line 6
    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ls1/g;->c:Ljava/lang/Cloneable;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, LO1/c0;->T:Ls1/g;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p1, LO1/c0;->U:Z

    .line 25
    .line 26
    iget v0, p1, LO1/c0;->P:I

    .line 27
    .line 28
    and-int/lit8 v0, v0, -0x21

    .line 29
    .line 30
    iput v0, p1, LO1/c0;->P:I

    .line 31
    .line 32
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/g;->i:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->T:LO1/L;

    .line 13
    .line 14
    iget v0, v0, LO1/L;->j:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget v1, p0, Ls1/g;->a:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    iput v1, p0, Ls1/g;->b:I

    .line 22
    .line 23
    iget-object v0, p0, Ls1/g;->e:Ljava/lang/Cloneable;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz v1, :cond_1

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, p0, Ls1/g;->b:I

    .line 44
    .line 45
    if-le v2, v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ls1/g;->h(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method
