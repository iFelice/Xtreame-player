.class public final LQ6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/D;


# instance fields
.field public final G:LQ6/l;

.field public final H:Ljava/util/zip/Inflater;

.field public I:I

.field public J:Z


# direct methods
.method public constructor <init>(LQ6/x;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LQ6/s;->G:LQ6/l;

    .line 5
    .line 6
    iput-object p2, p0, LQ6/s;->H:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LQ6/s;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, LQ6/s;->H:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, LQ6/s;->J:Z

    .line 13
    .line 14
    iget-object v0, p0, LQ6/s;->G:LQ6/l;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final k(LQ6/j;J)J
    .locals 7

    .line 1
    iget-object v0, p0, LQ6/s;->H:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    const-string v1, "sink"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v3, p2, v1

    .line 11
    .line 12
    if-ltz v3, :cond_7

    .line 13
    .line 14
    iget-boolean v4, p0, LQ6/s;->J:Z

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    xor-int/2addr v4, v5

    .line 18
    if-eqz v4, :cond_6

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    return-wide v1

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p1, v5}, LQ6/j;->k0(I)LQ6/y;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget v4, v3, LQ6/y;->c:I

    .line 28
    .line 29
    rsub-int v4, v4, 0x2000

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    long-to-int p3, p2

    .line 37
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 38
    .line 39
    .line 40
    move-result p2
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget-object v4, p0, LQ6/s;->G:LQ6/l;

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_1
    invoke-interface {v4}, LQ6/l;->q()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v4}, LQ6/l;->a()LQ6/j;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p2, p2, LQ6/j;->G:LQ6/y;

    .line 58
    .line 59
    invoke-static {p2}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget v5, p2, LQ6/y;->c:I

    .line 63
    .line 64
    iget v6, p2, LQ6/y;->b:I

    .line 65
    .line 66
    sub-int/2addr v5, v6

    .line 67
    iput v5, p0, LQ6/s;->I:I

    .line 68
    .line 69
    iget-object p2, p2, LQ6/y;->a:[B

    .line 70
    .line 71
    invoke-virtual {v0, p2, v6, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p2, v3, LQ6/y;->a:[B

    .line 75
    .line 76
    iget v5, v3, LQ6/y;->c:I

    .line 77
    .line 78
    invoke-virtual {v0, p2, v5, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    iget p3, p0, LQ6/s;->I:I

    .line 83
    .line 84
    if-nez p3, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sub-int/2addr p3, v0

    .line 92
    iget v0, p0, LQ6/s;->I:I

    .line 93
    .line 94
    sub-int/2addr v0, p3

    .line 95
    iput v0, p0, LQ6/s;->I:I

    .line 96
    .line 97
    int-to-long v5, p3

    .line 98
    invoke-interface {v4, v5, v6}, LQ6/l;->b(J)V

    .line 99
    .line 100
    .line 101
    :goto_1
    if-lez p2, :cond_4

    .line 102
    .line 103
    iget p3, v3, LQ6/y;->c:I

    .line 104
    .line 105
    add-int/2addr p3, p2

    .line 106
    iput p3, v3, LQ6/y;->c:I

    .line 107
    .line 108
    iget-wide v0, p1, LQ6/j;->H:J

    .line 109
    .line 110
    int-to-long p2, p2

    .line 111
    add-long/2addr v0, p2

    .line 112
    iput-wide v0, p1, LQ6/j;->H:J

    .line 113
    .line 114
    return-wide p2

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    iget p2, v3, LQ6/y;->b:I

    .line 118
    .line 119
    iget p3, v3, LQ6/y;->c:I

    .line 120
    .line 121
    if-ne p2, p3, :cond_5

    .line 122
    .line 123
    invoke-virtual {v3}, LQ6/y;->a()LQ6/y;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iput-object p2, p1, LQ6/j;->G:LQ6/y;

    .line 128
    .line 129
    invoke-static {v3}, LQ6/z;->a(LQ6/y;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_5
    return-wide v1

    .line 133
    :goto_2
    new-instance p2, Ljava/io/IOException;

    .line 134
    .line 135
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2

    .line 139
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    const-string p2, "closed"

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_7
    const-string p1, "byteCount < 0: "

    .line 152
    .line 153
    invoke-static {p1, p2, p3}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p2
.end method

.method public final read(LQ6/j;J)J
    .locals 5

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, LQ6/s;->k(LQ6/j;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, LQ6/s;->H:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v0, p0, LQ6/s;->G:LQ6/l;

    .line 33
    .line 34
    invoke-interface {v0}, LQ6/l;->q()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 42
    .line 43
    const-string p2, "source exhausted prematurely"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    :goto_1
    const-wide/16 p1, -0x1

    .line 50
    .line 51
    return-wide p1
.end method

.method public final timeout()LQ6/G;
    .locals 1

    .line 1
    iget-object v0, p0, LQ6/s;->G:LQ6/l;

    .line 2
    .line 3
    invoke-interface {v0}, LQ6/D;->timeout()LQ6/G;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
