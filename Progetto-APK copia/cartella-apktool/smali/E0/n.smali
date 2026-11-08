.class public final LE0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, LE0/n;->a:I

    .line 39
    iput-wide p1, p0, LE0/n;->b:J

    .line 40
    iput-object p3, p0, LE0/n;->e:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, LE0/n;->f:Ljava/lang/Object;

    .line 42
    iput-wide p6, p0, LE0/n;->c:J

    .line 43
    iput-object p5, p0, LE0/n;->d:Ljava/lang/Object;

    .line 44
    iput-object p8, p0, LE0/n;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LE0/n;->a:I

    .line 3
    invoke-static {p3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 4
    invoke-static {p4}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    iput-object p3, p0, LE0/n;->d:Ljava/lang/Object;

    iput-object p4, p0, LE0/n;->e:Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-ne v0, p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, LE0/n;->f:Ljava/lang/Object;

    iput-wide p5, p0, LE0/n;->b:J

    iput-wide p7, p0, LE0/n;->c:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    .line 6
    iget-object p2, p1, Lc4/l0;->O:Lc4/T;

    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 7
    invoke-static {p3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId"

    .line 8
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    invoke-virtual {p2, p3, p4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    .line 10
    invoke-direct {p2, p9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 12
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_2

    .line 14
    iget-object p4, p1, Lc4/l0;->O:Lc4/T;

    invoke-static {p4}, Lc4/l0;->k(Lc4/s0;)V

    .line 15
    const-string p5, "Param name can\'t be null"

    iget-object p4, p4, Lc4/T;->L:Lc4/Q;

    invoke-virtual {p4, p5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p5, p1, Lc4/l0;->R:Lc4/I1;

    invoke-static {p5}, Lc4/l0;->i(Lc4/s0;)V

    .line 18
    invoke-virtual {p2, p4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6, p4}, Lc4/I1;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    if-nez p5, :cond_3

    .line 19
    iget-object p5, p1, Lc4/l0;->O:Lc4/T;

    invoke-static {p5}, Lc4/l0;->k(Lc4/s0;)V

    .line 20
    iget-object p6, p1, Lc4/l0;->S:Lc4/O;

    invoke-virtual {p6, p4}, Lc4/O;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p6, "Param value can\'t be null"

    .line 21
    iget-object p5, p5, Lc4/T;->O:Lc4/Q;

    invoke-virtual {p5, p4, p6}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 23
    :cond_3
    iget-object p6, p1, Lc4/l0;->R:Lc4/I1;

    invoke-static {p6}, Lc4/l0;->i(Lc4/s0;)V

    .line 24
    invoke-virtual {p6, p2, p4, p5}, Lc4/I1;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_4
    new-instance p1, Lc4/t;

    invoke-direct {p1, p2}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 26
    :cond_5
    new-instance p1, Lc4/t;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p1, p2}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 27
    :goto_1
    iput-object p1, p0, LE0/n;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc4/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLc4/t;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, LE0/n;->a:I

    .line 30
    invoke-static {p3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 31
    invoke-static {p4}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 32
    invoke-static {p9}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    iput-object p3, p0, LE0/n;->d:Ljava/lang/Object;

    iput-object p4, p0, LE0/n;->e:Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, LE0/n;->f:Ljava/lang/Object;

    iput-wide p5, p0, LE0/n;->b:J

    iput-wide p7, p0, LE0/n;->c:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1

    cmp-long p2, p7, p5

    if-lez p2, :cond_1

    .line 34
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 35
    invoke-static {p3}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    move-result-object p2

    invoke-static {p4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    move-result-object p3

    const-string p4, "Event created with reverse previous/current timestamps. appId, name"

    .line 36
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    invoke-virtual {p1, p2, p3, p4}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p9, p0, LE0/n;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JLF0/m;)LE0/n;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, LE0/n;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LF0/m;

    .line 8
    .line 9
    invoke-virtual {v1}, LF0/m;->l()LE0/k;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    invoke-virtual/range {p3 .. p3}, LF0/m;->l()LE0/k;

    .line 14
    .line 15
    .line 16
    move-result-object v10

    .line 17
    iget-object v1, v0, LE0/n;->d:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v4, v0, LE0/n;->f:Ljava/lang/Object;

    .line 20
    .line 21
    if-nez v9, :cond_0

    .line 22
    .line 23
    new-instance v10, LE0/n;

    .line 24
    .line 25
    move-object v5, v4

    .line 26
    check-cast v5, LF0/b;

    .line 27
    .line 28
    move-object v6, v1

    .line 29
    check-cast v6, LP0/i;

    .line 30
    .line 31
    iget-wide v7, v0, LE0/n;->c:J

    .line 32
    .line 33
    move-object v1, v10

    .line 34
    move-wide/from16 v2, p1

    .line 35
    .line 36
    move-object/from16 v4, p3

    .line 37
    .line 38
    invoke-direct/range {v1 .. v9}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 39
    .line 40
    .line 41
    return-object v10

    .line 42
    :cond_0
    invoke-interface {v9}, LE0/k;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    new-instance v11, LE0/n;

    .line 49
    .line 50
    move-object v5, v4

    .line 51
    check-cast v5, LF0/b;

    .line 52
    .line 53
    move-object v6, v1

    .line 54
    check-cast v6, LP0/i;

    .line 55
    .line 56
    iget-wide v7, v0, LE0/n;->c:J

    .line 57
    .line 58
    move-object v1, v11

    .line 59
    move-wide/from16 v2, p1

    .line 60
    .line 61
    move-object/from16 v4, p3

    .line 62
    .line 63
    move-object v9, v10

    .line 64
    invoke-direct/range {v1 .. v9}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 65
    .line 66
    .line 67
    return-object v11

    .line 68
    :cond_1
    invoke-interface {v9, v2, v3}, LE0/k;->i(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    const-wide/16 v7, 0x0

    .line 73
    .line 74
    cmp-long v11, v5, v7

    .line 75
    .line 76
    if-nez v11, :cond_2

    .line 77
    .line 78
    new-instance v11, LE0/n;

    .line 79
    .line 80
    move-object v5, v4

    .line 81
    check-cast v5, LF0/b;

    .line 82
    .line 83
    move-object v6, v1

    .line 84
    check-cast v6, LP0/i;

    .line 85
    .line 86
    iget-wide v7, v0, LE0/n;->c:J

    .line 87
    .line 88
    move-object v1, v11

    .line 89
    move-wide/from16 v2, p1

    .line 90
    .line 91
    move-object/from16 v4, p3

    .line 92
    .line 93
    move-object v9, v10

    .line 94
    invoke-direct/range {v1 .. v9}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 95
    .line 96
    .line 97
    return-object v11

    .line 98
    :cond_2
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v9}, LE0/k;->h()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-interface {v9, v7, v8}, LE0/k;->a(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    add-long/2addr v5, v7

    .line 110
    const-wide/16 v13, 0x1

    .line 111
    .line 112
    sub-long v13, v5, v13

    .line 113
    .line 114
    invoke-interface {v9, v13, v14}, LE0/k;->a(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v15

    .line 118
    invoke-interface {v9, v13, v14, v2, v3}, LE0/k;->b(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v13

    .line 122
    add-long/2addr v13, v15

    .line 123
    move-wide v15, v7

    .line 124
    invoke-interface {v10}, LE0/k;->h()J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    move-object v3, v1

    .line 129
    invoke-interface {v10, v7, v8}, LE0/k;->a(J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    move-object/from16 v18, v3

    .line 134
    .line 135
    move-object/from16 v17, v4

    .line 136
    .line 137
    iget-wide v3, v0, LE0/n;->c:J

    .line 138
    .line 139
    cmp-long v19, v13, v1

    .line 140
    .line 141
    if-nez v19, :cond_3

    .line 142
    .line 143
    sub-long/2addr v5, v7

    .line 144
    add-long/2addr v5, v3

    .line 145
    move-wide v7, v5

    .line 146
    move-wide/from16 v5, p1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    if-ltz v19, :cond_5

    .line 150
    .line 151
    cmp-long v5, v1, v11

    .line 152
    .line 153
    if-gez v5, :cond_4

    .line 154
    .line 155
    move-wide/from16 v5, p1

    .line 156
    .line 157
    invoke-interface {v10, v11, v12, v5, v6}, LE0/k;->f(JJ)J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    sub-long/2addr v1, v15

    .line 162
    sub-long/2addr v3, v1

    .line 163
    move-wide v7, v3

    .line 164
    goto :goto_0

    .line 165
    :cond_4
    move-wide/from16 v5, p1

    .line 166
    .line 167
    invoke-interface {v9, v1, v2, v5, v6}, LE0/k;->f(JJ)J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    sub-long/2addr v1, v7

    .line 172
    add-long/2addr v1, v3

    .line 173
    move-wide v7, v1

    .line 174
    :goto_0
    new-instance v11, LE0/n;

    .line 175
    .line 176
    move-object/from16 v9, v17

    .line 177
    .line 178
    check-cast v9, LF0/b;

    .line 179
    .line 180
    move-object/from16 v12, v18

    .line 181
    .line 182
    check-cast v12, LP0/i;

    .line 183
    .line 184
    move-object v1, v11

    .line 185
    move-wide/from16 v2, p1

    .line 186
    .line 187
    move-object/from16 v4, p3

    .line 188
    .line 189
    move-object v5, v9

    .line 190
    move-object v6, v12

    .line 191
    move-object v9, v10

    .line 192
    invoke-direct/range {v1 .. v9}, LE0/n;-><init>(JLF0/m;LF0/b;LP0/i;JLE0/k;)V

    .line 193
    .line 194
    .line 195
    return-object v11

    .line 196
    :cond_5
    new-instance v1, LO0/b;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw v1
.end method

.method public final b(J)J
    .locals 3

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, LE0/n;->b:J

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, p1, p2}, LE0/k;->c(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iget-wide v0, p0, LE0/n;->c:J

    .line 15
    .line 16
    add-long/2addr p1, v0

    .line 17
    return-wide p1
.end method

.method public final c(J)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, LE0/n;->b(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, LE0/n;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LE0/k;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, LE0/n;->b:J

    .line 13
    .line 14
    invoke-interface {v2, v3, v4, p1, p2}, LE0/k;->j(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    add-long/2addr p1, v0

    .line 19
    const-wide/16 v0, 0x1

    .line 20
    .line 21
    sub-long/2addr p1, v0

    .line 22
    return-wide p1
.end method

.method public final d()J
    .locals 3

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, LE0/n;->b:J

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, LE0/k;->i(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final e(J)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, LE0/n;->f(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, LE0/n;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, LE0/k;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, LE0/n;->c:J

    .line 13
    .line 14
    sub-long/2addr p1, v3

    .line 15
    iget-wide v3, p0, LE0/n;->b:J

    .line 16
    .line 17
    invoke-interface {v2, p1, p2, v3, v4}, LE0/k;->b(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    add-long/2addr p1, v0

    .line 22
    return-wide p1
.end method

.method public final f(J)J
    .locals 3

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, LE0/n;->c:J

    .line 9
    .line 10
    sub-long/2addr p1, v1

    .line 11
    invoke-interface {v0, p1, p2}, LE0/k;->a(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public final g(J)LF0/j;
    .locals 3

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, LE0/n;->c:J

    .line 9
    .line 10
    sub-long/2addr p1, v1

    .line 11
    invoke-interface {v0, p1, p2}, LE0/k;->e(J)LF0/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final h(JJ)Z
    .locals 4

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LE0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, LE0/k;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v0, p3, v2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, LE0/n;->e(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    cmp-long v0, p1, p3

    .line 30
    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :cond_2
    :goto_0
    return v1
.end method

.method public final i(Lc4/l0;J)LE0/n;
    .locals 11

    .line 1
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v10, v0

    .line 4
    check-cast v10, Lc4/t;

    .line 5
    .line 6
    iget-object v0, p0, LE0/n;->f:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, LE0/n;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, LE0/n;->e:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v5, v0

    .line 19
    check-cast v5, Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, LE0/n;

    .line 22
    .line 23
    iget-wide v6, p0, LE0/n;->b:J

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move-object v2, p1

    .line 27
    move-wide v8, p2

    .line 28
    invoke-direct/range {v1 .. v10}, LE0/n;-><init>(Lc4/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLc4/t;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, LE0/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, LE0/n;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lc4/t;

    .line 14
    .line 15
    iget-object v0, v0, Lc4/t;->G:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Event{appId=\'"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, LE0/n;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "\', name=\'"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, LE0/n;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "\', params="

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, "}"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
