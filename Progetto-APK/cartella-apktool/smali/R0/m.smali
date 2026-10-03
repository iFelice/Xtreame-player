.class public final LR0/m;
.super LR0/o;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final K:I

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:Z


# direct methods
.method public constructor <init>(ILm0/g0;ILR0/k;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p3, p2}, LR0/o;-><init>(IILm0/g0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-static {p5, p1}, LA0/O;->u(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput-boolean p2, p0, LR0/m;->L:Z

    .line 10
    .line 11
    iget-object p2, p0, LR0/o;->J:Lm0/t;

    .line 12
    .line 13
    iget p2, p2, Lm0/t;->e:I

    .line 14
    .line 15
    iget p3, p4, Lm0/k0;->y:I

    .line 16
    .line 17
    not-int p3, p3

    .line 18
    and-int/2addr p2, p3

    .line 19
    and-int/lit8 p3, p2, 0x1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x0

    .line 27
    :goto_0
    iput-boolean p3, p0, LR0/m;->M:Z

    .line 28
    .line 29
    and-int/lit8 p2, p2, 0x2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p2, 0x0

    .line 36
    :goto_1
    iput-boolean p2, p0, LR0/m;->N:Z

    .line 37
    .line 38
    iget-object p2, p4, Lm0/k0;->v:Lz4/H;

    .line 39
    .line 40
    if-eqz p7, :cond_2

    .line 41
    .line 42
    invoke-static {p7}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    const-string p3, ""

    .line 54
    .line 55
    invoke-static {p3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object p3, p2

    .line 61
    :goto_2
    const/4 v1, 0x0

    .line 62
    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ge v1, v2, :cond_5

    .line 67
    .line 68
    iget-object v2, p0, LR0/o;->J:Lm0/t;

    .line 69
    .line 70
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-boolean v4, p4, Lm0/k0;->z:Z

    .line 77
    .line 78
    invoke-static {v2, v3, v4}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-lez v2, :cond_4

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    const v1, 0x7fffffff

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    :goto_4
    iput v1, p0, LR0/m;->O:I

    .line 93
    .line 94
    iput v2, p0, LR0/m;->P:I

    .line 95
    .line 96
    const/16 p3, 0x440

    .line 97
    .line 98
    if-eqz p7, :cond_6

    .line 99
    .line 100
    const/16 p7, 0x440

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    iget p7, p4, Lm0/k0;->w:I

    .line 104
    .line 105
    :goto_5
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 106
    .line 107
    iget v1, v1, Lm0/t;->f:I

    .line 108
    .line 109
    invoke-static {v1, p7}, LR0/q;->c(II)I

    .line 110
    .line 111
    .line 112
    move-result p7

    .line 113
    iput p7, p0, LR0/m;->Q:I

    .line 114
    .line 115
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 116
    .line 117
    iget v1, v1, Lm0/t;->f:I

    .line 118
    .line 119
    and-int/2addr p3, v1

    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    const/4 p3, 0x1

    .line 123
    goto :goto_6

    .line 124
    :cond_7
    const/4 p3, 0x0

    .line 125
    :goto_6
    iput-boolean p3, p0, LR0/m;->S:Z

    .line 126
    .line 127
    invoke-static {p6}, LR0/q;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    if-nez p3, :cond_8

    .line 132
    .line 133
    const/4 p3, 0x1

    .line 134
    goto :goto_7

    .line 135
    :cond_8
    const/4 p3, 0x0

    .line 136
    :goto_7
    iget-object v1, p0, LR0/o;->J:Lm0/t;

    .line 137
    .line 138
    invoke-static {v1, p6, p3}, LR0/q;->g(Lm0/t;Ljava/lang/String;Z)I

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    iput p3, p0, LR0/m;->R:I

    .line 143
    .line 144
    if-gtz v2, :cond_b

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_9

    .line 151
    .line 152
    if-gtz p7, :cond_b

    .line 153
    .line 154
    :cond_9
    iget-boolean p2, p0, LR0/m;->M:Z

    .line 155
    .line 156
    if-nez p2, :cond_b

    .line 157
    .line 158
    iget-boolean p2, p0, LR0/m;->N:Z

    .line 159
    .line 160
    if-eqz p2, :cond_a

    .line 161
    .line 162
    if-lez p3, :cond_a

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_a
    const/4 p2, 0x0

    .line 166
    goto :goto_9

    .line 167
    :cond_b
    :goto_8
    const/4 p2, 0x1

    .line 168
    :goto_9
    iget-boolean p3, p4, LR0/k;->Q:Z

    .line 169
    .line 170
    invoke-static {p5, p3}, LA0/O;->u(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_c

    .line 175
    .line 176
    if-eqz p2, :cond_c

    .line 177
    .line 178
    const/4 p1, 0x1

    .line 179
    :cond_c
    iput p1, p0, LR0/m;->K:I

    .line 180
    .line 181
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LR0/m;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic b(LR0/o;)Z
    .locals 0

    .line 1
    check-cast p1, LR0/m;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1
.end method

.method public final c(LR0/m;)I
    .locals 7

    .line 1
    sget-object v0, Lz4/x;->a:Lz4/v;

    .line 2
    .line 3
    iget-boolean v1, p1, LR0/m;->L:Z

    .line 4
    .line 5
    iget-boolean v2, p0, LR0/m;->L:Z

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lz4/v;->c(ZZ)Lz4/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, LR0/m;->O:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, LR0/m;->O:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lz4/b0;->G:Lz4/b0;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v4, Lz4/k0;->G:Lz4/k0;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v4}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, p0, LR0/m;->P:I

    .line 35
    .line 36
    iget v2, p1, LR0/m;->P:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lz4/x;->a(II)Lz4/x;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v2, p0, LR0/m;->Q:I

    .line 43
    .line 44
    iget v5, p1, LR0/m;->Q:I

    .line 45
    .line 46
    invoke-virtual {v0, v2, v5}, Lz4/x;->a(II)Lz4/x;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v5, p0, LR0/m;->M:Z

    .line 51
    .line 52
    iget-boolean v6, p1, LR0/m;->M:Z

    .line 53
    .line 54
    invoke-virtual {v0, v5, v6}, Lz4/x;->c(ZZ)Lz4/x;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-boolean v5, p0, LR0/m;->N:Z

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-boolean v6, p1, LR0/m;->N:Z

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v3, v4

    .line 74
    :goto_0
    invoke-virtual {v0, v5, v6, v3}, Lz4/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget v1, p0, LR0/m;->R:I

    .line 79
    .line 80
    iget v3, p1, LR0/m;->R:I

    .line 81
    .line 82
    invoke-virtual {v0, v1, v3}, Lz4/x;->a(II)Lz4/x;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    iget-boolean v1, p0, LR0/m;->S:Z

    .line 89
    .line 90
    iget-boolean p1, p1, LR0/m;->S:Z

    .line 91
    .line 92
    invoke-virtual {v0, v1, p1}, Lz4/x;->d(ZZ)Lz4/x;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_1
    invoke-virtual {v0}, Lz4/x;->e()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, LR0/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, LR0/m;->c(LR0/m;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
