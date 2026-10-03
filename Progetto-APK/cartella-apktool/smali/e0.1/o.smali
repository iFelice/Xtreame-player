.class public final Le0/o;
.super Le0/B;
.source "SourceFile"


# instance fields
.field public final J:Z

.field public K:Ln/a;

.field public L:Le0/j;

.field public final M:Ljava/lang/ref/WeakReference;

.field public N:I

.field public O:Z

.field public P:Z

.field public final Q:Ljava/util/ArrayList;

.field public final R:LL6/a;


# direct methods
.method public constructor <init>(Le0/m;)V
    .locals 2

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Le0/o;->J:Z

    .line 17
    .line 18
    new-instance v0, Ln/a;

    .line 19
    .line 20
    invoke-direct {v0}, Ln/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Le0/o;->K:Ln/a;

    .line 24
    .line 25
    sget-object v0, Le0/j;->H:Le0/j;

    .line 26
    .line 27
    iput-object v0, p0, Le0/o;->L:Le0/j;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Le0/o;->M:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    new-instance p1, LL6/a;

    .line 44
    .line 45
    invoke-direct {p1, v0}, LL6/a;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Le0/o;->R:LL6/a;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Le0/l;)V
    .locals 8

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "addObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le0/o;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Le0/o;->L:Le0/j;

    .line 12
    .line 13
    sget-object v1, Le0/j;->G:Le0/j;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Le0/j;->H:Le0/j;

    .line 19
    .line 20
    :goto_0
    new-instance v0, Le0/n;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Le0/q;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    instance-of v2, p1, Le0/k;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move-object v2, p1

    .line 34
    check-cast v2, Le0/k;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Le0/q;->b(Ljava/lang/Class;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x2

    .line 46
    if-ne v5, v6, :cond_4

    .line 47
    .line 48
    sget-object v5, Le0/q;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    check-cast v2, Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x0

    .line 64
    if-eq v5, v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    new-array v7, v5, [Le0/e;

    .line 71
    .line 72
    if-gtz v5, :cond_2

    .line 73
    .line 74
    new-instance v2, LY/p;

    .line 75
    .line 76
    invoke-direct {v2, v7}, LY/p;-><init>([Le0/e;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 85
    .line 86
    invoke-static {v0, p1}, Le0/q;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw v6

    .line 90
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 95
    .line 96
    invoke-static {v0, p1}, Le0/q;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw v6

    .line 100
    :cond_4
    new-instance v2, Le0/d;

    .line 101
    .line 102
    invoke-direct {v2, p1}, Le0/d;-><init>(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iput-object v2, v0, Le0/n;->b:Le0/k;

    .line 106
    .line 107
    iput-object v1, v0, Le0/n;->a:Le0/j;

    .line 108
    .line 109
    iget-object v1, p0, Le0/o;->K:Ln/a;

    .line 110
    .line 111
    invoke-virtual {v1, p1, v0}, Ln/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Le0/n;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    return-void

    .line 120
    :cond_5
    iget-object v1, p0, Le0/o;->M:Ljava/lang/ref/WeakReference;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Le0/m;

    .line 127
    .line 128
    if-nez v1, :cond_6

    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    iget v2, p0, Le0/o;->N:I

    .line 132
    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    iget-boolean v2, p0, Le0/o;->O:Z

    .line 136
    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    :cond_7
    const/4 v4, 0x1

    .line 140
    :cond_8
    invoke-virtual {p0, p1}, Le0/o;->d(Le0/l;)Le0/j;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget v5, p0, Le0/o;->N:I

    .line 145
    .line 146
    add-int/2addr v5, v3

    .line 147
    iput v5, p0, Le0/o;->N:I

    .line 148
    .line 149
    :goto_2
    iget-object v5, v0, Le0/n;->a:Le0/j;

    .line 150
    .line 151
    invoke-virtual {v5, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-gez v2, :cond_a

    .line 156
    .line 157
    iget-object v2, p0, Le0/o;->K:Ln/a;

    .line 158
    .line 159
    iget-object v2, v2, Ln/a;->K:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_a

    .line 166
    .line 167
    iget-object v2, v0, Le0/n;->a:Le0/j;

    .line 168
    .line 169
    iget-object v5, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    sget-object v2, Le0/i;->Companion:Le0/g;

    .line 175
    .line 176
    iget-object v5, v0, Le0/n;->a:Le0/j;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v5}, Le0/g;->a(Le0/j;)Le0/i;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_9

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Le0/n;->a(Le0/m;Le0/i;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    sub-int/2addr v5, v3

    .line 197
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1}, Le0/o;->d(Le0/l;)Le0/j;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    goto :goto_2

    .line 205
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "no event up from "

    .line 210
    .line 211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Le0/n;->a:Le0/j;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_a
    if-nez v4, :cond_b

    .line 228
    .line 229
    invoke-virtual {p0}, Le0/o;->i()V

    .line 230
    .line 231
    .line 232
    :cond_b
    iget p1, p0, Le0/o;->N:I

    .line 233
    .line 234
    add-int/lit8 p1, p1, -0x1

    .line 235
    .line 236
    iput p1, p0, Le0/o;->N:I

    .line 237
    .line 238
    return-void
.end method

.method public final c(Le0/l;)V
    .locals 1

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "removeObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le0/o;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Le0/o;->K:Ln/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ln/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(Le0/l;)Le0/j;
    .locals 4

    .line 1
    iget-object v0, p0, Le0/o;->K:Ln/a;

    .line 2
    .line 3
    iget-object v0, v0, Ln/a;->K:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ln/c;

    .line 17
    .line 18
    iget-object p1, p1, Ln/c;->J:Ln/c;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Ln/c;->H:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Le0/n;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Le0/n;->a:Le0/j;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x1

    .line 41
    xor-int/2addr v1, v3

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {v0, v3}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Le0/j;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Le0/o;->L:Le0/j;

    .line 52
    .line 53
    const-string v1, "state1"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-gez v1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object p1, v0

    .line 68
    :goto_2
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-gez v0, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object v2, p1

    .line 78
    :goto_3
    return-object v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le0/o;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lm/b;->g0()Lm/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lm/b;->c:Lm/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Method "

    .line 30
    .line 31
    const-string v1, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Le0/i;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleLifecycleEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le0/o;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Le0/i;->a()Le0/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Le0/o;->g(Le0/j;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final g(Le0/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le0/o;->L:Le0/j;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Le0/j;->H:Le0/j;

    .line 7
    .line 8
    sget-object v2, Le0/j;->G:Le0/j;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "State must be at least CREATED to move to "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", but was "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Le0/o;->L:Le0/j;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " in component "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Le0/o;->M:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_0
    iput-object p1, p0, Le0/o;->L:Le0/j;

    .line 64
    .line 65
    iget-boolean p1, p0, Le0/o;->O:Z

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    iget p1, p0, Le0/o;->N:I

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iput-boolean v0, p0, Le0/o;->O:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Le0/o;->i()V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Le0/o;->O:Z

    .line 82
    .line 83
    iget-object p1, p0, Le0/o;->L:Le0/j;

    .line 84
    .line 85
    if-ne p1, v2, :cond_4

    .line 86
    .line 87
    new-instance p1, Ln/a;

    .line 88
    .line 89
    invoke-direct {p1}, Ln/a;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Le0/o;->K:Ln/a;

    .line 93
    .line 94
    :cond_4
    return-void

    .line 95
    :cond_5
    :goto_1
    iput-boolean v0, p0, Le0/o;->P:Z

    .line 96
    .line 97
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    sget-object v0, Le0/j;->I:Le0/j;

    .line 2
    .line 3
    const-string v1, "setCurrentState"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Le0/o;->e(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Le0/o;->g(Le0/j;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i()V
    .locals 10

    .line 1
    iget-object v0, p0, Le0/o;->M:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Le0/m;

    .line 8
    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Le0/o;->K:Ln/a;

    .line 12
    .line 13
    iget v2, v1, Ln/g;->J:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v1, Ln/g;->G:Ln/c;

    .line 22
    .line 23
    invoke-static {v1}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v1, Ln/c;->H:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Le0/n;

    .line 29
    .line 30
    iget-object v1, v1, Le0/n;->a:Le0/j;

    .line 31
    .line 32
    iget-object v2, p0, Le0/o;->K:Ln/a;

    .line 33
    .line 34
    iget-object v2, v2, Ln/g;->H:Ln/c;

    .line 35
    .line 36
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v2, Ln/c;->H:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Le0/n;

    .line 42
    .line 43
    iget-object v2, v2, Le0/n;->a:Le0/j;

    .line 44
    .line 45
    if-ne v1, v2, :cond_7

    .line 46
    .line 47
    iget-object v1, p0, Le0/o;->L:Le0/j;

    .line 48
    .line 49
    if-ne v1, v2, :cond_7

    .line 50
    .line 51
    :goto_0
    iput-boolean v5, p0, Le0/o;->P:Z

    .line 52
    .line 53
    iget-object v0, p0, Le0/o;->R:LL6/a;

    .line 54
    .line 55
    iget-object v1, p0, Le0/o;->L:Le0/j;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    sget-object v1, LM6/a;->a:Lp3/e;

    .line 63
    .line 64
    :cond_2
    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v2, LL6/a;->I:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v6, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    monitor-exit v0

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget v1, v0, LL6/a;->H:I

    .line 83
    .line 84
    and-int/lit8 v2, v1, 0x1

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    .line 88
    add-int/2addr v1, v3

    .line 89
    iput v1, v0, LL6/a;->H:I

    .line 90
    .line 91
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, [Lcom/google/android/gms/internal/measurement/Q1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .line 95
    monitor-exit v0

    .line 96
    :goto_1
    if-eqz v2, :cond_4

    .line 97
    .line 98
    array-length v4, v2

    .line 99
    const/4 v6, 0x0

    .line 100
    :goto_2
    if-ge v6, v4, :cond_4

    .line 101
    .line 102
    aget-object v7, v2, v6

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    monitor-enter v0

    .line 108
    :try_start_2
    iget v2, v0, LL6/a;->H:I

    .line 109
    .line 110
    if-ne v2, v1, :cond_5

    .line 111
    .line 112
    add-int/2addr v1, v3

    .line 113
    iput v1, v0, LL6/a;->H:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    monitor-exit v0

    .line 116
    goto :goto_4

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    :try_start_3
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, [Lcom/google/android/gms/internal/measurement/Q1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .line 123
    monitor-exit v0

    .line 124
    move v9, v2

    .line 125
    move-object v2, v1

    .line 126
    move v1, v9

    .line 127
    goto :goto_1

    .line 128
    :goto_3
    monitor-exit v0

    .line 129
    throw v1

    .line 130
    :catchall_1
    move-exception v1

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    add-int/2addr v1, v4

    .line 133
    :try_start_4
    iput v1, v0, LL6/a;->H:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    .line 135
    monitor-exit v0

    .line 136
    :goto_4
    return-void

    .line 137
    :goto_5
    monitor-exit v0

    .line 138
    throw v1

    .line 139
    :cond_7
    iput-boolean v5, p0, Le0/o;->P:Z

    .line 140
    .line 141
    iget-object v1, p0, Le0/o;->L:Le0/j;

    .line 142
    .line 143
    iget-object v2, p0, Le0/o;->K:Ln/a;

    .line 144
    .line 145
    iget-object v2, v2, Ln/g;->G:Ln/c;

    .line 146
    .line 147
    invoke-static {v2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v2, Ln/c;->H:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v2, Le0/n;

    .line 153
    .line 154
    iget-object v2, v2, Le0/n;->a:Le0/j;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-gez v1, :cond_d

    .line 161
    .line 162
    iget-object v1, p0, Le0/o;->K:Ln/a;

    .line 163
    .line 164
    new-instance v2, Ln/b;

    .line 165
    .line 166
    iget-object v5, v1, Ln/g;->H:Ln/c;

    .line 167
    .line 168
    iget-object v6, v1, Ln/g;->G:Ln/c;

    .line 169
    .line 170
    invoke-direct {v2, v5, v6, v3}, Ln/b;-><init>(Ln/c;Ln/c;I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v1, Ln/g;->I:Ljava/util/WeakHashMap;

    .line 174
    .line 175
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v1, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_8
    invoke-virtual {v2}, Ln/e;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_d

    .line 185
    .line 186
    iget-boolean v1, p0, Le0/o;->P:Z

    .line 187
    .line 188
    if-nez v1, :cond_d

    .line 189
    .line 190
    invoke-virtual {v2}, Ln/e;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .line 196
    const-string v5, "next()"

    .line 197
    .line 198
    invoke-static {v1, v5}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Le0/l;

    .line 206
    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Le0/n;

    .line 212
    .line 213
    :goto_6
    iget-object v6, v1, Le0/n;->a:Le0/j;

    .line 214
    .line 215
    iget-object v7, p0, Le0/o;->L:Le0/j;

    .line 216
    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-lez v6, :cond_8

    .line 222
    .line 223
    iget-boolean v6, p0, Le0/o;->P:Z

    .line 224
    .line 225
    if-nez v6, :cond_8

    .line 226
    .line 227
    iget-object v6, p0, Le0/o;->K:Ln/a;

    .line 228
    .line 229
    iget-object v6, v6, Ln/a;->K:Ljava/util/HashMap;

    .line 230
    .line 231
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    sget-object v6, Le0/i;->Companion:Le0/g;

    .line 238
    .line 239
    iget-object v7, v1, Le0/n;->a:Le0/j;

    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    const-string v6, "state"

    .line 245
    .line 246
    invoke-static {v7, v6}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    if-eq v6, v4, :cond_b

    .line 254
    .line 255
    const/4 v7, 0x3

    .line 256
    if-eq v6, v7, :cond_a

    .line 257
    .line 258
    const/4 v7, 0x4

    .line 259
    if-eq v6, v7, :cond_9

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    goto :goto_7

    .line 263
    :cond_9
    sget-object v6, Le0/i;->ON_PAUSE:Le0/i;

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_a
    sget-object v6, Le0/i;->ON_STOP:Le0/i;

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_b
    sget-object v6, Le0/i;->ON_DESTROY:Le0/i;

    .line 270
    .line 271
    :goto_7
    if-eqz v6, :cond_c

    .line 272
    .line 273
    invoke-virtual {v6}, Le0/i;->a()Le0/j;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    iget-object v8, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v0, v6}, Le0/n;->a(Le0/m;Le0/i;)V

    .line 283
    .line 284
    .line 285
    iget-object v6, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    sub-int/2addr v7, v3

    .line 292
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 297
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v3, "no event down from "

    .line 301
    .line 302
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v1, v1, Le0/n;->a:Le0/j;

    .line 306
    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_d
    iget-object v1, p0, Le0/o;->K:Ln/a;

    .line 319
    .line 320
    iget-object v1, v1, Ln/g;->H:Ln/c;

    .line 321
    .line 322
    iget-boolean v2, p0, Le0/o;->P:Z

    .line 323
    .line 324
    if-nez v2, :cond_0

    .line 325
    .line 326
    if-eqz v1, :cond_0

    .line 327
    .line 328
    iget-object v2, p0, Le0/o;->L:Le0/j;

    .line 329
    .line 330
    iget-object v1, v1, Ln/c;->H:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v1, Le0/n;

    .line 333
    .line 334
    iget-object v1, v1, Le0/n;->a:Le0/j;

    .line 335
    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-lez v1, :cond_0

    .line 341
    .line 342
    iget-object v1, p0, Le0/o;->K:Ln/a;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v2, Ln/d;

    .line 348
    .line 349
    invoke-direct {v2, v1}, Ln/d;-><init>(Ln/g;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v1, Ln/g;->I:Ljava/util/WeakHashMap;

    .line 353
    .line 354
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 355
    .line 356
    invoke-virtual {v1, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    :cond_e
    invoke-virtual {v2}, Ln/d;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    .line 365
    iget-boolean v1, p0, Le0/o;->P:Z

    .line 366
    .line 367
    if-nez v1, :cond_0

    .line 368
    .line 369
    invoke-virtual {v2}, Ln/d;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Ljava/util/Map$Entry;

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Le0/l;

    .line 380
    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Le0/n;

    .line 386
    .line 387
    :goto_8
    iget-object v5, v1, Le0/n;->a:Le0/j;

    .line 388
    .line 389
    iget-object v6, p0, Le0/o;->L:Le0/j;

    .line 390
    .line 391
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-gez v5, :cond_e

    .line 396
    .line 397
    iget-boolean v5, p0, Le0/o;->P:Z

    .line 398
    .line 399
    if-nez v5, :cond_e

    .line 400
    .line 401
    iget-object v5, p0, Le0/o;->K:Ln/a;

    .line 402
    .line 403
    iget-object v5, v5, Ln/a;->K:Ljava/util/HashMap;

    .line 404
    .line 405
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_e

    .line 410
    .line 411
    iget-object v5, v1, Le0/n;->a:Le0/j;

    .line 412
    .line 413
    iget-object v6, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    sget-object v5, Le0/i;->Companion:Le0/g;

    .line 419
    .line 420
    iget-object v6, v1, Le0/n;->a:Le0/j;

    .line 421
    .line 422
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    invoke-static {v6}, Le0/g;->a(Le0/j;)Le0/i;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    if-eqz v5, :cond_f

    .line 430
    .line 431
    invoke-virtual {v1, v0, v5}, Le0/n;->a(Le0/m;Le0/i;)V

    .line 432
    .line 433
    .line 434
    iget-object v5, p0, Le0/o;->Q:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    sub-int/2addr v6, v3

    .line 441
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 446
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v3, "no event up from "

    .line 450
    .line 451
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, v1, Le0/n;->a:Le0/j;

    .line 455
    .line 456
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v0

    .line 467
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 468
    .line 469
    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 470
    .line 471
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v0
.end method
