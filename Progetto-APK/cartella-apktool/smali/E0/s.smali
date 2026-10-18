.class public final LE0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/L;


# instance fields
.field public final a:LO0/T;

.field public final b:LB0/Z;

.field public final c:Le1/a;

.field public d:J

.field public final synthetic e:LE0/t;


# direct methods
.method public constructor <init>(LE0/t;LS0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE0/s;->e:LE0/t;

    .line 5
    .line 6
    new-instance p1, LO0/T;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p2, v0, v0}, LO0/T;-><init>(LS0/d;LG0/r;LG0/o;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LE0/s;->a:LO0/T;

    .line 13
    .line 14
    new-instance p1, LB0/Z;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, LE0/s;->b:LB0/Z;

    .line 20
    .line 21
    new-instance p1, Le1/a;

    .line 22
    .line 23
    invoke-direct {p1}, Le1/a;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, LE0/s;->c:Le1/a;

    .line 27
    .line 28
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide p1, p0, LE0/s;->d:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(IILp0/E;)V
    .locals 1

    .line 1
    iget-object p2, p0, LE0/s;->a:LO0/T;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, p1, v0, p3}, LO0/T;->a(IILp0/E;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b(Lm0/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, LE0/s;->a:LO0/T;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LO0/T;->b(Lm0/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lm0/j;IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, LE0/s;->a:LO0/T;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, LO0/T;->c(Lm0/j;IZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final d(JIIILW0/K;)V
    .locals 7

    .line 1
    iget-object v0, p0, LE0/s;->a:LO0/T;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, LO0/T;->d(JIIILW0/K;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-object p1, p0, LE0/s;->a:LO0/T;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, LO0/T;->y(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    iget-object p1, p0, LE0/s;->c:Le1/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lw0/g;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object p3, p0, LE0/s;->a:LO0/T;

    .line 26
    .line 27
    iget-object p4, p0, LE0/s;->b:LB0/Z;

    .line 28
    .line 29
    invoke-virtual {p3, p4, p1, p2, p2}, LO0/T;->D(LB0/Z;Lw0/g;IZ)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/4 p4, -0x4

    .line 34
    if-ne p3, p4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lw0/g;->g()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_1
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-wide p3, p1, Lw0/g;->K:J

    .line 45
    .line 46
    iget-object p5, p0, LE0/s;->e:LE0/t;

    .line 47
    .line 48
    iget-object p5, p5, LE0/t;->I:Lf1/b;

    .line 49
    .line 50
    invoke-virtual {p5, p1}, Lcom/bumptech/glide/d;->g(Le1/a;)Lm0/N;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p1, Lm0/N;->a:[Lm0/M;

    .line 58
    .line 59
    aget-object p1, p1, p2

    .line 60
    .line 61
    check-cast p1, Lg1/a;

    .line 62
    .line 63
    iget-object p2, p1, Lg1/a;->a:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p5, p1, Lg1/a;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string p6, "urn:mpeg:dash:event:2012"

    .line 68
    .line 69
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_0

    .line 74
    .line 75
    const-string p2, "1"

    .line 76
    .line 77
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    const-string p2, "2"

    .line 84
    .line 85
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    const-string p2, "3"

    .line 92
    .line 93
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    :cond_4
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :try_start_0
    iget-object p1, p1, Lg1/a;->e:[B

    .line 105
    .line 106
    invoke-static {p1}, Lp0/M;->o([B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lp0/M;->U(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide p1
    :try_end_0
    .catch Lm0/P; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_2

    .line 115
    :catch_0
    nop

    .line 116
    move-wide p1, p5

    .line 117
    :goto_2
    cmp-long v0, p1, p5

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    new-instance p5, LE0/r;

    .line 123
    .line 124
    invoke-direct {p5, p3, p4, p1, p2}, LE0/r;-><init>(JJ)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, LE0/s;->e:LE0/t;

    .line 128
    .line 129
    iget-object p1, p1, LE0/t;->J:Landroid/os/Handler;

    .line 130
    .line 131
    const/4 p2, 0x1

    .line 132
    invoke-virtual {p1, p2, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_6
    iget-object p1, p0, LE0/s;->a:LO0/T;

    .line 142
    .line 143
    iget-object p2, p1, LO0/T;->a:LO0/P;

    .line 144
    .line 145
    monitor-enter p1

    .line 146
    :try_start_1
    iget p3, p1, LO0/T;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    if-nez p3, :cond_7

    .line 149
    .line 150
    monitor-exit p1

    .line 151
    const-wide/16 p3, -0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    :try_start_2
    invoke-virtual {p1, p3}, LO0/T;->i(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    monitor-exit p1

    .line 159
    :goto_3
    invoke-virtual {p2, p3, p4}, LO0/P;->b(J)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception p2

    .line 164
    monitor-exit p1

    .line 165
    throw p2
.end method

.method public final e(ILp0/E;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, LE0/s;->a(IILp0/E;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final f(Lm0/j;IZ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LE0/s;->c(Lm0/j;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
