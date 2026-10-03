.class public final LC0/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/c;
.implements LC0/G;


# instance fields
.field public A:I

.field public B:Z

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LC0/C;

.field public final d:Landroid/media/metrics/PlaybackSession;

.field public final e:J

.field public final f:Lm0/e0;

.field public final g:Lm0/d0;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/String;

.field public k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public l:I

.field public m:I

.field public n:I

.field public o:Lm0/Q;

.field public p:LF/d;

.field public q:LF/d;

.field public r:LF/d;

.field public s:Lm0/t;

.field public t:Lm0/t;

.field public u:Lm0/t;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LC0/F;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, LC0/F;->d:Landroid/media/metrics/PlaybackSession;

    .line 11
    .line 12
    invoke-static {}, Lp0/b;->s()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance p1, Lm0/e0;

    .line 19
    .line 20
    invoke-direct {p1}, Lm0/e0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, LC0/F;->f:Lm0/e0;

    .line 24
    .line 25
    new-instance p1, Lm0/d0;

    .line 26
    .line 27
    invoke-direct {p1}, Lm0/d0;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, LC0/F;->g:Lm0/d0;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, LC0/F;->i:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, LC0/F;->h:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, LC0/F;->e:J

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, LC0/F;->m:I

    .line 54
    .line 55
    iput p1, p0, LC0/F;->n:I

    .line 56
    .line 57
    new-instance p1, LC0/C;

    .line 58
    .line 59
    invoke-direct {p1}, LC0/C;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, LC0/F;->c:LC0/C;

    .line 63
    .line 64
    iput-object p0, p1, LC0/C;->d:LC0/G;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(LF/d;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, LF/d;->J:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, LC0/F;->c:LC0/C;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, v0, LC0/C;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    .line 23
    throw p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, LC0/F;->B:Z

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget v2, p0, LC0/F;->A:I

    .line 11
    .line 12
    invoke-static {v0, v2}, LC0/D;->h(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    .line 17
    iget v2, p0, LC0/F;->y:I

    .line 18
    .line 19
    invoke-static {v0, v2}, LC0/D;->r(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 23
    .line 24
    iget v2, p0, LC0/F;->z:I

    .line 25
    .line 26
    invoke-static {v0, v2}, LC0/D;->v(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, LC0/F;->h:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, p0, LC0/F;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v2, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_0
    invoke-static {v2, v5, v6}, LC0/D;->i(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, LC0/F;->i:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v2, p0, LC0/F;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :goto_1
    invoke-static {v2, v5, v6}, LC0/D;->s(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    cmp-long v0, v5, v3

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_2
    invoke-static {v2, v0}, LC0/D;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 96
    .line 97
    invoke-static {v0}, LC0/D;->d(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Lf/t;

    .line 102
    .line 103
    const/16 v3, 0x15

    .line 104
    .line 105
    invoke-direct {v2, v3, p0, v0}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 115
    .line 116
    iput-object v0, p0, LC0/F;->j:Ljava/lang/String;

    .line 117
    .line 118
    iput v1, p0, LC0/F;->A:I

    .line 119
    .line 120
    iput v1, p0, LC0/F;->y:I

    .line 121
    .line 122
    iput v1, p0, LC0/F;->z:I

    .line 123
    .line 124
    iput-object v0, p0, LC0/F;->s:Lm0/t;

    .line 125
    .line 126
    iput-object v0, p0, LC0/F;->t:Lm0/t;

    .line 127
    .line 128
    iput-object v0, p0, LC0/F;->u:Lm0/t;

    .line 129
    .line 130
    iput-boolean v1, p0, LC0/F;->B:Z

    .line 131
    .line 132
    return-void
.end method

.method public final c(Lm0/f0;LO0/y;)V
    .locals 9

    .line 1
    iget-object v0, p0, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p2, LO0/y;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lm0/f0;->b(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p2, v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v2, p0, LC0/F;->g:Lm0/d0;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, p2, v2, v3}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 20
    .line 21
    .line 22
    iget p2, v2, Lm0/d0;->c:I

    .line 23
    .line 24
    iget-object v2, p0, LC0/F;->f:Lm0/e0;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v2}, Lm0/f0;->o(ILm0/e0;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Lm0/e0;->c:Lm0/I;

    .line 30
    .line 31
    iget-object p1, p1, Lm0/I;->b:Lm0/E;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    const/4 v4, 0x2

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_2
    const/4 v5, 0x3

    .line 40
    iget-object v6, p1, Lm0/E;->b:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    if-nez v6, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lm0/E;->a:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-static {p1}, Lp0/M;->I(Landroid/net/Uri;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :sswitch_0
    const-string p1, "application/x-rtsp"

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v1, 0x3

    .line 70
    goto :goto_0

    .line 71
    :sswitch_1
    const-string p1, "application/dash+xml"

    .line 72
    .line 73
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 v1, 0x2

    .line 81
    goto :goto_0

    .line 82
    :sswitch_2
    const-string p1, "application/vnd.ms-sstr+xml"

    .line 83
    .line 84
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    const/4 v1, 0x1

    .line 92
    goto :goto_0

    .line 93
    :sswitch_3
    const-string p1, "application/x-mpegURL"

    .line 94
    .line 95
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    const/4 v1, 0x0

    .line 103
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x4

    .line 107
    goto :goto_1

    .line 108
    :pswitch_0
    const/4 v3, 0x3

    .line 109
    goto :goto_1

    .line 110
    :pswitch_1
    const/4 v3, 0x1

    .line 111
    goto :goto_1

    .line 112
    :pswitch_2
    const/4 v3, 0x2

    .line 113
    :goto_1
    :pswitch_3
    if-eqz v3, :cond_a

    .line 114
    .line 115
    if-eq v3, p2, :cond_9

    .line 116
    .line 117
    if-eq v3, v4, :cond_8

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_8
    const/4 v3, 0x4

    .line 122
    goto :goto_2

    .line 123
    :cond_9
    const/4 v3, 0x5

    .line 124
    goto :goto_2

    .line 125
    :cond_a
    const/4 v3, 0x3

    .line 126
    :goto_2
    invoke-static {v0, v3}, LC0/D;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 127
    .line 128
    .line 129
    iget-wide v5, v2, Lm0/e0;->m:J

    .line 130
    .line 131
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    cmp-long p1, v5, v7

    .line 137
    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    iget-boolean p1, v2, Lm0/e0;->k:Z

    .line 141
    .line 142
    if-nez p1, :cond_b

    .line 143
    .line 144
    iget-boolean p1, v2, Lm0/e0;->i:Z

    .line 145
    .line 146
    if-nez p1, :cond_b

    .line 147
    .line 148
    invoke-virtual {v2}, Lm0/e0;->a()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_b

    .line 153
    .line 154
    iget-wide v5, v2, Lm0/e0;->m:J

    .line 155
    .line 156
    invoke-static {v5, v6}, Lp0/M;->e0(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    invoke-static {v0, v5, v6}, LC0/D;->w(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 161
    .line 162
    .line 163
    :cond_b
    invoke-virtual {v2}, Lm0/e0;->a()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_c

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_c
    const/4 v4, 0x1

    .line 171
    :goto_3
    invoke-static {v0, v4}, LC0/D;->D(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 172
    .line 173
    .line 174
    iput-boolean p2, p0, LC0/F;->B:Z

    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lm0/Y;Lm2/l;)V
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lm0/r;

    .line 8
    .line 9
    iget-object v1, v1, Lm0/r;->a:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v8, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lm0/r;

    .line 23
    .line 24
    iget-object v2, v2, Lm0/r;->a:Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v9, 0xb

    .line 31
    .line 32
    if-ge v1, v2, :cond_7

    .line 33
    .line 34
    iget-object v2, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lm0/r;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lm0/r;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, v0, Lm2/l;->I:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, LC0/b;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    iget-object v2, v7, LC0/F;->c:LC0/C;

    .line 58
    .line 59
    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v4, v2, LC0/C;->d:LC0/G;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v4, v2, LC0/C;->e:Lm0/f0;

    .line 66
    .line 67
    iget-object v5, v3, LC0/b;->b:Lm0/f0;

    .line 68
    .line 69
    iput-object v5, v2, LC0/C;->e:Lm0/f0;

    .line 70
    .line 71
    iget-object v5, v2, LC0/C;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, LC0/B;

    .line 92
    .line 93
    iget-object v9, v2, LC0/C;->e:Lm0/f0;

    .line 94
    .line 95
    invoke-virtual {v6, v4, v9}, LC0/B;->b(Lm0/f0;Lm0/f0;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_2

    .line 100
    .line 101
    invoke-virtual {v6, v3}, LC0/B;->a(LC0/b;)Z

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 111
    .line 112
    .line 113
    iget-boolean v9, v6, LC0/B;->e:Z

    .line 114
    .line 115
    if-eqz v9, :cond_1

    .line 116
    .line 117
    iget-object v9, v6, LC0/B;->a:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v10, v2, LC0/C;->f:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_3

    .line 126
    .line 127
    invoke-virtual {v2, v6}, LC0/C;->a(LC0/B;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v9, v2, LC0/C;->d:LC0/G;

    .line 131
    .line 132
    iget-object v6, v6, LC0/B;->a:Ljava/lang/String;

    .line 133
    .line 134
    check-cast v9, LC0/F;

    .line 135
    .line 136
    invoke-virtual {v9, v3, v6}, LC0/F;->e(LC0/b;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {v2, v3}, LC0/C;->e(LC0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    monitor-exit v2

    .line 144
    goto :goto_4

    .line 145
    :goto_3
    monitor-exit v2

    .line 146
    throw v0

    .line 147
    :cond_5
    if-ne v2, v9, :cond_6

    .line 148
    .line 149
    iget-object v2, v7, LC0/F;->c:LC0/C;

    .line 150
    .line 151
    iget v4, v7, LC0/F;->l:I

    .line 152
    .line 153
    invoke-virtual {v2, v3, v4}, LC0/C;->g(LC0/b;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    iget-object v2, v7, LC0/F;->c:LC0/C;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, LC0/C;->f(LC0/b;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v10

    .line 170
    invoke-virtual {v0, v8}, Lm2/l;->h(I)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_8

    .line 175
    .line 176
    iget-object v1, v0, Lm2/l;->I:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, LC0/b;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object v2, v7, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 190
    .line 191
    if-eqz v2, :cond_8

    .line 192
    .line 193
    iget-object v2, v1, LC0/b;->b:Lm0/f0;

    .line 194
    .line 195
    iget-object v1, v1, LC0/b;->d:LO0/y;

    .line 196
    .line 197
    invoke-virtual {v7, v2, v1}, LC0/F;->c(Lm0/f0;LO0/y;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    const/4 v12, 0x2

    .line 201
    invoke-virtual {v0, v12}, Lm2/l;->h(I)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    const/4 v13, 0x1

    .line 206
    if-eqz v1, :cond_10

    .line 207
    .line 208
    iget-object v1, v7, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 209
    .line 210
    if-eqz v1, :cond_10

    .line 211
    .line 212
    move-object/from16 v1, p1

    .line 213
    .line 214
    check-cast v1, LB0/O;

    .line 215
    .line 216
    invoke-virtual {v1}, LB0/O;->y()Lm0/m0;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v1, v1, Lm0/m0;->a:Lz4/H;

    .line 221
    .line 222
    invoke-virtual {v1, v8}, Lz4/H;->v(I)Lz4/F;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    :cond_9
    invoke-virtual {v1}, Lz4/a;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_b

    .line 231
    .line 232
    invoke-virtual {v1}, Lz4/a;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lm0/l0;

    .line 237
    .line 238
    const/4 v3, 0x0

    .line 239
    :goto_5
    iget v4, v2, Lm0/l0;->a:I

    .line 240
    .line 241
    if-ge v3, v4, :cond_9

    .line 242
    .line 243
    iget-object v4, v2, Lm0/l0;->e:[Z

    .line 244
    .line 245
    aget-boolean v4, v4, v3

    .line 246
    .line 247
    if-eqz v4, :cond_a

    .line 248
    .line 249
    iget-object v4, v2, Lm0/l0;->b:Lm0/g0;

    .line 250
    .line 251
    iget-object v4, v4, Lm0/g0;->d:[Lm0/t;

    .line 252
    .line 253
    aget-object v4, v4, v3

    .line 254
    .line 255
    iget-object v4, v4, Lm0/t;->s:Lm0/n;

    .line 256
    .line 257
    if-eqz v4, :cond_a

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_b
    const/4 v4, 0x0

    .line 264
    :goto_6
    if-eqz v4, :cond_10

    .line 265
    .line 266
    iget-object v1, v7, LC0/F;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 267
    .line 268
    const/4 v2, 0x0

    .line 269
    :goto_7
    iget v3, v4, Lm0/n;->J:I

    .line 270
    .line 271
    if-ge v2, v3, :cond_f

    .line 272
    .line 273
    iget-object v3, v4, Lm0/n;->G:[Lm0/m;

    .line 274
    .line 275
    aget-object v3, v3, v2

    .line 276
    .line 277
    iget-object v3, v3, Lm0/m;->H:Ljava/util/UUID;

    .line 278
    .line 279
    sget-object v5, Lm0/g;->d:Ljava/util/UUID;

    .line 280
    .line 281
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_c

    .line 286
    .line 287
    const/4 v2, 0x3

    .line 288
    goto :goto_8

    .line 289
    :cond_c
    sget-object v5, Lm0/g;->e:Ljava/util/UUID;

    .line 290
    .line 291
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_d

    .line 296
    .line 297
    const/4 v2, 0x2

    .line 298
    goto :goto_8

    .line 299
    :cond_d
    sget-object v5, Lm0/g;->c:Ljava/util/UUID;

    .line 300
    .line 301
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_e

    .line 306
    .line 307
    const/4 v2, 0x6

    .line 308
    goto :goto_8

    .line 309
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_f
    const/4 v2, 0x1

    .line 313
    :goto_8
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 314
    .line 315
    .line 316
    :cond_10
    const/16 v1, 0x3f3

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Lm2/l;->h(I)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_11

    .line 323
    .line 324
    iget v1, v7, LC0/F;->A:I

    .line 325
    .line 326
    add-int/2addr v1, v13

    .line 327
    iput v1, v7, LC0/F;->A:I

    .line 328
    .line 329
    :cond_11
    iget-object v1, v7, LC0/F;->o:Lm0/Q;

    .line 330
    .line 331
    const/4 v5, 0x5

    .line 332
    const/4 v3, 0x4

    .line 333
    if-nez v1, :cond_12

    .line 334
    .line 335
    const/4 v1, 0x1

    .line 336
    const/16 v6, 0x16

    .line 337
    .line 338
    const/16 v9, 0xd

    .line 339
    .line 340
    const/16 v20, 0x6

    .line 341
    .line 342
    const/16 v21, 0x7

    .line 343
    .line 344
    const/16 v22, 0x9

    .line 345
    .line 346
    const/16 v23, 0x4

    .line 347
    .line 348
    goto/16 :goto_16

    .line 349
    .line 350
    :cond_12
    iget v4, v7, LC0/F;->w:I

    .line 351
    .line 352
    if-ne v4, v3, :cond_13

    .line 353
    .line 354
    const/4 v4, 0x1

    .line 355
    goto :goto_9

    .line 356
    :cond_13
    const/4 v4, 0x0

    .line 357
    :goto_9
    iget v2, v1, Lm0/Q;->G:I

    .line 358
    .line 359
    const/16 v3, 0x3e9

    .line 360
    .line 361
    const/16 v9, 0x14

    .line 362
    .line 363
    if-ne v2, v3, :cond_14

    .line 364
    .line 365
    new-instance v2, LN/r;

    .line 366
    .line 367
    invoke-direct {v2, v9, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 368
    .line 369
    .line 370
    :goto_a
    const/16 v6, 0x16

    .line 371
    .line 372
    const/16 v9, 0xd

    .line 373
    .line 374
    const/16 v20, 0x6

    .line 375
    .line 376
    const/16 v21, 0x7

    .line 377
    .line 378
    const/16 v22, 0x9

    .line 379
    .line 380
    const/16 v23, 0x4

    .line 381
    .line 382
    goto/16 :goto_15

    .line 383
    .line 384
    :cond_14
    instance-of v3, v1, LB0/w;

    .line 385
    .line 386
    if-eqz v3, :cond_16

    .line 387
    .line 388
    move-object v3, v1

    .line 389
    check-cast v3, LB0/w;

    .line 390
    .line 391
    iget v9, v3, LB0/w;->I:I

    .line 392
    .line 393
    if-ne v9, v13, :cond_15

    .line 394
    .line 395
    const/4 v9, 0x1

    .line 396
    goto :goto_b

    .line 397
    :cond_15
    const/4 v9, 0x0

    .line 398
    :goto_b
    iget v3, v3, LB0/w;->M:I

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_16
    const/4 v3, 0x0

    .line 402
    const/4 v9, 0x0

    .line 403
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 404
    .line 405
    .line 406
    move-result-object v15

    .line 407
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    instance-of v6, v15, Ljava/io/IOException;

    .line 411
    .line 412
    const/16 v24, 0x19

    .line 413
    .line 414
    const/16 v25, 0x1a

    .line 415
    .line 416
    const/16 v14, 0x1b

    .line 417
    .line 418
    const/16 v13, 0x17

    .line 419
    .line 420
    if-eqz v6, :cond_2b

    .line 421
    .line 422
    instance-of v3, v15, Ls0/A;

    .line 423
    .line 424
    if-eqz v3, :cond_17

    .line 425
    .line 426
    check-cast v15, Ls0/A;

    .line 427
    .line 428
    new-instance v2, LN/r;

    .line 429
    .line 430
    iget v3, v15, Ls0/A;->J:I

    .line 431
    .line 432
    invoke-direct {v2, v5, v3, v12, v8}, LN/r;-><init>(IIII)V

    .line 433
    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_17
    instance-of v3, v15, Ls0/z;

    .line 437
    .line 438
    if-nez v3, :cond_18

    .line 439
    .line 440
    instance-of v3, v15, Lm0/P;

    .line 441
    .line 442
    if-eqz v3, :cond_19

    .line 443
    .line 444
    :cond_18
    const/4 v3, 0x4

    .line 445
    const/16 v6, 0x9

    .line 446
    .line 447
    const/4 v9, 0x6

    .line 448
    const/4 v13, 0x7

    .line 449
    const/16 v14, 0x8

    .line 450
    .line 451
    goto/16 :goto_f

    .line 452
    .line 453
    :cond_19
    instance-of v3, v15, Ls0/y;

    .line 454
    .line 455
    if-nez v3, :cond_1a

    .line 456
    .line 457
    instance-of v4, v15, Ls0/P;

    .line 458
    .line 459
    if-eqz v4, :cond_1b

    .line 460
    .line 461
    :cond_1a
    const/16 v6, 0x9

    .line 462
    .line 463
    goto/16 :goto_e

    .line 464
    .line 465
    :cond_1b
    const/16 v3, 0x3ea

    .line 466
    .line 467
    if-ne v2, v3, :cond_1c

    .line 468
    .line 469
    new-instance v2, LN/r;

    .line 470
    .line 471
    const/16 v3, 0x15

    .line 472
    .line 473
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 474
    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_1c
    instance-of v2, v15, LG0/k;

    .line 478
    .line 479
    if-eqz v2, :cond_23

    .line 480
    .line 481
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    instance-of v3, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 489
    .line 490
    if-eqz v3, :cond_1d

    .line 491
    .line 492
    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 493
    .line 494
    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v2}, Lp0/M;->x(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    invoke-static {v2}, Lp0/M;->w(I)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    packed-switch v3, :pswitch_data_0

    .line 507
    .line 508
    .line 509
    goto :goto_d

    .line 510
    :pswitch_0
    const/16 v14, 0x1a

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :pswitch_1
    const/16 v14, 0x19

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :pswitch_2
    const/16 v14, 0x1c

    .line 517
    .line 518
    goto :goto_d

    .line 519
    :pswitch_3
    const/16 v14, 0x18

    .line 520
    .line 521
    :goto_d
    new-instance v3, LN/r;

    .line 522
    .line 523
    invoke-direct {v3, v14, v2, v12, v8}, LN/r;-><init>(IIII)V

    .line 524
    .line 525
    .line 526
    move-object v2, v3

    .line 527
    goto/16 :goto_a

    .line 528
    .line 529
    :cond_1d
    instance-of v3, v2, Landroid/media/MediaDrmResetException;

    .line 530
    .line 531
    if-eqz v3, :cond_1e

    .line 532
    .line 533
    new-instance v2, LN/r;

    .line 534
    .line 535
    invoke-direct {v2, v14, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_a

    .line 539
    .line 540
    :cond_1e
    instance-of v3, v2, Landroid/media/NotProvisionedException;

    .line 541
    .line 542
    if-eqz v3, :cond_1f

    .line 543
    .line 544
    new-instance v2, LN/r;

    .line 545
    .line 546
    const/16 v4, 0x18

    .line 547
    .line 548
    invoke-direct {v2, v4, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 549
    .line 550
    .line 551
    goto/16 :goto_a

    .line 552
    .line 553
    :cond_1f
    instance-of v3, v2, Landroid/media/DeniedByServerException;

    .line 554
    .line 555
    if-eqz v3, :cond_20

    .line 556
    .line 557
    new-instance v2, LN/r;

    .line 558
    .line 559
    const/16 v3, 0x1d

    .line 560
    .line 561
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_a

    .line 565
    .line 566
    :cond_20
    instance-of v3, v2, LG0/C;

    .line 567
    .line 568
    if-eqz v3, :cond_21

    .line 569
    .line 570
    new-instance v2, LN/r;

    .line 571
    .line 572
    invoke-direct {v2, v13, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_a

    .line 576
    .line 577
    :cond_21
    instance-of v2, v2, LG0/g;

    .line 578
    .line 579
    if-eqz v2, :cond_22

    .line 580
    .line 581
    new-instance v2, LN/r;

    .line 582
    .line 583
    const/16 v6, 0x1c

    .line 584
    .line 585
    invoke-direct {v2, v6, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_a

    .line 589
    .line 590
    :cond_22
    new-instance v2, LN/r;

    .line 591
    .line 592
    const/16 v3, 0x1e

    .line 593
    .line 594
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_a

    .line 598
    .line 599
    :cond_23
    instance-of v2, v15, Ls0/u;

    .line 600
    .line 601
    if-eqz v2, :cond_25

    .line 602
    .line 603
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    instance-of v2, v2, Ljava/io/FileNotFoundException;

    .line 608
    .line 609
    if-eqz v2, :cond_25

    .line 610
    .line 611
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    instance-of v3, v2, Landroid/system/ErrnoException;

    .line 623
    .line 624
    if-eqz v3, :cond_24

    .line 625
    .line 626
    check-cast v2, Landroid/system/ErrnoException;

    .line 627
    .line 628
    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    .line 629
    .line 630
    sget v3, Landroid/system/OsConstants;->EACCES:I

    .line 631
    .line 632
    if-ne v2, v3, :cond_24

    .line 633
    .line 634
    new-instance v2, LN/r;

    .line 635
    .line 636
    const/16 v3, 0x20

    .line 637
    .line 638
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_a

    .line 642
    .line 643
    :cond_24
    new-instance v2, LN/r;

    .line 644
    .line 645
    const/16 v3, 0x1f

    .line 646
    .line 647
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_a

    .line 651
    .line 652
    :cond_25
    new-instance v2, LN/r;

    .line 653
    .line 654
    const/16 v6, 0x9

    .line 655
    .line 656
    invoke-direct {v2, v6, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_a

    .line 660
    .line 661
    :goto_e
    iget-object v2, v7, LC0/F;->a:Landroid/content/Context;

    .line 662
    .line 663
    invoke-static {v2}, Lp0/C;->b(Landroid/content/Context;)Lp0/C;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    invoke-virtual {v2}, Lp0/C;->c()I

    .line 668
    .line 669
    .line 670
    move-result v2

    .line 671
    const/4 v4, 0x1

    .line 672
    if-ne v2, v4, :cond_26

    .line 673
    .line 674
    new-instance v2, LN/r;

    .line 675
    .line 676
    const/4 v3, 0x3

    .line 677
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 678
    .line 679
    .line 680
    goto/16 :goto_a

    .line 681
    .line 682
    :cond_26
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    instance-of v4, v2, Ljava/net/UnknownHostException;

    .line 687
    .line 688
    if-eqz v4, :cond_27

    .line 689
    .line 690
    new-instance v2, LN/r;

    .line 691
    .line 692
    const/4 v9, 0x6

    .line 693
    invoke-direct {v2, v9, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_a

    .line 697
    .line 698
    :cond_27
    const/4 v9, 0x6

    .line 699
    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    .line 700
    .line 701
    if-eqz v2, :cond_28

    .line 702
    .line 703
    new-instance v2, LN/r;

    .line 704
    .line 705
    const/4 v13, 0x7

    .line 706
    invoke-direct {v2, v13, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_a

    .line 710
    .line 711
    :cond_28
    const/4 v13, 0x7

    .line 712
    if-eqz v3, :cond_29

    .line 713
    .line 714
    check-cast v15, Ls0/y;

    .line 715
    .line 716
    iget v2, v15, Ls0/y;->I:I

    .line 717
    .line 718
    const/4 v3, 0x1

    .line 719
    if-ne v2, v3, :cond_29

    .line 720
    .line 721
    new-instance v2, LN/r;

    .line 722
    .line 723
    const/4 v3, 0x4

    .line 724
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_a

    .line 728
    .line 729
    :cond_29
    const/4 v3, 0x4

    .line 730
    new-instance v2, LN/r;

    .line 731
    .line 732
    const/16 v14, 0x8

    .line 733
    .line 734
    invoke-direct {v2, v14, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_a

    .line 738
    .line 739
    :goto_f
    new-instance v2, LN/r;

    .line 740
    .line 741
    if-eqz v4, :cond_2a

    .line 742
    .line 743
    const/16 v4, 0xa

    .line 744
    .line 745
    goto :goto_10

    .line 746
    :cond_2a
    const/16 v4, 0xb

    .line 747
    .line 748
    :goto_10
    invoke-direct {v2, v4, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_a

    .line 752
    .line 753
    :cond_2b
    const/16 v2, 0x8

    .line 754
    .line 755
    const/16 v4, 0x18

    .line 756
    .line 757
    const/16 v6, 0x1c

    .line 758
    .line 759
    const/16 v20, 0x6

    .line 760
    .line 761
    const/16 v21, 0x7

    .line 762
    .line 763
    const/16 v22, 0x9

    .line 764
    .line 765
    const/16 v23, 0x4

    .line 766
    .line 767
    if-eqz v9, :cond_2d

    .line 768
    .line 769
    if-eqz v3, :cond_2c

    .line 770
    .line 771
    const/4 v2, 0x1

    .line 772
    if-ne v3, v2, :cond_2d

    .line 773
    .line 774
    :cond_2c
    new-instance v2, LN/r;

    .line 775
    .line 776
    const/16 v3, 0x23

    .line 777
    .line 778
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 779
    .line 780
    .line 781
    :goto_11
    const/16 v6, 0x16

    .line 782
    .line 783
    const/16 v9, 0xd

    .line 784
    .line 785
    goto/16 :goto_15

    .line 786
    .line 787
    :cond_2d
    if-eqz v9, :cond_2e

    .line 788
    .line 789
    const/4 v2, 0x3

    .line 790
    if-ne v3, v2, :cond_2e

    .line 791
    .line 792
    new-instance v2, LN/r;

    .line 793
    .line 794
    const/16 v3, 0xf

    .line 795
    .line 796
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 797
    .line 798
    .line 799
    goto :goto_11

    .line 800
    :cond_2e
    if-eqz v9, :cond_2f

    .line 801
    .line 802
    if-ne v3, v12, :cond_2f

    .line 803
    .line 804
    new-instance v2, LN/r;

    .line 805
    .line 806
    invoke-direct {v2, v13, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 807
    .line 808
    .line 809
    goto :goto_11

    .line 810
    :cond_2f
    instance-of v2, v15, LK0/p;

    .line 811
    .line 812
    if-eqz v2, :cond_30

    .line 813
    .line 814
    check-cast v15, LK0/p;

    .line 815
    .line 816
    iget-object v2, v15, LK0/p;->J:Ljava/lang/String;

    .line 817
    .line 818
    invoke-static {v2}, Lp0/M;->x(Ljava/lang/String;)I

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    new-instance v3, LN/r;

    .line 823
    .line 824
    const/16 v9, 0xd

    .line 825
    .line 826
    invoke-direct {v3, v9, v2, v12, v8}, LN/r;-><init>(IIII)V

    .line 827
    .line 828
    .line 829
    :goto_12
    move-object v2, v3

    .line 830
    :goto_13
    const/16 v6, 0x16

    .line 831
    .line 832
    goto/16 :goto_15

    .line 833
    .line 834
    :cond_30
    const/16 v9, 0xd

    .line 835
    .line 836
    instance-of v2, v15, LK0/n;

    .line 837
    .line 838
    const/16 v3, 0xe

    .line 839
    .line 840
    if-eqz v2, :cond_31

    .line 841
    .line 842
    check-cast v15, LK0/n;

    .line 843
    .line 844
    new-instance v2, LN/r;

    .line 845
    .line 846
    iget v4, v15, LK0/n;->G:I

    .line 847
    .line 848
    invoke-direct {v2, v3, v4, v12, v8}, LN/r;-><init>(IIII)V

    .line 849
    .line 850
    .line 851
    goto :goto_13

    .line 852
    :cond_31
    instance-of v2, v15, Ljava/lang/OutOfMemoryError;

    .line 853
    .line 854
    if-eqz v2, :cond_32

    .line 855
    .line 856
    new-instance v2, LN/r;

    .line 857
    .line 858
    invoke-direct {v2, v3, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 859
    .line 860
    .line 861
    goto :goto_13

    .line 862
    :cond_32
    instance-of v2, v15, LD0/r;

    .line 863
    .line 864
    if-eqz v2, :cond_33

    .line 865
    .line 866
    check-cast v15, LD0/r;

    .line 867
    .line 868
    new-instance v2, LN/r;

    .line 869
    .line 870
    const/16 v3, 0x11

    .line 871
    .line 872
    iget v4, v15, LD0/r;->G:I

    .line 873
    .line 874
    invoke-direct {v2, v3, v4, v12, v8}, LN/r;-><init>(IIII)V

    .line 875
    .line 876
    .line 877
    goto :goto_13

    .line 878
    :cond_33
    instance-of v2, v15, LD0/u;

    .line 879
    .line 880
    if-eqz v2, :cond_34

    .line 881
    .line 882
    check-cast v15, LD0/u;

    .line 883
    .line 884
    new-instance v2, LN/r;

    .line 885
    .line 886
    const/16 v3, 0x12

    .line 887
    .line 888
    iget v4, v15, LD0/u;->G:I

    .line 889
    .line 890
    invoke-direct {v2, v3, v4, v12, v8}, LN/r;-><init>(IIII)V

    .line 891
    .line 892
    .line 893
    goto :goto_13

    .line 894
    :cond_34
    instance-of v2, v15, Landroid/media/MediaCodec$CryptoException;

    .line 895
    .line 896
    if-eqz v2, :cond_35

    .line 897
    .line 898
    check-cast v15, Landroid/media/MediaCodec$CryptoException;

    .line 899
    .line 900
    invoke-virtual {v15}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    invoke-static {v2}, Lp0/M;->w(I)I

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    packed-switch v3, :pswitch_data_1

    .line 909
    .line 910
    .line 911
    goto :goto_14

    .line 912
    :pswitch_4
    const/16 v14, 0x1a

    .line 913
    .line 914
    goto :goto_14

    .line 915
    :pswitch_5
    const/16 v14, 0x19

    .line 916
    .line 917
    goto :goto_14

    .line 918
    :pswitch_6
    const/16 v14, 0x1c

    .line 919
    .line 920
    goto :goto_14

    .line 921
    :pswitch_7
    const/16 v14, 0x18

    .line 922
    .line 923
    :goto_14
    new-instance v3, LN/r;

    .line 924
    .line 925
    invoke-direct {v3, v14, v2, v12, v8}, LN/r;-><init>(IIII)V

    .line 926
    .line 927
    .line 928
    goto :goto_12

    .line 929
    :cond_35
    new-instance v2, LN/r;

    .line 930
    .line 931
    const/16 v6, 0x16

    .line 932
    .line 933
    invoke-direct {v2, v6, v8, v12, v8}, LN/r;-><init>(IIII)V

    .line 934
    .line 935
    .line 936
    :goto_15
    new-instance v3, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 937
    .line 938
    invoke-direct {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    .line 939
    .line 940
    .line 941
    iget-wide v13, v7, LC0/F;->e:J

    .line 942
    .line 943
    sub-long v13, v10, v13

    .line 944
    .line 945
    invoke-virtual {v3, v13, v14}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    iget v4, v2, LN/r;->H:I

    .line 950
    .line 951
    invoke-virtual {v3, v4}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    iget v2, v2, LN/r;->I:I

    .line 956
    .line 957
    invoke-virtual {v3, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    new-instance v2, Lf/t;

    .line 970
    .line 971
    const/16 v3, 0x14

    .line 972
    .line 973
    invoke-direct {v2, v3, v7, v1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    iget-object v1, v7, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 977
    .line 978
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 979
    .line 980
    .line 981
    const/4 v1, 0x1

    .line 982
    iput-boolean v1, v7, LC0/F;->B:Z

    .line 983
    .line 984
    const/4 v2, 0x0

    .line 985
    iput-object v2, v7, LC0/F;->o:Lm0/Q;

    .line 986
    .line 987
    :goto_16
    invoke-virtual {v0, v12}, Lm2/l;->h(I)Z

    .line 988
    .line 989
    .line 990
    move-result v2

    .line 991
    if-eqz v2, :cond_36

    .line 992
    .line 993
    move-object/from16 v2, p1

    .line 994
    .line 995
    check-cast v2, LB0/O;

    .line 996
    .line 997
    invoke-virtual {v2}, LB0/O;->y()Lm0/m0;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-virtual {v2, v12}, Lm0/m0;->b(I)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v3

    .line 1005
    invoke-virtual {v2, v1}, Lm0/m0;->b(I)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v13

    .line 1009
    const/4 v14, 0x3

    .line 1010
    invoke-virtual {v2, v14}, Lm0/m0;->b(I)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v15

    .line 1014
    if-nez v3, :cond_37

    .line 1015
    .line 1016
    if-nez v13, :cond_37

    .line 1017
    .line 1018
    if-eqz v15, :cond_36

    .line 1019
    .line 1020
    goto :goto_17

    .line 1021
    :cond_36
    const/16 v14, 0xa

    .line 1022
    .line 1023
    const/16 v17, 0x8

    .line 1024
    .line 1025
    const/16 v18, 0xd

    .line 1026
    .line 1027
    const/16 v19, 0x5

    .line 1028
    .line 1029
    goto/16 :goto_1e

    .line 1030
    .line 1031
    :cond_37
    :goto_17
    if-nez v3, :cond_3a

    .line 1032
    .line 1033
    iget-object v1, v7, LC0/F;->s:Lm0/t;

    .line 1034
    .line 1035
    const/4 v3, 0x0

    .line 1036
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    if-eqz v1, :cond_38

    .line 1041
    .line 1042
    move-object v9, v3

    .line 1043
    goto :goto_19

    .line 1044
    :cond_38
    iget-object v1, v7, LC0/F;->s:Lm0/t;

    .line 1045
    .line 1046
    if-nez v1, :cond_39

    .line 1047
    .line 1048
    const/16 v16, 0x1

    .line 1049
    .line 1050
    goto :goto_18

    .line 1051
    :cond_39
    const/16 v16, 0x0

    .line 1052
    .line 1053
    :goto_18
    iput-object v3, v7, LC0/F;->s:Lm0/t;

    .line 1054
    .line 1055
    const/4 v2, 0x1

    .line 1056
    move-object/from16 v1, p0

    .line 1057
    .line 1058
    const/16 v17, 0x8

    .line 1059
    .line 1060
    move-object v9, v3

    .line 1061
    const/16 v14, 0xa

    .line 1062
    .line 1063
    const/16 v18, 0xd

    .line 1064
    .line 1065
    move-wide v3, v10

    .line 1066
    const/16 v19, 0x5

    .line 1067
    .line 1068
    move-object v5, v9

    .line 1069
    move/from16 v6, v16

    .line 1070
    .line 1071
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_1a

    .line 1075
    :cond_3a
    const/4 v9, 0x0

    .line 1076
    :goto_19
    const/16 v14, 0xa

    .line 1077
    .line 1078
    const/16 v17, 0x8

    .line 1079
    .line 1080
    const/16 v18, 0xd

    .line 1081
    .line 1082
    const/16 v19, 0x5

    .line 1083
    .line 1084
    :goto_1a
    if-nez v13, :cond_3d

    .line 1085
    .line 1086
    iget-object v1, v7, LC0/F;->t:Lm0/t;

    .line 1087
    .line 1088
    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v1

    .line 1092
    if-eqz v1, :cond_3b

    .line 1093
    .line 1094
    goto :goto_1c

    .line 1095
    :cond_3b
    iget-object v1, v7, LC0/F;->t:Lm0/t;

    .line 1096
    .line 1097
    if-nez v1, :cond_3c

    .line 1098
    .line 1099
    const/4 v6, 0x1

    .line 1100
    goto :goto_1b

    .line 1101
    :cond_3c
    const/4 v6, 0x0

    .line 1102
    :goto_1b
    iput-object v9, v7, LC0/F;->t:Lm0/t;

    .line 1103
    .line 1104
    const/4 v2, 0x0

    .line 1105
    move-object/from16 v1, p0

    .line 1106
    .line 1107
    move-wide v3, v10

    .line 1108
    move-object v5, v9

    .line 1109
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1110
    .line 1111
    .line 1112
    :cond_3d
    :goto_1c
    if-nez v15, :cond_40

    .line 1113
    .line 1114
    iget-object v1, v7, LC0/F;->u:Lm0/t;

    .line 1115
    .line 1116
    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    if-eqz v1, :cond_3e

    .line 1121
    .line 1122
    goto :goto_1e

    .line 1123
    :cond_3e
    iget-object v1, v7, LC0/F;->u:Lm0/t;

    .line 1124
    .line 1125
    if-nez v1, :cond_3f

    .line 1126
    .line 1127
    const/4 v6, 0x1

    .line 1128
    goto :goto_1d

    .line 1129
    :cond_3f
    const/4 v6, 0x0

    .line 1130
    :goto_1d
    iput-object v9, v7, LC0/F;->u:Lm0/t;

    .line 1131
    .line 1132
    const/4 v2, 0x2

    .line 1133
    move-object/from16 v1, p0

    .line 1134
    .line 1135
    move-wide v3, v10

    .line 1136
    move-object v5, v9

    .line 1137
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1138
    .line 1139
    .line 1140
    :cond_40
    :goto_1e
    iget-object v1, v7, LC0/F;->p:LF/d;

    .line 1141
    .line 1142
    invoke-virtual {v7, v1}, LC0/F;->a(LF/d;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v1

    .line 1146
    if-eqz v1, :cond_43

    .line 1147
    .line 1148
    iget-object v1, v7, LC0/F;->p:LF/d;

    .line 1149
    .line 1150
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 1151
    .line 1152
    move-object v5, v2

    .line 1153
    check-cast v5, Lm0/t;

    .line 1154
    .line 1155
    iget v2, v5, Lm0/t;->w:I

    .line 1156
    .line 1157
    const/4 v3, -0x1

    .line 1158
    if-eq v2, v3, :cond_43

    .line 1159
    .line 1160
    iget v1, v1, LF/d;->H:I

    .line 1161
    .line 1162
    iget-object v2, v7, LC0/F;->s:Lm0/t;

    .line 1163
    .line 1164
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1165
    .line 1166
    .line 1167
    move-result v2

    .line 1168
    if-eqz v2, :cond_41

    .line 1169
    .line 1170
    :goto_1f
    const/4 v1, 0x0

    .line 1171
    goto :goto_21

    .line 1172
    :cond_41
    iget-object v2, v7, LC0/F;->s:Lm0/t;

    .line 1173
    .line 1174
    if-nez v2, :cond_42

    .line 1175
    .line 1176
    if-nez v1, :cond_42

    .line 1177
    .line 1178
    const/4 v6, 0x1

    .line 1179
    goto :goto_20

    .line 1180
    :cond_42
    move v6, v1

    .line 1181
    :goto_20
    iput-object v5, v7, LC0/F;->s:Lm0/t;

    .line 1182
    .line 1183
    const/4 v2, 0x1

    .line 1184
    move-object/from16 v1, p0

    .line 1185
    .line 1186
    move-wide v3, v10

    .line 1187
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1188
    .line 1189
    .line 1190
    goto :goto_1f

    .line 1191
    :goto_21
    iput-object v1, v7, LC0/F;->p:LF/d;

    .line 1192
    .line 1193
    :cond_43
    iget-object v1, v7, LC0/F;->q:LF/d;

    .line 1194
    .line 1195
    invoke-virtual {v7, v1}, LC0/F;->a(LF/d;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v1

    .line 1199
    if-eqz v1, :cond_46

    .line 1200
    .line 1201
    iget-object v1, v7, LC0/F;->q:LF/d;

    .line 1202
    .line 1203
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 1204
    .line 1205
    move-object v5, v2

    .line 1206
    check-cast v5, Lm0/t;

    .line 1207
    .line 1208
    iget v1, v1, LF/d;->H:I

    .line 1209
    .line 1210
    iget-object v2, v7, LC0/F;->t:Lm0/t;

    .line 1211
    .line 1212
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v2

    .line 1216
    if-eqz v2, :cond_44

    .line 1217
    .line 1218
    :goto_22
    const/4 v1, 0x0

    .line 1219
    goto :goto_24

    .line 1220
    :cond_44
    iget-object v2, v7, LC0/F;->t:Lm0/t;

    .line 1221
    .line 1222
    if-nez v2, :cond_45

    .line 1223
    .line 1224
    if-nez v1, :cond_45

    .line 1225
    .line 1226
    const/4 v6, 0x1

    .line 1227
    goto :goto_23

    .line 1228
    :cond_45
    move v6, v1

    .line 1229
    :goto_23
    iput-object v5, v7, LC0/F;->t:Lm0/t;

    .line 1230
    .line 1231
    const/4 v2, 0x0

    .line 1232
    move-object/from16 v1, p0

    .line 1233
    .line 1234
    move-wide v3, v10

    .line 1235
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_22

    .line 1239
    :goto_24
    iput-object v1, v7, LC0/F;->q:LF/d;

    .line 1240
    .line 1241
    :cond_46
    iget-object v1, v7, LC0/F;->r:LF/d;

    .line 1242
    .line 1243
    invoke-virtual {v7, v1}, LC0/F;->a(LF/d;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    if-eqz v1, :cond_49

    .line 1248
    .line 1249
    iget-object v1, v7, LC0/F;->r:LF/d;

    .line 1250
    .line 1251
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 1252
    .line 1253
    move-object v5, v2

    .line 1254
    check-cast v5, Lm0/t;

    .line 1255
    .line 1256
    iget v1, v1, LF/d;->H:I

    .line 1257
    .line 1258
    iget-object v2, v7, LC0/F;->u:Lm0/t;

    .line 1259
    .line 1260
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v2

    .line 1264
    if-eqz v2, :cond_47

    .line 1265
    .line 1266
    :goto_25
    const/4 v1, 0x0

    .line 1267
    goto :goto_27

    .line 1268
    :cond_47
    iget-object v2, v7, LC0/F;->u:Lm0/t;

    .line 1269
    .line 1270
    if-nez v2, :cond_48

    .line 1271
    .line 1272
    if-nez v1, :cond_48

    .line 1273
    .line 1274
    const/4 v6, 0x1

    .line 1275
    goto :goto_26

    .line 1276
    :cond_48
    move v6, v1

    .line 1277
    :goto_26
    iput-object v5, v7, LC0/F;->u:Lm0/t;

    .line 1278
    .line 1279
    const/4 v2, 0x2

    .line 1280
    move-object/from16 v1, p0

    .line 1281
    .line 1282
    move-wide v3, v10

    .line 1283
    invoke-virtual/range {v1 .. v6}, LC0/F;->f(IJLm0/t;I)V

    .line 1284
    .line 1285
    .line 1286
    goto :goto_25

    .line 1287
    :goto_27
    iput-object v1, v7, LC0/F;->r:LF/d;

    .line 1288
    .line 1289
    :cond_49
    iget-object v1, v7, LC0/F;->a:Landroid/content/Context;

    .line 1290
    .line 1291
    invoke-static {v1}, Lp0/C;->b(Landroid/content/Context;)Lp0/C;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Lp0/C;->c()I

    .line 1296
    .line 1297
    .line 1298
    move-result v1

    .line 1299
    packed-switch v1, :pswitch_data_2

    .line 1300
    .line 1301
    .line 1302
    :pswitch_8
    const/4 v6, 0x1

    .line 1303
    goto :goto_28

    .line 1304
    :pswitch_9
    const/4 v6, 0x7

    .line 1305
    goto :goto_28

    .line 1306
    :pswitch_a
    const/16 v6, 0x8

    .line 1307
    .line 1308
    goto :goto_28

    .line 1309
    :pswitch_b
    const/4 v6, 0x3

    .line 1310
    goto :goto_28

    .line 1311
    :pswitch_c
    const/4 v6, 0x6

    .line 1312
    goto :goto_28

    .line 1313
    :pswitch_d
    const/4 v6, 0x5

    .line 1314
    goto :goto_28

    .line 1315
    :pswitch_e
    const/4 v6, 0x4

    .line 1316
    goto :goto_28

    .line 1317
    :pswitch_f
    const/4 v6, 0x2

    .line 1318
    goto :goto_28

    .line 1319
    :pswitch_10
    const/16 v6, 0x9

    .line 1320
    .line 1321
    goto :goto_28

    .line 1322
    :pswitch_11
    const/4 v6, 0x0

    .line 1323
    :goto_28
    iget v1, v7, LC0/F;->n:I

    .line 1324
    .line 1325
    if-eq v6, v1, :cond_4a

    .line 1326
    .line 1327
    iput v6, v7, LC0/F;->n:I

    .line 1328
    .line 1329
    new-instance v1, Landroid/media/metrics/NetworkEvent$Builder;

    .line 1330
    .line 1331
    invoke-direct {v1}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v1, v6}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v1

    .line 1338
    iget-wide v2, v7, LC0/F;->e:J

    .line 1339
    .line 1340
    sub-long v2, v10, v2

    .line 1341
    .line 1342
    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v1

    .line 1350
    new-instance v2, Lf/t;

    .line 1351
    .line 1352
    const/16 v3, 0x13

    .line 1353
    .line 1354
    invoke-direct {v2, v3, v7, v1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1355
    .line 1356
    .line 1357
    iget-object v1, v7, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 1358
    .line 1359
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1360
    .line 1361
    .line 1362
    :cond_4a
    move-object/from16 v1, p1

    .line 1363
    .line 1364
    check-cast v1, LB0/O;

    .line 1365
    .line 1366
    invoke-virtual {v1}, LB0/O;->C()I

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    if-eq v2, v12, :cond_4b

    .line 1371
    .line 1372
    iput-boolean v8, v7, LC0/F;->v:Z

    .line 1373
    .line 1374
    :cond_4b
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 1375
    .line 1376
    .line 1377
    iget-object v2, v1, LB0/O;->N0:LB0/v0;

    .line 1378
    .line 1379
    iget-object v2, v2, LB0/v0;->f:LB0/w;

    .line 1380
    .line 1381
    if-nez v2, :cond_4c

    .line 1382
    .line 1383
    iput-boolean v8, v7, LC0/F;->x:Z

    .line 1384
    .line 1385
    goto :goto_29

    .line 1386
    :cond_4c
    invoke-virtual {v0, v14}, Lm2/l;->h(I)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v2

    .line 1390
    if-eqz v2, :cond_4d

    .line 1391
    .line 1392
    const/4 v2, 0x1

    .line 1393
    iput-boolean v2, v7, LC0/F;->x:Z

    .line 1394
    .line 1395
    :cond_4d
    :goto_29
    invoke-virtual {v1}, LB0/O;->C()I

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    iget-boolean v3, v7, LC0/F;->v:Z

    .line 1400
    .line 1401
    if-eqz v3, :cond_4e

    .line 1402
    .line 1403
    const/4 v1, 0x1

    .line 1404
    const/4 v9, 0x5

    .line 1405
    goto/16 :goto_2c

    .line 1406
    .line 1407
    :cond_4e
    iget-boolean v3, v7, LC0/F;->x:Z

    .line 1408
    .line 1409
    if-eqz v3, :cond_4f

    .line 1410
    .line 1411
    const/4 v1, 0x1

    .line 1412
    const/16 v9, 0xd

    .line 1413
    .line 1414
    goto :goto_2c

    .line 1415
    :cond_4f
    const/4 v3, 0x4

    .line 1416
    if-ne v2, v3, :cond_50

    .line 1417
    .line 1418
    const/4 v1, 0x1

    .line 1419
    const/16 v9, 0xb

    .line 1420
    .line 1421
    goto :goto_2c

    .line 1422
    :cond_50
    const/16 v9, 0xc

    .line 1423
    .line 1424
    if-ne v2, v12, :cond_55

    .line 1425
    .line 1426
    iget v2, v7, LC0/F;->m:I

    .line 1427
    .line 1428
    if-eqz v2, :cond_54

    .line 1429
    .line 1430
    if-eq v2, v12, :cond_54

    .line 1431
    .line 1432
    if-ne v2, v9, :cond_51

    .line 1433
    .line 1434
    goto :goto_2b

    .line 1435
    :cond_51
    invoke-virtual {v1}, LB0/O;->B()Z

    .line 1436
    .line 1437
    .line 1438
    move-result v2

    .line 1439
    if-nez v2, :cond_52

    .line 1440
    .line 1441
    const/4 v1, 0x1

    .line 1442
    const/4 v9, 0x7

    .line 1443
    goto :goto_2c

    .line 1444
    :cond_52
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 1445
    .line 1446
    .line 1447
    iget-object v1, v1, LB0/O;->N0:LB0/v0;

    .line 1448
    .line 1449
    iget v1, v1, LB0/v0;->n:I

    .line 1450
    .line 1451
    if-eqz v1, :cond_53

    .line 1452
    .line 1453
    const/16 v9, 0xa

    .line 1454
    .line 1455
    goto :goto_2a

    .line 1456
    :cond_53
    const/4 v9, 0x6

    .line 1457
    :goto_2a
    const/4 v1, 0x1

    .line 1458
    goto :goto_2c

    .line 1459
    :cond_54
    :goto_2b
    const/4 v1, 0x1

    .line 1460
    const/4 v9, 0x2

    .line 1461
    goto :goto_2c

    .line 1462
    :cond_55
    const/4 v4, 0x3

    .line 1463
    if-ne v2, v4, :cond_58

    .line 1464
    .line 1465
    invoke-virtual {v1}, LB0/O;->B()Z

    .line 1466
    .line 1467
    .line 1468
    move-result v2

    .line 1469
    if-nez v2, :cond_56

    .line 1470
    .line 1471
    const/4 v1, 0x1

    .line 1472
    const/4 v9, 0x4

    .line 1473
    goto :goto_2c

    .line 1474
    :cond_56
    invoke-virtual {v1}, LB0/O;->c0()V

    .line 1475
    .line 1476
    .line 1477
    iget-object v1, v1, LB0/O;->N0:LB0/v0;

    .line 1478
    .line 1479
    iget v1, v1, LB0/v0;->n:I

    .line 1480
    .line 1481
    if-eqz v1, :cond_57

    .line 1482
    .line 1483
    const/16 v9, 0x9

    .line 1484
    .line 1485
    goto :goto_2a

    .line 1486
    :cond_57
    const/4 v9, 0x3

    .line 1487
    goto :goto_2a

    .line 1488
    :cond_58
    const/4 v1, 0x1

    .line 1489
    if-ne v2, v1, :cond_59

    .line 1490
    .line 1491
    iget v2, v7, LC0/F;->m:I

    .line 1492
    .line 1493
    if-eqz v2, :cond_59

    .line 1494
    .line 1495
    goto :goto_2c

    .line 1496
    :cond_59
    iget v9, v7, LC0/F;->m:I

    .line 1497
    .line 1498
    :goto_2c
    iget v2, v7, LC0/F;->m:I

    .line 1499
    .line 1500
    if-eq v2, v9, :cond_5a

    .line 1501
    .line 1502
    iput v9, v7, LC0/F;->m:I

    .line 1503
    .line 1504
    iput-boolean v1, v7, LC0/F;->B:Z

    .line 1505
    .line 1506
    new-instance v1, Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1507
    .line 1508
    invoke-direct {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    .line 1509
    .line 1510
    .line 1511
    iget v2, v7, LC0/F;->m:I

    .line 1512
    .line 1513
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    iget-wide v2, v7, LC0/F;->e:J

    .line 1518
    .line 1519
    sub-long/2addr v10, v2

    .line 1520
    invoke-virtual {v1, v10, v11}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    invoke-virtual {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v1

    .line 1528
    new-instance v2, Lf/t;

    .line 1529
    .line 1530
    const/16 v3, 0x16

    .line 1531
    .line 1532
    invoke-direct {v2, v3, v7, v1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    iget-object v1, v7, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 1536
    .line 1537
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1538
    .line 1539
    .line 1540
    :cond_5a
    const/16 v1, 0x404

    .line 1541
    .line 1542
    invoke-virtual {v0, v1}, Lm2/l;->h(I)Z

    .line 1543
    .line 1544
    .line 1545
    move-result v2

    .line 1546
    if-eqz v2, :cond_5b

    .line 1547
    .line 1548
    iget-object v2, v7, LC0/F;->c:LC0/C;

    .line 1549
    .line 1550
    iget-object v0, v0, Lm2/l;->I:Ljava/lang/Object;

    .line 1551
    .line 1552
    check-cast v0, Landroid/util/SparseArray;

    .line 1553
    .line 1554
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v0

    .line 1558
    check-cast v0, LC0/b;

    .line 1559
    .line 1560
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v2, v0}, LC0/C;->b(LC0/b;)V

    .line 1564
    .line 1565
    .line 1566
    :cond_5b
    return-void

    .line 1567
    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final e(LC0/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, LC0/b;->d:LO0/y;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, LO0/y;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, LC0/F;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, LC0/F;->b()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    iget-object p1, p0, LC0/F;->h:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, LC0/F;->i:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(IJLm0/t;I)V
    .locals 2

    .line 1
    invoke-static {p1}, LC0/D;->f(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p0, LC0/F;->e:J

    .line 6
    .line 7
    sub-long/2addr p2, v0

    .line 8
    invoke-static {p1, p2, p3}, LC0/D;->g(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p4, :cond_d

    .line 14
    .line 15
    invoke-static {p1}, LC0/E;->C(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x2

    .line 19
    if-eq p5, p2, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p5, p3, :cond_2

    .line 23
    .line 24
    if-eq p5, v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    :cond_2
    :goto_0
    invoke-static {p1, v0}, LC0/D;->o(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 32
    .line 33
    .line 34
    iget-object p5, p4, Lm0/t;->n:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p5, :cond_3

    .line 37
    .line 38
    invoke-static {p1, p5}, LC0/D;->p(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object p5, p4, Lm0/t;->o:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p5, :cond_4

    .line 44
    .line 45
    invoke-static {p1, p5}, LC0/D;->u(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    iget-object p5, p4, Lm0/t;->k:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz p5, :cond_5

    .line 51
    .line 52
    invoke-static {p1, p5}, LC0/D;->y(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_5
    const/4 p5, -0x1

    .line 56
    iget v0, p4, Lm0/t;->j:I

    .line 57
    .line 58
    if-eq v0, p5, :cond_6

    .line 59
    .line 60
    invoke-static {p1, v0}, LC0/D;->t(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 61
    .line 62
    .line 63
    :cond_6
    iget v0, p4, Lm0/t;->v:I

    .line 64
    .line 65
    if-eq v0, p5, :cond_7

    .line 66
    .line 67
    invoke-static {p1, v0}, LC0/D;->x(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 68
    .line 69
    .line 70
    :cond_7
    iget v0, p4, Lm0/t;->w:I

    .line 71
    .line 72
    if-eq v0, p5, :cond_8

    .line 73
    .line 74
    invoke-static {p1, v0}, LC0/D;->A(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 75
    .line 76
    .line 77
    :cond_8
    iget v0, p4, Lm0/t;->G:I

    .line 78
    .line 79
    if-eq v0, p5, :cond_9

    .line 80
    .line 81
    invoke-static {p1, v0}, LC0/D;->C(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 82
    .line 83
    .line 84
    :cond_9
    iget v0, p4, Lm0/t;->H:I

    .line 85
    .line 86
    if-eq v0, p5, :cond_a

    .line 87
    .line 88
    invoke-static {p1, v0}, LC0/E;->s(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 89
    .line 90
    .line 91
    :cond_a
    iget-object v0, p4, Lm0/t;->d:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v0, :cond_c

    .line 94
    .line 95
    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 96
    .line 97
    const-string v1, "-"

    .line 98
    .line 99
    invoke-virtual {v0, v1, p5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p5

    .line 103
    const/4 v0, 0x0

    .line 104
    aget-object v0, p5, v0

    .line 105
    .line 106
    array-length v1, p5

    .line 107
    if-lt v1, p3, :cond_b

    .line 108
    .line 109
    aget-object p3, p5, p2

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_b
    const/4 p3, 0x0

    .line 113
    :goto_1
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p5, Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p1, p5}, LC0/E;->t(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    .line 126
    if-eqz p3, :cond_c

    .line 127
    .line 128
    check-cast p3, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p1, p3}, LC0/E;->D(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_c
    const/high16 p3, -0x40800000    # -1.0f

    .line 134
    .line 135
    iget p4, p4, Lm0/t;->z:F

    .line 136
    .line 137
    cmpl-float p3, p4, p3

    .line 138
    .line 139
    if-eqz p3, :cond_e

    .line 140
    .line 141
    invoke-static {p1, p4}, LC0/E;->r(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_d
    invoke-static {p1}, LC0/E;->q(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 146
    .line 147
    .line 148
    :cond_e
    :goto_2
    iput-boolean p2, p0, LC0/F;->B:Z

    .line 149
    .line 150
    invoke-static {p1}, LC0/E;->j(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance p2, Lf/t;

    .line 155
    .line 156
    const/16 p3, 0x12

    .line 157
    .line 158
    invoke-direct {p2, p3, p0, p1}, Lf/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, LC0/F;->b:Ljava/util/concurrent/Executor;

    .line 162
    .line 163
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
