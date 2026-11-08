.class public final LD0/V;
.super LK0/r;
.source "SourceFile"

# interfaces
.implements LB0/e0;


# instance fields
.field public final W0:Landroid/content/Context;

.field public final X0:LD0/n;

.field public final Y0:LD0/v;

.field public final Z0:LK0/i;

.field public a1:I

.field public b1:Z

.field public c1:Z

.field public d1:Lm0/t;

.field public e1:Lm0/t;

.field public f1:J

.field public g1:Z

.field public h1:Z

.field public i1:Z

.field public j1:I

.field public k1:Z

.field public l1:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp0/C;LC0/g;Landroid/os/Handler;LB0/L;LD0/S;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LK0/i;

    .line 8
    .line 9
    invoke-direct {v0}, LK0/i;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    const v6, 0x472c4400    # 44100.0f

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    invoke-direct/range {v1 .. v6}, LK0/r;-><init>(ILK0/k;LK0/s;ZF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, LD0/V;->W0:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p6, p0, LD0/V;->Y0:LD0/v;

    .line 32
    .line 33
    iput-object v0, p0, LD0/V;->Z0:LK0/i;

    .line 34
    .line 35
    const/16 p1, -0x3e8

    .line 36
    .line 37
    iput p1, p0, LD0/V;->j1:I

    .line 38
    .line 39
    new-instance p1, LD0/n;

    .line 40
    .line 41
    invoke-direct {p1, p4, p5}, LD0/n;-><init>(Landroid/os/Handler;LD0/o;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, LD0/V;->X0:LD0/n;

    .line 45
    .line 46
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    iput-wide p1, p0, LD0/V;->l1:J

    .line 52
    .line 53
    new-instance p1, LD0/U;

    .line 54
    .line 55
    invoke-direct {p1, p0}, LD0/U;-><init>(LD0/V;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p6, LD0/S;->u:LD0/s;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, LD0/S;->O:Z

    .line 7
    .line 8
    return-void
.end method

.method public final F(JJLK0/l;Ljava/nio/ByteBuffer;IIIJZZLm0/t;)Z
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, LD0/V;->l1:J

    .line 10
    .line 11
    iget-object p1, p0, LD0/V;->e1:Lm0/t;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    and-int/lit8 p1, p8, 0x2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p7}, LK0/l;->f(I)V

    .line 24
    .line 25
    .line 26
    return p2

    .line 27
    :cond_0
    iget-object p1, p0, LD0/V;->Y0:LD0/v;

    .line 28
    .line 29
    if-eqz p12, :cond_2

    .line 30
    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-interface {p5, p7}, LK0/l;->f(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p3, p0, LK0/r;->N0:LB0/i;

    .line 37
    .line 38
    iget p4, p3, LB0/i;->f:I

    .line 39
    .line 40
    add-int/2addr p4, p9

    .line 41
    iput p4, p3, LB0/i;->f:I

    .line 42
    .line 43
    check-cast p1, LD0/S;

    .line 44
    .line 45
    iput-boolean p2, p1, LD0/S;->O:Z

    .line 46
    .line 47
    return p2

    .line 48
    :cond_2
    :try_start_0
    check-cast p1, LD0/S;

    .line 49
    .line 50
    invoke-virtual {p1, p10, p11, p9, p6}, LD0/S;->n(JILjava/nio/ByteBuffer;)Z

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_0
    .catch LD0/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch LD0/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    if-eqz p5, :cond_3

    .line 57
    .line 58
    invoke-interface {p5, p7}, LK0/l;->f(I)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, LK0/r;->N0:LB0/i;

    .line 62
    .line 63
    iget p3, p1, LB0/i;->e:I

    .line 64
    .line 65
    add-int/2addr p3, p9

    .line 66
    iput p3, p1, LB0/i;->e:I

    .line 67
    .line 68
    return p2

    .line 69
    :cond_4
    iput-wide p10, p0, LD0/V;->l1:J

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return p1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_0

    .line 75
    :catch_1
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :goto_0
    iget-boolean p2, p0, LK0/r;->w0:Z

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget p2, p2, LB0/E0;->a:I

    .line 86
    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    const/16 p2, 0x138b

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const/16 p2, 0x138a

    .line 93
    .line 94
    :goto_1
    iget-boolean p3, p1, LD0/u;->H:Z

    .line 95
    .line 96
    invoke-virtual {p0, p1, p14, p3, p2}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :goto_2
    iget-object p2, p0, LD0/V;->d1:Lm0/t;

    .line 102
    .line 103
    iget-boolean p3, p0, LK0/r;->w0:Z

    .line 104
    .line 105
    if-eqz p3, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iget p3, p3, LB0/E0;->a:I

    .line 112
    .line 113
    if-eqz p3, :cond_6

    .line 114
    .line 115
    const/16 p3, 0x138c

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    const/16 p3, 0x1389

    .line 119
    .line 120
    :goto_3
    iget-boolean p4, p1, LD0/r;->H:Z

    .line 121
    .line 122
    invoke-virtual {p0, p1, p2, p4, p3}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    throw p1
.end method

.method public final I()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/S;->w()V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, LK0/r;->H0:J

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iput-wide v0, p0, LD0/V;->l1:J
    :try_end_0
    .catch LD0/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 25
    :goto_1
    iget-boolean v1, p0, LK0/r;->w0:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x138b

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/16 v1, 0x138a

    .line 33
    .line 34
    :goto_2
    iget-object v2, v0, LD0/u;->I:Lm0/t;

    .line 35
    .line 36
    iget-boolean v3, v0, LD0/u;->H:Z

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2, v3, v1}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;ZI)LB0/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    throw v0
.end method

.method public final T(Lm0/t;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, LB0/E0;->a:I

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, LD0/V;->Y(Lm0/t;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit16 v1, v0, 0x200

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v1, v1, LB0/E0;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0x400

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget v0, p1, Lm0/t;->J:I

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget v0, p1, Lm0/t;->K:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 41
    .line 42
    check-cast v0, LD0/S;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, LD0/S;->G(Lm0/t;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final U(LK0/s;Lm0/t;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lm0/t;->o:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {v3, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v2, 0x1

    .line 20
    iget v4, v1, Lm0/t;->P:I

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v5, 0x0

    .line 27
    :goto_0
    const/4 v6, 0x2

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    if-ne v4, v6, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v4, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 36
    :goto_2
    const/16 v7, 0x20

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, "audio/raw"

    .line 40
    .line 41
    const/16 v10, 0x8

    .line 42
    .line 43
    const/4 v11, 0x4

    .line 44
    iget-object v12, v0, LD0/V;->Y0:LD0/v;

    .line 45
    .line 46
    if-eqz v4, :cond_6

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-static {v9, v3, v3}, LK0/z;->d(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eqz v13, :cond_4

    .line 59
    .line 60
    move-object v5, v8

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, LK0/o;

    .line 67
    .line 68
    :goto_3
    if-eqz v5, :cond_6

    .line 69
    .line 70
    :cond_5
    invoke-virtual {v0, v1}, LD0/V;->Y(Lm0/t;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    move-object v13, v12

    .line 75
    check-cast v13, LD0/S;

    .line 76
    .line 77
    invoke-virtual {v13, v1}, LD0/S;->G(Lm0/t;)Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    if-eqz v13, :cond_7

    .line 82
    .line 83
    invoke-static {v11, v10, v7, v5}, LA0/O;->o(IIII)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    return v1

    .line 88
    :cond_6
    const/4 v5, 0x0

    .line 89
    :cond_7
    iget-object v13, v1, Lm0/t;->o:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    if-eqz v14, :cond_8

    .line 96
    .line 97
    move-object v14, v12

    .line 98
    check-cast v14, LD0/S;

    .line 99
    .line 100
    invoke-virtual {v14, v1}, LD0/S;->G(Lm0/t;)Z

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-nez v14, :cond_8

    .line 105
    .line 106
    invoke-static {v2, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    return v1

    .line 111
    :cond_8
    iget v14, v1, Lm0/t;->G:I

    .line 112
    .line 113
    iget v15, v1, Lm0/t;->H:I

    .line 114
    .line 115
    invoke-static {v6, v14, v15}, Lp0/M;->B(III)Lm0/t;

    .line 116
    .line 117
    .line 118
    move-result-object v14

    .line 119
    check-cast v12, LD0/S;

    .line 120
    .line 121
    invoke-virtual {v12, v14}, LD0/S;->G(Lm0/t;)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-nez v14, :cond_9

    .line 126
    .line 127
    invoke-static {v2, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    return v1

    .line 132
    :cond_9
    if-nez v13, :cond_a

    .line 133
    .line 134
    sget-object v8, Lz4/d0;->K:Lz4/d0;

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_a
    invoke-virtual {v12, v1}, LD0/S;->G(Lm0/t;)Z

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    if-eqz v12, :cond_c

    .line 142
    .line 143
    invoke-static {v9, v3, v3}, LK0/z;->d(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-eqz v12, :cond_b

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, LK0/o;

    .line 159
    .line 160
    :goto_4
    if-eqz v8, :cond_c

    .line 161
    .line 162
    invoke-static {v8}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    goto :goto_5

    .line 167
    :cond_c
    move-object/from16 v8, p1

    .line 168
    .line 169
    invoke-static {v8, v1, v3, v3}, LK0/z;->f(LK0/s;Lm0/t;ZZ)Lz4/d0;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    :goto_5
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_d

    .line 178
    .line 179
    invoke-static {v2, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    return v1

    .line 184
    :cond_d
    if-nez v4, :cond_e

    .line 185
    .line 186
    invoke-static {v6, v3, v3, v3}, LA0/O;->o(IIII)I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    return v1

    .line 191
    :cond_e
    invoke-virtual {v8, v3}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, LK0/o;

    .line 196
    .line 197
    invoke-virtual {v4, v1}, LK0/o;->e(Lm0/t;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-nez v6, :cond_10

    .line 202
    .line 203
    const/4 v9, 0x1

    .line 204
    :goto_6
    iget v12, v8, Lz4/d0;->J:I

    .line 205
    .line 206
    if-ge v9, v12, :cond_10

    .line 207
    .line 208
    invoke-virtual {v8, v9}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    check-cast v12, LK0/o;

    .line 213
    .line 214
    invoke-virtual {v12, v1}, LK0/o;->e(Lm0/t;)Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eqz v13, :cond_f

    .line 219
    .line 220
    const/4 v4, 0x0

    .line 221
    goto :goto_7

    .line 222
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_10
    move-object v12, v4

    .line 226
    move v2, v6

    .line 227
    const/4 v4, 0x1

    .line 228
    :goto_7
    if-eqz v2, :cond_11

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_11
    const/4 v11, 0x3

    .line 232
    :goto_8
    if-eqz v2, :cond_12

    .line 233
    .line 234
    invoke-virtual {v12, v1}, LK0/o;->f(Lm0/t;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_12

    .line 239
    .line 240
    const/16 v10, 0x10

    .line 241
    .line 242
    :cond_12
    iget-boolean v1, v12, LK0/o;->g:Z

    .line 243
    .line 244
    if-eqz v1, :cond_13

    .line 245
    .line 246
    const/16 v1, 0x40

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_13
    const/4 v1, 0x0

    .line 250
    :goto_9
    if-eqz v4, :cond_14

    .line 251
    .line 252
    const/16 v3, 0x80

    .line 253
    .line 254
    :cond_14
    or-int v2, v11, v10

    .line 255
    .line 256
    or-int/2addr v2, v7

    .line 257
    or-int/2addr v1, v2

    .line 258
    or-int/2addr v1, v3

    .line 259
    or-int/2addr v1, v5

    .line 260
    return v1
.end method

.method public final Y(Lm0/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LD0/S;->j(Lm0/t;)LD0/h;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v0, p1, LD0/h;->a:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-boolean v0, p1, LD0/h;->b:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x600

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x200

    .line 23
    .line 24
    :goto_0
    iget-boolean p1, p1, LD0/h;->c:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    or-int/lit16 v0, v0, 0x800

    .line 29
    .line 30
    :cond_2
    return v0
.end method

.method public final Z(Lm0/t;LK0/o;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p2, p2, LK0/o;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ge p2, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, LD0/V;->W0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2}, Lp0/M;->P(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    iget p1, p1, Lm0/t;->p:I

    .line 32
    .line 33
    return p1
.end method

.method public final a0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LD0/V;->isEnded()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 5
    .line 6
    check-cast v0, LD0/S;

    .line 7
    .line 8
    invoke-virtual {v0}, LD0/S;->i()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-boolean v2, p0, LD0/V;->g1:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-wide v2, p0, LD0/V;->f1:J

    .line 24
    .line 25
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :goto_0
    iput-wide v0, p0, LD0/V;->f1:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, LD0/V;->g1:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final b(LK0/o;Lm0/t;Lm0/t;)LB0/j;
    .locals 10

    .line 1
    invoke-virtual {p1, p2, p3}, LK0/o;->b(Lm0/t;Lm0/t;)LB0/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LK0/r;->U:LG0/l;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3}, LD0/V;->T(Lm0/t;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v3, v0, LB0/j;->e:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const v1, 0x8000

    .line 24
    .line 25
    .line 26
    or-int/2addr v3, v1

    .line 27
    :cond_1
    invoke-virtual {p0, p3, p1}, LD0/V;->Z(Lm0/t;LK0/o;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v4, p0, LD0/V;->a1:I

    .line 32
    .line 33
    if-le v1, v4, :cond_2

    .line 34
    .line 35
    or-int/lit8 v3, v3, 0x40

    .line 36
    .line 37
    :cond_2
    move v9, v3

    .line 38
    new-instance v1, LB0/j;

    .line 39
    .line 40
    if-eqz v9, :cond_3

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget v2, v0, LB0/j;->d:I

    .line 45
    .line 46
    move v8, v2

    .line 47
    :goto_1
    iget-object v5, p1, LK0/o;->a:Ljava/lang/String;

    .line 48
    .line 49
    move-object v4, v1

    .line 50
    move-object v6, p2

    .line 51
    move-object v7, p3

    .line 52
    invoke-direct/range {v4 .. v9}, LB0/j;-><init>(Ljava/lang/String;Lm0/t;Lm0/t;II)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method

.method public final getMediaClock()LB0/e0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaybackParameters()Lm0/S;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    iget-object v0, v0, LD0/S;->F:Lm0/S;

    .line 6
    .line 7
    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LB0/h;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, LD0/V;->a0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, LD0/V;->f1:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, LD0/V;->Y0:LD0/v;

    .line 3
    .line 4
    if-eq p1, v0, :cond_9

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_8

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p1, v0, :cond_7

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    if-eq p1, v0, :cond_6

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/16 v2, 0x23

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x9

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0xb

    .line 31
    .line 32
    if-ne p1, v0, :cond_a

    .line 33
    .line 34
    check-cast p2, LB0/S;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, LK0/r;->V:LB0/S;

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    check-cast v1, LD0/S;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, LD0/S;->A(I)V

    .line 55
    .line 56
    .line 57
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    if-lt p2, v2, :cond_a

    .line 60
    .line 61
    iget-object p2, p0, LD0/V;->Z0:LK0/i;

    .line 62
    .line 63
    if-eqz p2, :cond_a

    .line 64
    .line 65
    invoke-virtual {p2, p1}, LK0/i;->d(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p2, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    check-cast v1, LD0/S;

    .line 80
    .line 81
    iput-boolean p1, v1, LD0/S;->G:Z

    .line 82
    .line 83
    invoke-virtual {v1}, LD0/S;->H()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    sget-object p1, Lm0/S;->d:Lm0/S;

    .line 90
    .line 91
    :goto_0
    move-object v3, p1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object p1, v1, LD0/S;->F:Lm0/S;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    new-instance p1, LD0/K;

    .line 97
    .line 98
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    move-object v2, p1

    .line 109
    invoke-direct/range {v2 .. v7}, LD0/K;-><init>(Lm0/S;JJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, LD0/S;->q()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_3

    .line 117
    .line 118
    iput-object p1, v1, LD0/S;->D:LD0/K;

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_3
    iput-object p1, v1, LD0/S;->E:LD0/K;

    .line 123
    .line 124
    goto/16 :goto_2

    .line 125
    .line 126
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    check-cast p2, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, p0, LD0/V;->j1:I

    .line 136
    .line 137
    iget-object p1, p0, LK0/r;->a0:LK0/l;

    .line 138
    .line 139
    if-nez p1, :cond_5

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    if-lt p2, v2, :cond_a

    .line 145
    .line 146
    new-instance p2, Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 149
    .line 150
    .line 151
    iget v0, p0, LD0/V;->j1:I

    .line 152
    .line 153
    neg-int v0, v0

    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const-string v1, "importance"

    .line 160
    .line 161
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, p2}, LK0/l;->d(Landroid/os/Bundle;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 169
    .line 170
    const/16 v0, 0x17

    .line 171
    .line 172
    if-lt p1, v0, :cond_a

    .line 173
    .line 174
    invoke-static {p2}, LB0/q;->g(Ljava/lang/Object;)Landroid/media/AudioDeviceInfo;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast v1, LD0/S;

    .line 179
    .line 180
    invoke-virtual {v1, p1}, LD0/S;->F(Landroid/media/AudioDeviceInfo;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    check-cast p2, Lm0/e;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    check-cast v1, LD0/S;

    .line 190
    .line 191
    invoke-virtual {v1, p2}, LD0/S;->C(Lm0/e;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_8
    check-cast p2, Lm0/d;

    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    check-cast v1, LD0/S;

    .line 201
    .line 202
    invoke-virtual {v1, p2}, LD0/S;->z(Lm0/d;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    check-cast p2, Ljava/lang/Float;

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    check-cast v1, LD0/S;

    .line 216
    .line 217
    iget p2, v1, LD0/S;->R:F

    .line 218
    .line 219
    cmpl-float p2, p2, p1

    .line 220
    .line 221
    if-eqz p2, :cond_a

    .line 222
    .line 223
    iput p1, v1, LD0/S;->R:F

    .line 224
    .line 225
    invoke-virtual {v1}, LD0/S;->q()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_a

    .line 230
    .line 231
    iget-object p1, v1, LD0/S;->y:Landroid/media/AudioTrack;

    .line 232
    .line 233
    iget p2, v1, LD0/S;->R:F

    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 236
    .line 237
    .line 238
    :cond_a
    :goto_2
    return-void
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LD0/V;->i1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, LD0/V;->i1:Z

    .line 5
    .line 6
    return v0
.end method

.method public final isEnded()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, LK0/r;->J0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 6
    .line 7
    check-cast v0, LD0/S;

    .line 8
    .line 9
    invoke-virtual {v0}, LD0/S;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, LD0/S;->V:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, LD0/S;->o()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/S;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0}, LK0/r;->isReady()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public final l(FLm0/t;[Lm0/t;)F
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    :goto_0
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    aget-object v3, p3, v1

    .line 8
    .line 9
    iget v3, v3, Lm0/t;->H:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v0, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    int-to-float p2, v2

    .line 26
    mul-float p1, p1, p2

    .line 27
    .line 28
    :goto_1
    return p1
.end method

.method public final m(LK0/s;Lm0/t;Z)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lz4/d0;->K:Lz4/d0;

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 10
    .line 11
    check-cast v0, LD0/S;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, LD0/S;->G(Lm0/t;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string v0, "audio/raw"

    .line 20
    .line 21
    invoke-static {v0, v1, v1}, LK0/z;->d(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, LK0/o;

    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p1, p2, p3, v1}, LK0/z;->f(LK0/s;Lm0/t;ZZ)Lz4/d0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    sget-object p3, LK0/z;->a:Ljava/util/HashMap;

    .line 51
    .line 52
    new-instance p3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, LB0/x;

    .line 58
    .line 59
    const/16 v0, 0x12

    .line 60
    .line 61
    invoke-direct {p1, p2, v0}, LB0/x;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    new-instance p2, LK0/t;

    .line 65
    .line 66
    invoke-direct {p2, p1, v1}, LK0/t;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    return-object p3
.end method

.method public final n(JJ)J
    .locals 8

    .line 1
    iget-wide v0, p0, LD0/V;->l1:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-boolean v1, p0, LD0/V;->k1:Z

    .line 16
    .line 17
    const-wide/16 v4, 0x2710

    .line 18
    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean p1, p0, LK0/r;->J0:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const-wide/32 v4, 0xf4240

    .line 28
    .line 29
    .line 30
    :cond_2
    return-wide v4

    .line 31
    :cond_3
    iget-object v1, p0, LD0/V;->Y0:LD0/v;

    .line 32
    .line 33
    check-cast v1, LD0/S;

    .line 34
    .line 35
    invoke-virtual {v1}, LD0/S;->h()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    cmp-long v0, v6, v2

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    iget-wide v0, p0, LD0/V;->l1:J

    .line 47
    .line 48
    sub-long/2addr v0, p1

    .line 49
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    long-to-float p1, p1

    .line 54
    invoke-virtual {p0}, LD0/V;->getPlaybackParameters()Lm0/S;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, LD0/V;->getPlaybackParameters()Lm0/S;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget p2, p2, Lm0/S;->a:F

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    .line 69
    :goto_1
    div-float/2addr p1, p2

    .line 70
    const/high16 p2, 0x40000000    # 2.0f

    .line 71
    .line 72
    div-float/2addr p1, p2

    .line 73
    float-to-long p1, p1

    .line 74
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lp0/G;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {v0, v1}, Lp0/M;->R(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    sub-long/2addr v0, p3

    .line 92
    sub-long/2addr p1, v0

    .line 93
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    return-wide p1

    .line 98
    :cond_6
    :goto_2
    return-wide v4
.end method

.method public final o(LK0/o;Lm0/t;Landroid/media/MediaCrypto;F)Ll/x;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    invoke-virtual {p0}, LB0/h;->getStreamFormats()[Lm0/t;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p0, v4, p1}, LD0/V;->Z(Lm0/t;LK0/o;)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    array-length v6, v3

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    if-ne v6, v7, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    array-length v6, v3

    .line 22
    const/4 v9, 0x0

    .line 23
    :goto_0
    if-ge v9, v6, :cond_2

    .line 24
    .line 25
    aget-object v10, v3, v9

    .line 26
    .line 27
    invoke-virtual {p1, v4, v10}, LK0/o;->b(Lm0/t;Lm0/t;)LB0/j;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    iget v11, v11, LB0/j;->d:I

    .line 32
    .line 33
    if-eqz v11, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v10, p1}, LD0/V;->Z(Lm0/t;LK0/o;)I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    iput v5, v0, LD0/V;->a1:I

    .line 47
    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v5, 0x18

    .line 51
    .line 52
    iget-object v6, v2, LK0/o;->a:Ljava/lang/String;

    .line 53
    .line 54
    if-ge v3, v5, :cond_4

    .line 55
    .line 56
    const-string v9, "OMX.SEC.aac.dec"

    .line 57
    .line 58
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_4

    .line 63
    .line 64
    const-string v9, "samsung"

    .line 65
    .line 66
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_4

    .line 73
    .line 74
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 75
    .line 76
    const-string v10, "zeroflte"

    .line 77
    .line 78
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-nez v10, :cond_3

    .line 83
    .line 84
    const-string v10, "herolte"

    .line 85
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_3

    .line 91
    .line 92
    const-string v10, "heroqlte"

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_4

    .line 99
    .line 100
    :cond_3
    const/4 v9, 0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/4 v9, 0x0

    .line 103
    :goto_2
    iput-boolean v9, v0, LD0/V;->b1:Z

    .line 104
    .line 105
    const-string v9, "OMX.google.opus.decoder"

    .line 106
    .line 107
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_6

    .line 112
    .line 113
    const-string v9, "c2.android.opus.decoder"

    .line 114
    .line 115
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-nez v9, :cond_6

    .line 120
    .line 121
    const-string v9, "OMX.google.vorbis.decoder"

    .line 122
    .line 123
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_6

    .line 128
    .line 129
    const-string v9, "c2.android.vorbis.decoder"

    .line 130
    .line 131
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    const/4 v6, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    :goto_3
    const/4 v6, 0x1

    .line 141
    :goto_4
    iput-boolean v6, v0, LD0/V;->c1:Z

    .line 142
    .line 143
    iget v6, v0, LD0/V;->a1:I

    .line 144
    .line 145
    new-instance v9, Landroid/media/MediaFormat;

    .line 146
    .line 147
    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v10, "mime"

    .line 151
    .line 152
    iget-object v11, v2, LK0/o;->c:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v9, v10, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v10, "channel-count"

    .line 158
    .line 159
    iget v11, v4, Lm0/t;->G:I

    .line 160
    .line 161
    invoke-virtual {v9, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    const-string v10, "sample-rate"

    .line 165
    .line 166
    iget v12, v4, Lm0/t;->H:I

    .line 167
    .line 168
    invoke-virtual {v9, v10, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    iget-object v10, v4, Lm0/t;->r:Ljava/util/List;

    .line 172
    .line 173
    invoke-static {v9, v10}, LJ6/r;->q(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    const-string v10, "max-input-size"

    .line 177
    .line 178
    invoke-static {v9, v10, v6}, LJ6/r;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    const/16 v6, 0x17

    .line 182
    .line 183
    if-lt v3, v6, :cond_8

    .line 184
    .line 185
    const-string v10, "priority"

    .line 186
    .line 187
    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const/high16 v10, -0x40800000    # -1.0f

    .line 191
    .line 192
    cmpl-float v10, v1, v10

    .line 193
    .line 194
    if-eqz v10, :cond_8

    .line 195
    .line 196
    if-ne v3, v6, :cond_7

    .line 197
    .line 198
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 199
    .line 200
    const-string v10, "ZTE B2017G"

    .line 201
    .line 202
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-nez v10, :cond_8

    .line 207
    .line 208
    const-string v10, "AXON 7 mini"

    .line 209
    .line 210
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    const-string v6, "operating-rate"

    .line 218
    .line 219
    invoke-virtual {v9, v6, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 220
    .line 221
    .line 222
    :cond_8
    :goto_5
    const-string v1, "audio/ac4"

    .line 223
    .line 224
    iget-object v6, v4, Lm0/t;->o:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_a

    .line 231
    .line 232
    invoke-static/range {p2 .. p2}, Lp0/g;->b(Lm0/t;)Landroid/util/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-eqz v1, :cond_9

    .line 237
    .line 238
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v10, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    const-string v13, "profile"

    .line 247
    .line 248
    invoke-static {v9, v13, v10}, LJ6/r;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    const-string v10, "level"

    .line 260
    .line 261
    invoke-static {v9, v10, v1}, LJ6/r;->o(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    :cond_9
    const/16 v1, 0x1c

    .line 265
    .line 266
    if-gt v3, v1, :cond_a

    .line 267
    .line 268
    const-string v1, "ac4-is-sync"

    .line 269
    .line 270
    invoke-virtual {v9, v1, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    :cond_a
    if-lt v3, v5, :cond_b

    .line 274
    .line 275
    const/4 v1, 0x4

    .line 276
    invoke-static {v1, v11, v12}, Lp0/M;->B(III)Lm0/t;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    iget-object v7, v0, LD0/V;->Y0:LD0/v;

    .line 281
    .line 282
    check-cast v7, LD0/S;

    .line 283
    .line 284
    invoke-virtual {v7, v5}, LD0/S;->k(Lm0/t;)I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    const/4 v7, 0x2

    .line 289
    if-ne v5, v7, :cond_b

    .line 290
    .line 291
    const-string v5, "pcm-encoding"

    .line 292
    .line 293
    invoke-virtual {v9, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    :cond_b
    const/16 v1, 0x20

    .line 297
    .line 298
    if-lt v3, v1, :cond_c

    .line 299
    .line 300
    const-string v1, "max-output-channel-count"

    .line 301
    .line 302
    const/16 v5, 0x63

    .line 303
    .line 304
    invoke-virtual {v9, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    :cond_c
    const/16 v1, 0x23

    .line 308
    .line 309
    if-lt v3, v1, :cond_d

    .line 310
    .line 311
    iget v1, v0, LD0/V;->j1:I

    .line 312
    .line 313
    neg-int v1, v1

    .line 314
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    const-string v3, "importance"

    .line 319
    .line 320
    invoke-virtual {v9, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    :cond_d
    const-string v1, "audio/raw"

    .line 324
    .line 325
    iget-object v3, v2, LK0/o;->b:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_e

    .line 332
    .line 333
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_e

    .line 338
    .line 339
    move-object v1, v4

    .line 340
    goto :goto_6

    .line 341
    :cond_e
    const/4 v1, 0x0

    .line 342
    :goto_6
    iput-object v1, v0, LD0/V;->e1:Lm0/t;

    .line 343
    .line 344
    new-instance v8, Ll/x;

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    iget-object v7, v0, LD0/V;->Z0:LK0/i;

    .line 348
    .line 349
    move-object v1, v8

    .line 350
    move-object v2, p1

    .line 351
    move-object v3, v9

    .line 352
    move-object/from16 v4, p2

    .line 353
    .line 354
    move-object/from16 v6, p3

    .line 355
    .line 356
    invoke-direct/range {v1 .. v7}, Ll/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    return-object v8
.end method

.method public final onDisabled()V
    .locals 3

    .line 1
    iget-object v0, p0, LD0/V;->X0:LD0/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, LD0/V;->h1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, LD0/V;->d1:Lm0/t;

    .line 8
    .line 9
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v1, p0, LD0/V;->l1:J

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, LD0/V;->Y0:LD0/v;

    .line 17
    .line 18
    check-cast v1, LD0/S;

    .line 19
    .line 20
    invoke-virtual {v1}, LD0/S;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-super {p0}, LK0/r;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LK0/r;->N0:LB0/i;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, LD0/n;->a(LB0/i;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    iget-object v2, p0, LK0/r;->N0:LB0/i;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, LD0/n;->a(LB0/i;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    :try_start_2
    invoke-super {p0}, LK0/r;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, LK0/r;->N0:LB0/i;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, LD0/n;->a(LB0/i;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :catchall_2
    move-exception v1

    .line 50
    iget-object v2, p0, LK0/r;->N0:LB0/i;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, LD0/n;->a(LB0/i;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 3

    .line 1
    new-instance p1, LB0/i;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LK0/r;->N0:LB0/i;

    .line 7
    .line 8
    iget-object p2, p0, LD0/V;->X0:LD0/n;

    .line 9
    .line 10
    iget-object v0, p2, LD0/n;->a:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, LD0/i;

    .line 16
    .line 17
    invoke-direct {v2, p2, p1, v1}, LD0/i;-><init>(LD0/n;LB0/i;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean p1, p1, LB0/E0;->b:Z

    .line 28
    .line 29
    iget-object p2, p0, LD0/V;->Y0:LD0/v;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    move-object p1, p2

    .line 34
    check-cast p1, LD0/S;

    .line 35
    .line 36
    iget-boolean v0, p1, LD0/S;->Z:Z

    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p1, LD0/S;->e0:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p1, LD0/S;->e0:Z

    .line 47
    .line 48
    invoke-virtual {p1}, LD0/S;->g()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object p1, p2

    .line 53
    check-cast p1, LD0/S;

    .line 54
    .line 55
    iget-boolean v0, p1, LD0/S;->e0:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iput-boolean v1, p1, LD0/S;->e0:Z

    .line 60
    .line 61
    invoke-virtual {p1}, LD0/S;->g()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-virtual {p0}, LB0/h;->getPlayerId()LC0/I;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p2, LD0/S;

    .line 69
    .line 70
    iput-object p1, p2, LD0/S;->t:LC0/I;

    .line 71
    .line 72
    invoke-virtual {p0}, LB0/h;->getClock()Lp0/f;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p2, LD0/S;->i:LD0/z;

    .line 77
    .line 78
    iput-object p1, p2, LD0/z;->I:Lp0/f;

    .line 79
    .line 80
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, LK0/r;->onPositionReset(JZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, LD0/V;->Y0:LD0/v;

    .line 5
    .line 6
    check-cast p3, LD0/S;

    .line 7
    .line 8
    invoke-virtual {p3}, LD0/S;->g()V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, LD0/V;->f1:J

    .line 12
    .line 13
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, LD0/V;->l1:J

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, LD0/V;->i1:Z

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, LD0/V;->g1:Z

    .line 25
    .line 26
    return-void
.end method

.method public final onRelease()V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    iget-object v0, v0, LD0/S;->A:LD0/f;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-boolean v1, v0, LD0/f;->j:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, LD0/f;->g:LD0/d;

    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v2, 0x17

    .line 20
    .line 21
    iget-object v3, v0, LD0/f;->a:Landroid/content/Context;

    .line 22
    .line 23
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, LD0/f;->d:LB0/r;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v3}, Ln0/c;->f(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2, v1}, LB0/q;->s(Landroid/media/AudioManager;LB0/r;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, v0, LD0/f;->e:Lf/G;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, LD0/f;->f:LD0/e;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v2, v1, LD0/e;->b:Landroid/content/ContentResolver;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, v0, LD0/f;->j:Z

    .line 52
    .line 53
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x23

    .line 56
    .line 57
    if-lt v0, v1, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, LD0/V;->Z0:LK0/i;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, LK0/i;->b()V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final onReset()V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, LD0/V;->i1:Z

    .line 5
    .line 6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v2, p0, LD0/V;->l1:J

    .line 12
    .line 13
    :try_start_0
    invoke-super {p0}, LK0/r;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, LD0/V;->h1:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iput-boolean v1, p0, LD0/V;->h1:Z

    .line 21
    .line 22
    check-cast v0, LD0/S;

    .line 23
    .line 24
    invoke-virtual {v0}, LD0/S;->y()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catchall_0
    move-exception v2

    .line 29
    iget-boolean v3, p0, LD0/V;->h1:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iput-boolean v1, p0, LD0/V;->h1:Z

    .line 34
    .line 35
    check-cast v0, LD0/S;

    .line 36
    .line 37
    invoke-virtual {v0}, LD0/S;->y()V

    .line 38
    .line 39
    .line 40
    :cond_1
    throw v2
.end method

.method public final onStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0}, LD0/S;->u()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, LD0/V;->k1:Z

    .line 10
    .line 11
    return-void
.end method

.method public final onStopped()V
    .locals 1

    .line 1
    invoke-virtual {p0}, LD0/V;->a0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LD0/V;->k1:Z

    .line 6
    .line 7
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 8
    .line 9
    check-cast v0, LD0/S;

    .line 10
    .line 11
    invoke-virtual {v0}, LD0/S;->t()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final p(Lw0/g;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lw0/g;->G:Lm0/t;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lm0/t;->o:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "audio/opus"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, LK0/r;->w0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lw0/g;->L:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lw0/g;->G:Lm0/t;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/32 v2, 0xbb80

    .line 54
    .line 55
    .line 56
    mul-long v0, v0, v2

    .line 57
    .line 58
    const-wide/32 v2, 0x3b9aca00

    .line 59
    .line 60
    .line 61
    div-long/2addr v0, v2

    .line 62
    long-to-int v1, v0

    .line 63
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 64
    .line 65
    check-cast v0, LD0/S;

    .line 66
    .line 67
    iget-object v2, v0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 68
    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-static {v2}, LD0/S;->r(Landroid/media/AudioTrack;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    iget-object v2, v0, LD0/S;->w:LD0/J;

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    iget-boolean v2, v2, LD0/J;->k:Z

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    iget-object v0, v0, LD0/S;->y:Landroid/media/AudioTrack;

    .line 86
    .line 87
    iget p1, p1, Lm0/t;->J:I

    .line 88
    .line 89
    invoke-static {v0, p1, v1}, LD0/a;->m(Landroid/media/AudioTrack;II)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Lm0/S;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD0/V;->Y0:LD0/v;

    .line 2
    .line 3
    check-cast v0, LD0/S;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, LD0/S;->E(Lm0/S;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LD0/V;->X0:LD0/n;

    .line 9
    .line 10
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v2, LD0/j;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v0, p1, v3}, LD0/j;-><init>(LD0/n;Ljava/lang/Exception;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    iget-object v1, p0, LD0/V;->X0:LD0/n;

    .line 2
    .line 3
    iget-object v8, v1, LD0/n;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v8, :cond_0

    .line 6
    .line 7
    new-instance v9, LD0/k;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, v9

    .line 11
    move-object v2, p1

    .line 12
    move-wide v3, p2

    .line 13
    move-wide v5, p4

    .line 14
    invoke-direct/range {v0 .. v7}, LD0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, LD0/V;->X0:LD0/n;

    .line 2
    .line 3
    iget-object v1, v0, LD0/n;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lf/t;

    .line 8
    .line 9
    const/16 v3, 0x17

    .line 10
    .line 11
    invoke-direct {v2, v3, v0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final y(LB0/Z;)LB0/j;
    .locals 5

    .line 1
    iget-object v0, p1, LB0/Z;->b:Lm0/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, LD0/V;->d1:Lm0/t;

    .line 7
    .line 8
    invoke-super {p0, p1}, LK0/r;->y(LB0/Z;)LB0/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, LD0/V;->X0:LD0/n;

    .line 13
    .line 14
    iget-object v2, v1, LD0/n;->a:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v3, LB0/h0;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-direct {v3, v1, v0, p1, v4}, LB0/h0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p1
.end method

.method public final z(Lm0/t;Landroid/media/MediaFormat;)V
    .locals 7

    .line 1
    iget-object v0, p0, LD0/V;->e1:Lm0/t;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, LK0/r;->a0:LK0/l;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "audio/raw"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget v0, p1, Lm0/t;->I:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v4, 0x18

    .line 35
    .line 36
    if-lt v0, v4, :cond_3

    .line 37
    .line 38
    const-string v0, "pcm-encoding"

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 64
    .line 65
    invoke-static {v0, v4}, Lp0/M;->A(ILjava/nio/ByteOrder;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v0, 0x2

    .line 71
    :goto_0
    new-instance v4, Lm0/s;

    .line 72
    .line 73
    invoke-direct {v4}, Lm0/s;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, v4, Lm0/s;->n:Ljava/lang/String;

    .line 81
    .line 82
    iput v0, v4, Lm0/s;->H:I

    .line 83
    .line 84
    iget v0, p1, Lm0/t;->J:I

    .line 85
    .line 86
    iput v0, v4, Lm0/s;->I:I

    .line 87
    .line 88
    iget v0, p1, Lm0/t;->K:I

    .line 89
    .line 90
    iput v0, v4, Lm0/s;->J:I

    .line 91
    .line 92
    iget-object v0, p1, Lm0/t;->l:Lm0/N;

    .line 93
    .line 94
    iput-object v0, v4, Lm0/s;->k:Lm0/N;

    .line 95
    .line 96
    iget-object v0, p1, Lm0/t;->m:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v0, v4, Lm0/s;->l:Ljava/lang/Object;

    .line 99
    .line 100
    iget-object v0, p1, Lm0/t;->a:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v0, v4, Lm0/s;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v0, p1, Lm0/t;->b:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v0, v4, Lm0/s;->b:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, p1, Lm0/t;->c:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v0}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, v4, Lm0/s;->c:Ljava/util/List;

    .line 115
    .line 116
    iget-object v0, p1, Lm0/t;->d:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, v4, Lm0/s;->d:Ljava/lang/String;

    .line 119
    .line 120
    iget v0, p1, Lm0/t;->e:I

    .line 121
    .line 122
    iput v0, v4, Lm0/s;->e:I

    .line 123
    .line 124
    iget v0, p1, Lm0/t;->f:I

    .line 125
    .line 126
    iput v0, v4, Lm0/s;->f:I

    .line 127
    .line 128
    const-string v0, "channel-count"

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, v4, Lm0/s;->F:I

    .line 135
    .line 136
    const-string v0, "sample-rate"

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    iput p2, v4, Lm0/s;->G:I

    .line 143
    .line 144
    new-instance p2, Lm0/t;

    .line 145
    .line 146
    invoke-direct {p2, v4}, Lm0/t;-><init>(Lm0/s;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v0, p0, LD0/V;->b1:Z

    .line 150
    .line 151
    iget v3, p2, Lm0/t;->G:I

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    const/4 v0, 0x6

    .line 156
    if-ne v3, v0, :cond_6

    .line 157
    .line 158
    iget p1, p1, Lm0/t;->G:I

    .line 159
    .line 160
    if-ge p1, v0, :cond_6

    .line 161
    .line 162
    new-array v2, p1, [I

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    :goto_1
    if-ge v0, p1, :cond_5

    .line 166
    .line 167
    aput v0, v2, v0

    .line 168
    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    :goto_2
    move-object p1, p2

    .line 173
    goto :goto_3

    .line 174
    :cond_6
    iget-boolean p1, p0, LD0/V;->c1:Z

    .line 175
    .line 176
    if-eqz p1, :cond_5

    .line 177
    .line 178
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->q(I)[I

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    goto :goto_2

    .line 183
    :goto_3
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch LD0/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    const/16 v0, 0x1d

    .line 186
    .line 187
    iget-object v3, p0, LD0/V;->Y0:LD0/v;

    .line 188
    .line 189
    if-lt p2, v0, :cond_a

    .line 190
    .line 191
    :try_start_1
    iget-boolean v4, p0, LK0/r;->w0:Z

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    if-eqz v4, :cond_8

    .line 195
    .line 196
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget v4, v4, LB0/E0;->a:I

    .line 201
    .line 202
    if-eqz v4, :cond_8

    .line 203
    .line 204
    invoke-virtual {p0}, LB0/h;->getConfiguration()LB0/E0;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iget v4, v4, LB0/E0;->a:I

    .line 209
    .line 210
    move-object v6, v3

    .line 211
    check-cast v6, LD0/S;

    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    if-lt p2, v0, :cond_7

    .line 217
    .line 218
    const/4 v1, 0x1

    .line 219
    :cond_7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 220
    .line 221
    .line 222
    iput v4, v6, LD0/S;->l:I

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :catch_0
    move-exception p1

    .line 226
    goto :goto_6

    .line 227
    :cond_8
    move-object v4, v3

    .line 228
    check-cast v4, LD0/S;

    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    if-lt p2, v0, :cond_9

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_9
    const/4 v5, 0x0

    .line 237
    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 238
    .line 239
    .line 240
    iput v1, v4, LD0/S;->l:I

    .line 241
    .line 242
    :cond_a
    :goto_5
    check-cast v3, LD0/S;

    .line 243
    .line 244
    invoke-virtual {v3, p1, v2}, LD0/S;->d(Lm0/t;[I)V
    :try_end_1
    .catch LD0/q; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :goto_6
    iget-object p2, p1, LD0/q;->G:Lm0/t;

    .line 249
    .line 250
    const/16 v0, 0x1389

    .line 251
    .line 252
    invoke-virtual {p0, p1, p2, v0}, LB0/h;->createRendererException(Ljava/lang/Throwable;Lm0/t;I)LB0/w;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    throw p1
.end method
