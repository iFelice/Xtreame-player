.class public final Lcom/google/android/gms/internal/cast/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:LH3/b;


# instance fields
.field public final a:LD3/b;

.field public final b:Ljava/util/Set;

.field public final c:LX3/d;

.field public final d:Lcom/google/android/gms/internal/cast/s;

.field public e:I

.field public f:LD3/g;

.field public g:Lt/i;

.field public h:LC3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SessionTransController"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(LD3/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/t;->a:LD3/b;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 19
    .line 20
    new-instance v0, LX3/d;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v0, v1, v2}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/t;->c:LX3/d;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/s;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/s;-><init>(Lcom/google/android/gms/internal/cast/t;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/t;->d:Lcom/google/android/gms/internal/cast/s;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()LE3/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/t;->f:LD3/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "skip transferring as SessionManager is null"

    .line 12
    .line 13
    invoke-virtual {v2, v1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_0
    const-string v4, "Must be called from the main thread."

    .line 18
    .line 19
    invoke-static {v4}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, LD3/g;->c()LD3/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    instance-of v5, v0, LD3/c;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    check-cast v0, LD3/c;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v0, v3

    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v1, "skip transferring as CastSession is null"

    .line 41
    .line 42
    invoke-virtual {v2, v1, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :cond_2
    invoke-static {v4}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, LD3/c;->j:LE3/j;

    .line 50
    .line 51
    return-object v0
.end method

.method public final b(I)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/t;->g:Lt/i;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iput-boolean v3, v2, Lt/i;->d:Z

    .line 9
    .line 10
    iget-object v4, v2, Lt/i;->b:Lt/l;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    iget-object v4, v4, Lt/l;->H:Lt/k;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lt/h;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iput-object v4, v2, Lt/i;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v4, v2, Lt/i;->b:Lt/l;

    .line 26
    .line 27
    iput-object v4, v2, Lt/i;->c:Lt/m;

    .line 28
    .line 29
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-array v5, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object v2, v5, v0

    .line 42
    .line 43
    aput-object v4, v5, v3

    .line 44
    .line 45
    const-string v2, "notify failed transfer with type = %d, reason = %d"

    .line 46
    .line 47
    sget-object v4, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 48
    .line 49
    invoke-virtual {v4, v2, v5}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/util/HashSet;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 55
    .line 56
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, LD3/i;

    .line 74
    .line 75
    iget v5, p0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 76
    .line 77
    check-cast v4, Lcom/google/android/gms/internal/cast/Y;

    .line 78
    .line 79
    iget v6, v4, Lcom/google/android/gms/internal/cast/Y;->a:I

    .line 80
    .line 81
    iget-object v4, v4, Lcom/google/android/gms/internal/cast/Y;->b:Ljava/lang/Object;

    .line 82
    .line 83
    packed-switch v6, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    new-instance v5, LF/d;

    .line 87
    .line 88
    const/16 v6, 0xb

    .line 89
    .line 90
    invoke-direct {v5, v6, v0}, LF/d;-><init>(II)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iput-object v6, v5, LF/d;->I:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lo/j;

    .line 100
    .line 101
    iget-object v6, v4, Lo/j;->H:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Lcom/google/android/gms/internal/cast/c;

    .line 104
    .line 105
    iget v6, v6, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 106
    .line 107
    if-ne v6, v1, :cond_1

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/4 v6, 0x0

    .line 112
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    iput-object v6, v5, LF/d;->J:Ljava/lang/Object;

    .line 117
    .line 118
    new-instance v6, Lcom/google/android/gms/internal/cast/a3;

    .line 119
    .line 120
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v6}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_0
    sget-object v6, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 128
    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    new-array v9, v1, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v7, v9, v0

    .line 140
    .line 141
    aput-object v8, v9, v3

    .line 142
    .line 143
    const-string v7, "onTransferFailed with type = %d and reason = %d"

    .line 144
    .line 145
    invoke-virtual {v6, v7, v9}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    check-cast v4, Lcom/google/android/gms/internal/cast/a0;

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 151
    .line 152
    .line 153
    iget-object v6, v4, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 154
    .line 155
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v7}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 170
    .line 171
    .line 172
    iget-object v8, v7, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 173
    .line 174
    check-cast v8, Lcom/google/android/gms/internal/cast/n0;

    .line 175
    .line 176
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/cast/n0;->v(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 180
    .line 181
    .line 182
    iget-object v5, v7, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 183
    .line 184
    check-cast v5, Lcom/google/android/gms/internal/cast/n0;

    .line 185
    .line 186
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/cast/n0;->w(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Lcom/google/android/gms/internal/cast/n0;

    .line 194
    .line 195
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/cast/r0;->f(Lcom/google/android/gms/internal/cast/n0;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lcom/google/android/gms/internal/cast/s0;

    .line 203
    .line 204
    const/16 v6, 0xe8

    .line 205
    .line 206
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 207
    .line 208
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 209
    .line 210
    .line 211
    iput-boolean v0, v4, Lcom/google/android/gms/internal/cast/a0;->i:Z

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/t;->c()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/t;->c:LX3/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/t;->d:Lcom/google/android/gms/internal/cast/s;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 19
    .line 20
    return-void
.end method
