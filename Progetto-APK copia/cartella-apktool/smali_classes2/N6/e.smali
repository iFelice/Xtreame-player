.class public abstract LN6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/e;

.field public static final b:Lp3/e;

.field public static final c:Lp3/e;

.field public static final d:Lx6/c;

.field public static final e:Lx6/c;

.field public static final f:Lx6/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp3/e;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v0, v1, v2}, Lp3/e;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LN6/e;->a:Lp3/e;

    .line 10
    .line 11
    new-instance v0, Lp3/e;

    .line 12
    .line 13
    const-string v1, "REUSABLE_CLAIMED"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lp3/e;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LN6/e;->b:Lp3/e;

    .line 19
    .line 20
    new-instance v0, Lp3/e;

    .line 21
    .line 22
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-direct {v0, v1, v2}, Lp3/e;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, LN6/e;->c:Lp3/e;

    .line 29
    .line 30
    new-instance v0, Lx6/c;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, v1}, Lx6/c;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, LN6/e;->d:Lx6/c;

    .line 37
    .line 38
    new-instance v0, Lx6/c;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lx6/c;-><init>(I)V

    .line 41
    .line 42
    .line 43
    sput-object v0, LN6/e;->e:Lx6/c;

    .line 44
    .line 45
    new-instance v0, Lx6/c;

    .line 46
    .line 47
    const/4 v1, 0x6

    .line 48
    invoke-direct {v0, v1}, Lx6/c;-><init>(I)V

    .line 49
    .line 50
    .line 51
    sput-object v0, LN6/e;->f:Lx6/c;

    .line 52
    .line 53
    return-void
.end method

.method public static final a(Lx6/j;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, LN6/e;->c:Lp3/e;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, LN6/w;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast p1, LN6/w;

    .line 12
    .line 13
    iget-object p0, p1, LN6/w;->b:[LJ6/X;

    .line 14
    .line 15
    array-length v0, p0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-static {v1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p1, LN6/w;->a:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object p0, p0, v0

    .line 29
    .line 30
    throw v1

    .line 31
    :cond_2
    sget-object p1, LN6/e;->e:Lx6/c;

    .line 32
    .line 33
    invoke-interface {p0, v1, p1}, Lx6/j;->E(Ljava/lang/Object;LC6/p;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public static final b(Ljava/lang/Object;Lx6/e;)V
    .locals 9

    .line 1
    instance-of v0, p1, LN6/d;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    check-cast p1, LN6/d;

    .line 6
    .line 7
    invoke-static {p0}, Lt6/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, LJ6/k;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, v0}, LJ6/k;-><init>(ZLjava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p1, LN6/d;->J:LJ6/m;

    .line 22
    .line 23
    iget-object v2, p1, LN6/d;->K:Lx6/e;

    .line 24
    .line 25
    invoke-interface {v2}, Lx6/e;->getContext()Lx6/j;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, LJ6/m;->b0(Lx6/j;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iput-object v1, p1, LN6/d;->L:Ljava/lang/Object;

    .line 37
    .line 38
    iput v3, p1, LJ6/x;->I:I

    .line 39
    .line 40
    invoke-interface {v2}, Lx6/e;->getContext()Lx6/j;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object v0, p1, LN6/d;->J:LJ6/m;

    .line 45
    .line 46
    invoke-virtual {v0, p0, p1}, LJ6/m;->a0(Lx6/j;Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    invoke-static {}, LJ6/Y;->a()LJ6/D;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-wide v4, v0, LJ6/D;->I:J

    .line 56
    .line 57
    const-wide v6, 0x100000000L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v8, v4, v6

    .line 63
    .line 64
    if-ltz v8, :cond_3

    .line 65
    .line 66
    iput-object v1, p1, LN6/d;->L:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, p1, LJ6/x;->I:I

    .line 69
    .line 70
    iget-object p0, v0, LJ6/D;->K:Lu6/i;

    .line 71
    .line 72
    if-nez p0, :cond_2

    .line 73
    .line 74
    new-instance p0, Lu6/i;

    .line 75
    .line 76
    invoke-direct {p0}, Lu6/i;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p0, v0, LJ6/D;->K:Lu6/i;

    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Lu6/i;->addLast(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    invoke-virtual {v0, v3}, LJ6/D;->f0(Z)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-interface {v2}, Lx6/e;->getContext()Lx6/j;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v3, LJ6/n;->H:LJ6/n;

    .line 93
    .line 94
    invoke-interface {v1, v3}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, LJ6/J;

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-interface {v1}, LJ6/J;->isActive()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_4

    .line 107
    .line 108
    check-cast v1, LJ6/Q;

    .line 109
    .line 110
    invoke-virtual {v1}, LJ6/Q;->l()Ljava/util/concurrent/CancellationException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p0}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, LN6/d;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    iget-object v1, p1, LN6/d;->M:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {v2}, Lx6/e;->getContext()Lx6/j;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3, v1}, LN6/e;->d(Lx6/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    sget-object v4, LN6/e;->c:Lp3/e;

    .line 135
    .line 136
    if-eq v1, v4, :cond_5

    .line 137
    .line 138
    invoke-static {v2, v3}, La7/b;->i(Lx6/e;Lx6/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    :cond_5
    :try_start_1
    invoke-interface {v2, p0}, Lx6/e;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    .line 143
    .line 144
    :try_start_2
    invoke-static {v3, v1}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    :goto_1
    invoke-virtual {v0}, LJ6/D;->g0()Z

    .line 148
    .line 149
    .line 150
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    if-nez p0, :cond_6

    .line 152
    .line 153
    :goto_2
    invoke-virtual {v0}, LJ6/D;->d0()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catchall_1
    move-exception p0

    .line 158
    :try_start_3
    invoke-static {v3, v1}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :goto_3
    :try_start_4
    invoke-virtual {p1, p0}, LJ6/x;->g(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catchall_2
    move-exception p0

    .line 167
    invoke-virtual {v0}, LJ6/D;->d0()V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_7
    invoke-interface {p1, p0}, Lx6/e;->b(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :goto_4
    return-void
.end method

.method public static final c(Lx6/j;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, LN6/e;->d:Lx6/c;

    .line 7
    .line 8
    invoke-interface {p0, v0, v1}, Lx6/j;->E(Ljava/lang/Object;LC6/p;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static final d(Lx6/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, LN6/e;->c(Lx6/j;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object p0, LN6/e;->c:Lp3/e;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v0, LN6/w;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-direct {v0, p0, p1}, LN6/w;-><init>(Lx6/j;I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, LN6/e;->f:Lx6/c;

    .line 33
    .line 34
    invoke-interface {p0, v0, p1}, Lx6/j;->E(Ljava/lang/Object;LC6/p;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    return-object p0

    .line 39
    :cond_2
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    throw p0
.end method
