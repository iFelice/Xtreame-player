.class public final LS0/i;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final G:I

.field public final H:LS0/j;

.field public final I:J

.field public J:LS0/h;

.field public K:Ljava/io/IOException;

.field public L:I

.field public M:Ljava/lang/Thread;

.field public N:Z

.field public volatile O:Z

.field public final synthetic P:LS0/m;


# direct methods
.method public constructor <init>(LS0/m;Landroid/os/Looper;LS0/j;LS0/h;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, LS0/i;->P:LS0/m;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, LS0/i;->H:LS0/j;

    .line 7
    .line 8
    iput-object p4, p0, LS0/i;->J:LS0/h;

    .line 9
    .line 10
    iput p5, p0, LS0/i;->G:I

    .line 11
    .line 12
    iput-wide p6, p0, LS0/i;->I:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, LS0/i;->O:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LS0/i;->K:Ljava/io/IOException;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, LS0/i;->N:Z

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    monitor-enter p0

    .line 26
    :try_start_0
    iput-boolean v1, p0, LS0/i;->N:Z

    .line 27
    .line 28
    iget-object v1, p0, LS0/i;->H:LS0/j;

    .line 29
    .line 30
    invoke-interface {v1}, LS0/j;->I()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, LS0/i;->M:Ljava/lang/Thread;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, LS0/i;->P:LS0/m;

    .line 47
    .line 48
    iput-object v0, p1, LS0/m;->H:LS0/i;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-object v1, p0, LS0/i;->J:LS0/h;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, LS0/i;->H:LS0/j;

    .line 60
    .line 61
    iget-wide v5, p0, LS0/i;->I:J

    .line 62
    .line 63
    sub-long v5, v3, v5

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-interface/range {v1 .. v7}, LS0/h;->c(LS0/j;JJZ)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, LS0/i;->J:LS0/h;

    .line 70
    .line 71
    :cond_3
    return-void

    .line 72
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method public final b()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v2

    .line 5
    iget-wide v0, p0, LS0/i;->I:J

    .line 6
    .line 7
    sub-long v4, v2, v0

    .line 8
    .line 9
    iget-object v0, p0, LS0/i;->J:LS0/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, LS0/i;->H:LS0/j;

    .line 15
    .line 16
    iget v6, p0, LS0/i;->L:I

    .line 17
    .line 18
    invoke-interface/range {v0 .. v6}, LS0/h;->p(LS0/j;JJI)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, LS0/i;->K:Ljava/io/IOException;

    .line 23
    .line 24
    iget-object v0, p0, LS0/i;->P:LS0/m;

    .line 25
    .line 26
    iget-object v1, v0, LS0/m;->G:LT0/a;

    .line 27
    .line 28
    iget-object v0, v0, LS0/m;->H:LS0/i;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, LT0/a;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, LS0/i;->O:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, LS0/i;->b()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v2, 0x4

    .line 16
    if-eq v0, v2, :cond_b

    .line 17
    .line 18
    iget-object v0, p0, LS0/i;->P:LS0/m;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, v0, LS0/m;->H:LS0/i;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    iget-wide v2, p0, LS0/i;->I:J

    .line 28
    .line 29
    sub-long v7, v5, v2

    .line 30
    .line 31
    iget-object v3, p0, LS0/i;->J:LS0/h;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, LS0/i;->N:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v4, p0, LS0/i;->H:LS0/j;

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    invoke-interface/range {v3 .. v9}, LS0/h;->c(LS0/j;JJZ)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq v0, v2, :cond_9

    .line 51
    .line 52
    const/4 v11, 0x3

    .line 53
    if-eq v0, v11, :cond_3

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    move-object v9, p1

    .line 60
    check-cast v9, Ljava/io/IOException;

    .line 61
    .line 62
    iput-object v9, p0, LS0/i;->K:Ljava/io/IOException;

    .line 63
    .line 64
    iget p1, p0, LS0/i;->L:I

    .line 65
    .line 66
    add-int/lit8 v10, p1, 0x1

    .line 67
    .line 68
    iput v10, p0, LS0/i;->L:I

    .line 69
    .line 70
    iget-object v4, p0, LS0/i;->H:LS0/j;

    .line 71
    .line 72
    invoke-interface/range {v3 .. v10}, LS0/h;->n(LS0/j;JJLjava/io/IOException;I)LS0/g;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget v0, p1, LS0/g;->a:I

    .line 77
    .line 78
    if-ne v0, v11, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, LS0/i;->P:LS0/m;

    .line 81
    .line 82
    iget-object v0, p0, LS0/i;->K:Ljava/io/IOException;

    .line 83
    .line 84
    iput-object v0, p1, LS0/m;->I:Ljava/io/IOException;

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-eq v0, v2, :cond_a

    .line 88
    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    iput v1, p0, LS0/i;->L:I

    .line 92
    .line 93
    :cond_5
    iget-wide v2, p1, LS0/g;->b:J

    .line 94
    .line 95
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    cmp-long p1, v2, v4

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    iget p1, p0, LS0/i;->L:I

    .line 106
    .line 107
    sub-int/2addr p1, v1

    .line 108
    mul-int/lit16 p1, p1, 0x3e8

    .line 109
    .line 110
    const/16 v0, 0x1388

    .line 111
    .line 112
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    int-to-long v2, p1

    .line 117
    :goto_0
    iget-object p1, p0, LS0/i;->P:LS0/m;

    .line 118
    .line 119
    iget-object v0, p1, LS0/m;->H:LS0/i;

    .line 120
    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    const/4 v0, 0x0

    .line 126
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 127
    .line 128
    .line 129
    iput-object p0, p1, LS0/m;->H:LS0/i;

    .line 130
    .line 131
    const-wide/16 v4, 0x0

    .line 132
    .line 133
    cmp-long p1, v2, v4

    .line 134
    .line 135
    if-lez p1, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    invoke-virtual {p0}, LS0/i;->b()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_9
    :try_start_0
    iget-object v4, p0, LS0/i;->H:LS0/j;

    .line 146
    .line 147
    invoke-interface/range {v3 .. v8}, LS0/h;->o(LS0/j;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p1

    .line 152
    const-string v0, "LoadTask"

    .line 153
    .line 154
    const-string v1, "Unexpected exception handling load completed"

    .line 155
    .line 156
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, LS0/i;->P:LS0/m;

    .line 160
    .line 161
    new-instance v1, LS0/l;

    .line 162
    .line 163
    invoke-direct {v1, p1}, LS0/l;-><init>(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, v0, LS0/m;->I:Ljava/io/IOException;

    .line 167
    .line 168
    :cond_a
    :goto_2
    return-void

    .line 169
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Ljava/lang/Error;

    .line 172
    .line 173
    throw p1
.end method

.method public final run()V
    .locals 4

    .line 1
    const-string v0, "load:"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-boolean v2, p0, LS0/i;->N:Z

    .line 6
    .line 7
    xor-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iput-object v3, p0, LS0/i;->M:Ljava/lang/Thread;

    .line 14
    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_2
    iget-object v2, p0, LS0/i;->H:LS0/j;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    iget-object v0, p0, LS0/i;->H:LS0/j;

    .line 36
    .line 37
    invoke-interface {v0}, LS0/j;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    goto :goto_2

    .line 53
    :catch_2
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :catch_3
    move-exception v0

    .line 56
    goto :goto_4

    .line 57
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    const/4 v0, 0x0

    .line 59
    :try_start_5
    iput-object v0, p0, LS0/i;->M:Ljava/lang/Thread;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 62
    .line 63
    .line 64
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :try_start_6
    iget-boolean v0, p0, LS0/i;->O:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 76
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 77
    :catchall_2
    move-exception v0

    .line 78
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 79
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    .line 80
    :goto_1
    iget-boolean v1, p0, LS0/i;->O:Z

    .line 81
    .line 82
    if-nez v1, :cond_1

    .line 83
    .line 84
    const-string v1, "LoadTask"

    .line 85
    .line 86
    const-string v2, "Unexpected error loading stream"

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    :cond_1
    throw v0

    .line 100
    :goto_2
    iget-boolean v2, p0, LS0/i;->O:Z

    .line 101
    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    const-string v2, "LoadTask"

    .line 105
    .line 106
    const-string v3, "OutOfMemory error loading stream"

    .line 107
    .line 108
    invoke-static {v2, v3, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, LS0/l;

    .line 112
    .line 113
    invoke-direct {v2, v0}, LS0/l;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :goto_3
    iget-boolean v2, p0, LS0/i;->O:Z

    .line 125
    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    const-string v2, "LoadTask"

    .line 129
    .line 130
    const-string v3, "Unexpected exception loading stream"

    .line 131
    .line 132
    invoke-static {v2, v3, v0}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, LS0/l;

    .line 136
    .line 137
    invoke-direct {v2, v0}, LS0/l;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :goto_4
    iget-boolean v2, p0, LS0/i;->O:Z

    .line 149
    .line 150
    if-nez v2, :cond_2

    .line 151
    .line 152
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_5
    return-void
.end method
