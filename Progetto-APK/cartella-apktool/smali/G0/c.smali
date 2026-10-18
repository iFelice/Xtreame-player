.class public final LG0/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:LG0/d;


# direct methods
.method public constructor <init>(LG0/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG0/c;->a:LG0/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/util/Pair;

    .line 4
    .line 5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    iget-object v4, p0, LG0/c;->a:LG0/d;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x1

    .line 17
    if-eq p1, v6, :cond_7

    .line 18
    .line 19
    if-eq p1, v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object p1, v4, LG0/d;->x:LG0/u;

    .line 24
    .line 25
    if-ne v1, p1, :cond_b

    .line 26
    .line 27
    invoke-virtual {v4}, LG0/d;->i()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    iput-object v3, v4, LG0/d;->x:LG0/u;

    .line 36
    .line 37
    instance-of p1, v0, Ljava/lang/Exception;

    .line 38
    .line 39
    if-nez p1, :cond_6

    .line 40
    .line 41
    instance-of p1, v0, Ljava/lang/NoSuchMethodError;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :try_start_0
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    iget-object v1, v4, LG0/d;->b:LG0/w;

    .line 50
    .line 51
    iget v2, v4, LG0/d;->e:I

    .line 52
    .line 53
    if-ne v2, p1, :cond_3

    .line 54
    .line 55
    :try_start_1
    iget-object p1, v4, LG0/d;->w:[B

    .line 56
    .line 57
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v1, p1, v0}, LG0/w;->j([B[B)[B

    .line 60
    .line 61
    .line 62
    new-instance p1, LN/i;

    .line 63
    .line 64
    const/16 v0, 0xa

    .line 65
    .line 66
    invoke-direct {p1, v0}, LN/i;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, LG0/d;->g(Lp0/j;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object p1, v4, LG0/d;->v:[B

    .line 79
    .line 80
    invoke-interface {v1, p1, v0}, LG0/w;->j([B[B)[B

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eq v2, v5, :cond_4

    .line 85
    .line 86
    if-nez v2, :cond_5

    .line 87
    .line 88
    iget-object v0, v4, LG0/d;->w:[B

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    :cond_4
    if-eqz p1, :cond_5

    .line 93
    .line 94
    array-length v0, p1

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    iput-object p1, v4, LG0/d;->w:[B

    .line 98
    .line 99
    :cond_5
    const/4 p1, 0x4

    .line 100
    iput p1, v4, LG0/d;->p:I

    .line 101
    .line 102
    new-instance p1, LN/i;

    .line 103
    .line 104
    const/16 v0, 0xb

    .line 105
    .line 106
    invoke-direct {p1, v0}, LN/i;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p1}, LG0/d;->g(Lp0/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_0
    invoke-virtual {v4, v6, p1}, LG0/d;->k(ZLjava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    :goto_1
    check-cast v0, Ljava/lang/Throwable;

    .line 118
    .line 119
    invoke-virtual {v4, v2, v0}, LG0/d;->k(ZLjava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object p1, v4, LG0/d;->y:LG0/v;

    .line 124
    .line 125
    if-ne v1, p1, :cond_b

    .line 126
    .line 127
    iget p1, v4, LG0/d;->p:I

    .line 128
    .line 129
    if-eq p1, v5, :cond_8

    .line 130
    .line 131
    invoke-virtual {v4}, LG0/d;->i()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_8

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    iput-object v3, v4, LG0/d;->y:LG0/v;

    .line 139
    .line 140
    instance-of p1, v0, Ljava/lang/Exception;

    .line 141
    .line 142
    iget-object v1, v4, LG0/d;->c:Lm2/u;

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    check-cast v0, Ljava/lang/Exception;

    .line 147
    .line 148
    invoke-virtual {v1, v0, v2}, Lm2/u;->L(Ljava/lang/Exception;Z)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    :try_start_2
    iget-object p1, v4, LG0/d;->b:LG0/w;

    .line 153
    .line 154
    check-cast v0, [B

    .line 155
    .line 156
    invoke-interface {p1, v0}, LG0/w;->k([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    .line 158
    .line 159
    iput-object v3, v1, Lm2/u;->I:Ljava/lang/Object;

    .line 160
    .line 161
    iget-object p1, v1, Lm2/u;->H:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Ljava/util/Set;

    .line 164
    .line 165
    invoke-static {p1}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, v1, Lm2/u;->H:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Ljava/util/Set;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v2}, Lz4/H;->v(I)Lz4/F;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lz4/a;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_b

    .line 185
    .line 186
    invoke-virtual {p1}, Lz4/a;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, LG0/d;

    .line 191
    .line 192
    invoke-virtual {v0}, LG0/d;->l()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_a

    .line 197
    .line 198
    invoke-virtual {v0, v6}, LG0/d;->h(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catch_2
    move-exception p1

    .line 203
    invoke-virtual {v1, p1, v6}, Lm2/u;->L(Ljava/lang/Exception;Z)V

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_3
    return-void
.end method
