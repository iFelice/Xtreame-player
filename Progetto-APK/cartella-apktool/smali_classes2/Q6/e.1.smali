.class public final LQ6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/D;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQ6/f;LQ6/D;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, LQ6/e;->G:I

    .line 8
    iput-object p1, p0, LQ6/e;->H:Ljava/lang/Object;

    iput-object p2, p0, LQ6/e;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LQ6/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LQ6/e;->G:I

    .line 3
    const-string v0, "timeout"

    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, LQ6/e;->H:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, LQ6/e;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget v0, p0, LQ6/e;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LQ6/e;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, LQ6/f;

    .line 15
    .line 16
    iget-object v0, p0, LQ6/e;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LQ6/D;

    .line 19
    .line 20
    invoke-virtual {v1}, LQ6/f;->enter()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v1, v0}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    throw v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_1
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1, v0}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_1
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read(LQ6/j;J)J
    .locals 5

    .line 1
    iget v0, p0, LQ6/e;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LQ6/e;->H:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LQ6/e;->I:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "sink"

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v0, p2, v3

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-ltz v0, :cond_4

    .line 23
    .line 24
    :try_start_0
    check-cast v2, LQ6/G;

    .line 25
    .line 26
    invoke-virtual {v2}, LQ6/G;->throwIfReached()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, LQ6/j;->k0(I)LQ6/y;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v2, v0, LQ6/y;->c:I

    .line 35
    .line 36
    rsub-int v2, v2, 0x2000

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    long-to-int p3, p2

    .line 44
    check-cast v1, Ljava/io/InputStream;

    .line 45
    .line 46
    iget-object p2, v0, LQ6/y;->a:[B

    .line 47
    .line 48
    iget v2, v0, LQ6/y;->c:I

    .line 49
    .line 50
    invoke-virtual {v1, p2, v2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const/4 p3, -0x1

    .line 55
    if-ne p2, p3, :cond_2

    .line 56
    .line 57
    iget p2, v0, LQ6/y;->b:I

    .line 58
    .line 59
    iget p3, v0, LQ6/y;->c:I

    .line 60
    .line 61
    if-ne p2, p3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, LQ6/y;->a()LQ6/y;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p1, LQ6/j;->G:LQ6/y;

    .line 68
    .line 69
    invoke-static {v0}, LQ6/z;->a(LQ6/y;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    :goto_0
    const-wide/16 v3, -0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget p3, v0, LQ6/y;->c:I

    .line 79
    .line 80
    add-int/2addr p3, p2

    .line 81
    iput p3, v0, LQ6/y;->c:I

    .line 82
    .line 83
    iget-wide v0, p1, LQ6/j;->H:J

    .line 84
    .line 85
    int-to-long v3, p2

    .line 86
    add-long/2addr v0, v3

    .line 87
    iput-wide v0, p1, LQ6/j;->H:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    :goto_1
    return-wide v3

    .line 90
    :goto_2
    invoke-static {p1}, Lo3/r;->e(Ljava/lang/AssertionError;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    new-instance p2, Ljava/io/IOException;

    .line 97
    .line 98
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p2

    .line 102
    :cond_3
    throw p1

    .line 103
    :cond_4
    const-string p1, "byteCount < 0: "

    .line 104
    .line 105
    invoke-static {p1, p2, p3}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :pswitch_0
    invoke-static {p1, v3}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    check-cast v1, LQ6/f;

    .line 123
    .line 124
    check-cast v2, LQ6/D;

    .line 125
    .line 126
    invoke-virtual {v1}, LQ6/f;->enter()V

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, LQ6/D;->read(LQ6/j;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-nez p3, :cond_5

    .line 138
    .line 139
    return-wide p1

    .line 140
    :cond_5
    const/4 p1, 0x0

    .line 141
    invoke-virtual {v1, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    throw p1

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    goto :goto_4

    .line 148
    :catch_1
    move-exception p1

    .line 149
    :try_start_2
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-nez p2, :cond_6

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    invoke-virtual {v1, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_4
    invoke-virtual {v1}, LQ6/f;->exit()Z

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()LQ6/G;
    .locals 1

    .line 1
    iget v0, p0, LQ6/e;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LQ6/e;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LQ6/G;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, LQ6/e;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LQ6/f;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, LQ6/e;->G:I

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "source("

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, LQ6/e;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/io/InputStream;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "AsyncTimeout.source("

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, LQ6/e;->I:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, LQ6/D;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
