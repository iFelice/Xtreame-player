.class public final Le2/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final Y:Ljava/lang/String;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/util/List;

.field public final J:Lm2/u;

.field public final K:Lm2/q;

.field public L:Ld2/m;

.field public final M:Lp2/a;

.field public N:Ld2/l;

.field public final O:Ld2/b;

.field public final P:Ll2/a;

.field public final Q:Landroidx/work/impl/WorkDatabase;

.field public final R:Lm2/s;

.field public final S:Lm2/c;

.field public final T:Ljava/util/List;

.field public U:Ljava/lang/String;

.field public final V:Lo2/j;

.field public final W:Lo2/j;

.field public volatile X:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Le2/A;->Y:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Le2/z;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld2/i;

    .line 5
    .line 6
    invoke-direct {v0}, Ld2/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le2/A;->N:Ld2/l;

    .line 10
    .line 11
    new-instance v0, Lo2/j;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Le2/A;->V:Lo2/j;

    .line 17
    .line 18
    new-instance v0, Lo2/j;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Le2/A;->W:Lo2/j;

    .line 24
    .line 25
    iget-object v0, p1, Le2/z;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroid/content/Context;

    .line 28
    .line 29
    iput-object v0, p0, Le2/A;->G:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v0, p1, Le2/z;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lp2/a;

    .line 34
    .line 35
    iput-object v0, p0, Le2/A;->M:Lp2/a;

    .line 36
    .line 37
    iget-object v0, p1, Le2/z;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ll2/a;

    .line 40
    .line 41
    iput-object v0, p0, Le2/A;->P:Ll2/a;

    .line 42
    .line 43
    iget-object v0, p1, Le2/z;->g:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lm2/q;

    .line 46
    .line 47
    iput-object v0, p0, Le2/A;->K:Lm2/q;

    .line 48
    .line 49
    iget-object v0, v0, Lm2/q;->a:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Le2/A;->H:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p1, Le2/z;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/util/List;

    .line 56
    .line 57
    iput-object v0, p0, Le2/A;->I:Ljava/util/List;

    .line 58
    .line 59
    iget-object v0, p1, Le2/z;->j:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lm2/u;

    .line 62
    .line 63
    iput-object v0, p0, Le2/A;->J:Lm2/u;

    .line 64
    .line 65
    iget-object v0, p1, Le2/z;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ld2/m;

    .line 68
    .line 69
    iput-object v0, p0, Le2/A;->L:Ld2/m;

    .line 70
    .line 71
    iget-object v0, p1, Le2/z;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ld2/b;

    .line 74
    .line 75
    iput-object v0, p0, Le2/A;->O:Ld2/b;

    .line 76
    .line 77
    iget-object v0, p1, Le2/z;->f:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 80
    .line 81
    iput-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Le2/A;->R:Lm2/s;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lm2/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Le2/A;->S:Lm2/c;

    .line 94
    .line 95
    iget-object p1, p1, Le2/z;->i:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/util/List;

    .line 98
    .line 99
    iput-object p1, p0, Le2/A;->T:Ljava/util/List;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a(Ld2/l;)V
    .locals 11

    .line 1
    instance-of v0, p1, Ld2/k;

    .line 2
    .line 3
    iget-object v1, p0, Le2/A;->K:Lm2/q;

    .line 4
    .line 5
    sget-object v2, Le2/A;->Y:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Worker result SUCCESS for "

    .line 16
    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Le2/A;->U:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v2, v0}, Ld2/n;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lm2/q;->c()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Le2/A;->d()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Le2/A;->S:Lm2/c;

    .line 44
    .line 45
    iget-object v0, p0, Le2/A;->H:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Le2/A;->R:Lm2/s;

    .line 48
    .line 49
    iget-object v3, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 50
    .line 51
    invoke-virtual {v3}, LP1/x;->c()V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x3

    .line 56
    :try_start_0
    invoke-virtual {v1, v5, v0}, Lm2/s;->l(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Le2/A;->N:Ld2/l;

    .line 60
    .line 61
    check-cast v5, Ld2/k;

    .line 62
    .line 63
    iget-object v5, v5, Ld2/k;->a:Ld2/e;

    .line 64
    .line 65
    invoke-virtual {v1, v0, v5}, Lm2/s;->k(Ljava/lang/String;Ld2/e;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    invoke-virtual {p1, v0}, Lm2/c;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Lm2/s;->e(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    const/4 v9, 0x5

    .line 97
    if-ne v8, v9, :cond_1

    .line 98
    .line 99
    invoke-virtual {p1, v7}, Lm2/c;->j(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v10, "Setting status to enqueued for "

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v8, v2, v9}, Ld2/n;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v8, 0x1

    .line 130
    invoke-virtual {v1, v8, v7}, Lm2/s;->l(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v5, v6, v7}, Lm2/s;->j(JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v3}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, LP1/x;->j()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v4}, Le2/A;->e(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_1
    invoke-virtual {v3}, LP1/x;->j()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v4}, Le2/A;->e(Z)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_3
    instance-of p1, p1, Ld2/j;

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "Worker result RETRY for "

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Le2/A;->U:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v2, v0}, Ld2/n;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Le2/A;->c()V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v3, "Worker result FAILURE for "

    .line 194
    .line 195
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Le2/A;->U:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v2, v0}, Ld2/n;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lm2/q;->c()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_5

    .line 215
    .line 216
    invoke-virtual {p0}, Le2/A;->d()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {p0}, Le2/A;->g()V

    .line 221
    .line 222
    .line 223
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le2/A;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    iget-object v2, p0, Le2/A;->H:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, LP1/x;->c()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Le2/A;->R:Lm2/s;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lm2/s;->e(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lm2/o;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, v2}, Lm2/o;->h(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Le2/A;->e(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    if-ne v0, v3, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Le2/A;->N:Ld2/l;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Le2/A;->a(Ld2/l;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/U2;->d(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Le2/A;->c()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, LP1/x;->j()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    invoke-virtual {v1}, LP1/x;->j()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_3
    :goto_2
    iget-object v0, p0, Le2/A;->I:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Le2/p;

    .line 84
    .line 85
    invoke-interface {v4, v2}, Le2/p;->d(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    iget-object v2, p0, Le2/A;->O:Ld2/b;

    .line 90
    .line 91
    invoke-static {v2, v1, v0}, Le2/q;->a(Ld2/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Le2/A;->H:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Le2/A;->R:Lm2/s;

    .line 4
    .line 5
    iget-object v2, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, LP1/x;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    invoke-virtual {v1, v3, v0}, Lm2/s;->l(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    invoke-virtual {v1, v4, v5, v0}, Lm2/s;->j(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v4, -0x1

    .line 22
    .line 23
    invoke-virtual {v1, v4, v5, v0}, Lm2/s;->i(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, LP1/x;->j()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3}, Le2/A;->e(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v2}, LP1/x;->j()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Le2/A;->e(Z)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Le2/A;->H:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Le2/A;->R:Lm2/s;

    .line 4
    .line 5
    iget-object v2, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, LP1/x;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-virtual {v1, v4, v5, v0}, Lm2/s;->j(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    iget-object v4, v1, Lm2/s;->a:LP1/x;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    :try_start_1
    invoke-virtual {v1, v5, v0}, Lm2/s;->l(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, LP1/x;->b()V

    .line 25
    .line 26
    .line 27
    iget-object v6, v1, Lm2/s;->i:Lm2/r;

    .line 28
    .line 29
    invoke-virtual {v6}, Lk/d;->c()LT1/i;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v7, v5}, LT1/g;->J(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v7, v5, v0}, LT1/g;->g(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v4}, LP1/x;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-interface {v7}, LT1/i;->l()I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, LP1/x;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    :try_start_3
    invoke-virtual {v4}, LP1/x;->j()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v7}, Lk/d;->m(LT1/i;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, LP1/x;->b()V

    .line 58
    .line 59
    .line 60
    iget-object v6, v1, Lm2/s;->e:Lm2/r;

    .line 61
    .line 62
    invoke-virtual {v6}, Lk/d;->c()LT1/i;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    invoke-interface {v7, v5}, LT1/g;->J(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {v7, v5, v0}, LT1/g;->g(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v4}, LP1/x;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_4
    invoke-interface {v7}, LT1/i;->l()I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, LP1/x;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    .line 83
    .line 84
    :try_start_5
    invoke-virtual {v4}, LP1/x;->j()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Lk/d;->m(LT1/i;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v4, -0x1

    .line 91
    .line 92
    invoke-virtual {v1, v4, v5, v0}, Lm2/s;->i(JLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, LP1/x;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, LP1/x;->j()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Le2/A;->e(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_6
    invoke-virtual {v4}, LP1/x;->j()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v7}, Lk/d;->m(LT1/i;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :catchall_2
    move-exception v0

    .line 116
    invoke-virtual {v4}, LP1/x;->j()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v7}, Lk/d;->m(LT1/i;)V

    .line 120
    .line 121
    .line 122
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    :goto_2
    invoke-virtual {v2}, LP1/x;->j()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v3}, Le2/A;->e(Z)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final e(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, LP1/x;->c()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2, v1}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v0, v0, Lm2/s;->a:LP1/x;

    .line 23
    .line 24
    invoke-virtual {v0}, LP1/x;->b()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v1, v3}, LP1/x;->l(LT1/h;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 40
    .line 41
    .line 42
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, LP1/z;->O()V

    .line 54
    .line 55
    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Le2/A;->G:Landroid/content/Context;

    .line 59
    .line 60
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Ln2/m;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    goto :goto_4

    .line 68
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Le2/A;->R:Lm2/s;

    .line 71
    .line 72
    iget-object v1, p0, Le2/A;->H:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v4, v1}, Lm2/s;->l(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Le2/A;->R:Lm2/s;

    .line 78
    .line 79
    iget-object v1, p0, Le2/A;->H:Ljava/lang/String;

    .line 80
    .line 81
    const-wide/16 v2, -0x1

    .line 82
    .line 83
    invoke-virtual {v0, v2, v3, v1}, Lm2/s;->i(JLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Le2/A;->K:Lm2/q;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Le2/A;->L:Ld2/m;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Le2/A;->P:Ll2/a;

    .line 95
    .line 96
    iget-object v1, p0, Le2/A;->H:Ljava/lang/String;

    .line 97
    .line 98
    check-cast v0, Le2/n;

    .line 99
    .line 100
    iget-object v2, v0, Le2/n;->R:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    :try_start_3
    iget-object v0, v0, Le2/n;->L:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    :try_start_4
    iget-object v0, p0, Le2/A;->P:Ll2/a;

    .line 113
    .line 114
    iget-object v1, p0, Le2/A;->H:Ljava/lang/String;

    .line 115
    .line 116
    check-cast v0, Le2/n;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Le2/n;->k(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catchall_2
    move-exception p1

    .line 123
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 124
    :try_start_6
    throw p1

    .line 125
    :cond_3
    :goto_2
    iget-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 126
    .line 127
    invoke-virtual {v0}, LP1/x;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 131
    .line 132
    invoke-virtual {v0}, LP1/x;->j()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Le2/A;->V:Lo2/j;

    .line 136
    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Lo2/j;->j(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_3
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, LP1/z;->O()V

    .line 149
    .line 150
    .line 151
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 152
    :goto_4
    iget-object v0, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 153
    .line 154
    invoke-virtual {v0}, LP1/x;->j()V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Le2/A;->R:Lm2/s;

    .line 2
    .line 3
    iget-object v1, p0, Le2/A;->H:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lm2/s;->e(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x2

    .line 10
    const-string v3, "Status for "

    .line 11
    .line 12
    sget-object v4, Le2/A;->Y:Ljava/lang/String;

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v4, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Le2/A;->e(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v5, " is "

    .line 50
    .line 51
    invoke-static {v3, v1, v5}, Lcom/google/protobuf/U2;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0}, Lcom/google/protobuf/U2;->D(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " ; not doing any work"

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v2, v4, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Le2/A;->e(Z)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Le2/A;->H:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v1}, LP1/x;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v5, p0, Le2/A;->R:Lm2/s;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Lm2/s;->e(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x6

    .line 36
    if-eq v6, v7, :cond_0

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    invoke-virtual {v5, v6, v4}, Lm2/s;->l(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v5, p0, Le2/A;->S:Lm2/c;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Lm2/c;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, p0, Le2/A;->N:Ld2/l;

    .line 53
    .line 54
    check-cast v3, Ld2/i;

    .line 55
    .line 56
    iget-object v3, v3, Ld2/i;->a:Ld2/e;

    .line 57
    .line 58
    invoke-virtual {v5, v0, v3}, Lm2/s;->k(Ljava/lang/String;Ld2/e;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, LP1/x;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, LP1/x;->j()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Le2/A;->e(Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v1}, LP1/x;->j()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v2}, Le2/A;->e(Z)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public final h()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Le2/A;->X:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Le2/A;->Y:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Work interrupted for "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Le2/A;->U:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Le2/A;->R:Lm2/s;

    .line 32
    .line 33
    iget-object v2, p0, Le2/A;->H:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lm2/s;->e(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Le2/A;->e(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/U2;->d(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    xor-int/2addr v0, v2

    .line 51
    invoke-virtual {p0, v0}, Le2/A;->e(Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return v2

    .line 55
    :cond_1
    return v1
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Work [ id="

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Le2/A;->H:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", tags={ "

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Le2/A;->T:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x1

    .line 28
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const/4 v8, 0x0

    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v8, ", "

    .line 46
    .line 47
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v4, " } ]"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v1, Le2/A;->U:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, v1, Le2/A;->K:Lm2/q;

    .line 66
    .line 67
    const-string v0, "Delaying execution for "

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Le2/A;->h()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    goto/16 :goto_a

    .line 76
    .line 77
    :cond_2
    iget-object v6, v1, Le2/A;->Q:Landroidx/work/impl/WorkDatabase;

    .line 78
    .line 79
    invoke-virtual {v6}, LP1/x;->c()V

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget v7, v4, Lm2/q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    iget-object v9, v4, Lm2/q;->c:Ljava/lang/String;

    .line 85
    .line 86
    sget-object v10, Le2/A;->Y:Ljava/lang/String;

    .line 87
    .line 88
    if-eq v7, v5, :cond_3

    .line 89
    .line 90
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Le2/A;->f()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, LP1/x;->n()V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v10, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-virtual {v6}, LP1/x;->j()V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_a

    .line 124
    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto/16 :goto_d

    .line 127
    .line 128
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lm2/q;->c()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_4

    .line 133
    .line 134
    iget v7, v4, Lm2/q;->b:I

    .line 135
    .line 136
    if-ne v7, v5, :cond_5

    .line 137
    .line 138
    iget v7, v4, Lm2/q;->k:I

    .line 139
    .line 140
    if-lez v7, :cond_5

    .line 141
    .line 142
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    invoke-virtual {v4}, Lm2/q;->a()J

    .line 147
    .line 148
    .line 149
    move-result-wide v13

    .line 150
    cmp-long v7, v11, v13

    .line 151
    .line 152
    if-gez v7, :cond_5

    .line 153
    .line 154
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " because it is being executed before schedule."

    .line 167
    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v2, v10, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v5}, Le2/A;->e(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, LP1/x;->n()V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_5
    invoke-virtual {v6}, LP1/x;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, LP1/x;->j()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Lm2/q;->c()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iget-object v7, v1, Le2/A;->R:Lm2/s;

    .line 196
    .line 197
    iget-object v11, v1, Le2/A;->O:Ld2/b;

    .line 198
    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    iget-object v0, v4, Lm2/q;->e:Ld2/e;

    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_6
    iget-object v0, v11, Ld2/b;->d:LU1/f;

    .line 206
    .line 207
    iget-object v12, v4, Lm2/q;->d:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sget-object v0, Ld2/h;->a:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    :try_start_3
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-array v14, v8, [Ljava/lang/Class;

    .line 220
    .line 221
    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-array v14, v8, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ld2/h;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    const-string v15, "Trouble instantiating + "

    .line 240
    .line 241
    invoke-static {v15, v12}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    sget-object v15, Ld2/h;->a:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v14, v15, v12, v0}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    move-object v0, v13

    .line 251
    :goto_3
    if-nez v0, :cond_7

    .line 252
    .line 253
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v3, "Could not create Input Merger "

    .line 260
    .line 261
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v4, Lm2/q;->d:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v0, v10, v2}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Le2/A;->g()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_a

    .line 280
    .line 281
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .line 285
    .line 286
    iget-object v14, v4, Lm2/q;->e:Ld2/e;

    .line 287
    .line 288
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    const-string v14, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 295
    .line 296
    invoke-static {v5, v14}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    if-nez v2, :cond_8

    .line 301
    .line 302
    invoke-virtual {v14, v5}, LP1/z;->J(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_8
    invoke-virtual {v14, v5, v2}, LP1/z;->g(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    :goto_4
    iget-object v15, v7, Lm2/s;->a:LP1/x;

    .line 310
    .line 311
    invoke-virtual {v15}, LP1/x;->b()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v15, v14, v13}, LP1/x;->l(LT1/h;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .line 326
    .line 327
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_a

    .line 332
    .line 333
    invoke-interface {v15, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_9

    .line 338
    .line 339
    const/4 v5, 0x0

    .line 340
    goto :goto_6

    .line 341
    :cond_9
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    :goto_6
    invoke-static {v5}, Ld2/e;->a([B)Ld2/e;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :catchall_1
    move-exception v0

    .line 354
    goto/16 :goto_c

    .line 355
    .line 356
    :cond_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v14}, LP1/z;->O()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v12}, Ld2/h;->a(Ljava/util/ArrayList;)Ld2/e;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    :goto_7
    new-instance v5, Landroidx/work/WorkerParameters;

    .line 370
    .line 371
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    iget-object v13, v11, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 376
    .line 377
    new-instance v14, Ln2/v;

    .line 378
    .line 379
    iget-object v15, v1, Le2/A;->M:Lp2/a;

    .line 380
    .line 381
    invoke-direct {v14, v6, v15}, Ln2/v;-><init>(Landroidx/work/impl/WorkDatabase;Lp2/a;)V

    .line 382
    .line 383
    .line 384
    new-instance v8, Ln2/u;

    .line 385
    .line 386
    move-object/from16 v17, v2

    .line 387
    .line 388
    iget-object v2, v1, Le2/A;->P:Ll2/a;

    .line 389
    .line 390
    invoke-direct {v8, v6, v2, v15}, Ln2/u;-><init>(Landroidx/work/impl/WorkDatabase;Ll2/a;Lp2/a;)V

    .line 391
    .line 392
    .line 393
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 394
    .line 395
    .line 396
    iput-object v12, v5, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 397
    .line 398
    iput-object v0, v5, Landroidx/work/WorkerParameters;->b:Ld2/e;

    .line 399
    .line 400
    new-instance v0, Ljava/util/HashSet;

    .line 401
    .line 402
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 403
    .line 404
    .line 405
    iput-object v0, v5, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    .line 406
    .line 407
    iget-object v0, v1, Le2/A;->J:Lm2/u;

    .line 408
    .line 409
    iput-object v0, v5, Landroidx/work/WorkerParameters;->d:Lm2/u;

    .line 410
    .line 411
    iget v0, v4, Lm2/q;->k:I

    .line 412
    .line 413
    iput v0, v5, Landroidx/work/WorkerParameters;->e:I

    .line 414
    .line 415
    iput-object v13, v5, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    .line 416
    .line 417
    iput-object v15, v5, Landroidx/work/WorkerParameters;->g:Lp2/a;

    .line 418
    .line 419
    iget-object v0, v11, Ld2/b;->c:Ld2/y;

    .line 420
    .line 421
    iput-object v0, v5, Landroidx/work/WorkerParameters;->h:Ld2/z;

    .line 422
    .line 423
    iput-object v14, v5, Landroidx/work/WorkerParameters;->i:Ld2/u;

    .line 424
    .line 425
    iput-object v8, v5, Landroidx/work/WorkerParameters;->j:Ld2/g;

    .line 426
    .line 427
    iget-object v2, v1, Le2/A;->L:Ld2/m;

    .line 428
    .line 429
    if-nez v2, :cond_b

    .line 430
    .line 431
    iget-object v2, v1, Le2/A;->G:Landroid/content/Context;

    .line 432
    .line 433
    invoke-virtual {v0, v2, v9, v5}, Ld2/z;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ld2/m;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    iput-object v0, v1, Le2/A;->L:Ld2/m;

    .line 438
    .line 439
    :cond_b
    iget-object v0, v1, Le2/A;->L:Ld2/m;

    .line 440
    .line 441
    if-nez v0, :cond_c

    .line 442
    .line 443
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v3, "Could not create Worker "

    .line 450
    .line 451
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v0, v10, v2}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, Le2/A;->g()V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_a

    .line 468
    .line 469
    :cond_c
    invoke-virtual {v0}, Ld2/m;->isUsed()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_d

    .line 474
    .line 475
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    const-string v3, "Received an already-used Worker "

    .line 482
    .line 483
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v3, "; Worker Factory should return new instances"

    .line 490
    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v0, v10, v2}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual/range {p0 .. p0}, Le2/A;->g()V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_a

    .line 505
    .line 506
    :cond_d
    iget-object v0, v1, Le2/A;->L:Ld2/m;

    .line 507
    .line 508
    invoke-virtual {v0}, Ld2/m;->setUsed()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v6}, LP1/x;->c()V

    .line 512
    .line 513
    .line 514
    move-object/from16 v2, v17

    .line 515
    .line 516
    :try_start_5
    invoke-virtual {v7, v2}, Lm2/s;->e(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    const/4 v3, 0x1

    .line 521
    if-ne v0, v3, :cond_f

    .line 522
    .line 523
    const/4 v0, 0x2

    .line 524
    invoke-virtual {v7, v0, v2}, Lm2/s;->l(ILjava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v3, v7, Lm2/s;->a:LP1/x;

    .line 528
    .line 529
    invoke-virtual {v3}, LP1/x;->b()V

    .line 530
    .line 531
    .line 532
    iget-object v4, v7, Lm2/s;->h:Lm2/r;

    .line 533
    .line 534
    invoke-virtual {v4}, Lk/d;->c()LT1/i;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    if-nez v2, :cond_e

    .line 539
    .line 540
    const/4 v7, 0x1

    .line 541
    invoke-interface {v5, v7}, LT1/g;->J(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_8

    .line 545
    :cond_e
    const/4 v7, 0x1

    .line 546
    invoke-interface {v5, v7, v2}, LT1/g;->g(ILjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :goto_8
    invoke-virtual {v3}, LP1/x;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 550
    .line 551
    .line 552
    :try_start_6
    invoke-interface {v5}, LT1/i;->l()I

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, LP1/x;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 556
    .line 557
    .line 558
    :try_start_7
    invoke-virtual {v3}, LP1/x;->j()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4, v5}, Lk/d;->m(LT1/i;)V

    .line 562
    .line 563
    .line 564
    const/16 v16, 0x1

    .line 565
    .line 566
    goto :goto_9

    .line 567
    :catchall_2
    move-exception v0

    .line 568
    invoke-virtual {v3}, LP1/x;->j()V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4, v5}, Lk/d;->m(LT1/i;)V

    .line 572
    .line 573
    .line 574
    throw v0

    .line 575
    :catchall_3
    move-exception v0

    .line 576
    goto :goto_b

    .line 577
    :cond_f
    const/16 v16, 0x0

    .line 578
    .line 579
    :goto_9
    invoke-virtual {v6}, LP1/x;->n()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 580
    .line 581
    .line 582
    invoke-virtual {v6}, LP1/x;->j()V

    .line 583
    .line 584
    .line 585
    if-eqz v16, :cond_11

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Le2/A;->h()Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-eqz v0, :cond_10

    .line 592
    .line 593
    goto :goto_a

    .line 594
    :cond_10
    new-instance v0, Ln2/s;

    .line 595
    .line 596
    iget-object v2, v1, Le2/A;->L:Ld2/m;

    .line 597
    .line 598
    iget-object v3, v1, Le2/A;->G:Landroid/content/Context;

    .line 599
    .line 600
    iget-object v4, v1, Le2/A;->K:Lm2/q;

    .line 601
    .line 602
    iget-object v5, v1, Le2/A;->M:Lp2/a;

    .line 603
    .line 604
    move-object/from16 v17, v0

    .line 605
    .line 606
    move-object/from16 v18, v3

    .line 607
    .line 608
    move-object/from16 v19, v4

    .line 609
    .line 610
    move-object/from16 v20, v2

    .line 611
    .line 612
    move-object/from16 v21, v8

    .line 613
    .line 614
    move-object/from16 v22, v5

    .line 615
    .line 616
    invoke-direct/range {v17 .. v22}, Ln2/s;-><init>(Landroid/content/Context;Lm2/q;Ld2/m;Ln2/u;Lp2/a;)V

    .line 617
    .line 618
    .line 619
    check-cast v15, Lm2/u;

    .line 620
    .line 621
    iget-object v2, v15, Lm2/u;->J:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v2, Ljava/util/concurrent/Executor;

    .line 624
    .line 625
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 626
    .line 627
    .line 628
    new-instance v2, LU0/r;

    .line 629
    .line 630
    const/16 v3, 0x8

    .line 631
    .line 632
    iget-object v0, v0, Ln2/s;->G:Lo2/j;

    .line 633
    .line 634
    invoke-direct {v2, v3, v1, v0}, LU0/r;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    new-instance v4, Lf/v;

    .line 638
    .line 639
    const/4 v5, 0x1

    .line 640
    invoke-direct {v4, v5}, Lf/v;-><init>(I)V

    .line 641
    .line 642
    .line 643
    iget-object v5, v1, Le2/A;->W:Lo2/j;

    .line 644
    .line 645
    invoke-virtual {v5, v2, v4}, Lo2/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 646
    .line 647
    .line 648
    new-instance v2, Ll/k;

    .line 649
    .line 650
    invoke-direct {v2, v3, v1, v0}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    iget-object v3, v15, Lm2/u;->J:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 656
    .line 657
    invoke-virtual {v0, v2, v3}, Lo2/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 658
    .line 659
    .line 660
    iget-object v0, v1, Le2/A;->U:Ljava/lang/String;

    .line 661
    .line 662
    new-instance v2, Ll/k;

    .line 663
    .line 664
    const/16 v3, 0x9

    .line 665
    .line 666
    invoke-direct {v2, v3, v1, v0}, Ll/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, v15, Lm2/u;->H:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast v0, Ln2/o;

    .line 672
    .line 673
    invoke-virtual {v5, v2, v0}, Lo2/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 674
    .line 675
    .line 676
    goto :goto_a

    .line 677
    :cond_11
    invoke-virtual/range {p0 .. p0}, Le2/A;->f()V

    .line 678
    .line 679
    .line 680
    :goto_a
    return-void

    .line 681
    :goto_b
    invoke-virtual {v6}, LP1/x;->j()V

    .line 682
    .line 683
    .line 684
    throw v0

    .line 685
    :goto_c
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v14}, LP1/z;->O()V

    .line 689
    .line 690
    .line 691
    throw v0

    .line 692
    :goto_d
    invoke-virtual {v6}, LP1/x;->j()V

    .line 693
    .line 694
    .line 695
    throw v0
.end method
