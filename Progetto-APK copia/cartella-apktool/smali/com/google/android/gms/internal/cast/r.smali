.class public final synthetic Lcom/google/android/gms/internal/cast/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/f;
.implements Lg4/e;
.implements LD3/h;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/cast/t;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/t;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(LD3/f;)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic e(LD3/f;Z)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic f(LD3/f;I)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic g(LD3/f;I)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic h(LD3/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final bridge synthetic j(LD3/f;I)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final l(LD3/f;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    check-cast p1, LD3/c;

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    .line 8
    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v3, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v2, v3, p2

    .line 18
    .line 19
    const-string v2, "onSessionStarted with transferType = %d"

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/t;->a:LD3/b;

    .line 25
    .line 26
    iget-boolean v2, v2, LD3/b;->T:Z

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    iget v2, v1, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v2, v3, :cond_4

    .line 34
    .line 35
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v0, "skip restoring session state due to null SessionState"

    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/t;->a()LE3/j;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    new-array p2, p2, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v0, "skip restoring session state due to null RemoteMediaClient"

    .line 56
    .line 57
    invoke-virtual {p1, v0, p2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-array v3, p2, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v4, "resume SessionState to current session"

    .line 64
    .line 65
    invoke-virtual {p1, v4, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p1, LC3/s;->G:LC3/k;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    new-array p2, p2, [Ljava/lang/Object;

    .line 78
    .line 79
    sget-object v3, LE3/j;->k:LH3/b;

    .line 80
    .line 81
    const-string v4, "resume SessionState"

    .line 82
    .line 83
    invoke-virtual {v3, v4, p2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "Must be called from the main thread."

    .line 87
    .line 88
    invoke-static {p2}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, LE3/j;->t()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_3

    .line 96
    .line 97
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance p2, LE3/m;

    .line 102
    .line 103
    invoke-direct {p2, v2, p1, v0}, LE3/m;-><init>(LE3/j;Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2}, LE3/j;->u(LE3/r;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/t;->c()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final bridge synthetic o(LD3/f;)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 10
    .line 11
    iget-object v3, v2, LH3/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v4, "Fail to store SessionState"

    .line 14
    .line 15
    invoke-virtual {v2, v4, v1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v3, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x64

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/t;->b(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LC3/s;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/t;->g:Lt/i;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lt/i;->a(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final q(LD3/f;I)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    check-cast p1, LD3/c;

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-array v3, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p2, v3, v2

    .line 15
    .line 16
    const-string p2, "onSessionEnded with error = %d"

    .line 17
    .line 18
    invoke-virtual {p1, p2, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/r;->G:Lcom/google/android/gms/internal/cast/t;

    .line 22
    .line 23
    iget v3, p2, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    new-array v1, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "No need to notify transferred if the transfer type is unknown"

    .line 30
    .line 31
    invoke-virtual {p1, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object v4, p2, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    new-array v1, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v2, "No need to notify with null sessionState"

    .line 43
    .line 44
    invoke-virtual {p1, v2, v1}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p2, Lcom/google/android/gms/internal/cast/t;->h:LC3/s;

    .line 54
    .line 55
    new-array v5, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, v5, v2

    .line 58
    .line 59
    aput-object v4, v5, v1

    .line 60
    .line 61
    const-string v3, "notify transferred with type = %d, sessionState = %s"

    .line 62
    .line 63
    invoke-virtual {p1, v3, v5}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/util/HashSet;

    .line 67
    .line 68
    iget-object v3, p2, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 69
    .line 70
    invoke-direct {p1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, LD3/i;

    .line 88
    .line 89
    iget v4, p2, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 90
    .line 91
    check-cast v3, Lcom/google/android/gms/internal/cast/Y;

    .line 92
    .line 93
    iget v5, v3, Lcom/google/android/gms/internal/cast/Y;->a:I

    .line 94
    .line 95
    packed-switch v5, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_0
    sget-object v5, Lcom/google/android/gms/internal/cast/a0;->j:LH3/b;

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-array v7, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v6, v7, v2

    .line 108
    .line 109
    const-string v6, "onTransferred with type = %d"

    .line 110
    .line 111
    invoke-virtual {v5, v6, v7}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, Lcom/google/android/gms/internal/cast/Y;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Lcom/google/android/gms/internal/cast/a0;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a0;->c()V

    .line 119
    .line 120
    .line 121
    iget-object v5, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 122
    .line 123
    iget-object v6, v3, Lcom/google/android/gms/internal/cast/a0;->c:Lcom/google/android/gms/internal/cast/c0;

    .line 124
    .line 125
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/cast/c0;->b(Lcom/google/android/gms/internal/cast/b0;)Lcom/google/android/gms/internal/cast/r0;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/r0;->e()Lcom/google/android/gms/internal/cast/n0;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v6}, Lcom/google/android/gms/internal/cast/n0;->m(Lcom/google/android/gms/internal/cast/n0;)Lcom/google/android/gms/internal/cast/m0;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 138
    .line 139
    .line 140
    iget-object v7, v6, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 141
    .line 142
    check-cast v7, Lcom/google/android/gms/internal/cast/n0;

    .line 143
    .line 144
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/cast/n0;->v(Lcom/google/android/gms/internal/cast/n0;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/google/android/gms/internal/cast/n0;

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/cast/r0;->f(Lcom/google/android/gms/internal/cast/n0;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Lcom/google/android/gms/internal/cast/s0;

    .line 161
    .line 162
    const/16 v5, 0xe7

    .line 163
    .line 164
    iget-object v6, v3, Lcom/google/android/gms/internal/cast/a0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 165
    .line 166
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/cast/N;->a(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 167
    .line 168
    .line 169
    iput-boolean v2, v3, Lcom/google/android/gms/internal/cast/a0;->i:Z

    .line 170
    .line 171
    const/4 v4, 0x0

    .line 172
    iput-object v4, v3, Lcom/google/android/gms/internal/cast/a0;->g:Lcom/google/android/gms/internal/cast/b0;

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_2
    :goto_1
    iget p1, p2, Lcom/google/android/gms/internal/cast/t;->e:I

    .line 176
    .line 177
    if-ne p1, v0, :cond_3

    .line 178
    .line 179
    return-void

    .line 180
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/t;->c()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
