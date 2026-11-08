.class public final LY/P;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/e;

.field public final b:Lm2/o;

.field public final c:LY/s;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lm2/e;Lm2/o;LY/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LY/P;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, LY/P;->e:I

    .line 4
    iput-object p1, p0, LY/P;->a:Lm2/e;

    .line 5
    iput-object p2, p0, LY/P;->b:Lm2/o;

    .line 6
    iput-object p3, p0, LY/P;->c:LY/s;

    return-void
.end method

.method public constructor <init>(Lm2/e;Lm2/o;LY/s;LY/O;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, LY/P;->d:Z

    const/4 v1, -0x1

    .line 39
    iput v1, p0, LY/P;->e:I

    .line 40
    iput-object p1, p0, LY/P;->a:Lm2/e;

    .line 41
    iput-object p2, p0, LY/P;->b:Lm2/o;

    .line 42
    iput-object p3, p0, LY/P;->c:LY/s;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p3, LY/s;->I:Landroid/util/SparseArray;

    .line 44
    iput-object p1, p3, LY/s;->J:Landroid/os/Bundle;

    .line 45
    iput v0, p3, LY/s;->X:I

    .line 46
    iput-boolean v0, p3, LY/s;->U:Z

    .line 47
    iput-boolean v0, p3, LY/s;->R:Z

    .line 48
    iget-object p2, p3, LY/s;->N:LY/s;

    if-eqz p2, :cond_0

    iget-object p2, p2, LY/s;->L:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, LY/s;->O:Ljava/lang/String;

    .line 49
    iput-object p1, p3, LY/s;->N:LY/s;

    .line 50
    iget-object p1, p4, LY/O;->S:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 51
    iput-object p1, p3, LY/s;->H:Landroid/os/Bundle;

    goto :goto_1

    .line 52
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, LY/s;->H:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lm2/e;Lm2/o;Ljava/lang/ClassLoader;LY/F;LY/O;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, LY/P;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, LY/P;->e:I

    .line 10
    iput-object p1, p0, LY/P;->a:Lm2/e;

    .line 11
    iput-object p2, p0, LY/P;->b:Lm2/o;

    .line 12
    iget-object p1, p5, LY/O;->G:Ljava/lang/String;

    .line 13
    invoke-virtual {p4, p1}, LY/F;->a(Ljava/lang/String;)LY/s;

    move-result-object p1

    .line 14
    iget-object p2, p5, LY/O;->P:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    :cond_0
    iget-object p3, p1, LY/s;->Y:LY/K;

    if-eqz p3, :cond_2

    .line 17
    iget-boolean p4, p3, LY/K;->F:Z

    if-nez p4, :cond_1

    iget-boolean p3, p3, LY/K;->G:Z

    if-nez p3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already added and state has been saved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    :goto_0
    iput-object p2, p1, LY/s;->M:Landroid/os/Bundle;

    .line 20
    iget-object p2, p5, LY/O;->H:Ljava/lang/String;

    iput-object p2, p1, LY/s;->L:Ljava/lang/String;

    .line 21
    iget-boolean p2, p5, LY/O;->I:Z

    iput-boolean p2, p1, LY/s;->T:Z

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p1, LY/s;->V:Z

    .line 23
    iget p2, p5, LY/O;->J:I

    iput p2, p1, LY/s;->c0:I

    .line 24
    iget p2, p5, LY/O;->K:I

    iput p2, p1, LY/s;->d0:I

    .line 25
    iget-object p2, p5, LY/O;->L:Ljava/lang/String;

    iput-object p2, p1, LY/s;->e0:Ljava/lang/String;

    .line 26
    iget-boolean p2, p5, LY/O;->M:Z

    iput-boolean p2, p1, LY/s;->h0:Z

    .line 27
    iget-boolean p2, p5, LY/O;->N:Z

    iput-boolean p2, p1, LY/s;->S:Z

    .line 28
    iget-boolean p2, p5, LY/O;->O:Z

    iput-boolean p2, p1, LY/s;->g0:Z

    .line 29
    iget-boolean p2, p5, LY/O;->Q:Z

    iput-boolean p2, p1, LY/s;->f0:Z

    .line 30
    invoke-static {}, Le0/j;->values()[Le0/j;

    move-result-object p2

    iget p3, p5, LY/O;->R:I

    aget-object p2, p2, p3

    iput-object p2, p1, LY/s;->t0:Le0/j;

    .line 31
    iget-object p2, p5, LY/O;->S:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    .line 32
    iput-object p2, p1, LY/s;->H:Landroid/os/Bundle;

    goto :goto_1

    .line 33
    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, LY/s;->H:Landroid/os/Bundle;

    .line 34
    :goto_1
    iput-object p1, p0, LY/P;->c:LY/s;

    const/4 p2, 0x2

    .line 35
    const-string p3, "FragmentManager"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Instantiated fragment "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "moveto ACTIVITY_CREATED: "

    .line 15
    .line 16
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v2, v3, LY/s;->H:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object v2, v3, LY/s;->a0:LY/K;

    .line 32
    .line 33
    invoke-virtual {v2}, LY/K;->L()V

    .line 34
    .line 35
    .line 36
    iput v1, v3, LY/s;->G:I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-boolean v2, v3, LY/s;->k0:Z

    .line 40
    .line 41
    invoke-virtual {v3}, LY/s;->u()V

    .line 42
    .line 43
    .line 44
    iget-boolean v4, v3, LY/s;->k0:Z

    .line 45
    .line 46
    const-string v5, "Fragment "

    .line 47
    .line 48
    if-eqz v4, :cond_6

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "moveto RESTORE_VIEW_STATE: "

    .line 59
    .line 60
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v0, v3, LY/s;->m0:Landroid/view/View;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object v4, v3, LY/s;->H:Landroid/os/Bundle;

    .line 79
    .line 80
    iget-object v6, v3, LY/s;->I:Landroid/util/SparseArray;

    .line 81
    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v3, LY/s;->I:Landroid/util/SparseArray;

    .line 88
    .line 89
    :cond_2
    iget-object v0, v3, LY/s;->m0:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, v3, LY/s;->v0:LY/a0;

    .line 94
    .line 95
    iget-object v6, v3, LY/s;->J:Landroid/os/Bundle;

    .line 96
    .line 97
    iget-object v0, v0, LY/a0;->J:LS1/f;

    .line 98
    .line 99
    invoke-virtual {v0, v6}, LS1/f;->b(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, v3, LY/s;->J:Landroid/os/Bundle;

    .line 103
    .line 104
    :cond_3
    iput-boolean v2, v3, LY/s;->k0:Z

    .line 105
    .line 106
    invoke-virtual {v3, v4}, LY/s;->I(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, v3, LY/s;->k0:Z

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, v3, LY/s;->m0:Landroid/view/View;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-object v0, v3, LY/s;->v0:LY/a0;

    .line 118
    .line 119
    sget-object v4, Le0/i;->ON_CREATE:Le0/i;

    .line 120
    .line 121
    invoke-virtual {v0, v4}, LY/a0;->b(Le0/i;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, LY/f0;

    .line 126
    .line 127
    const-string v1, " did not call through to super.onViewStateRestored()"

    .line 128
    .line 129
    invoke-static {v5, v3, v1}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_5
    :goto_0
    iput-object v1, v3, LY/s;->H:Landroid/os/Bundle;

    .line 138
    .line 139
    iget-object v0, v3, LY/s;->a0:LY/K;

    .line 140
    .line 141
    iput-boolean v2, v0, LY/K;->F:Z

    .line 142
    .line 143
    iput-boolean v2, v0, LY/K;->G:Z

    .line 144
    .line 145
    iget-object v1, v0, LY/K;->M:LY/M;

    .line 146
    .line 147
    iput-boolean v2, v1, LY/M;->g:Z

    .line 148
    .line 149
    const/4 v1, 0x4

    .line 150
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lm2/e;->j(Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    new-instance v0, LY/f0;

    .line 160
    .line 161
    const-string v1, " did not call through to super.onActivityCreated()"

    .line 162
    .line 163
    invoke-static {v5, v3, v1}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-object v0, p0, LY/P;->b:Lm2/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LY/P;->c:LY/s;

    .line 7
    .line 8
    iget-object v2, v1, LY/s;->l0:Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v4, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/lit8 v5, v4, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v5, :cond_2

    .line 25
    .line 26
    iget-object v6, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, LY/s;

    .line 35
    .line 36
    iget-object v7, v6, LY/s;->l0:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-ne v7, v2, :cond_1

    .line 39
    .line 40
    iget-object v6, v6, LY/s;->m0:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/lit8 v3, v0, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    iget-object v5, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v4, v5, :cond_4

    .line 65
    .line 66
    iget-object v5, v0, Lm2/o;->G:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v5, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, LY/s;

    .line 75
    .line 76
    iget-object v6, v5, LY/s;->l0:Landroid/view/ViewGroup;

    .line 77
    .line 78
    if-ne v6, v2, :cond_3

    .line 79
    .line 80
    iget-object v5, v5, LY/s;->m0:Landroid/view/View;

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    goto :goto_1

    .line 90
    :cond_4
    :goto_2
    iget-object v0, v1, LY/s;->l0:Landroid/view/ViewGroup;

    .line 91
    .line 92
    iget-object v1, v1, LY/s;->m0:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->N:LY/s;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v3, " that does not belong to this FragmentManager!"

    .line 33
    .line 34
    const-string v4, " declared target fragment "

    .line 35
    .line 36
    iget-object v5, p0, LY/P;->b:Lm2/o;

    .line 37
    .line 38
    const-string v6, "Fragment "

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, LY/s;->L:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, v5, Lm2/o;->H:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, LY/P;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v3, v2, LY/s;->N:LY/s;

    .line 57
    .line 58
    iget-object v3, v3, LY/s;->L:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v2, LY/s;->O:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, v2, LY/s;->N:LY/s;

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, v2, LY/s;->N:LY/s;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    iget-object v0, v2, LY/s;->O:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v1, v5, Lm2/o;->H:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v1, v0

    .line 108
    check-cast v1, LY/P;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v2, v2, LY/s;->O:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v1, v2, v3}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 137
    .line 138
    invoke-virtual {v1}, LY/P;->k()V

    .line 139
    .line 140
    .line 141
    :cond_5
    iget-object v0, v2, LY/s;->Y:LY/K;

    .line 142
    .line 143
    iget-object v1, v0, LY/K;->u:LY/u;

    .line 144
    .line 145
    iput-object v1, v2, LY/s;->Z:LY/u;

    .line 146
    .line 147
    iget-object v0, v0, LY/K;->w:LY/s;

    .line 148
    .line 149
    iput-object v0, v2, LY/s;->b0:LY/s;

    .line 150
    .line 151
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Lm2/e;->q(Z)V

    .line 155
    .line 156
    .line 157
    iget-object v3, v2, LY/s;->z0:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_6

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, LY/n;

    .line 174
    .line 175
    iget-object v5, v5, LY/n;->a:LY/s;

    .line 176
    .line 177
    iget-object v7, v5, LY/s;->x0:LS1/f;

    .line 178
    .line 179
    invoke-virtual {v7}, LS1/f;->a()V

    .line 180
    .line 181
    .line 182
    invoke-static {v5}, Le0/B;->b(LS1/g;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 187
    .line 188
    .line 189
    iget-object v3, v2, LY/s;->a0:LY/K;

    .line 190
    .line 191
    iget-object v4, v2, LY/s;->Z:LY/u;

    .line 192
    .line 193
    invoke-virtual {v2}, LY/s;->b()Lf/b;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v3, v4, v5, v2}, LY/K;->b(LY/u;Lf/b;LY/s;)V

    .line 198
    .line 199
    .line 200
    iput v1, v2, LY/s;->G:I

    .line 201
    .line 202
    iput-boolean v1, v2, LY/s;->k0:Z

    .line 203
    .line 204
    iget-object v3, v2, LY/s;->Z:LY/u;

    .line 205
    .line 206
    iget-object v3, v3, LY/u;->N:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v2, v3}, LY/s;->w(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    iget-boolean v3, v2, LY/s;->k0:Z

    .line 212
    .line 213
    if-eqz v3, :cond_8

    .line 214
    .line 215
    iget-object v3, v2, LY/s;->Y:LY/K;

    .line 216
    .line 217
    iget-object v3, v3, LY/K;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_7

    .line 228
    .line 229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, LY/N;

    .line 234
    .line 235
    invoke-interface {v4}, LY/N;->a()V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_7
    iget-object v2, v2, LY/s;->a0:LY/K;

    .line 240
    .line 241
    iput-boolean v1, v2, LY/K;->F:Z

    .line 242
    .line 243
    iput-boolean v1, v2, LY/K;->G:Z

    .line 244
    .line 245
    iget-object v3, v2, LY/K;->M:LY/M;

    .line 246
    .line 247
    iput-boolean v1, v3, LY/M;->g:Z

    .line 248
    .line 249
    invoke-virtual {v2, v1}, LY/K;->t(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Lm2/e;->l(Z)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_8
    new-instance v0, LY/f0;

    .line 257
    .line 258
    const-string v1, " did not call through to super.onAttach()"

    .line 259
    .line 260
    invoke-static {v6, v2, v1}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0
.end method

.method public final d()I
    .locals 12

    .line 1
    iget-object v0, p0, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-object v1, v0, LY/s;->Y:LY/K;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, LY/s;->G:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, LY/P;->e:I

    .line 11
    .line 12
    iget-object v2, v0, LY/s;->t0:Le0/j;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x5

    .line 23
    const/4 v8, -0x1

    .line 24
    const/4 v9, 0x4

    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    if-eq v2, v5, :cond_1

    .line 30
    .line 31
    if-eq v2, v9, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, LY/s;->T:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, LY/s;->U:Z

    .line 57
    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    iget v1, p0, LY/P;->e:I

    .line 61
    .line 62
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v0, LY/s;->m0:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    iget v2, p0, LY/P;->e:I

    .line 82
    .line 83
    if-ge v2, v9, :cond_6

    .line 84
    .line 85
    iget v2, v0, LY/s;->G:I

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :cond_7
    :goto_1
    iget-boolean v2, v0, LY/s;->R:Z

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_8
    iget-object v2, v0, LY/s;->l0:Landroid/view/ViewGroup;

    .line 105
    .line 106
    if-eqz v2, :cond_d

    .line 107
    .line 108
    invoke-virtual {v0}, LY/s;->n()LY/K;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v10}, LY/K;->E()LY/C;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-static {v2, v10}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, LY/e0;->d(LY/s;)LY/d0;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    if-eqz v10, :cond_9

    .line 128
    .line 129
    iget v6, v10, LY/d0;->b:I

    .line 130
    .line 131
    :cond_9
    iget-object v2, v2, LY/e0;->c:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_b

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v10, LY/d0;

    .line 148
    .line 149
    iget-object v11, v10, LY/d0;->c:LY/s;

    .line 150
    .line 151
    invoke-virtual {v11, v0}, LY/s;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_a

    .line 156
    .line 157
    iget-boolean v11, v10, LY/d0;->f:Z

    .line 158
    .line 159
    if-nez v11, :cond_a

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_b
    const/4 v10, 0x0

    .line 163
    :goto_2
    if-eqz v10, :cond_d

    .line 164
    .line 165
    if-eqz v6, :cond_c

    .line 166
    .line 167
    if-ne v6, v3, :cond_d

    .line 168
    .line 169
    :cond_c
    iget v2, v10, LY/d0;->b:I

    .line 170
    .line 171
    move v6, v2

    .line 172
    :cond_d
    if-ne v6, v4, :cond_e

    .line 173
    .line 174
    const/4 v2, 0x6

    .line 175
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    goto :goto_3

    .line 180
    :cond_e
    if-ne v6, v5, :cond_f

    .line 181
    .line 182
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto :goto_3

    .line 187
    :cond_f
    iget-boolean v2, v0, LY/s;->S:Z

    .line 188
    .line 189
    if-eqz v2, :cond_11

    .line 190
    .line 191
    invoke-virtual {v0}, LY/s;->t()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_10

    .line 196
    .line 197
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    goto :goto_3

    .line 202
    :cond_10
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    :cond_11
    :goto_3
    iget-boolean v2, v0, LY/s;->n0:Z

    .line 207
    .line 208
    if-eqz v2, :cond_12

    .line 209
    .line 210
    iget v2, v0, LY/s;->G:I

    .line 211
    .line 212
    if-ge v2, v7, :cond_12

    .line 213
    .line 214
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :cond_12
    const-string v2, "FragmentManager"

    .line 219
    .line 220
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_13

    .line 225
    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v4, "computeExpectedState() of "

    .line 229
    .line 230
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v4, " for "

    .line 237
    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_13
    return v1
.end method

.method public final e()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto CREATED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v2, LY/s;->r0:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lm2/e;->r(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v2, LY/s;->H:Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v5, v2, LY/s;->a0:LY/K;

    .line 43
    .line 44
    invoke-virtual {v5}, LY/K;->L()V

    .line 45
    .line 46
    .line 47
    iput v3, v2, LY/s;->G:I

    .line 48
    .line 49
    iput-boolean v1, v2, LY/s;->k0:Z

    .line 50
    .line 51
    iget-object v5, v2, LY/s;->u0:Le0/o;

    .line 52
    .line 53
    new-instance v6, LY/p;

    .line 54
    .line 55
    invoke-direct {v6, v2}, LY/p;-><init>(LY/s;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Le0/o;->a(Le0/l;)V

    .line 59
    .line 60
    .line 61
    iget-object v5, v2, LY/s;->x0:LS1/f;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, LS1/f;->b(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4}, LY/s;->x(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    iput-boolean v3, v2, LY/s;->r0:Z

    .line 70
    .line 71
    iget-boolean v3, v2, LY/s;->k0:Z

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iget-object v2, v2, LY/s;->u0:Le0/o;

    .line 76
    .line 77
    sget-object v3, Le0/i;->ON_CREATE:Le0/i;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Le0/o;->f(Le0/i;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lm2/e;->m(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, LY/f0;

    .line 87
    .line 88
    const-string v1, "Fragment "

    .line 89
    .line 90
    const-string v3, " did not call through to super.onCreate()"

    .line 91
    .line 92
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_2
    iget-object v0, v2, LY/s;->H:Landroid/os/Bundle;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    const-string v4, "android:support:fragments"

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v4, v2, LY/s;->a0:LY/K;

    .line 113
    .line 114
    invoke-virtual {v4, v0}, LY/K;->R(Landroid/os/Parcelable;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 118
    .line 119
    iput-boolean v1, v0, LY/K;->F:Z

    .line 120
    .line 121
    iput-boolean v1, v0, LY/K;->G:Z

    .line 122
    .line 123
    iget-object v4, v0, LY/K;->M:LY/M;

    .line 124
    .line 125
    iput-boolean v1, v4, LY/M;->g:Z

    .line 126
    .line 127
    invoke-virtual {v0, v3}, LY/K;->t(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iput v3, v2, LY/s;->G:I

    .line 131
    .line 132
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-boolean v1, v0, LY/s;->T:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    const-string v2, "FragmentManager"

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    const-string v3, "moveto CREATE_VIEW: "

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, LY/s;->C(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, v0, LY/s;->l0:Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_2
    iget v3, v0, LY/s;->d0:I

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    const/4 v4, -0x1

    .line 51
    if-eq v3, v4, :cond_5

    .line 52
    .line 53
    iget-object v4, v0, LY/s;->Y:LY/K;

    .line 54
    .line 55
    iget-object v4, v4, LY/K;->v:Lf/b;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Lf/b;->w(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    iget-boolean v4, v0, LY/s;->V:Z

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :try_start_0
    invoke-virtual {v0}, LY/s;->o()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v2, v0, LY/s;->d0:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    const-string v1, "unknown"

    .line 82
    .line 83
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v4, "No view found for id 0x"

    .line 88
    .line 89
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v4, v0, LY/s;->d0:I

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, " ("

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ") for fragment "

    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v2

    .line 125
    :cond_4
    instance-of v4, v3, LY/y;

    .line 126
    .line 127
    if-nez v4, :cond_7

    .line 128
    .line 129
    sget-object v4, LZ/c;->a:LZ/b;

    .line 130
    .line 131
    new-instance v4, LZ/d;

    .line 132
    .line 133
    const/4 v5, 0x1

    .line 134
    invoke-direct {v4, v0, v3, v5}, LZ/d;-><init>(LY/s;Landroid/view/ViewGroup;I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, LZ/c;->c(LZ/g;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, LZ/c;->a(LY/s;)LZ/b;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    iget-object v6, v5, LZ/b;->a:Ljava/util/Set;

    .line 145
    .line 146
    sget-object v7, LZ/a;->M:LZ/a;

    .line 147
    .line 148
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_7

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-class v7, LZ/d;

    .line 159
    .line 160
    invoke-static {v5, v6, v7}, LZ/c;->e(LZ/b;Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_7

    .line 165
    .line 166
    invoke-static {v5, v4}, LZ/c;->b(LZ/b;LZ/g;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string v2, "Cannot create fragment "

    .line 173
    .line 174
    const-string v3, " for a container view with no id"

    .line 175
    .line 176
    invoke-static {v2, v0, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1

    .line 184
    :cond_6
    const/4 v3, 0x0

    .line 185
    :cond_7
    :goto_1
    iput-object v3, v0, LY/s;->l0:Landroid/view/ViewGroup;

    .line 186
    .line 187
    iget-object v4, v0, LY/s;->H:Landroid/os/Bundle;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v3, v4}, LY/s;->J(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 193
    .line 194
    const/4 v4, 0x2

    .line 195
    if-eqz v1, :cond_c

    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 202
    .line 203
    const v6, 0x7f0b0228

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    invoke-virtual {p0}, LY/P;->b()V

    .line 212
    .line 213
    .line 214
    :cond_8
    iget-boolean v1, v0, LY/s;->f0:Z

    .line 215
    .line 216
    if-eqz v1, :cond_9

    .line 217
    .line 218
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 219
    .line 220
    const/16 v3, 0x8

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    :cond_9
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 226
    .line 227
    sget-object v3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 236
    .line 237
    invoke-static {v1}, LN/C;->c(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_a
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 242
    .line 243
    new-instance v3, LY/z;

    .line 244
    .line 245
    invoke-direct {v3, p0, v1}, LY/z;-><init>(LY/P;Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    iget-object v1, v0, LY/s;->a0:LY/K;

    .line 252
    .line 253
    invoke-virtual {v1, v4}, LY/K;->t(I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, LY/P;->a:Lm2/e;

    .line 257
    .line 258
    invoke-virtual {v1, v5}, Lm2/e;->w(Z)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget-object v3, v0, LY/s;->m0:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    invoke-virtual {v0}, LY/s;->i()LY/q;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    iput v3, v5, LY/q;->l:F

    .line 278
    .line 279
    iget-object v3, v0, LY/s;->l0:Landroid/view/ViewGroup;

    .line 280
    .line 281
    if-eqz v3, :cond_c

    .line 282
    .line 283
    if-nez v1, :cond_c

    .line 284
    .line 285
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-eqz v1, :cond_b

    .line 292
    .line 293
    invoke-virtual {v0}, LY/s;->i()LY/q;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iput-object v1, v3, LY/q;->m:Landroid/view/View;

    .line 298
    .line 299
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_b

    .line 304
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v5, "requestFocus: Saved focused view "

    .line 308
    .line 309
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, " for Fragment "

    .line 316
    .line 317
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    :cond_b
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 331
    .line 332
    const/4 v2, 0x0

    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    .line 335
    .line 336
    :cond_c
    iput v4, v0, LY/s;->G:I

    .line 337
    .line 338
    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "movefrom CREATED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-boolean v0, v2, LY/s;->S:Z

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, LY/s;->t()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    const/4 v4, 0x0

    .line 45
    iget-object v5, p0, LY/P;->b:Lm2/o;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v6, v2, LY/s;->L:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Lm2/o;->t(Ljava/lang/String;LY/O;)LY/O;

    .line 52
    .line 53
    .line 54
    :cond_2
    if-nez v0, :cond_6

    .line 55
    .line 56
    iget-object v6, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, LY/M;

    .line 59
    .line 60
    iget-object v7, v6, LY/M;->b:Ljava/util/HashMap;

    .line 61
    .line 62
    iget-object v8, v2, LY/s;->L:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-boolean v7, v6, LY/M;->e:Z

    .line 72
    .line 73
    if-eqz v7, :cond_6

    .line 74
    .line 75
    iget-boolean v6, v6, LY/M;->f:Z

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-object v0, v2, LY/s;->O:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v5, v0}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-boolean v1, v0, LY/s;->h0:Z

    .line 91
    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iput-object v0, v2, LY/s;->N:LY/s;

    .line 95
    .line 96
    :cond_5
    iput v3, v2, LY/s;->G:I

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_6
    :goto_1
    iget-object v6, v2, LY/s;->Z:LY/u;

    .line 101
    .line 102
    instance-of v7, v6, Le0/L;

    .line 103
    .line 104
    if-eqz v7, :cond_7

    .line 105
    .line 106
    iget-object v1, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, LY/M;

    .line 109
    .line 110
    iget-boolean v1, v1, LY/M;->f:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    iget-object v6, v6, LY/u;->N:Landroid/content/Context;

    .line 114
    .line 115
    instance-of v7, v6, Landroid/app/Activity;

    .line 116
    .line 117
    if-eqz v7, :cond_8

    .line 118
    .line 119
    check-cast v6, Landroid/app/Activity;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    xor-int/2addr v1, v6

    .line 126
    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    if-eqz v1, :cond_a

    .line 130
    .line 131
    :goto_3
    iget-object v0, v5, Lm2/o;->J:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, LY/M;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, LY/M;->d(LY/s;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 139
    .line 140
    invoke-virtual {v0}, LY/K;->k()V

    .line 141
    .line 142
    .line 143
    iget-object v0, v2, LY/s;->u0:Le0/o;

    .line 144
    .line 145
    sget-object v1, Le0/i;->ON_DESTROY:Le0/i;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 148
    .line 149
    .line 150
    iput v3, v2, LY/s;->G:I

    .line 151
    .line 152
    iput-boolean v3, v2, LY/s;->k0:Z

    .line 153
    .line 154
    iput-boolean v3, v2, LY/s;->r0:Z

    .line 155
    .line 156
    invoke-virtual {v2}, LY/s;->z()V

    .line 157
    .line 158
    .line 159
    iget-boolean v0, v2, LY/s;->k0:Z

    .line 160
    .line 161
    if-eqz v0, :cond_e

    .line 162
    .line 163
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Lm2/e;->n(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lm2/o;->l()Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, LY/P;

    .line 187
    .line 188
    if-eqz v1, :cond_b

    .line 189
    .line 190
    iget-object v3, v2, LY/s;->L:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v1, v1, LY/P;->c:LY/s;

    .line 193
    .line 194
    iget-object v6, v1, LY/s;->O:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_b

    .line 201
    .line 202
    iput-object v2, v1, LY/s;->N:LY/s;

    .line 203
    .line 204
    iput-object v4, v1, LY/s;->O:Ljava/lang/String;

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    iget-object v0, v2, LY/s;->O:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v0, :cond_d

    .line 210
    .line 211
    invoke-virtual {v5, v0}, Lm2/o;->j(Ljava/lang/String;)LY/s;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iput-object v0, v2, LY/s;->N:LY/s;

    .line 216
    .line 217
    :cond_d
    invoke-virtual {v5, p0}, Lm2/o;->r(LY/P;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    return-void

    .line 221
    :cond_e
    new-instance v0, LY/f0;

    .line 222
    .line 223
    const-string v1, "Fragment "

    .line 224
    .line 225
    const-string v3, " did not call through to super.onDestroy()"

    .line 226
    .line 227
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0
.end method

.method public final h()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "movefrom CREATE_VIEW: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->l0:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, v2, LY/s;->m0:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v2, LY/s;->m0:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, v2, LY/s;->v0:LY/a0;

    .line 51
    .line 52
    invoke-virtual {v0}, LY/a0;->e()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, LY/a0;->I:Le0/o;

    .line 56
    .line 57
    iget-object v0, v0, Le0/o;->L:Le0/j;

    .line 58
    .line 59
    sget-object v3, Le0/j;->I:Le0/j;

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ltz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, v2, LY/s;->v0:LY/a0;

    .line 68
    .line 69
    sget-object v3, Le0/i;->ON_DESTROY:Le0/i;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, LY/a0;->b(Le0/i;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iput v1, v2, LY/s;->G:I

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, v2, LY/s;->k0:Z

    .line 78
    .line 79
    invoke-virtual {v2}, LY/s;->A()V

    .line 80
    .line 81
    .line 82
    iget-boolean v1, v2, LY/s;->k0:Z

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v2}, Le0/L;->c()Le0/K;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v3, Le0/J;

    .line 91
    .line 92
    sget-object v4, Lh0/a;->c:LF2/G;

    .line 93
    .line 94
    invoke-direct {v3, v1, v4}, Le0/J;-><init>(Le0/K;LF2/G;)V

    .line 95
    .line 96
    .line 97
    const-class v1, Lh0/a;

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Le0/J;->a(Ljava/lang/Class;)Le0/G;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lh0/a;

    .line 104
    .line 105
    iget-object v1, v1, Lh0/a;->b:Lr/n;

    .line 106
    .line 107
    iget v3, v1, Lr/n;->I:I

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    if-gtz v3, :cond_3

    .line 111
    .line 112
    iput-boolean v0, v2, LY/s;->W:Z

    .line 113
    .line 114
    iget-object v1, p0, LY/P;->a:Lm2/e;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Lm2/e;->x(Z)V

    .line 117
    .line 118
    .line 119
    iput-object v4, v2, LY/s;->l0:Landroid/view/ViewGroup;

    .line 120
    .line 121
    iput-object v4, v2, LY/s;->m0:Landroid/view/View;

    .line 122
    .line 123
    iput-object v4, v2, LY/s;->v0:LY/a0;

    .line 124
    .line 125
    iget-object v1, v2, LY/s;->w0:Le0/v;

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Le0/v;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-boolean v0, v2, LY/s;->U:Z

    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    iget-object v1, v1, Lr/n;->H:[Ljava/lang/Object;

    .line 134
    .line 135
    aget-object v0, v1, v0

    .line 136
    .line 137
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    throw v4

    .line 141
    :cond_4
    new-instance v0, LY/f0;

    .line 142
    .line 143
    const-string v1, "Fragment "

    .line 144
    .line 145
    const-string v3, " did not call through to super.onDestroyView()"

    .line 146
    .line 147
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method public final i()V
    .locals 7

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "movefrom ATTACHED: "

    .line 15
    .line 16
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v2, -0x1

    .line 30
    iput v2, v3, LY/s;->G:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v3, LY/s;->k0:Z

    .line 34
    .line 35
    invoke-virtual {v3}, LY/s;->B()V

    .line 36
    .line 37
    .line 38
    iget-boolean v5, v3, LY/s;->k0:Z

    .line 39
    .line 40
    if-eqz v5, :cond_7

    .line 41
    .line 42
    iget-object v5, v3, LY/s;->a0:LY/K;

    .line 43
    .line 44
    iget-boolean v6, v5, LY/K;->H:Z

    .line 45
    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v5}, LY/K;->k()V

    .line 49
    .line 50
    .line 51
    new-instance v5, LY/K;

    .line 52
    .line 53
    invoke-direct {v5}, LY/K;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v5, v3, LY/s;->a0:LY/K;

    .line 57
    .line 58
    :cond_1
    iget-object v5, p0, LY/P;->a:Lm2/e;

    .line 59
    .line 60
    invoke-virtual {v5, v4}, Lm2/e;->o(Z)V

    .line 61
    .line 62
    .line 63
    iput v2, v3, LY/s;->G:I

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    iput-object v2, v3, LY/s;->Z:LY/u;

    .line 67
    .line 68
    iput-object v2, v3, LY/s;->b0:LY/s;

    .line 69
    .line 70
    iput-object v2, v3, LY/s;->Y:LY/K;

    .line 71
    .line 72
    iget-boolean v2, v3, LY/s;->S:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v3}, LY/s;->t()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, p0, LY/P;->b:Lm2/o;

    .line 84
    .line 85
    iget-object v2, v2, Lm2/o;->J:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, LY/M;

    .line 88
    .line 89
    iget-object v4, v2, LY/M;->b:Ljava/util/HashMap;

    .line 90
    .line 91
    iget-object v5, v3, LY/s;->L:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-boolean v4, v2, LY/M;->e:Z

    .line 101
    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    iget-boolean v2, v2, LY/M;->f:Z

    .line 105
    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "initState called for fragment: "

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v3}, LY/s;->q()V

    .line 132
    .line 133
    .line 134
    :cond_6
    return-void

    .line 135
    :cond_7
    new-instance v0, LY/f0;

    .line 136
    .line 137
    const-string v1, "Fragment "

    .line 138
    .line 139
    const-string v2, " did not call through to super.onDetach()"

    .line 140
    .line 141
    invoke-static {v1, v3, v2}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-boolean v1, v0, LY/s;->T:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, LY/s;->U:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, LY/s;->W:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    const-string v2, "FragmentManager"

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "moveto CREATE_VIEW: "

    .line 27
    .line 28
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, LY/s;->C(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    iget-object v3, v0, LY/s;->H:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, LY/s;->J(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 62
    .line 63
    const v3, 0x7f0b0228

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, v0, LY/s;->f0:Z

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 74
    .line 75
    const/16 v3, 0x8

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v1, v0, LY/s;->a0:LY/K;

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    invoke-virtual {v1, v3}, LY/K;->t(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, LY/P;->a:Lm2/e;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lm2/e;->w(Z)V

    .line 89
    .line 90
    .line 91
    iput v3, v0, LY/s;->G:I

    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 10

    .line 1
    iget-object v0, p0, LY/P;->b:Lm2/o;

    .line 2
    .line 3
    iget-boolean v1, p0, LY/P;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "FragmentManager"

    .line 7
    .line 8
    iget-object v4, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iput-boolean v1, p0, LY/P;->d:Z

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, LY/P;->d()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    iget v8, v4, LY/s;->G:I

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    if-eq v7, v8, :cond_9

    .line 49
    .line 50
    if-le v7, v8, :cond_4

    .line 51
    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    packed-switch v8, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_0
    invoke-virtual {p0}, LY/P;->n()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :pswitch_1
    const/4 v6, 0x6

    .line 68
    iput v6, v4, LY/s;->G:I

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :pswitch_2
    invoke-virtual {p0}, LY/P;->q()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_3
    iget-object v6, v4, LY/s;->m0:Landroid/view/View;

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget-object v6, v4, LY/s;->l0:Landroid/view/ViewGroup;

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {v4}, LY/s;->n()LY/K;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v7}, LY/K;->E()LY/C;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v6, v7}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-object v7, v4, LY/s;->m0:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-static {v7}, LA0/O;->e(I)I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_2

    .line 115
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v9, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 119
    .line 120
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual {v6, v7, v2, p0}, LY/e0;->a(IILY/P;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    const/4 v6, 0x4

    .line 137
    iput v6, v4, LY/s;->G:I

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :pswitch_4
    invoke-virtual {p0}, LY/P;->a()V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :pswitch_5
    invoke-virtual {p0}, LY/P;->j()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, LY/P;->f()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :pswitch_6
    invoke-virtual {p0}, LY/P;->e()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_1

    .line 158
    .line 159
    :pswitch_7
    invoke-virtual {p0}, LY/P;->c()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_4
    add-int/lit8 v8, v8, -0x1

    .line 165
    .line 166
    packed-switch v8, :pswitch_data_1

    .line 167
    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :pswitch_8
    invoke-virtual {p0}, LY/P;->l()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :pswitch_9
    const/4 v6, 0x5

    .line 177
    iput v6, v4, LY/s;->G:I

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :pswitch_a
    invoke-virtual {p0}, LY/P;->r()V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :pswitch_b
    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_5

    .line 190
    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v7, "movefrom ACTIVITY_CREATED: "

    .line 197
    .line 198
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_5
    iget-object v6, v4, LY/s;->m0:Landroid/view/View;

    .line 212
    .line 213
    if-eqz v6, :cond_6

    .line 214
    .line 215
    iget-object v6, v4, LY/s;->I:Landroid/util/SparseArray;

    .line 216
    .line 217
    if-nez v6, :cond_6

    .line 218
    .line 219
    invoke-virtual {p0}, LY/P;->p()V

    .line 220
    .line 221
    .line 222
    :cond_6
    iget-object v6, v4, LY/s;->m0:Landroid/view/View;

    .line 223
    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    iget-object v6, v4, LY/s;->l0:Landroid/view/ViewGroup;

    .line 227
    .line 228
    if-eqz v6, :cond_8

    .line 229
    .line 230
    invoke-virtual {v4}, LY/s;->n()LY/K;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v7}, LY/K;->E()LY/C;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v6, v7}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_7

    .line 250
    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 254
    .line 255
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :cond_7
    invoke-virtual {v6, v1, v9, p0}, LY/e0;->a(IILY/P;)V

    .line 269
    .line 270
    .line 271
    :cond_8
    iput v9, v4, LY/s;->G:I

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :pswitch_c
    iput-boolean v5, v4, LY/s;->U:Z

    .line 275
    .line 276
    iput v2, v4, LY/s;->G:I

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :pswitch_d
    invoke-virtual {p0}, LY/P;->h()V

    .line 280
    .line 281
    .line 282
    iput v1, v4, LY/s;->G:I

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :pswitch_e
    invoke-virtual {p0}, LY/P;->g()V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :pswitch_f
    invoke-virtual {p0}, LY/P;->i()V

    .line 290
    .line 291
    .line 292
    :goto_1
    const/4 v6, 0x1

    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_9
    if-nez v6, :cond_c

    .line 296
    .line 297
    const/4 v6, -0x1

    .line 298
    if-ne v8, v6, :cond_c

    .line 299
    .line 300
    iget-boolean v6, v4, LY/s;->S:Z

    .line 301
    .line 302
    if-eqz v6, :cond_c

    .line 303
    .line 304
    invoke-virtual {v4}, LY/s;->t()Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-nez v6, :cond_c

    .line 309
    .line 310
    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_a

    .line 315
    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v7, "Cleaning up state of never attached fragment: "

    .line 322
    .line 323
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :cond_a
    iget-object v6, v0, Lm2/o;->J:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v6, LY/M;

    .line 339
    .line 340
    invoke-virtual {v6, v4}, LY/M;->d(LY/s;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, p0}, Lm2/o;->r(LY/P;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_b

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v6, "initState called for fragment: "

    .line 358
    .line 359
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    :cond_b
    invoke-virtual {v4}, LY/s;->q()V

    .line 373
    .line 374
    .line 375
    :cond_c
    iget-boolean v0, v4, LY/s;->q0:Z

    .line 376
    .line 377
    if-eqz v0, :cond_12

    .line 378
    .line 379
    iget-object v0, v4, LY/s;->m0:Landroid/view/View;

    .line 380
    .line 381
    if-eqz v0, :cond_10

    .line 382
    .line 383
    iget-object v0, v4, LY/s;->l0:Landroid/view/ViewGroup;

    .line 384
    .line 385
    if-eqz v0, :cond_10

    .line 386
    .line 387
    invoke-virtual {v4}, LY/s;->n()LY/K;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    invoke-virtual {v6}, LY/K;->E()LY/C;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-static {v0, v6}, LY/e0;->f(Landroid/view/ViewGroup;LY/C;)LY/e0;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iget-boolean v6, v4, LY/s;->f0:Z

    .line 400
    .line 401
    if-eqz v6, :cond_e

    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_d

    .line 411
    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 415
    .line 416
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    :cond_d
    invoke-virtual {v0, v9, v1, p0}, LY/e0;->a(IILY/P;)V

    .line 430
    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-eqz v6, :cond_f

    .line 441
    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 445
    .line 446
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    :cond_f
    invoke-virtual {v0, v2, v1, p0}, LY/e0;->a(IILY/P;)V

    .line 460
    .line 461
    .line 462
    :cond_10
    :goto_2
    iget-object v0, v4, LY/s;->Y:LY/K;

    .line 463
    .line 464
    if-eqz v0, :cond_11

    .line 465
    .line 466
    iget-boolean v2, v4, LY/s;->R:Z

    .line 467
    .line 468
    if-eqz v2, :cond_11

    .line 469
    .line 470
    invoke-static {v4}, LY/K;->G(LY/s;)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_11

    .line 475
    .line 476
    iput-boolean v1, v0, LY/K;->E:Z

    .line 477
    .line 478
    :cond_11
    iput-boolean v5, v4, LY/s;->q0:Z

    .line 479
    .line 480
    iget-object v0, v4, LY/s;->a0:LY/K;

    .line 481
    .line 482
    invoke-virtual {v0}, LY/K;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    .line 484
    .line 485
    :cond_12
    iput-boolean v5, p0, LY/P;->d:Z

    .line 486
    .line 487
    return-void

    .line 488
    :goto_3
    iput-boolean v5, p0, LY/P;->d:Z

    .line 489
    .line 490
    throw v0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "movefrom RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v2, LY/s;->m0:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, v2, LY/s;->v0:LY/a0;

    .line 40
    .line 41
    sget-object v1, Le0/i;->ON_PAUSE:Le0/i;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, LY/a0;->b(Le0/i;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, v2, LY/s;->u0:Le0/o;

    .line 47
    .line 48
    sget-object v1, Le0/i;->ON_PAUSE:Le0/i;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Le0/o;->f(Le0/i;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x6

    .line 54
    iput v0, v2, LY/s;->G:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v2, LY/s;->k0:Z

    .line 58
    .line 59
    invoke-virtual {v2}, LY/s;->D()V

    .line 60
    .line 61
    .line 62
    iget-boolean v1, v2, LY/s;->k0:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, LY/P;->a:Lm2/e;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lm2/e;->p(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance v0, LY/f0;

    .line 73
    .line 74
    const-string v1, "Fragment "

    .line 75
    .line 76
    const-string v3, " did not call through to super.onPause()"

    .line 77
    .line 78
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-object v1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v1, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, LY/s;->I:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, v0, LY/s;->J:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v1, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, LY/s;->O:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, v0, LY/s;->O:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 46
    .line 47
    const-string v1, "android:target_req_state"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, v0, LY/s;->P:I

    .line 55
    .line 56
    :cond_1
    iget-object p1, v0, LY/s;->K:Ljava/lang/Boolean;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput-boolean p1, v0, LY/s;->o0:Z

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-object p1, v0, LY/s;->K:Ljava/lang/Boolean;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, v0, LY/s;->H:Landroid/os/Bundle;

    .line 72
    .line 73
    const-string v2, "android:user_visible_hint"

    .line 74
    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput-boolean p1, v0, LY/s;->o0:Z

    .line 80
    .line 81
    :goto_0
    iget-boolean p1, v0, LY/s;->o0:Z

    .line 82
    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    iput-boolean v1, v0, LY/s;->n0:Z

    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto RESUMED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->p0:LY/q;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, v0, LY/q;->m:Landroid/view/View;

    .line 37
    .line 38
    :goto_0
    if-eqz v0, :cond_5

    .line 39
    .line 40
    iget-object v4, v2, LY/s;->m0:Landroid/view/View;

    .line 41
    .line 42
    if-ne v0, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_1
    if-eqz v4, :cond_5

    .line 50
    .line 51
    iget-object v5, v2, LY/s;->m0:Landroid/view/View;

    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x2

    .line 60
    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "requestFocus: Restoring focused view "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " "

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    const-string v0, "succeeded"

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string v0, "failed"

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " on Fragment "

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " resulting in focused view "

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, LY/s;->m0:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    :goto_4
    invoke-virtual {v2}, LY/s;->i()LY/q;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v3, v0, LY/q;->m:Landroid/view/View;

    .line 131
    .line 132
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 133
    .line 134
    invoke-virtual {v0}, LY/K;->L()V

    .line 135
    .line 136
    .line 137
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, LY/K;->x(Z)Z

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x7

    .line 144
    iput v0, v2, LY/s;->G:I

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    iput-boolean v1, v2, LY/s;->k0:Z

    .line 148
    .line 149
    invoke-virtual {v2}, LY/s;->E()V

    .line 150
    .line 151
    .line 152
    iget-boolean v4, v2, LY/s;->k0:Z

    .line 153
    .line 154
    if-eqz v4, :cond_7

    .line 155
    .line 156
    iget-object v4, v2, LY/s;->u0:Le0/o;

    .line 157
    .line 158
    sget-object v5, Le0/i;->ON_RESUME:Le0/i;

    .line 159
    .line 160
    invoke-virtual {v4, v5}, Le0/o;->f(Le0/i;)V

    .line 161
    .line 162
    .line 163
    iget-object v4, v2, LY/s;->m0:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    iget-object v4, v2, LY/s;->v0:LY/a0;

    .line 168
    .line 169
    iget-object v4, v4, LY/a0;->I:Le0/o;

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Le0/o;->f(Le0/i;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v4, v2, LY/s;->a0:LY/K;

    .line 175
    .line 176
    iput-boolean v1, v4, LY/K;->F:Z

    .line 177
    .line 178
    iput-boolean v1, v4, LY/K;->G:Z

    .line 179
    .line 180
    iget-object v5, v4, LY/K;->M:LY/M;

    .line 181
    .line 182
    iput-boolean v1, v5, LY/M;->g:Z

    .line 183
    .line 184
    invoke-virtual {v4, v0}, LY/K;->t(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lm2/e;->s(Z)V

    .line 190
    .line 191
    .line 192
    iput-object v3, v2, LY/s;->H:Landroid/os/Bundle;

    .line 193
    .line 194
    iput-object v3, v2, LY/s;->I:Landroid/util/SparseArray;

    .line 195
    .line 196
    iput-object v3, v2, LY/s;->J:Landroid/os/Bundle;

    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    new-instance v0, LY/f0;

    .line 200
    .line 201
    const-string v1, "Fragment "

    .line 202
    .line 203
    const-string v3, " did not call through to super.onResume()"

    .line 204
    .line 205
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0
.end method

.method public final o()V
    .locals 5

    .line 1
    new-instance v0, LY/O;

    .line 2
    .line 3
    iget-object v1, p0, LY/P;->c:LY/s;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LY/O;-><init>(LY/s;)V

    .line 6
    .line 7
    .line 8
    iget v2, v1, LY/s;->G:I

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-le v2, v3, :cond_9

    .line 12
    .line 13
    iget-object v2, v0, LY/O;->S:Landroid/os/Bundle;

    .line 14
    .line 15
    if-nez v2, :cond_9

    .line 16
    .line 17
    new-instance v2, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, LY/s;->F(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, LY/s;->x0:LS1/f;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, LS1/f;->c(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, LY/s;->a0:LY/K;

    .line 31
    .line 32
    invoke-virtual {v3}, LY/K;->S()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "android:support:fragments"

    .line 37
    .line 38
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, LY/P;->a:Lm2/e;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {v3, v4}, Lm2/e;->t(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    :cond_0
    iget-object v3, v1, LY/s;->m0:Landroid/view/View;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, LY/P;->p()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v3, v1, LY/s;->I:Landroid/util/SparseArray;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    new-instance v2, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    :cond_2
    const-string v3, "android:view_state"

    .line 73
    .line 74
    iget-object v4, v1, LY/s;->I:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v3, v1, LY/s;->J:Landroid/os/Bundle;

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    new-instance v2, Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 88
    .line 89
    .line 90
    :cond_4
    const-string v3, "android:view_registry_state"

    .line 91
    .line 92
    iget-object v4, v1, LY/s;->J:Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-boolean v3, v1, LY/s;->o0:Z

    .line 98
    .line 99
    if-nez v3, :cond_7

    .line 100
    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    new-instance v2, Landroid/os/Bundle;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    .line 107
    .line 108
    :cond_6
    const-string v3, "android:user_visible_hint"

    .line 109
    .line 110
    iget-boolean v4, v1, LY/s;->o0:Z

    .line 111
    .line 112
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iput-object v2, v0, LY/O;->S:Landroid/os/Bundle;

    .line 116
    .line 117
    iget-object v3, v1, LY/s;->O:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v3, :cond_a

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    new-instance v2, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, LY/O;->S:Landroid/os/Bundle;

    .line 129
    .line 130
    :cond_8
    iget-object v2, v0, LY/O;->S:Landroid/os/Bundle;

    .line 131
    .line 132
    const-string v3, "android:target_state"

    .line 133
    .line 134
    iget-object v4, v1, LY/s;->O:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget v2, v1, LY/s;->P:I

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    iget-object v3, v0, LY/O;->S:Landroid/os/Bundle;

    .line 144
    .line 145
    const-string v4, "android:target_req_state"

    .line 146
    .line 147
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_9
    iget-object v2, v1, LY/s;->H:Landroid/os/Bundle;

    .line 152
    .line 153
    iput-object v2, v0, LY/O;->S:Landroid/os/Bundle;

    .line 154
    .line 155
    :cond_a
    :goto_0
    iget-object v2, p0, LY/P;->b:Lm2/o;

    .line 156
    .line 157
    iget-object v1, v1, LY/s;->L:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v1, v0}, Lm2/o;->t(Ljava/lang/String;LY/O;)LY/O;

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    iget-object v0, p0, LY/P;->c:LY/s;

    .line 2
    .line 3
    iget-object v1, v0, LY/s;->m0:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "FragmentManager"

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Saving view state for fragment "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, " with view "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, LY/s;->m0:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, LY/s;->m0:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_2

    .line 59
    .line 60
    iput-object v1, v0, LY/s;->I:Landroid/util/SparseArray;

    .line 61
    .line 62
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, LY/s;->v0:LY/a0;

    .line 68
    .line 69
    iget-object v2, v2, LY/a0;->J:LS1/f;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, LS1/f;->c(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    iput-object v1, v0, LY/s;->J:Landroid/os/Bundle;

    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "moveto STARTED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 30
    .line 31
    invoke-virtual {v0}, LY/K;->L()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, LY/K;->x(Z)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    iput v0, v2, LY/s;->G:I

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, v2, LY/s;->k0:Z

    .line 45
    .line 46
    invoke-virtual {v2}, LY/s;->G()V

    .line 47
    .line 48
    .line 49
    iget-boolean v3, v2, LY/s;->k0:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v2, LY/s;->u0:Le0/o;

    .line 54
    .line 55
    sget-object v4, Le0/i;->ON_START:Le0/i;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Le0/o;->f(Le0/i;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, LY/s;->m0:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, v2, LY/s;->v0:LY/a0;

    .line 65
    .line 66
    iget-object v3, v3, LY/a0;->I:Le0/o;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Le0/o;->f(Le0/i;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v2, v2, LY/s;->a0:LY/K;

    .line 72
    .line 73
    iput-boolean v1, v2, LY/K;->F:Z

    .line 74
    .line 75
    iput-boolean v1, v2, LY/K;->G:Z

    .line 76
    .line 77
    iget-object v3, v2, LY/K;->M:LY/M;

    .line 78
    .line 79
    iput-boolean v1, v3, LY/M;->g:Z

    .line 80
    .line 81
    invoke-virtual {v2, v0}, LY/K;->t(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, LY/P;->a:Lm2/e;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lm2/e;->u(Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    new-instance v0, LY/f0;

    .line 91
    .line 92
    const-string v1, "Fragment "

    .line 93
    .line 94
    const-string v3, " did not call through to super.onStart()"

    .line 95
    .line 96
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public final r()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FragmentManager"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, LY/P;->c:LY/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "movefrom STARTED: "

    .line 15
    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, v2, LY/s;->a0:LY/K;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, v0, LY/K;->G:Z

    .line 33
    .line 34
    iget-object v3, v0, LY/K;->M:LY/M;

    .line 35
    .line 36
    iput-boolean v1, v3, LY/M;->g:Z

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    invoke-virtual {v0, v1}, LY/K;->t(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v2, LY/s;->m0:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v2, LY/s;->v0:LY/a0;

    .line 47
    .line 48
    sget-object v3, Le0/i;->ON_STOP:Le0/i;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, LY/a0;->b(Le0/i;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, v2, LY/s;->u0:Le0/o;

    .line 54
    .line 55
    sget-object v3, Le0/i;->ON_STOP:Le0/i;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Le0/o;->f(Le0/i;)V

    .line 58
    .line 59
    .line 60
    iput v1, v2, LY/s;->G:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v2, LY/s;->k0:Z

    .line 64
    .line 65
    invoke-virtual {v2}, LY/s;->H()V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, v2, LY/s;->k0:Z

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, LY/P;->a:Lm2/e;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lm2/e;->v(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, LY/f0;

    .line 79
    .line 80
    const-string v1, "Fragment "

    .line 81
    .line 82
    const-string v3, " did not call through to super.onStop()"

    .line 83
    .line 84
    invoke-static {v1, v2, v3}, LA0/O;->A(Ljava/lang/String;LY/s;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method
