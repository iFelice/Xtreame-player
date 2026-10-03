.class public final synthetic LO0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/z;


# instance fields
.field public final synthetic a:LO0/h;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LO0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/e;->a:LO0/h;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, LO0/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lm0/f0;)V
    .locals 12

    .line 1
    iget-object v0, p0, LO0/e;->a:LO0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v6, v0

    .line 7
    check-cast v6, LO0/t;

    .line 8
    .line 9
    iget-object v0, p0, LO0/e;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Void;

    .line 12
    .line 13
    iget-boolean v0, v6, LO0/t;->r:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, v6, LO0/t;->o:LO0/r;

    .line 18
    .line 19
    new-instance v1, LO0/r;

    .line 20
    .line 21
    iget-object v2, v0, LO0/r;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, v0, LO0/r;->d:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {v1, p1, v2, v0}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v6, LO0/t;->o:LO0/r;

    .line 29
    .line 30
    iget-object v0, v6, LO0/t;->p:LO0/q;

    .line 31
    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget-wide v0, v0, LO0/q;->M:J

    .line 35
    .line 36
    invoke-virtual {v6, v0, v1}, LO0/t;->v(J)Z

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Lm0/f0;->q()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-boolean v0, v6, LO0/t;->s:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v6, LO0/t;->o:LO0/r;

    .line 52
    .line 53
    new-instance v1, LO0/r;

    .line 54
    .line 55
    iget-object v2, v0, LO0/r;->c:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v0, v0, LO0/r;->d:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-direct {v1, p1, v2, v0}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lm0/e0;->q:Ljava/lang/Object;

    .line 64
    .line 65
    sget-object v1, LO0/r;->e:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v2, LO0/r;

    .line 68
    .line 69
    invoke-direct {v2, p1, v0, v1}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v1, v2

    .line 73
    :goto_0
    iput-object v1, v6, LO0/t;->o:LO0/r;

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 78
    iget-object v1, v6, LO0/t;->m:Lm0/e0;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lm0/f0;->o(ILm0/e0;)V

    .line 81
    .line 82
    .line 83
    iget-wide v2, v1, Lm0/e0;->l:J

    .line 84
    .line 85
    iget-object v7, v1, Lm0/e0;->a:Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v4, v6, LO0/t;->p:LO0/q;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    iget-object v5, v6, LO0/t;->o:LO0/r;

    .line 92
    .line 93
    iget-object v8, v4, LO0/q;->G:LO0/y;

    .line 94
    .line 95
    iget-object v8, v8, LO0/y;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v9, v6, LO0/t;->n:Lm0/d0;

    .line 98
    .line 99
    invoke-virtual {v5, v8, v9}, LO0/n;->h(Ljava/lang/Object;Lm0/d0;)Lm0/d0;

    .line 100
    .line 101
    .line 102
    iget-wide v8, v9, Lm0/d0;->e:J

    .line 103
    .line 104
    iget-wide v4, v4, LO0/q;->H:J

    .line 105
    .line 106
    add-long/2addr v8, v4

    .line 107
    iget-object v4, v6, LO0/t;->o:LO0/r;

    .line 108
    .line 109
    const-wide/16 v10, 0x0

    .line 110
    .line 111
    invoke-virtual {v4, v0, v1, v10, v11}, LO0/r;->n(ILm0/e0;J)Lm0/e0;

    .line 112
    .line 113
    .line 114
    iget-wide v0, v1, Lm0/e0;->l:J

    .line 115
    .line 116
    cmp-long v4, v8, v0

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    move-wide v4, v8

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move-wide v4, v2

    .line 123
    :goto_1
    iget-object v1, v6, LO0/t;->m:Lm0/e0;

    .line 124
    .line 125
    iget-object v2, v6, LO0/t;->n:Lm0/d0;

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    move-object v0, p1

    .line 129
    invoke-virtual/range {v0 .. v5}, Lm0/f0;->j(Lm0/e0;Lm0/d0;IJ)Landroid/util/Pair;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 134
    .line 135
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Ljava/lang/Long;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    iget-boolean v0, v6, LO0/t;->s:Z

    .line 144
    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    iget-object v0, v6, LO0/t;->o:LO0/r;

    .line 148
    .line 149
    new-instance v1, LO0/r;

    .line 150
    .line 151
    iget-object v4, v0, LO0/r;->c:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v0, v0, LO0/r;->d:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-direct {v1, p1, v4, v0}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    new-instance v0, LO0/r;

    .line 160
    .line 161
    invoke-direct {v0, p1, v7, v1}, LO0/r;-><init>(Lm0/f0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    move-object v1, v0

    .line 165
    :goto_2
    iput-object v1, v6, LO0/t;->o:LO0/r;

    .line 166
    .line 167
    iget-object v0, v6, LO0/t;->p:LO0/q;

    .line 168
    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    invoke-virtual {v6, v2, v3}, LO0/t;->v(J)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    iget-object v0, v0, LO0/q;->G:LO0/y;

    .line 178
    .line 179
    iget-object v1, v0, LO0/y;->a:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object v2, v6, LO0/t;->o:LO0/r;

    .line 182
    .line 183
    iget-object v2, v2, LO0/r;->d:Ljava/lang/Object;

    .line 184
    .line 185
    if-eqz v2, :cond_5

    .line 186
    .line 187
    sget-object v2, LO0/r;->e:Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    iget-object v1, v6, LO0/t;->o:LO0/r;

    .line 196
    .line 197
    iget-object v1, v1, LO0/r;->d:Ljava/lang/Object;

    .line 198
    .line 199
    :cond_5
    invoke-virtual {v0, v1}, LO0/y;->a(Ljava/lang/Object;)LO0/y;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    goto :goto_4

    .line 204
    :cond_6
    :goto_3
    const/4 v0, 0x0

    .line 205
    :goto_4
    const/4 v1, 0x1

    .line 206
    iput-boolean v1, v6, LO0/t;->s:Z

    .line 207
    .line 208
    iput-boolean v1, v6, LO0/t;->r:Z

    .line 209
    .line 210
    iget-object v1, v6, LO0/t;->o:LO0/r;

    .line 211
    .line 212
    invoke-virtual {v6, v1}, LO0/a;->m(Lm0/f0;)V

    .line 213
    .line 214
    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    iget-object v1, v6, LO0/t;->p:LO0/q;

    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v0}, LO0/q;->b(LO0/y;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    return-void
.end method
