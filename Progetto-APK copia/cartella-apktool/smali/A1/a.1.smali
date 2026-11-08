.class public final LA1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final a:LA1/b;

.field public final b:Lp0/E;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA1/b;

    .line 5
    .line 6
    const-string v1, "audio/ac3"

    .line 7
    .line 8
    invoke-direct {v0, v1}, LA1/b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LA1/a;->a:LA1/b;

    .line 12
    .line 13
    new-instance v0, Lp0/E;

    .line 14
    .line 15
    const/16 v1, 0xae2

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lp0/E;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LA1/a;->b:Lp0/E;

    .line 21
    .line 22
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
    iget-object v1, p0, LA1/a;->a:LA1/b;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, LA1/b;->c(LW0/u;LA1/I;)V

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
    .locals 13

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
    if-eq v4, v5, :cond_6

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
    move v5, v3

    .line 35
    :goto_1
    const/4 v4, 0x0

    .line 36
    :goto_2
    iget-object v7, v0, Lp0/E;->a:[B

    .line 37
    .line 38
    const/4 v8, 0x6

    .line 39
    invoke-interface {p1, v2, v7, v8}, LW0/t;->c(I[BI)V

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
    move-result v7

    .line 49
    const/16 v9, 0xb77

    .line 50
    .line 51
    if-eq v7, v9, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, LW0/t;->m()V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    sub-int v4, v5, v3

    .line 59
    .line 60
    const/16 v7, 0x2000

    .line 61
    .line 62
    if-lt v4, v7, :cond_0

    .line 63
    .line 64
    return v2

    .line 65
    :cond_0
    invoke-interface {p1, v5}, LW0/t;->g(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v7, 0x1

    .line 70
    add-int/2addr v4, v7

    .line 71
    const/4 v9, 0x4

    .line 72
    if-lt v4, v9, :cond_2

    .line 73
    .line 74
    return v7

    .line 75
    :cond_2
    iget-object v10, v0, Lp0/E;->a:[B

    .line 76
    .line 77
    array-length v11, v10

    .line 78
    const/4 v12, -0x1

    .line 79
    if-ge v11, v8, :cond_3

    .line 80
    .line 81
    const/4 v9, -0x1

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/4 v11, 0x5

    .line 84
    aget-byte v11, v10, v11

    .line 85
    .line 86
    and-int/lit16 v11, v11, 0xf8

    .line 87
    .line 88
    shr-int/2addr v11, v6

    .line 89
    if-le v11, v1, :cond_4

    .line 90
    .line 91
    const/4 v8, 0x2

    .line 92
    aget-byte v9, v10, v8

    .line 93
    .line 94
    and-int/lit8 v9, v9, 0x7

    .line 95
    .line 96
    shl-int/lit8 v9, v9, 0x8

    .line 97
    .line 98
    aget-byte v10, v10, v6

    .line 99
    .line 100
    and-int/lit16 v10, v10, 0xff

    .line 101
    .line 102
    or-int/2addr v9, v10

    .line 103
    add-int/2addr v9, v7

    .line 104
    mul-int/lit8 v9, v9, 0x2

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    aget-byte v7, v10, v9

    .line 108
    .line 109
    and-int/lit16 v9, v7, 0xc0

    .line 110
    .line 111
    shr-int/lit8 v8, v9, 0x6

    .line 112
    .line 113
    and-int/lit8 v7, v7, 0x3f

    .line 114
    .line 115
    invoke-static {v8, v7}, LW0/a;->a(II)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    :goto_3
    if-ne v9, v12, :cond_5

    .line 120
    .line 121
    return v2

    .line 122
    :cond_5
    add-int/lit8 v9, v9, -0x6

    .line 123
    .line 124
    invoke-interface {p1, v9}, LW0/t;->g(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {v0, v6}, Lp0/E;->M(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lp0/E;->y()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    add-int/lit8 v5, v4, 0xa

    .line 136
    .line 137
    add-int/2addr v3, v5

    .line 138
    invoke-interface {p1, v4}, LW0/t;->g(I)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_0
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 5

    .line 1
    iget-object p2, p0, LA1/a;->b:Lp0/E;

    .line 2
    .line 3
    iget-object v0, p2, Lp0/E;->a:[B

    .line 4
    .line 5
    const/16 v1, 0xae2

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
    iget-boolean p1, p0, LA1/a;->c:Z

    .line 23
    .line 24
    iget-object v0, p0, LA1/a;->a:LA1/b;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    iput-wide v3, v0, LA1/b;->n:J

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, LA1/a;->c:Z

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, p2}, LA1/b;->b(Lp0/E;)V

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
    iput-boolean p1, p0, LA1/a;->c:Z

    .line 3
    .line 4
    iget-object p1, p0, LA1/a;->a:LA1/b;

    .line 5
    .line 6
    invoke-virtual {p1}, LA1/b;->a()V

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
