.class public final LO1/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LO1/o0;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lr/m;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lr/m;-><init>(I)V

    .line 5
    iput-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 6
    new-instance p1, Lr/j;

    invoke-direct {p1}, Lr/j;-><init>()V

    iput-object p1, p0, LO1/o0;->c:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LO1/J;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, LO1/o0;->a:I

    .line 10
    iput-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 11
    new-instance p1, LW0/d;

    invoke-direct {p1}, LW0/d;-><init>()V

    iput-object p1, p0, LO1/o0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LO1/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LO1/n0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, LO1/n0;->a()LO1/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lr/m;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget p1, v0, LO1/n0;->a:I

    .line 25
    .line 26
    or-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    iput p1, v0, LO1/n0;->a:I

    .line 29
    .line 30
    return-void
.end method

.method public final b(LO1/c0;Lj0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LO1/n0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, LO1/n0;->a()LO1/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lr/m;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p2, v0, LO1/n0;->c:Lj0/c;

    .line 25
    .line 26
    iget p1, v0, LO1/n0;->a:I

    .line 27
    .line 28
    or-int/lit8 p1, p1, 0x8

    .line 29
    .line 30
    iput p1, v0, LO1/n0;->a:I

    .line 31
    .line 32
    return-void
.end method

.method public final c(LO1/c0;Lj0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LO1/n0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, LO1/n0;->a()LO1/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lr/m;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object p2, v0, LO1/n0;->b:Lj0/c;

    .line 25
    .line 26
    iget p1, v0, LO1/n0;->a:I

    .line 27
    .line 28
    or-int/lit8 p1, p1, 0x4

    .line 29
    .line 30
    iput p1, v0, LO1/n0;->a:I

    .line 31
    .line 32
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, LO1/o0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lr/m;

    .line 23
    .line 24
    invoke-virtual {v0}, Lr/m;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lr/j;

    .line 30
    .line 31
    invoke-virtual {v0}, Lr/j;->b()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [I

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    iput-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, [I

    .line 22
    .line 23
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v1, v0

    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v1, v1

    .line 31
    if-lt p1, v1, :cond_2

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, [I

    .line 35
    .line 36
    check-cast v0, [I

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    :goto_0
    if-gt v0, p1, :cond_1

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-array p1, v0, [I

    .line 45
    .line 46
    iput-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, [I

    .line 49
    .line 50
    array-length v0, v1

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    check-cast v0, [I

    .line 59
    .line 60
    array-length v1, v1

    .line 61
    check-cast p1, [I

    .line 62
    .line 63
    array-length p1, p1

    .line 64
    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public final f(IIII)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO1/m0;

    .line 4
    .line 5
    check-cast v0, LO1/J;

    .line 6
    .line 7
    iget v1, v0, LO1/J;->G:I

    .line 8
    .line 9
    iget-object v0, v0, LO1/J;->H:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, LO1/L;

    .line 15
    .line 16
    invoke-virtual {v0}, LO1/L;->L()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    check-cast v0, LO1/L;

    .line 22
    .line 23
    invoke-virtual {v0}, LO1/L;->J()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, LO1/m0;

    .line 30
    .line 31
    check-cast v1, LO1/J;

    .line 32
    .line 33
    iget v2, v1, LO1/J;->G:I

    .line 34
    .line 35
    iget-object v1, v1, LO1/J;->H:Ljava/lang/Object;

    .line 36
    .line 37
    packed-switch v2, :pswitch_data_1

    .line 38
    .line 39
    .line 40
    check-cast v1, LO1/L;

    .line 41
    .line 42
    iget v2, v1, LO1/L;->o:I

    .line 43
    .line 44
    invoke-virtual {v1}, LO1/L;->I()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :goto_1
    sub-int/2addr v2, v1

    .line 49
    goto :goto_2

    .line 50
    :pswitch_1
    check-cast v1, LO1/L;

    .line 51
    .line 52
    iget v2, v1, LO1/L;->n:I

    .line 53
    .line 54
    invoke-virtual {v1}, LO1/L;->K()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    if-le p2, p1, :cond_0

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_0
    const/4 v1, -0x1

    .line 64
    :goto_3
    const/4 v3, 0x0

    .line 65
    :goto_4
    if-eq p1, p2, :cond_3

    .line 66
    .line 67
    iget-object v4, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, LO1/m0;

    .line 70
    .line 71
    check-cast v4, LO1/J;

    .line 72
    .line 73
    iget v5, v4, LO1/J;->G:I

    .line 74
    .line 75
    iget-object v4, v4, LO1/J;->H:Ljava/lang/Object;

    .line 76
    .line 77
    packed-switch v5, :pswitch_data_2

    .line 78
    .line 79
    .line 80
    check-cast v4, LO1/L;

    .line 81
    .line 82
    invoke-virtual {v4, p1}, LO1/L;->w(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    goto :goto_5

    .line 87
    :pswitch_2
    check-cast v4, LO1/L;

    .line 88
    .line 89
    invoke-virtual {v4, p1}, LO1/L;->w(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    :goto_5
    iget-object v5, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, LO1/m0;

    .line 96
    .line 97
    check-cast v5, LO1/J;

    .line 98
    .line 99
    invoke-virtual {v5, v4}, LO1/J;->d(Landroid/view/View;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    iget-object v6, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v6, LO1/m0;

    .line 106
    .line 107
    check-cast v6, LO1/J;

    .line 108
    .line 109
    invoke-virtual {v6, v4}, LO1/J;->b(Landroid/view/View;)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    iget-object v7, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v8, v7

    .line 116
    check-cast v8, LW0/d;

    .line 117
    .line 118
    iput v0, v8, LW0/d;->c:I

    .line 119
    .line 120
    iput v2, v8, LW0/d;->d:I

    .line 121
    .line 122
    iput v5, v8, LW0/d;->e:I

    .line 123
    .line 124
    iput v6, v8, LW0/d;->f:I

    .line 125
    .line 126
    if-eqz p3, :cond_1

    .line 127
    .line 128
    move-object v5, v7

    .line 129
    check-cast v5, LW0/d;

    .line 130
    .line 131
    iput p3, v5, LW0/d;->b:I

    .line 132
    .line 133
    check-cast v7, LW0/d;

    .line 134
    .line 135
    invoke-virtual {v7}, LW0/d;->a()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_1

    .line 140
    .line 141
    return-object v4

    .line 142
    :cond_1
    if-eqz p4, :cond_2

    .line 143
    .line 144
    iget-object v5, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 145
    .line 146
    move-object v6, v5

    .line 147
    check-cast v6, LW0/d;

    .line 148
    .line 149
    iput p4, v6, LW0/d;->b:I

    .line 150
    .line 151
    check-cast v5, LW0/d;

    .line 152
    .line 153
    invoke-virtual {v5}, LW0/d;->a()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_2

    .line 158
    .line 159
    move-object v3, v4

    .line 160
    :cond_2
    add-int/2addr p1, v1

    .line 161
    goto :goto_4

    .line 162
    :cond_3
    return-object v3

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final g(I)I
    .locals 5

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    array-length v0, v0

    .line 10
    if-lt p1, v0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    :cond_2
    const/4 v0, -0x1

    .line 21
    goto :goto_4

    .line 22
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    :goto_0
    if-ltz v0, :cond_6

    .line 35
    .line 36
    iget-object v3, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v3, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, LO1/j0;

    .line 45
    .line 46
    iget v4, v3, LO1/j0;->G:I

    .line 47
    .line 48
    if-ne v4, p1, :cond_5

    .line 49
    .line 50
    move-object v2, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 56
    .line 57
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_7
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v2, 0x0

    .line 73
    :goto_2
    if-ge v2, v0, :cond_9

    .line 74
    .line 75
    iget-object v3, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, LO1/j0;

    .line 84
    .line 85
    iget v3, v3, LO1/j0;->G:I

    .line 86
    .line 87
    if-lt v3, p1, :cond_8

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_9
    const/4 v2, -0x1

    .line 94
    :goto_3
    if-eq v2, v1, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, LO1/j0;

    .line 105
    .line 106
    iget-object v3, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget v0, v0, LO1/j0;->G:I

    .line 114
    .line 115
    :goto_4
    if-ne v0, v1, :cond_a

    .line 116
    .line 117
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, [I

    .line 120
    .line 121
    array-length v2, v0

    .line 122
    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, [I

    .line 128
    .line 129
    array-length p1, p1

    .line 130
    return p1

    .line 131
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    iget-object v2, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, [I

    .line 136
    .line 137
    array-length v2, v2

    .line 138
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v2, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, [I

    .line 145
    .line 146
    invoke-static {v2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 147
    .line 148
    .line 149
    return v0
.end method

.method public final h(Landroid/view/View;)Z
    .locals 5

    .line 1
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LW0/d;

    .line 4
    .line 5
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LO1/m0;

    .line 8
    .line 9
    check-cast v1, LO1/J;

    .line 10
    .line 11
    iget v2, v1, LO1/J;->G:I

    .line 12
    .line 13
    iget-object v1, v1, LO1/J;->H:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v1, LO1/L;

    .line 19
    .line 20
    invoke-virtual {v1}, LO1/L;->L()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    check-cast v1, LO1/L;

    .line 26
    .line 27
    invoke-virtual {v1}, LO1/L;->J()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    iget-object v2, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, LO1/m0;

    .line 34
    .line 35
    check-cast v2, LO1/J;

    .line 36
    .line 37
    iget v3, v2, LO1/J;->G:I

    .line 38
    .line 39
    iget-object v2, v2, LO1/J;->H:Ljava/lang/Object;

    .line 40
    .line 41
    packed-switch v3, :pswitch_data_1

    .line 42
    .line 43
    .line 44
    check-cast v2, LO1/L;

    .line 45
    .line 46
    iget v3, v2, LO1/L;->o:I

    .line 47
    .line 48
    invoke-virtual {v2}, LO1/L;->I()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    sub-int/2addr v3, v2

    .line 53
    goto :goto_2

    .line 54
    :pswitch_1
    check-cast v2, LO1/L;

    .line 55
    .line 56
    iget v3, v2, LO1/L;->n:I

    .line 57
    .line 58
    invoke-virtual {v2}, LO1/L;->K()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    iget-object v2, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, LO1/m0;

    .line 66
    .line 67
    check-cast v2, LO1/J;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, LO1/J;->d(Landroid/view/View;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object v4, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, LO1/m0;

    .line 76
    .line 77
    check-cast v4, LO1/J;

    .line 78
    .line 79
    invoke-virtual {v4, p1}, LO1/J;->b(Landroid/view/View;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput v1, v0, LW0/d;->c:I

    .line 84
    .line 85
    iput v3, v0, LW0/d;->d:I

    .line 86
    .line 87
    iput v2, v0, LW0/d;->e:I

    .line 88
    .line 89
    iput p1, v0, LW0/d;->f:I

    .line 90
    .line 91
    iget-object p1, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 92
    .line 93
    move-object v0, p1

    .line 94
    check-cast v0, LW0/d;

    .line 95
    .line 96
    const/16 v1, 0x6003

    .line 97
    .line 98
    iput v1, v0, LW0/d;->b:I

    .line 99
    .line 100
    check-cast p1, LW0/d;

    .line 101
    .line 102
    invoke-virtual {p1}, LW0/d;->a()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    return p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final i(II)V
    .locals 3

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, LO1/o0;->e(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/List;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, LO1/j0;

    .line 58
    .line 59
    iget v2, v1, LO1/j0;->G:I

    .line 60
    .line 61
    if-ge v2, p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    add-int/2addr v2, p2

    .line 65
    iput v2, v1, LO1/j0;->G:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public final j(II)V
    .locals 5

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, LO1/o0;->e(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p2

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/List;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v1, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, LO1/j0;

    .line 61
    .line 62
    iget v3, v2, LO1/j0;->G:I

    .line 63
    .line 64
    if-ge v3, p1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ge v3, v0, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-int/2addr v3, p2

    .line 78
    iput v3, v2, LO1/j0;->G:I

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    return-void
.end method

.method public final k(LO1/c0;I)Lj0/c;
    .locals 4

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->d(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lr/m;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lr/m;->j(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, LO1/n0;

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    iget v2, v1, LO1/n0;->a:I

    .line 26
    .line 27
    and-int v3, v2, p2

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    not-int v3, p2

    .line 32
    and-int/2addr v2, v3

    .line 33
    iput v2, v1, LO1/n0;->a:I

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    if-ne p2, v3, :cond_1

    .line 37
    .line 38
    iget-object p2, v1, LO1/n0;->b:Lj0/c;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v3, 0x8

    .line 42
    .line 43
    if-ne p2, v3, :cond_3

    .line 44
    .line 45
    iget-object p2, v1, LO1/n0;->c:Lj0/c;

    .line 46
    .line 47
    :goto_0
    and-int/lit8 v2, v2, 0xc

    .line 48
    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lr/m;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lr/m;->h(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput p1, v1, LO1/n0;->a:I

    .line 60
    .line 61
    iput-object v0, v1, LO1/n0;->b:Lj0/c;

    .line 62
    .line 63
    iput-object v0, v1, LO1/n0;->c:Lj0/c;

    .line 64
    .line 65
    sget-object p1, LO1/n0;->d:Lu/e;

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    return-object p2

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "Must provide flag PRE or POST"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_4
    return-object v0
.end method

.method public final l(LO1/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LO1/n0;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p1, LO1/n0;->a:I

    .line 15
    .line 16
    and-int/lit8 v0, v0, -0x2

    .line 17
    .line 18
    iput v0, p1, LO1/n0;->a:I

    .line 19
    .line 20
    return-void
.end method

.method public final m(LO1/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/j;

    .line 4
    .line 5
    invoke-virtual {v0}, Lr/j;->h()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lr/j;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lr/j;->i(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, LO1/o0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lr/j;

    .line 26
    .line 27
    iget-object v3, v2, Lr/j;->I:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object v4, v3, v0

    .line 30
    .line 31
    sget-object v5, Lr/k;->a:Ljava/lang/Object;

    .line 32
    .line 33
    if-eq v4, v5, :cond_1

    .line 34
    .line 35
    aput-object v5, v3, v0

    .line 36
    .line 37
    iput-boolean v1, v2, Lr/j;->G:Z

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object v0, p0, LO1/o0;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lr/m;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lr/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, LO1/n0;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput v0, p1, LO1/n0;->a:I

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p1, LO1/n0;->b:Lj0/c;

    .line 60
    .line 61
    iput-object v0, p1, LO1/n0;->c:Lj0/c;

    .line 62
    .line 63
    sget-object v0, LO1/n0;->d:Lu/e;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lu/e;->a(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
