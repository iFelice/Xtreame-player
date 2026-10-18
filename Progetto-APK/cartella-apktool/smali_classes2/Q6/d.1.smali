.class public final LQ6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/B;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQ6/f;LQ6/B;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, LQ6/d;->G:I

    .line 7
    iput-object p1, p0, LQ6/d;->H:Ljava/lang/Object;

    iput-object p2, p0, LQ6/d;->I:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;LQ6/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LQ6/d;->G:I

    .line 3
    iput-object p1, p0, LQ6/d;->H:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LQ6/d;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget v0, p0, LQ6/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LQ6/d;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, LQ6/f;

    .line 15
    .line 16
    iget-object v0, p0, LQ6/d;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LQ6/B;

    .line 19
    .line 20
    invoke-virtual {v1}, LQ6/f;->enter()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface {v0}, LQ6/B;->close()V
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

.method public final flush()V
    .locals 3

    .line 1
    iget v0, p0, LQ6/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LQ6/d;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, LQ6/f;

    .line 15
    .line 16
    iget-object v0, p0, LQ6/d;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, LQ6/B;

    .line 19
    .line 20
    invoke-virtual {v1}, LQ6/f;->enter()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface {v0}, LQ6/B;->flush()V
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

.method public final timeout()LQ6/G;
    .locals 1

    .line 1
    iget v0, p0, LQ6/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LQ6/d;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LQ6/G;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, LQ6/d;->H:Ljava/lang/Object;

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
    iget v0, p0, LQ6/d;->G:I

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
    const-string v2, "sink("

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, LQ6/d;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ljava/io/OutputStream;

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
    const-string v2, "AsyncTimeout.sink("

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, LQ6/d;->I:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, LQ6/B;

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

.method public final write(LQ6/j;J)V
    .locals 12

    .line 1
    iget v0, p0, LQ6/d;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LQ6/d;->H:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, LQ6/d;->I:Ljava/lang/Object;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const-string v5, "source"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v5}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-wide v6, p1, LQ6/j;->H:J

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    move-wide v10, p2

    .line 22
    invoke-static/range {v6 .. v11}, LQ6/b;->b(JJJ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    cmp-long v0, p2, v3

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    move-object v0, v2

    .line 30
    check-cast v0, LQ6/G;

    .line 31
    .line 32
    invoke-virtual {v0}, LQ6/G;->throwIfReached()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, LQ6/j;->G:LQ6/y;

    .line 36
    .line 37
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget v5, v0, LQ6/y;->c:I

    .line 41
    .line 42
    iget v6, v0, LQ6/y;->b:I

    .line 43
    .line 44
    sub-int/2addr v5, v6

    .line 45
    int-to-long v5, v5

    .line 46
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    long-to-int v6, v5

    .line 51
    move-object v5, v1

    .line 52
    check-cast v5, Ljava/io/OutputStream;

    .line 53
    .line 54
    iget-object v7, v0, LQ6/y;->a:[B

    .line 55
    .line 56
    iget v8, v0, LQ6/y;->b:I

    .line 57
    .line 58
    invoke-virtual {v5, v7, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 59
    .line 60
    .line 61
    iget v5, v0, LQ6/y;->b:I

    .line 62
    .line 63
    add-int/2addr v5, v6

    .line 64
    iput v5, v0, LQ6/y;->b:I

    .line 65
    .line 66
    int-to-long v6, v6

    .line 67
    sub-long/2addr p2, v6

    .line 68
    iget-wide v8, p1, LQ6/j;->H:J

    .line 69
    .line 70
    sub-long/2addr v8, v6

    .line 71
    iput-wide v8, p1, LQ6/j;->H:J

    .line 72
    .line 73
    iget v6, v0, LQ6/y;->c:I

    .line 74
    .line 75
    if-ne v5, v6, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, LQ6/y;->a()LQ6/y;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iput-object v5, p1, LQ6/j;->G:LQ6/y;

    .line 82
    .line 83
    invoke-static {v0}, LQ6/z;->a(LQ6/y;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-void

    .line 88
    :pswitch_0
    invoke-static {p1, v5}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-wide v6, p1, LQ6/j;->H:J

    .line 92
    .line 93
    const-wide/16 v8, 0x0

    .line 94
    .line 95
    move-wide v10, p2

    .line 96
    invoke-static/range {v6 .. v11}, LQ6/b;->b(JJJ)V

    .line 97
    .line 98
    .line 99
    :goto_1
    cmp-long v0, p2, v3

    .line 100
    .line 101
    if-lez v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p1, LQ6/j;->G:LQ6/y;

    .line 104
    .line 105
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move-wide v5, v3

    .line 109
    :goto_2
    const-wide/32 v7, 0x10000

    .line 110
    .line 111
    .line 112
    cmp-long v9, v5, v7

    .line 113
    .line 114
    if-gez v9, :cond_3

    .line 115
    .line 116
    iget v7, v0, LQ6/y;->c:I

    .line 117
    .line 118
    iget v8, v0, LQ6/y;->b:I

    .line 119
    .line 120
    sub-int/2addr v7, v8

    .line 121
    int-to-long v7, v7

    .line 122
    add-long/2addr v5, v7

    .line 123
    cmp-long v7, v5, p2

    .line 124
    .line 125
    if-ltz v7, :cond_2

    .line 126
    .line 127
    move-wide v5, p2

    .line 128
    goto :goto_3

    .line 129
    :cond_2
    iget-object v0, v0, LQ6/y;->f:LQ6/y;

    .line 130
    .line 131
    invoke-static {v0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    :goto_3
    move-object v0, v1

    .line 136
    check-cast v0, LQ6/f;

    .line 137
    .line 138
    move-object v7, v2

    .line 139
    check-cast v7, LQ6/B;

    .line 140
    .line 141
    invoke-virtual {v0}, LQ6/f;->enter()V

    .line 142
    .line 143
    .line 144
    :try_start_0
    invoke-interface {v7, p1, v5, v6}, LQ6/B;->write(LQ6/j;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, LQ6/f;->exit()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v7, :cond_4

    .line 152
    .line 153
    sub-long/2addr p2, v5

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    const/4 p1, 0x0

    .line 156
    invoke-virtual {v0, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    throw p1

    .line 161
    :catchall_0
    move-exception p1

    .line 162
    goto :goto_5

    .line 163
    :catch_0
    move-exception p1

    .line 164
    :try_start_1
    invoke-virtual {v0}, LQ6/f;->exit()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-nez p2, :cond_5

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    invoke-virtual {v0, p1}, LQ6/f;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_4
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_5
    invoke-virtual {v0}, LQ6/f;->exit()Z

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_6
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
