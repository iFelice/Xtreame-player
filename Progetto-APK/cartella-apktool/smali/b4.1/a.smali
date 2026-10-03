.class public final Lb4/a;
.super Lb4/c;
.source "SourceFile"


# instance fields
.field public final a:Lc4/l0;

.field public final b:Lc4/K0;


# direct methods
.method public constructor <init>(Lc4/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lb4/a;->a:Lc4/l0;

    .line 8
    .line 9
    iget-object p1, p1, Lc4/l0;->V:Lc4/K0;

    .line 10
    .line 11
    invoke-static {p1}, Lc4/l0;->j(Lc4/B;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lb4/a;->b:Lc4/K0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lc4/l0;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x19

    .line 17
    .line 18
    return p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lc4/l0;->W:Lc4/x;

    .line 4
    .line 5
    invoke-static {v1}, Lc4/l0;->h(Lc4/z;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, p1, v2, v3}, Lc4/x;->n(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc4/l0;

    .line 6
    .line 7
    iget-object v2, v1, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lc4/j0;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "Cannot get conditional user properties from analytics worker thread"

    .line 25
    .line 26
    iget-object p2, v1, Lc4/T;->L:Lc4/Q;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, LS3/g;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "Cannot get conditional user properties from main thread"

    .line 47
    .line 48
    iget-object p2, v1, Lc4/T;->L:Lc4/Q;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lc4/l0;

    .line 67
    .line 68
    iget-object v4, v3, Lc4/l0;->P:Lc4/j0;

    .line 69
    .line 70
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lk/g;

    .line 74
    .line 75
    invoke-direct {v9, v0, v2, p1, p2}, Lk/g;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v6, 0x1388

    .line 79
    .line 80
    const-string v8, "get conditional user properties"

    .line 81
    .line 82
    move-object v5, v2

    .line 83
    invoke-virtual/range {v4 .. v9}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Ljava/util/List;

    .line 91
    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, v1, Lc4/T;->L:Lc4/Q;

    .line 98
    .line 99
    const-string p2, "Timed out waiting for get conditional user properties"

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p1}, Lc4/I1;->z(Ljava/util/List;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_0
    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10

    .line 1
    iget-object v1, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc4/l0;

    .line 6
    .line 7
    iget-object v2, v0, Lc4/l0;->P:Lc4/j0;

    .line 8
    .line 9
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lc4/j0;->z()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v6, v0, Lc4/l0;->O:Lc4/T;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "Cannot get user properties from analytics worker thread"

    .line 24
    .line 25
    iget-object p2, v6, Lc4/T;->L:Lc4/Q;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    invoke-static {}, LS3/g;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "Cannot get user properties from main thread"

    .line 46
    .line 47
    iget-object p2, v6, Lc4/T;->L:Lc4/Q;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lc4/l0;

    .line 65
    .line 66
    iget-object v8, v0, Lc4/l0;->P:Lc4/j0;

    .line 67
    .line 68
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 69
    .line 70
    .line 71
    new-instance v9, LY/f;

    .line 72
    .line 73
    move-object v0, v9

    .line 74
    move-object v2, v7

    .line 75
    move-object v3, p1

    .line 76
    move-object v4, p2

    .line 77
    move v5, p3

    .line 78
    invoke-direct/range {v0 .. v5}, LY/f;-><init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v2, 0x1388

    .line 82
    .line 83
    const-string v4, "get user properties"

    .line 84
    .line 85
    move-object v0, v8

    .line 86
    move-object v1, v7

    .line 87
    move-object v5, v9

    .line 88
    invoke-virtual/range {v0 .. v5}, Lc4/j0;->r(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/util/List;

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "Timed out waiting for handle get user properties, includeInternal"

    .line 107
    .line 108
    iget-object p3, v6, Lc4/T;->L:Lc4/Q;

    .line 109
    .line 110
    invoke-virtual {p3, p1, p2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance p2, Lr/f;

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    invoke-direct {p2, p3}, Lr/m;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_4

    .line 136
    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Lc4/F1;

    .line 142
    .line 143
    invoke-virtual {p3}, Lc4/F1;->i()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iget-object p3, p3, Lc4/F1;->H:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p2, p3, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    move-object p1, p2

    .line 156
    :goto_1
    return-object p1
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc4/l0;

    .line 6
    .line 7
    iget-object v1, v1, Lc4/l0;->T:LP3/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, p1, v1, v2}, Lc4/K0;->C(Landroid/os/Bundle;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lc4/l0;

    .line 6
    .line 7
    iget-object v1, v1, Lc4/l0;->T:LP3/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x1

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p2

    .line 20
    move-object v3, p3

    .line 21
    invoke-virtual/range {v0 .. v7}, Lc4/K0;->x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->V:Lc4/K0;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lc4/K0;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lc4/l0;->W:Lc4/x;

    .line 4
    .line 5
    invoke-static {v1}, Lc4/l0;->h(Lc4/z;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lc4/l0;->T:LP3/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3, p1}, Lc4/x;->o(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lb4/a;->a:Lc4/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/l0;->R:Lc4/I1;

    .line 4
    .line 5
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/I1;->y0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc4/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 8
    .line 9
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lc4/V0;->I:Lc4/S0;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lc4/S0;->b:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc4/l0;

    .line 6
    .line 7
    iget-object v0, v0, Lc4/l0;->U:Lc4/V0;

    .line 8
    .line 9
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lc4/V0;->I:Lc4/S0;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lc4/S0;->a:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/a;->b:Lc4/K0;

    .line 2
    .line 3
    iget-object v0, v0, Lc4/K0;->M:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method
