.class public final Lx/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/util/AbstractCollection;

.field public g:Ljava/util/AbstractCollection;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/oo;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lx/e;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/oo;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lp0/f;Lp0/v;)V
    .locals 6

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lx/e;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lp0/f;Lp0/v;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/oo;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lx/e;->c:Ljava/lang/Object;

    iput-object p1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    iput-object p4, p0, Lx/e;->e:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/e;->i:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lx/e;->g:Ljava/util/AbstractCollection;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lx/e;->h:Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/Dn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/Dn;-><init>(Lx/e;)V

    check-cast p3, Lcom/google/android/gms/internal/ads/Nr;

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/ads/Nr;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/ts;

    move-result-object p1

    iput-object p1, p0, Lx/e;->d:Ljava/lang/Object;

    iput-boolean p5, p0, Lx/e;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lp0/f;Lp0/v;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lx/e;->c:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 9
    iput-object p4, p0, Lx/e;->e:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/e;->i:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lx/e;->h:Ljava/lang/Object;

    .line 13
    new-instance p1, Lp0/s;

    invoke-direct {p1, p0}, Lp0/s;-><init>(Lx/e;)V

    check-cast p3, Lp0/G;

    invoke-virtual {p3, p2, p1}, Lp0/G;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lx/e;->d:Ljava/lang/Object;

    .line 15
    iput-boolean p5, p0, Lx/e;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/e;->i:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lx/e;->a:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 16
    .line 17
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    .line 19
    new-instance v2, Lp0/w;

    .line 20
    .line 21
    invoke-direct {v2, p1}, Lp0/w;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final b(Lx/f;ILjava/util/ArrayList;Lx/l;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lx/f;->d:Lx/p;

    .line 2
    .line 3
    iget-object v0, p1, Lx/p;->c:Lx/l;

    .line 4
    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lx/e;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lw/e;

    .line 10
    .line 11
    iget-object v1, v0, Lw/d;->d:Lx/k;

    .line 12
    .line 13
    if-eq p1, v1, :cond_a

    .line 14
    .line 15
    iget-object v0, v0, Lw/d;->e:Lx/m;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_0
    if-nez p4, :cond_1

    .line 22
    .line 23
    new-instance p4, Lx/l;

    .line 24
    .line 25
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p4, Lx/l;->a:Lx/p;

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p4, Lx/l;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object p1, p4, Lx/l;->a:Lx/p;

    .line 39
    .line 40
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iput-object p4, p1, Lx/p;->c:Lx/l;

    .line 44
    .line 45
    iget-object v0, p4, Lx/l;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lx/p;->h:Lx/f;

    .line 51
    .line 52
    iget-object v1, v0, Lx/f;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lx/d;

    .line 69
    .line 70
    instance-of v3, v2, Lx/f;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    check-cast v2, Lx/f;

    .line 75
    .line 76
    invoke-virtual {p0, v2, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, p1, Lx/p;->i:Lx/f;

    .line 81
    .line 82
    iget-object v2, v1, Lx/f;->k:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lx/d;

    .line 99
    .line 100
    instance-of v4, v3, Lx/f;

    .line 101
    .line 102
    if-eqz v4, :cond_4

    .line 103
    .line 104
    check-cast v3, Lx/f;

    .line 105
    .line 106
    invoke-virtual {p0, v3, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 v2, 0x1

    .line 111
    if-ne p2, v2, :cond_7

    .line 112
    .line 113
    instance-of v3, p1, Lx/m;

    .line 114
    .line 115
    if-eqz v3, :cond_7

    .line 116
    .line 117
    move-object v3, p1

    .line 118
    check-cast v3, Lx/m;

    .line 119
    .line 120
    iget-object v3, v3, Lx/m;->k:Lx/f;

    .line 121
    .line 122
    iget-object v3, v3, Lx/f;->k:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_7

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lx/d;

    .line 139
    .line 140
    instance-of v5, v4, Lx/f;

    .line 141
    .line 142
    if-eqz v5, :cond_6

    .line 143
    .line 144
    check-cast v4, Lx/f;

    .line 145
    .line 146
    invoke-virtual {p0, v4, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    iget-object v0, v0, Lx/f;->l:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_8

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lx/f;

    .line 167
    .line 168
    invoke-virtual {p0, v3, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    iget-object v0, v1, Lx/f;->l:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_9

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lx/f;

    .line 189
    .line 190
    invoke-virtual {p0, v1, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    if-ne p2, v2, :cond_a

    .line 195
    .line 196
    instance-of v0, p1, Lx/m;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    check-cast p1, Lx/m;

    .line 201
    .line 202
    iget-object p1, p1, Lx/m;->k:Lx/f;

    .line 203
    .line 204
    iget-object p1, p1, Lx/f;->l:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lx/f;

    .line 221
    .line 222
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    throw p1

    .line 228
    :cond_a
    :goto_6
    return-void
.end method

.method public final c(Lw/e;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lw/j;->p0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_26

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lw/d;

    .line 20
    .line 21
    iget-object v3, v2, Lw/d;->o0:[I

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget v5, v3, v4

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    aget v3, v3, v9

    .line 28
    .line 29
    iget v6, v2, Lw/d;->f0:I

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    if-ne v6, v7, :cond_1

    .line 34
    .line 35
    iput-boolean v9, v2, Lw/d;->a:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v6, v2, Lw/d;->w:F

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    const/high16 v10, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/4 v8, 0x2

    .line 44
    cmpg-float v11, v6, v10

    .line 45
    .line 46
    if-gez v11, :cond_2

    .line 47
    .line 48
    if-ne v5, v7, :cond_2

    .line 49
    .line 50
    iput v8, v2, Lw/d;->r:I

    .line 51
    .line 52
    :cond_2
    iget v11, v2, Lw/d;->z:F

    .line 53
    .line 54
    cmpg-float v12, v11, v10

    .line 55
    .line 56
    if-gez v12, :cond_3

    .line 57
    .line 58
    if-ne v3, v7, :cond_3

    .line 59
    .line 60
    iput v8, v2, Lw/d;->s:I

    .line 61
    .line 62
    :cond_3
    iget v12, v2, Lw/d;->V:F

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x2

    .line 66
    const/4 v15, 0x1

    .line 67
    cmpl-float v12, v12, v13

    .line 68
    .line 69
    if-lez v12, :cond_9

    .line 70
    .line 71
    if-ne v5, v7, :cond_5

    .line 72
    .line 73
    if-eq v3, v14, :cond_4

    .line 74
    .line 75
    if-ne v3, v15, :cond_5

    .line 76
    .line 77
    :cond_4
    iput v7, v2, Lw/d;->r:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    if-ne v3, v7, :cond_7

    .line 81
    .line 82
    if-eq v5, v14, :cond_6

    .line 83
    .line 84
    if-ne v5, v15, :cond_7

    .line 85
    .line 86
    :cond_6
    iput v7, v2, Lw/d;->s:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    if-ne v5, v7, :cond_9

    .line 90
    .line 91
    if-ne v3, v7, :cond_9

    .line 92
    .line 93
    iget v12, v2, Lw/d;->r:I

    .line 94
    .line 95
    if-nez v12, :cond_8

    .line 96
    .line 97
    iput v7, v2, Lw/d;->r:I

    .line 98
    .line 99
    :cond_8
    iget v12, v2, Lw/d;->s:I

    .line 100
    .line 101
    if-nez v12, :cond_9

    .line 102
    .line 103
    iput v7, v2, Lw/d;->s:I

    .line 104
    .line 105
    :cond_9
    :goto_1
    iget-object v12, v2, Lw/d;->J:Lw/c;

    .line 106
    .line 107
    iget-object v13, v2, Lw/d;->H:Lw/c;

    .line 108
    .line 109
    if-ne v5, v7, :cond_b

    .line 110
    .line 111
    iget v10, v2, Lw/d;->r:I

    .line 112
    .line 113
    if-ne v10, v9, :cond_b

    .line 114
    .line 115
    iget-object v10, v13, Lw/c;->f:Lw/c;

    .line 116
    .line 117
    if-eqz v10, :cond_a

    .line 118
    .line 119
    iget-object v10, v12, Lw/c;->f:Lw/c;

    .line 120
    .line 121
    if-nez v10, :cond_b

    .line 122
    .line 123
    :cond_a
    const/4 v5, 0x2

    .line 124
    :cond_b
    iget-object v10, v2, Lw/d;->K:Lw/c;

    .line 125
    .line 126
    iget-object v4, v2, Lw/d;->I:Lw/c;

    .line 127
    .line 128
    if-ne v3, v7, :cond_d

    .line 129
    .line 130
    iget v8, v2, Lw/d;->s:I

    .line 131
    .line 132
    if-ne v8, v9, :cond_d

    .line 133
    .line 134
    iget-object v8, v4, Lw/c;->f:Lw/c;

    .line 135
    .line 136
    if-eqz v8, :cond_c

    .line 137
    .line 138
    iget-object v8, v10, Lw/c;->f:Lw/c;

    .line 139
    .line 140
    if-nez v8, :cond_d

    .line 141
    .line 142
    :cond_c
    const/4 v8, 0x2

    .line 143
    goto :goto_2

    .line 144
    :cond_d
    move v8, v3

    .line 145
    :goto_2
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 146
    .line 147
    iput v5, v3, Lx/p;->d:I

    .line 148
    .line 149
    iget v9, v2, Lw/d;->r:I

    .line 150
    .line 151
    iput v9, v3, Lx/p;->a:I

    .line 152
    .line 153
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 154
    .line 155
    iput v8, v3, Lx/p;->d:I

    .line 156
    .line 157
    iget v7, v2, Lw/d;->s:I

    .line 158
    .line 159
    iput v7, v3, Lx/p;->a:I

    .line 160
    .line 161
    const/4 v3, 0x4

    .line 162
    if-eq v5, v3, :cond_e

    .line 163
    .line 164
    if-eq v5, v15, :cond_e

    .line 165
    .line 166
    if-ne v5, v14, :cond_f

    .line 167
    .line 168
    :cond_e
    if-eq v8, v3, :cond_23

    .line 169
    .line 170
    if-eq v8, v15, :cond_23

    .line 171
    .line 172
    if-ne v8, v14, :cond_f

    .line 173
    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :cond_f
    iget-object v4, v0, Lw/d;->o0:[I

    .line 177
    .line 178
    iget-object v10, v2, Lw/d;->P:[Lw/c;

    .line 179
    .line 180
    const/high16 v12, 0x3f000000    # 0.5f

    .line 181
    .line 182
    const/4 v13, 0x3

    .line 183
    if-ne v5, v13, :cond_10

    .line 184
    .line 185
    if-eq v8, v14, :cond_11

    .line 186
    .line 187
    if-ne v8, v15, :cond_10

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_10
    const/4 v3, 0x3

    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :cond_11
    :goto_3
    if-ne v9, v13, :cond_13

    .line 194
    .line 195
    if-ne v8, v14, :cond_12

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    const/4 v6, 0x0

    .line 199
    move-object/from16 v3, p0

    .line 200
    .line 201
    move-object v4, v2

    .line 202
    move v5, v14

    .line 203
    move v7, v14

    .line 204
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 205
    .line 206
    .line 207
    :cond_12
    invoke-virtual {v2}, Lw/d;->i()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    int-to-float v3, v8

    .line 212
    iget v4, v2, Lw/d;->V:F

    .line 213
    .line 214
    mul-float v3, v3, v4

    .line 215
    .line 216
    add-float/2addr v3, v12

    .line 217
    float-to-int v6, v3

    .line 218
    move-object/from16 v3, p0

    .line 219
    .line 220
    move-object v4, v2

    .line 221
    move v5, v15

    .line 222
    move v7, v15

    .line 223
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 224
    .line 225
    .line 226
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 227
    .line 228
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 229
    .line 230
    invoke-virtual {v2}, Lw/d;->o()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 238
    .line 239
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 240
    .line 241
    invoke-virtual {v2}, Lw/d;->i()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 246
    .line 247
    .line 248
    const/4 v13, 0x1

    .line 249
    iput-boolean v13, v2, Lw/d;->a:Z

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_13
    const/4 v13, 0x1

    .line 254
    if-ne v9, v13, :cond_14

    .line 255
    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v9, 0x0

    .line 258
    move-object/from16 v3, p0

    .line 259
    .line 260
    move-object v4, v2

    .line 261
    move v5, v14

    .line 262
    move v7, v8

    .line 263
    move v8, v9

    .line 264
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 268
    .line 269
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 270
    .line 271
    invoke-virtual {v2}, Lw/d;->o()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    iput v2, v3, Lx/g;->m:I

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_14
    const/4 v13, 0x2

    .line 280
    if-ne v9, v13, :cond_16

    .line 281
    .line 282
    const/4 v13, 0x0

    .line 283
    aget v14, v4, v13

    .line 284
    .line 285
    if-eq v14, v15, :cond_15

    .line 286
    .line 287
    if-ne v14, v3, :cond_10

    .line 288
    .line 289
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    int-to-float v3, v3

    .line 294
    mul-float v6, v6, v3

    .line 295
    .line 296
    add-float/2addr v6, v12

    .line 297
    float-to-int v6, v6

    .line 298
    invoke-virtual {v2}, Lw/d;->i()I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    move-object/from16 v3, p0

    .line 303
    .line 304
    move-object v4, v2

    .line 305
    move v5, v15

    .line 306
    move v7, v8

    .line 307
    move v8, v9

    .line 308
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 309
    .line 310
    .line 311
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 312
    .line 313
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 314
    .line 315
    invoke-virtual {v2}, Lw/d;->o()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 320
    .line 321
    .line 322
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 323
    .line 324
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 325
    .line 326
    invoke-virtual {v2}, Lw/d;->i()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 331
    .line 332
    .line 333
    const/4 v13, 0x1

    .line 334
    iput-boolean v13, v2, Lw/d;->a:Z

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_16
    const/4 v13, 0x1

    .line 339
    const/4 v14, 0x0

    .line 340
    aget-object v3, v10, v14

    .line 341
    .line 342
    iget-object v3, v3, Lw/c;->f:Lw/c;

    .line 343
    .line 344
    if-eqz v3, :cond_17

    .line 345
    .line 346
    aget-object v3, v10, v13

    .line 347
    .line 348
    iget-object v3, v3, Lw/c;->f:Lw/c;

    .line 349
    .line 350
    if-nez v3, :cond_10

    .line 351
    .line 352
    :cond_17
    const/4 v6, 0x0

    .line 353
    const/4 v9, 0x0

    .line 354
    move-object/from16 v3, p0

    .line 355
    .line 356
    move-object v4, v2

    .line 357
    const/4 v5, 0x2

    .line 358
    move v7, v8

    .line 359
    move v8, v9

    .line 360
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 361
    .line 362
    .line 363
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 364
    .line 365
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 366
    .line 367
    invoke-virtual {v2}, Lw/d;->o()I

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 372
    .line 373
    .line 374
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 375
    .line 376
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 377
    .line 378
    invoke-virtual {v2}, Lw/d;->i()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 383
    .line 384
    .line 385
    const/4 v3, 0x1

    .line 386
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :goto_4
    if-ne v8, v3, :cond_18

    .line 391
    .line 392
    const/4 v13, 0x2

    .line 393
    if-eq v5, v13, :cond_19

    .line 394
    .line 395
    if-ne v5, v15, :cond_18

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_18
    const/4 v3, 0x1

    .line 399
    const/4 v10, 0x3

    .line 400
    goto/16 :goto_6

    .line 401
    .line 402
    :cond_19
    :goto_5
    if-ne v7, v3, :cond_1c

    .line 403
    .line 404
    if-ne v5, v13, :cond_1a

    .line 405
    .line 406
    const/4 v8, 0x0

    .line 407
    const/4 v6, 0x0

    .line 408
    move-object/from16 v3, p0

    .line 409
    .line 410
    move-object v4, v2

    .line 411
    move v5, v13

    .line 412
    move v7, v13

    .line 413
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 414
    .line 415
    .line 416
    :cond_1a
    invoke-virtual {v2}, Lw/d;->o()I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    iget v3, v2, Lw/d;->V:F

    .line 421
    .line 422
    iget v4, v2, Lw/d;->W:I

    .line 423
    .line 424
    const/4 v5, -0x1

    .line 425
    if-ne v4, v5, :cond_1b

    .line 426
    .line 427
    const/high16 v4, 0x3f800000    # 1.0f

    .line 428
    .line 429
    div-float v3, v4, v3

    .line 430
    .line 431
    :cond_1b
    int-to-float v4, v6

    .line 432
    mul-float v4, v4, v3

    .line 433
    .line 434
    add-float/2addr v4, v12

    .line 435
    float-to-int v8, v4

    .line 436
    move-object/from16 v3, p0

    .line 437
    .line 438
    move-object v4, v2

    .line 439
    move v5, v15

    .line 440
    move v7, v15

    .line 441
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 442
    .line 443
    .line 444
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 445
    .line 446
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 447
    .line 448
    invoke-virtual {v2}, Lw/d;->o()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 453
    .line 454
    .line 455
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 456
    .line 457
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 458
    .line 459
    invoke-virtual {v2}, Lw/d;->i()I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 464
    .line 465
    .line 466
    const/4 v3, 0x1

    .line 467
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 468
    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :cond_1c
    const/4 v3, 0x1

    .line 472
    if-ne v7, v3, :cond_1d

    .line 473
    .line 474
    const/4 v8, 0x0

    .line 475
    const/4 v6, 0x0

    .line 476
    move-object/from16 v3, p0

    .line 477
    .line 478
    move-object v4, v2

    .line 479
    const/4 v7, 0x2

    .line 480
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 481
    .line 482
    .line 483
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 484
    .line 485
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 486
    .line 487
    invoke-virtual {v2}, Lw/d;->i()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    iput v2, v3, Lx/g;->m:I

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :cond_1d
    const/4 v3, 0x2

    .line 496
    if-ne v7, v3, :cond_1f

    .line 497
    .line 498
    const/4 v3, 0x1

    .line 499
    aget v10, v4, v3

    .line 500
    .line 501
    if-eq v10, v15, :cond_1e

    .line 502
    .line 503
    const/4 v3, 0x4

    .line 504
    if-ne v10, v3, :cond_18

    .line 505
    .line 506
    :cond_1e
    invoke-virtual {v2}, Lw/d;->o()I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    int-to-float v3, v3

    .line 515
    mul-float v11, v11, v3

    .line 516
    .line 517
    add-float/2addr v11, v12

    .line 518
    float-to-int v8, v11

    .line 519
    move-object/from16 v3, p0

    .line 520
    .line 521
    move-object v4, v2

    .line 522
    move v7, v15

    .line 523
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 527
    .line 528
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 529
    .line 530
    invoke-virtual {v2}, Lw/d;->o()I

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 535
    .line 536
    .line 537
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 538
    .line 539
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 540
    .line 541
    invoke-virtual {v2}, Lw/d;->i()I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 546
    .line 547
    .line 548
    const/4 v3, 0x1

    .line 549
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 550
    .line 551
    goto/16 :goto_0

    .line 552
    .line 553
    :cond_1f
    aget-object v13, v10, v3

    .line 554
    .line 555
    iget-object v3, v13, Lw/c;->f:Lw/c;

    .line 556
    .line 557
    if-eqz v3, :cond_20

    .line 558
    .line 559
    const/4 v3, 0x3

    .line 560
    aget-object v10, v10, v3

    .line 561
    .line 562
    iget-object v3, v10, Lw/c;->f:Lw/c;

    .line 563
    .line 564
    if-nez v3, :cond_18

    .line 565
    .line 566
    :cond_20
    const/4 v6, 0x0

    .line 567
    const/4 v9, 0x0

    .line 568
    move-object/from16 v3, p0

    .line 569
    .line 570
    move-object v4, v2

    .line 571
    const/4 v5, 0x2

    .line 572
    move v7, v8

    .line 573
    move v8, v9

    .line 574
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 575
    .line 576
    .line 577
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 578
    .line 579
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 580
    .line 581
    invoke-virtual {v2}, Lw/d;->o()I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 586
    .line 587
    .line 588
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 589
    .line 590
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 591
    .line 592
    invoke-virtual {v2}, Lw/d;->i()I

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 597
    .line 598
    .line 599
    const/4 v3, 0x1

    .line 600
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :goto_6
    if-ne v5, v10, :cond_0

    .line 605
    .line 606
    if-ne v8, v10, :cond_0

    .line 607
    .line 608
    if-eq v9, v3, :cond_22

    .line 609
    .line 610
    if-ne v7, v3, :cond_21

    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_21
    const/4 v5, 0x2

    .line 614
    if-ne v7, v5, :cond_0

    .line 615
    .line 616
    if-ne v9, v5, :cond_0

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    aget v5, v4, v5

    .line 620
    .line 621
    if-ne v5, v15, :cond_0

    .line 622
    .line 623
    aget v4, v4, v3

    .line 624
    .line 625
    if-ne v4, v15, :cond_0

    .line 626
    .line 627
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 628
    .line 629
    .line 630
    move-result v3

    .line 631
    int-to-float v3, v3

    .line 632
    mul-float v6, v6, v3

    .line 633
    .line 634
    add-float/2addr v6, v12

    .line 635
    float-to-int v6, v6

    .line 636
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    int-to-float v3, v3

    .line 641
    mul-float v11, v11, v3

    .line 642
    .line 643
    add-float/2addr v11, v12

    .line 644
    float-to-int v8, v11

    .line 645
    move-object/from16 v3, p0

    .line 646
    .line 647
    move-object v4, v2

    .line 648
    move v5, v15

    .line 649
    move v7, v15

    .line 650
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 651
    .line 652
    .line 653
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 654
    .line 655
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 656
    .line 657
    invoke-virtual {v2}, Lw/d;->o()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 662
    .line 663
    .line 664
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 665
    .line 666
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 667
    .line 668
    invoke-virtual {v2}, Lw/d;->i()I

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 673
    .line 674
    .line 675
    const/4 v3, 0x1

    .line 676
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 677
    .line 678
    goto/16 :goto_0

    .line 679
    .line 680
    :cond_22
    :goto_7
    const/4 v8, 0x0

    .line 681
    const/4 v6, 0x0

    .line 682
    move-object/from16 v3, p0

    .line 683
    .line 684
    move-object v4, v2

    .line 685
    const/4 v7, 0x2

    .line 686
    move v5, v7

    .line 687
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 688
    .line 689
    .line 690
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 691
    .line 692
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 693
    .line 694
    invoke-virtual {v2}, Lw/d;->o()I

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    iput v4, v3, Lx/g;->m:I

    .line 699
    .line 700
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 701
    .line 702
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 703
    .line 704
    invoke-virtual {v2}, Lw/d;->i()I

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    iput v2, v3, Lx/g;->m:I

    .line 709
    .line 710
    goto/16 :goto_0

    .line 711
    .line 712
    :cond_23
    :goto_8
    invoke-virtual {v2}, Lw/d;->o()I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    const/4 v6, 0x4

    .line 717
    if-ne v5, v6, :cond_24

    .line 718
    .line 719
    invoke-virtual/range {p1 .. p1}, Lw/d;->o()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    iget v5, v13, Lw/c;->g:I

    .line 724
    .line 725
    sub-int/2addr v3, v5

    .line 726
    iget v5, v12, Lw/c;->g:I

    .line 727
    .line 728
    sub-int/2addr v3, v5

    .line 729
    move v7, v3

    .line 730
    const/4 v5, 0x1

    .line 731
    goto :goto_9

    .line 732
    :cond_24
    move v7, v3

    .line 733
    :goto_9
    invoke-virtual {v2}, Lw/d;->i()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    if-ne v8, v6, :cond_25

    .line 738
    .line 739
    invoke-virtual/range {p1 .. p1}, Lw/d;->i()I

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    iget v4, v4, Lw/c;->g:I

    .line 744
    .line 745
    sub-int/2addr v3, v4

    .line 746
    iget v4, v10, Lw/c;->g:I

    .line 747
    .line 748
    sub-int/2addr v3, v4

    .line 749
    :goto_a
    move v8, v3

    .line 750
    goto :goto_b

    .line 751
    :cond_25
    move v15, v8

    .line 752
    goto :goto_a

    .line 753
    :goto_b
    move-object/from16 v3, p0

    .line 754
    .line 755
    move-object v4, v2

    .line 756
    move v6, v7

    .line 757
    move v7, v15

    .line 758
    invoke-virtual/range {v3 .. v8}, Lx/e;->h(Lw/d;IIII)V

    .line 759
    .line 760
    .line 761
    iget-object v3, v2, Lw/d;->d:Lx/k;

    .line 762
    .line 763
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 764
    .line 765
    invoke-virtual {v2}, Lw/d;->o()I

    .line 766
    .line 767
    .line 768
    move-result v4

    .line 769
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 770
    .line 771
    .line 772
    iget-object v3, v2, Lw/d;->e:Lx/m;

    .line 773
    .line 774
    iget-object v3, v3, Lx/p;->e:Lx/g;

    .line 775
    .line 776
    invoke-virtual {v2}, Lw/d;->i()I

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    invoke-virtual {v3, v4}, Lx/g;->d(I)V

    .line 781
    .line 782
    .line 783
    const/4 v3, 0x1

    .line 784
    iput-boolean v3, v2, Lw/d;->a:Z

    .line 785
    .line 786
    goto/16 :goto_0

    .line 787
    .line 788
    :cond_26
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lx/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx/e;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lw/e;

    .line 11
    .line 12
    iget-object v2, v1, Lw/d;->d:Lx/k;

    .line 13
    .line 14
    invoke-virtual {v2}, Lx/k;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lw/d;->e:Lx/m;

    .line 18
    .line 19
    invoke-virtual {v2}, Lx/m;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lw/d;->d:Lx/k;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lw/d;->e:Lx/m;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lw/j;->p0:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lw/d;

    .line 52
    .line 53
    instance-of v7, v4, Lw/f;

    .line 54
    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    new-instance v5, Lx/i;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Lx/p;-><init>(Lw/d;)V

    .line 60
    .line 61
    .line 62
    iget-object v6, v4, Lw/d;->d:Lx/k;

    .line 63
    .line 64
    invoke-virtual {v6}, Lx/k;->f()V

    .line 65
    .line 66
    .line 67
    iget-object v6, v4, Lw/d;->e:Lx/m;

    .line 68
    .line 69
    invoke-virtual {v6}, Lx/m;->f()V

    .line 70
    .line 71
    .line 72
    check-cast v4, Lw/f;

    .line 73
    .line 74
    iget v4, v4, Lw/f;->t0:I

    .line 75
    .line 76
    iput v4, v5, Lx/p;->f:I

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v4}, Lw/d;->v()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_4

    .line 87
    .line 88
    iget-object v7, v4, Lw/d;->b:Lx/c;

    .line 89
    .line 90
    if-nez v7, :cond_2

    .line 91
    .line 92
    new-instance v7, Lx/c;

    .line 93
    .line 94
    invoke-direct {v7, v6, v4}, Lx/c;-><init>(ILw/d;)V

    .line 95
    .line 96
    .line 97
    iput-object v7, v4, Lw/d;->b:Lx/c;

    .line 98
    .line 99
    :cond_2
    if-nez v3, :cond_3

    .line 100
    .line 101
    new-instance v3, Ljava/util/HashSet;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v6, v4, Lw/d;->b:Lx/c;

    .line 107
    .line 108
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    iget-object v6, v4, Lw/d;->d:Lx/k;

    .line 113
    .line 114
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {v4}, Lw/d;->w()Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    iget-object v6, v4, Lw/d;->c:Lx/c;

    .line 124
    .line 125
    if-nez v6, :cond_5

    .line 126
    .line 127
    new-instance v6, Lx/c;

    .line 128
    .line 129
    invoke-direct {v6, v5, v4}, Lx/c;-><init>(ILw/d;)V

    .line 130
    .line 131
    .line 132
    iput-object v6, v4, Lw/d;->c:Lx/c;

    .line 133
    .line 134
    :cond_5
    if-nez v3, :cond_6

    .line 135
    .line 136
    new-instance v3, Ljava/util/HashSet;

    .line 137
    .line 138
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object v5, v4, Lw/d;->c:Lx/c;

    .line 142
    .line 143
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    iget-object v5, v4, Lw/d;->e:Lx/m;

    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_2
    instance-of v5, v4, Lw/h;

    .line 153
    .line 154
    if-eqz v5, :cond_0

    .line 155
    .line 156
    new-instance v5, Lx/j;

    .line 157
    .line 158
    invoke-direct {v5, v4}, Lx/p;-><init>(Lw/d;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    if-eqz v3, :cond_9

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_a

    .line 179
    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Lx/p;

    .line 185
    .line 186
    invoke-virtual {v3}, Lx/p;->f()V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Lx/p;

    .line 205
    .line 206
    iget-object v3, v2, Lx/p;->b:Lw/d;

    .line 207
    .line 208
    if-ne v3, v1, :cond_b

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_b
    invoke-virtual {v2}, Lx/p;->d()V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_c
    iget-object v0, p0, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 216
    .line 217
    check-cast v0, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lx/e;->c:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v1, Lw/e;

    .line 225
    .line 226
    iget-object v2, v1, Lw/d;->d:Lx/k;

    .line 227
    .line 228
    invoke-virtual {p0, v2, v6, v0}, Lx/e;->f(Lx/p;ILjava/util/ArrayList;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v1, Lw/d;->e:Lx/m;

    .line 232
    .line 233
    invoke-virtual {p0, v1, v5, v0}, Lx/e;->f(Lx/p;ILjava/util/ArrayList;)V

    .line 234
    .line 235
    .line 236
    iput-boolean v6, p0, Lx/e;->a:Z

    .line 237
    .line 238
    return-void
.end method

.method public final e(Lw/e;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 8
    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v7, v4, :cond_d

    .line 19
    .line 20
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    check-cast v10, Lx/l;

    .line 25
    .line 26
    iget-object v10, v10, Lx/l;->a:Lx/p;

    .line 27
    .line 28
    instance-of v11, v10, Lx/c;

    .line 29
    .line 30
    if-eqz v11, :cond_0

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    check-cast v11, Lx/c;

    .line 34
    .line 35
    iget v11, v11, Lx/p;->f:I

    .line 36
    .line 37
    if-eq v11, v2, :cond_2

    .line 38
    .line 39
    :goto_1
    move-object/from16 v18, v3

    .line 40
    .line 41
    move/from16 v16, v4

    .line 42
    .line 43
    move/from16 v17, v7

    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_0
    if-nez v2, :cond_1

    .line 50
    .line 51
    instance-of v11, v10, Lx/k;

    .line 52
    .line 53
    if-nez v11, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    instance-of v11, v10, Lx/m;

    .line 57
    .line 58
    if-nez v11, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    if-nez v2, :cond_3

    .line 62
    .line 63
    iget-object v11, v0, Lw/d;->d:Lx/k;

    .line 64
    .line 65
    :goto_2
    iget-object v11, v11, Lx/p;->h:Lx/f;

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-object v11, v0, Lw/d;->e:Lx/m;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_3
    if-nez v2, :cond_4

    .line 72
    .line 73
    iget-object v12, v0, Lw/d;->d:Lx/k;

    .line 74
    .line 75
    :goto_4
    iget-object v12, v12, Lx/p;->i:Lx/f;

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_4
    iget-object v12, v0, Lw/d;->e:Lx/m;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_5
    iget-object v13, v10, Lx/p;->h:Lx/f;

    .line 82
    .line 83
    iget-object v13, v13, Lx/f;->l:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    iget-object v13, v10, Lx/p;->i:Lx/f;

    .line 90
    .line 91
    iget-object v14, v13, Lx/f;->l:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    invoke-virtual {v10}, Lx/p;->j()J

    .line 98
    .line 99
    .line 100
    move-result-wide v14

    .line 101
    iget-object v5, v10, Lx/p;->h:Lx/f;

    .line 102
    .line 103
    if-eqz v11, :cond_a

    .line 104
    .line 105
    if-eqz v12, :cond_a

    .line 106
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .line 109
    invoke-static {v5, v0, v1}, Lx/l;->b(Lx/f;J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v11

    .line 113
    move-object v6, v3

    .line 114
    move/from16 v16, v4

    .line 115
    .line 116
    invoke-static {v13, v0, v1}, Lx/l;->a(Lx/f;J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    sub-long/2addr v11, v14

    .line 121
    iget v0, v13, Lx/f;->f:I

    .line 122
    .line 123
    neg-int v1, v0

    .line 124
    move-object/from16 v18, v6

    .line 125
    .line 126
    move/from16 v17, v7

    .line 127
    .line 128
    int-to-long v6, v1

    .line 129
    cmp-long v1, v11, v6

    .line 130
    .line 131
    if-ltz v1, :cond_5

    .line 132
    .line 133
    int-to-long v0, v0

    .line 134
    add-long/2addr v11, v0

    .line 135
    :cond_5
    neg-long v0, v3

    .line 136
    sub-long/2addr v0, v14

    .line 137
    iget v3, v5, Lx/f;->f:I

    .line 138
    .line 139
    int-to-long v3, v3

    .line 140
    sub-long/2addr v0, v3

    .line 141
    cmp-long v6, v0, v3

    .line 142
    .line 143
    if-ltz v6, :cond_6

    .line 144
    .line 145
    sub-long/2addr v0, v3

    .line 146
    :cond_6
    iget-object v3, v10, Lx/p;->b:Lw/d;

    .line 147
    .line 148
    if-nez v2, :cond_7

    .line 149
    .line 150
    iget v3, v3, Lw/d;->c0:F

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_7
    const/4 v4, 0x1

    .line 154
    if-ne v2, v4, :cond_8

    .line 155
    .line 156
    iget v3, v3, Lw/d;->d0:F

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const/high16 v3, -0x40800000    # -1.0f

    .line 163
    .line 164
    :goto_6
    const/4 v4, 0x0

    .line 165
    const/high16 v6, 0x3f800000    # 1.0f

    .line 166
    .line 167
    cmpl-float v4, v3, v4

    .line 168
    .line 169
    if-lez v4, :cond_9

    .line 170
    .line 171
    long-to-float v0, v0

    .line 172
    div-float/2addr v0, v3

    .line 173
    long-to-float v1, v11

    .line 174
    sub-float v4, v6, v3

    .line 175
    .line 176
    div-float/2addr v1, v4

    .line 177
    add-float/2addr v1, v0

    .line 178
    float-to-long v0, v1

    .line 179
    goto :goto_7

    .line 180
    :cond_9
    const-wide/16 v0, 0x0

    .line 181
    .line 182
    :goto_7
    long-to-float v0, v0

    .line 183
    mul-float v1, v0, v3

    .line 184
    .line 185
    const/high16 v4, 0x3f000000    # 0.5f

    .line 186
    .line 187
    add-float/2addr v1, v4

    .line 188
    float-to-long v10, v1

    .line 189
    sub-float/2addr v6, v3

    .line 190
    mul-float v6, v6, v0

    .line 191
    .line 192
    add-float/2addr v6, v4

    .line 193
    float-to-long v0, v6

    .line 194
    add-long/2addr v10, v14

    .line 195
    add-long/2addr v10, v0

    .line 196
    iget v0, v5, Lx/f;->f:I

    .line 197
    .line 198
    int-to-long v0, v0

    .line 199
    add-long/2addr v0, v10

    .line 200
    iget v3, v13, Lx/f;->f:I

    .line 201
    .line 202
    int-to-long v3, v3

    .line 203
    sub-long/2addr v0, v3

    .line 204
    goto :goto_8

    .line 205
    :cond_a
    move-object/from16 v18, v3

    .line 206
    .line 207
    move/from16 v16, v4

    .line 208
    .line 209
    move/from16 v17, v7

    .line 210
    .line 211
    if-eqz v11, :cond_b

    .line 212
    .line 213
    iget v0, v5, Lx/f;->f:I

    .line 214
    .line 215
    int-to-long v0, v0

    .line 216
    invoke-static {v5, v0, v1}, Lx/l;->b(Lx/f;J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    iget v3, v5, Lx/f;->f:I

    .line 221
    .line 222
    int-to-long v3, v3

    .line 223
    add-long/2addr v3, v14

    .line 224
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    goto :goto_8

    .line 229
    :cond_b
    if-eqz v12, :cond_c

    .line 230
    .line 231
    iget v0, v13, Lx/f;->f:I

    .line 232
    .line 233
    int-to-long v0, v0

    .line 234
    invoke-static {v13, v0, v1}, Lx/l;->a(Lx/f;J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    iget v3, v13, Lx/f;->f:I

    .line 239
    .line 240
    neg-int v3, v3

    .line 241
    int-to-long v3, v3

    .line 242
    add-long/2addr v3, v14

    .line 243
    neg-long v0, v0

    .line 244
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    iget v0, v5, Lx/f;->f:I

    .line 250
    .line 251
    int-to-long v0, v0

    .line 252
    invoke-virtual {v10}, Lx/p;->j()J

    .line 253
    .line 254
    .line 255
    move-result-wide v3

    .line 256
    add-long/2addr v3, v0

    .line 257
    iget v0, v13, Lx/f;->f:I

    .line 258
    .line 259
    int-to-long v0, v0

    .line 260
    sub-long v0, v3, v0

    .line 261
    .line 262
    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 263
    .line 264
    .line 265
    move-result-wide v8

    .line 266
    add-int/lit8 v7, v17, 0x1

    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    move-object/from16 v0, p1

    .line 271
    .line 272
    move/from16 v4, v16

    .line 273
    .line 274
    move-object/from16 v3, v18

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :cond_d
    long-to-int v0, v8

    .line 279
    return v0
.end method

.method public final f(Lx/p;ILjava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lx/p;->h:Lx/f;

    .line 2
    .line 3
    iget-object v0, v0, Lx/f;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lx/p;->i:Lx/f;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lx/d;

    .line 23
    .line 24
    instance-of v2, v1, Lx/f;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v1, Lx/f;

    .line 29
    .line 30
    invoke-virtual {p0, v1, p2, p3, v3}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v2, v1, Lx/p;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Lx/p;

    .line 39
    .line 40
    iget-object v1, v1, Lx/p;->h:Lx/f;

    .line 41
    .line 42
    invoke-virtual {p0, v1, p2, p3, v3}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, v2, Lx/f;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lx/d;

    .line 63
    .line 64
    instance-of v2, v1, Lx/f;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    check-cast v1, Lx/f;

    .line 69
    .line 70
    invoke-virtual {p0, v1, p2, p3, v3}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    instance-of v2, v1, Lx/p;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v1, Lx/p;

    .line 79
    .line 80
    iget-object v1, v1, Lx/p;->i:Lx/f;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p2, p3, v3}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    if-ne p2, v0, :cond_7

    .line 88
    .line 89
    check-cast p1, Lx/m;

    .line 90
    .line 91
    iget-object p1, p1, Lx/m;->k:Lx/f;

    .line 92
    .line 93
    iget-object p1, p1, Lx/f;->k:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lx/d;

    .line 110
    .line 111
    instance-of v1, v0, Lx/f;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    check-cast v0, Lx/f;

    .line 116
    .line 117
    invoke-virtual {p0, v0, p2, p3, v3}, Lx/e;->b(Lx/f;ILjava/util/ArrayList;Lx/l;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx/e;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/e;->h:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lx/e;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lp0/q;

    .line 18
    .line 19
    check-cast v0, Lp0/I;

    .line 20
    .line 21
    iget-object v1, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lp0/I;->b()Lp0/H;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v3, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v1, Lp0/H;->a:Landroid/os/Message;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v3, v1, Lp0/H;->a:Landroid/os/Message;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lp0/I;->a:Landroid/os/Handler;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lp0/H;->a()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 62
    .line 63
    check-cast v0, Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    xor-int/2addr v1, v2

    .line 70
    iget-object v2, p0, Lx/e;->h:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Ljava/util/ArrayDeque;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lx/e;->h:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/util/ArrayDeque;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/Runnable;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    return-void
.end method

.method public final h(Lw/d;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/e;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx/b;

    .line 4
    .line 5
    iput p2, v0, Lx/b;->a:I

    .line 6
    .line 7
    iput p4, v0, Lx/b;->b:I

    .line 8
    .line 9
    iput p3, v0, Lx/b;->c:I

    .line 10
    .line 11
    iput p5, v0, Lx/b;->d:I

    .line 12
    .line 13
    iget-object p2, p0, Lx/e;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Lz/f;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Lz/f;->b(Lw/d;Lx/b;)V

    .line 18
    .line 19
    .line 20
    iget p2, v0, Lx/b;->e:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lw/d;->K(I)V

    .line 23
    .line 24
    .line 25
    iget p2, v0, Lx/b;->f:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lw/d;->H(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p2, v0, Lx/b;->h:Z

    .line 31
    .line 32
    iput-boolean p2, p1, Lw/d;->E:Z

    .line 33
    .line 34
    iget p2, v0, Lx/b;->g:I

    .line 35
    .line 36
    iput p2, p1, Lw/d;->Z:I

    .line 37
    .line 38
    if-lez p2, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    :goto_0
    iput-boolean p2, p1, Lw/d;->E:Z

    .line 44
    .line 45
    return-void
.end method

.method public final i()V
    .locals 14

    .line 1
    iget-object v0, p0, Lx/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw/e;

    .line 4
    .line 5
    iget-object v0, v0, Lw/j;->p0:Ljava/util/ArrayList;

    .line 6
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
    if-eqz v1, :cond_b

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lw/d;

    .line 22
    .line 23
    iget-boolean v2, v1, Lw/d;->a:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v2, v1, Lw/d;->o0:[I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aget v8, v2, v3

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    aget v10, v2, v9

    .line 35
    .line 36
    iget v2, v1, Lw/d;->r:I

    .line 37
    .line 38
    iget v4, v1, Lw/d;->s:I

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v11, 0x3

    .line 42
    if-eq v8, v6, :cond_3

    .line 43
    .line 44
    if-ne v8, v11, :cond_2

    .line 45
    .line 46
    if-ne v2, v9, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 52
    :goto_2
    if-eq v10, v6, :cond_4

    .line 53
    .line 54
    if-ne v10, v11, :cond_5

    .line 55
    .line 56
    if-ne v4, v9, :cond_5

    .line 57
    .line 58
    :cond_4
    const/4 v3, 0x1

    .line 59
    :cond_5
    iget-object v4, v1, Lw/d;->d:Lx/k;

    .line 60
    .line 61
    iget-object v4, v4, Lx/p;->e:Lx/g;

    .line 62
    .line 63
    iget-boolean v5, v4, Lx/f;->j:Z

    .line 64
    .line 65
    iget-object v7, v1, Lw/d;->e:Lx/m;

    .line 66
    .line 67
    iget-object v7, v7, Lx/p;->e:Lx/g;

    .line 68
    .line 69
    iget-boolean v12, v7, Lx/f;->j:Z

    .line 70
    .line 71
    const/4 v13, 0x1

    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    if-eqz v12, :cond_6

    .line 75
    .line 76
    iget v5, v4, Lx/f;->g:I

    .line 77
    .line 78
    iget v7, v7, Lx/f;->g:I

    .line 79
    .line 80
    move-object v2, p0

    .line 81
    move-object v3, v1

    .line 82
    move v4, v13

    .line 83
    move v6, v13

    .line 84
    invoke-virtual/range {v2 .. v7}, Lx/e;->h(Lw/d;IIII)V

    .line 85
    .line 86
    .line 87
    iput-boolean v9, v1, Lw/d;->a:Z

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    if-eqz v5, :cond_8

    .line 91
    .line 92
    if-eqz v3, :cond_8

    .line 93
    .line 94
    iget v5, v4, Lx/f;->g:I

    .line 95
    .line 96
    iget v7, v7, Lx/f;->g:I

    .line 97
    .line 98
    move-object v2, p0

    .line 99
    move-object v3, v1

    .line 100
    move v4, v13

    .line 101
    invoke-virtual/range {v2 .. v7}, Lx/e;->h(Lw/d;IIII)V

    .line 102
    .line 103
    .line 104
    if-ne v10, v11, :cond_7

    .line 105
    .line 106
    iget-object v2, v1, Lw/d;->e:Lx/m;

    .line 107
    .line 108
    iget-object v2, v2, Lx/p;->e:Lx/g;

    .line 109
    .line 110
    invoke-virtual {v1}, Lw/d;->i()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iput v3, v2, Lx/g;->m:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    iget-object v2, v1, Lw/d;->e:Lx/m;

    .line 118
    .line 119
    iget-object v2, v2, Lx/p;->e:Lx/g;

    .line 120
    .line 121
    invoke-virtual {v1}, Lw/d;->i()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v2, v3}, Lx/g;->d(I)V

    .line 126
    .line 127
    .line 128
    iput-boolean v9, v1, Lw/d;->a:Z

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    if-eqz v12, :cond_a

    .line 132
    .line 133
    if-eqz v2, :cond_a

    .line 134
    .line 135
    iget v5, v4, Lx/f;->g:I

    .line 136
    .line 137
    iget v7, v7, Lx/f;->g:I

    .line 138
    .line 139
    move-object v2, p0

    .line 140
    move-object v3, v1

    .line 141
    move v4, v6

    .line 142
    move v6, v13

    .line 143
    invoke-virtual/range {v2 .. v7}, Lx/e;->h(Lw/d;IIII)V

    .line 144
    .line 145
    .line 146
    if-ne v8, v11, :cond_9

    .line 147
    .line 148
    iget-object v2, v1, Lw/d;->d:Lx/k;

    .line 149
    .line 150
    iget-object v2, v2, Lx/p;->e:Lx/g;

    .line 151
    .line 152
    invoke-virtual {v1}, Lw/d;->o()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iput v3, v2, Lx/g;->m:I

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    iget-object v2, v1, Lw/d;->d:Lx/k;

    .line 160
    .line 161
    iget-object v2, v2, Lx/p;->e:Lx/g;

    .line 162
    .line 163
    invoke-virtual {v1}, Lw/d;->o()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-virtual {v2, v3}, Lx/g;->d(I)V

    .line 168
    .line 169
    .line 170
    iput-boolean v9, v1, Lw/d;->a:Z

    .line 171
    .line 172
    :cond_a
    :goto_3
    iget-boolean v2, v1, Lw/d;->a:Z

    .line 173
    .line 174
    if-eqz v2, :cond_0

    .line 175
    .line 176
    iget-object v2, v1, Lw/d;->e:Lx/m;

    .line 177
    .line 178
    iget-object v2, v2, Lx/m;->l:Lx/a;

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    iget v1, v1, Lw/d;->Z:I

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Lx/g;->d(I)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_b
    return-void
.end method

.method public final j(ILp0/u;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx/e;->m()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    iget-object v1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lx/e;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    new-instance v2, Lp0/t;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v0, p1, p2, v3}, Lp0/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lx/e;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/e;->i:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lx/e;->a:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lp0/w;

    .line 30
    .line 31
    iget-object v3, p0, Lx/e;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lp0/v;

    .line 34
    .line 35
    iput-boolean v1, v2, Lp0/w;->d:Z

    .line 36
    .line 37
    iget-boolean v4, v2, Lp0/w;->c:Z

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    iput-boolean v4, v2, Lp0/w;->c:Z

    .line 43
    .line 44
    iget-object v4, v2, Lp0/w;->b:Lm0/q;

    .line 45
    .line 46
    invoke-virtual {v4}, Lm0/q;->b()Lm0/r;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v2, v2, Lp0/w;->a:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {v3, v2, v4}, Lp0/v;->c(Ljava/lang/Object;Lm0/r;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 57
    .line 58
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw v1
.end method

.method public final l(ILp0/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lx/e;->j(ILp0/u;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lx/e;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lx/e;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lx/e;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lp0/q;

    .line 13
    .line 14
    check-cast v1, Lp0/I;

    .line 15
    .line 16
    iget-object v1, v1, Lp0/I;->a:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/e;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lx/e;->a:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 13
    .line 14
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/yo;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/yo;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx/e;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/e;->h:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lx/e;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/un;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/ts;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/ts;->e()Lcom/google/android/gms/internal/ads/gs;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/gs;->a:Landroid/os/Message;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/gs;->a:Landroid/os/Message;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ts;->d(Lcom/google/android/gms/internal/ads/gs;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lx/e;->g:Ljava/util/AbstractCollection;

    .line 58
    .line 59
    check-cast v0, Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    xor-int/2addr v1, v2

    .line 66
    iget-object v2, p0, Lx/e;->h:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lx/e;->h:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 78
    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/Runnable;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    :goto_1
    return-void
.end method

.method public final p(ILcom/google/android/gms/internal/ads/bo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lx/e;->r()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    iget-object v1, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 7
    .line 8
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/Nn;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/Nn;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lx/e;->h:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lx/e;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx/e;->i:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lx/e;->a:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/ads/yo;

    .line 30
    .line 31
    iget-object v3, p0, Lx/e;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lcom/google/android/gms/internal/ads/oo;

    .line 34
    .line 35
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/yo;->d:Z

    .line 36
    .line 37
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 43
    .line 44
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/yo;->b:Lm0/q;

    .line 45
    .line 46
    invoke-virtual {v4}, Lm0/q;->d()Lcom/google/android/gms/internal/ads/o;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/oo;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/o;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lx/e;->f:Ljava/util/AbstractCollection;

    .line 57
    .line 58
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw v1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lx/e;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lx/e;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/un;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/ts;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ts;->a:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne v1, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
