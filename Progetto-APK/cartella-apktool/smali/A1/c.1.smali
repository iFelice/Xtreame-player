.class public final LA1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:LA1/d;

.field public final b:Lp0/E;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA1/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "audio/ac4"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, LA1/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LA1/c;->a:LA1/d;

    .line 14
    .line 15
    new-instance v0, Lp0/E;

    .line 16
    .line 17
    const/16 v1, 0x4000

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LA1/c;->b:Lp0/E;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 3

    .line 1
    new-instance v0, LA1/I;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, LA1/I;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LA1/c;->a:LA1/d;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, LA1/d;->c(LW0/u;LA1/I;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, LW0/u;->j()V

    .line 14
    .line 15
    .line 16
    new-instance v0, LW0/x;

    .line 17
    .line 18
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, LW0/x;-><init>(J)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, LW0/u;->r(LW0/F;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final g(LW0/t;)Z
    .locals 14

    .line 1
    new-instance v0, Lp0/E;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-object v4, v0, Lp0/E;->a:[B

    .line 11
    .line 12
    invoke-interface {p1, v2, v4, v1}, LW0/t;->c(I[BI)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lp0/E;->C()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const v5, 0x494433

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v4, v5, :cond_7

    .line 27
    .line 28
    invoke-interface {p1}, LW0/t;->m()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, LW0/t;->g(I)V

    .line 32
    .line 33
    .line 34
    move v4, v3

    .line 35
    :goto_1
    const/4 v1, 0x0

    .line 36
    :goto_2
    iget-object v5, v0, Lp0/E;->a:[B

    .line 37
    .line 38
    const/4 v7, 0x7

    .line 39
    invoke-interface {p1, v2, v5, v7}, LW0/t;->c(I[BI)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const v8, 0xac40

    .line 50
    .line 51
    .line 52
    const v9, 0xac41

    .line 53
    .line 54
    .line 55
    if-eq v5, v8, :cond_1

    .line 56
    .line 57
    if-eq v5, v9, :cond_1

    .line 58
    .line 59
    invoke-interface {p1}, LW0/t;->m()V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    sub-int v1, v4, v3

    .line 65
    .line 66
    const/16 v5, 0x2000

    .line 67
    .line 68
    if-lt v1, v5, :cond_0

    .line 69
    .line 70
    return v2

    .line 71
    :cond_0
    invoke-interface {p1, v4}, LW0/t;->g(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v8, 0x1

    .line 76
    add-int/2addr v1, v8

    .line 77
    const/4 v10, 0x4

    .line 78
    if-lt v1, v10, :cond_2

    .line 79
    .line 80
    return v8

    .line 81
    :cond_2
    iget-object v8, v0, Lp0/E;->a:[B

    .line 82
    .line 83
    array-length v11, v8

    .line 84
    const/4 v12, -0x1

    .line 85
    if-ge v11, v7, :cond_3

    .line 86
    .line 87
    const/4 v11, -0x1

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    const/4 v11, 0x2

    .line 90
    aget-byte v11, v8, v11

    .line 91
    .line 92
    and-int/lit16 v11, v11, 0xff

    .line 93
    .line 94
    shl-int/lit8 v11, v11, 0x8

    .line 95
    .line 96
    aget-byte v13, v8, v6

    .line 97
    .line 98
    and-int/lit16 v13, v13, 0xff

    .line 99
    .line 100
    or-int/2addr v11, v13

    .line 101
    const v13, 0xffff

    .line 102
    .line 103
    .line 104
    if-ne v11, v13, :cond_4

    .line 105
    .line 106
    aget-byte v10, v8, v10

    .line 107
    .line 108
    and-int/lit16 v10, v10, 0xff

    .line 109
    .line 110
    shl-int/lit8 v10, v10, 0x10

    .line 111
    .line 112
    const/4 v11, 0x5

    .line 113
    aget-byte v11, v8, v11

    .line 114
    .line 115
    and-int/lit16 v11, v11, 0xff

    .line 116
    .line 117
    shl-int/lit8 v11, v11, 0x8

    .line 118
    .line 119
    or-int/2addr v10, v11

    .line 120
    const/4 v11, 0x6

    .line 121
    aget-byte v8, v8, v11

    .line 122
    .line 123
    and-int/lit16 v8, v8, 0xff

    .line 124
    .line 125
    or-int v11, v10, v8

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const/4 v7, 0x4

    .line 129
    :goto_3
    if-ne v5, v9, :cond_5

    .line 130
    .line 131
    add-int/lit8 v7, v7, 0x2

    .line 132
    .line 133
    :cond_5
    add-int/2addr v11, v7

    .line 134
    :goto_4
    if-ne v11, v12, :cond_6

    .line 135
    .line 136
    return v2

    .line 137
    :cond_6
    add-int/lit8 v11, v11, -0x7

    .line 138
    .line 139
    invoke-interface {p1, v11}, LW0/t;->g(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {v0, v6}, Lp0/E;->M(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lp0/E;->y()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    add-int/lit8 v5, v4, 0xa

    .line 151
    .line 152
    add-int/2addr v3, v5

    .line 153
    invoke-interface {p1, v4}, LW0/t;->g(I)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 5

    .line 1
    iget-object p2, p0, LA1/c;->b:Lp0/E;

    .line 2
    .line 3
    iget-object v0, p2, Lp0/E;->a:[B

    .line 4
    .line 5
    const/16 v1, 0x4000

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v0, v2, v1}, Lm0/j;->q([BII)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, -0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {p2, v2}, Lp0/E;->L(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lp0/E;->K(I)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, LA1/c;->c:Z

    .line 23
    .line 24
    iget-object v0, p0, LA1/c;->a:LA1/d;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    iput-wide v3, v0, LA1/d;->n:J

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, LA1/c;->c:Z

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, p2}, LA1/d;->b(Lp0/E;)V

    .line 36
    .line 37
    .line 38
    return v2
.end method

.method public final i(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LA1/c;->c:Z

    .line 3
    .line 4
    iget-object p1, p0, LA1/c;->a:LA1/d;

    .line 5
    .line 6
    invoke-virtual {p1}, LA1/d;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 2
    .line 3
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 4
    .line 5
    return-object v0
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
