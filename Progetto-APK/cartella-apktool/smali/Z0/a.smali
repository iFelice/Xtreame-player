.class public final LZ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/s;


# instance fields
.field public final synthetic a:I

.field public final b:Lp0/E;

.field public final c:LW0/H;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, LZ0/a;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lp0/E;

    .line 15
    .line 16
    invoke-direct {p1, v2}, Lp0/E;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LZ0/a;->b:Lp0/E;

    .line 20
    .line 21
    new-instance p1, LW0/H;

    .line 22
    .line 23
    const-string v0, "image/avif"

    .line 24
    .line 25
    invoke-direct {p1, v1, v1, v0}, LW0/H;-><init>(IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LZ0/a;->c:LW0/H;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lp0/E;

    .line 35
    .line 36
    invoke-direct {p1, v2}, Lp0/E;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, LZ0/a;->b:Lp0/E;

    .line 40
    .line 41
    new-instance p1, LW0/H;

    .line 42
    .line 43
    const-string v0, "image/webp"

    .line 44
    .line 45
    invoke-direct {p1, v1, v1, v0}, LW0/H;-><init>(IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, LZ0/a;->c:LW0/H;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lp0/E;

    .line 55
    .line 56
    invoke-direct {p1, v2}, Lp0/E;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, LZ0/a;->b:Lp0/E;

    .line 60
    .line 61
    new-instance p1, LW0/H;

    .line 62
    .line 63
    const-string v0, "image/heif"

    .line 64
    .line 65
    invoke-direct {p1, v1, v1, v0}, LW0/H;-><init>(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, LZ0/a;->c:LW0/H;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final b()LW0/s;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final d(LW0/u;)V
    .locals 2

    .line 1
    iget v0, p0, LZ0/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LZ0/a;->c:LW0/H;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, LW0/H;->d(LW0/u;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {v1, p1}, LW0/H;->d(LW0/u;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {v1, p1}, LW0/H;->d(LW0/u;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(LW0/t;)Z
    .locals 9

    .line 1
    iget-object v0, p0, LZ0/a;->b:Lp0/E;

    .line 2
    .line 3
    iget v1, p0, LZ0/a;->a:I

    .line 4
    .line 5
    const v2, 0x66747970

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x4

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lp0/E;->a:[B

    .line 18
    .line 19
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    const-wide/32 v6, 0x52494646

    .line 27
    .line 28
    .line 29
    cmp-long v8, v1, v6

    .line 30
    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {p1, v5}, LW0/t;->g(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lp0/E;->a:[B

    .line 41
    .line 42
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-wide/32 v5, 0x57454250

    .line 50
    .line 51
    .line 52
    cmp-long p1, v0, v5

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v3, 0x0

    .line 58
    :goto_0
    move v4, v3

    .line 59
    :goto_1
    return v4

    .line 60
    :pswitch_0
    invoke-interface {p1, v5}, LW0/t;->g(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lp0/E;->a:[B

    .line 67
    .line 68
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    int-to-long v1, v2

    .line 76
    cmp-long v8, v6, v1

    .line 77
    .line 78
    if-nez v8, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lp0/E;->a:[B

    .line 84
    .line 85
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    const p1, 0x68656963

    .line 93
    .line 94
    .line 95
    int-to-long v5, p1

    .line 96
    cmp-long p1, v0, v5

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v3, 0x0

    .line 102
    :goto_2
    return v3

    .line 103
    :pswitch_1
    invoke-interface {p1, v5}, LW0/t;->g(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lp0/E;->a:[B

    .line 110
    .line 111
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    int-to-long v1, v2

    .line 119
    cmp-long v8, v6, v1

    .line 120
    .line 121
    if-nez v8, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0, v5}, Lp0/E;->I(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lp0/E;->a:[B

    .line 127
    .line 128
    invoke-interface {p1, v4, v1, v5}, LW0/t;->c(I[BI)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lp0/E;->B()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    const p1, 0x61766966

    .line 136
    .line 137
    .line 138
    int-to-long v5, p1

    .line 139
    cmp-long p1, v0, v5

    .line 140
    .line 141
    if-nez p1, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    const/4 v3, 0x0

    .line 145
    :goto_3
    return v3

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(LW0/t;LW0/w;)I
    .locals 2

    .line 1
    iget v0, p0, LZ0/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LZ0/a;->c:LW0/H;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, LW0/H;->h(LW0/t;LW0/w;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    invoke-virtual {v1, p1, p2}, LW0/H;->h(LW0/t;LW0/w;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :pswitch_1
    invoke-virtual {v1, p1, p2}, LW0/H;->h(LW0/t;LW0/w;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(JJ)V
    .locals 2

    .line 1
    iget v0, p0, LZ0/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LZ0/a;->c:LW0/H;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1, p2, p3, p4}, LW0/H;->i(JJ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {v1, p1, p2, p3, p4}, LW0/H;->i(JJ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {v1, p1, p2, p3, p4}, LW0/H;->i(JJ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget v0, p0, LZ0/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 7
    .line 8
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 12
    .line 13
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_1
    sget-object v0, Lz4/H;->H:Lz4/F;

    .line 17
    .line 18
    sget-object v0, Lz4/d0;->K:Lz4/d0;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
