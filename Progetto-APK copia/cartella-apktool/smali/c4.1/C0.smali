.class public final synthetic Lc4/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lc4/K0;

.field public final synthetic I:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lc4/C0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lc4/C0;->H:Lc4/K0;

    .line 7
    .line 8
    iput-object p2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 5
    .line 6
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lc4/L;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lc4/E;->a0:Lc4/D;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    iget-object v2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method private final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 5
    .line 6
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lc4/L;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lc4/E;->b0:Lc4/D;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lc4/h;->A(Ljava/lang/String;Lc4/D;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    iget-object v1, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    iget-object v2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 5
    .line 6
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lc4/L;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lc4/E;->c0:Lc4/D;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lc4/h;->w(Ljava/lang/String;Lc4/D;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    iget-object v2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method private final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 5
    .line 6
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, v1

    .line 9
    check-cast v2, Lc4/l0;

    .line 10
    .line 11
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lc4/L;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lc4/E;->d0:Lc4/D;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lc4/h;->t(Ljava/lang/String;Lc4/D;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object v1, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    iget-object v2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lc4/C0;->G:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 12
    .line 13
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lc4/l0;

    .line 17
    .line 18
    iget-object v2, v2, Lc4/l0;->M:Lc4/h;

    .line 19
    .line 20
    check-cast v1, Lc4/l0;

    .line 21
    .line 22
    invoke-virtual {v1}, Lc4/l0;->n()Lc4/L;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lc4/L;->t()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lc4/E;->e0:Lc4/D;

    .line 31
    .line 32
    invoke-virtual {v2, v1, v3}, Lc4/h;->r(Ljava/lang/String;Lc4/D;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v1, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v1

    .line 53
    iget-object v2, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v1

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lc4/C0;->d()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_1
    invoke-direct {p0}, Lc4/C0;->c()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_2
    invoke-direct {p0}, Lc4/C0;->b()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    invoke-direct {p0}, Lc4/C0;->a()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_4
    iget-object v1, p0, Lc4/C0;->H:Lc4/K0;

    .line 78
    .line 79
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lc4/l0;

    .line 82
    .line 83
    invoke-virtual {v1}, Lc4/l0;->r()Lc4/d1;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-array v3, v0, [Lc4/R0;

    .line 88
    .line 89
    sget-object v4, Lc4/R0;->K:Lc4/R0;

    .line 90
    .line 91
    aput-object v4, v3, v2

    .line 92
    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    aget-object v0, v3, v2

    .line 99
    .line 100
    iget v0, v0, Lc4/R0;->G:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v7, Lc4/s1;

    .line 110
    .line 111
    invoke-direct {v7, v4}, Lc4/s1;-><init>(Ljava/util/ArrayList;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lc4/z;->m()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lc4/B;->n()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lc4/d1;->B(Z)Lc4/J1;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    new-instance v0, Lk/g;

    .line 125
    .line 126
    iget-object v5, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    .line 128
    const/16 v8, 0xe

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    move-object v3, v0

    .line 132
    move-object v4, v1

    .line 133
    invoke-direct/range {v3 .. v9}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_5
    iget-object v0, p0, Lc4/C0;->H:Lc4/K0;

    .line 141
    .line 142
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Lc4/l0;

    .line 145
    .line 146
    iget-object v1, v1, Lc4/l0;->N:Lc4/Z;

    .line 147
    .line 148
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v1, Lc4/Z;->U:Lm2/o;

    .line 152
    .line 153
    invoke-virtual {v1}, Lm2/o;->u()Landroid/os/Bundle;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lc4/l0;

    .line 160
    .line 161
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lc4/d1;->B(Z)Lc4/J1;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v1, Lk/g;

    .line 176
    .line 177
    iget-object v5, p0, Lc4/C0;->I:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    .line 179
    const/16 v8, 0xd

    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    move-object v3, v1

    .line 183
    move-object v4, v0

    .line 184
    invoke-direct/range {v3 .. v9}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
