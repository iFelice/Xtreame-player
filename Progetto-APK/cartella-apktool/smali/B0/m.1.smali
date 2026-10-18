.class public final LB0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/b0;


# instance fields
.field public final a:LS0/d;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:Ljava/util/HashMap;

.field public k:J


# direct methods
.method public constructor <init>(LS0/d;IIIIIZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "bufferForPlaybackMs"

    .line 6
    .line 7
    const-string v2, "0"

    .line 8
    .line 9
    invoke-static {p4, v0, v1, v2}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 13
    .line 14
    invoke-static {p5, v0, v3, v2}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v4, "minBufferMs"

    .line 18
    .line 19
    invoke-static {p2, p4, v4, v1}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p5, v4, v3}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "maxBufferMs"

    .line 26
    .line 27
    invoke-static {p3, p2, v1, v4}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "backBufferDurationMs"

    .line 31
    .line 32
    invoke-static {v0, v0, v1, v2}, LB0/m;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, LB0/m;->a:LS0/d;

    .line 36
    .line 37
    int-to-long p1, p2

    .line 38
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iput-wide p1, p0, LB0/m;->b:J

    .line 43
    .line 44
    int-to-long p1, p3

    .line 45
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, LB0/m;->c:J

    .line 50
    .line 51
    int-to-long p1, p4

    .line 52
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    iput-wide p1, p0, LB0/m;->d:J

    .line 57
    .line 58
    int-to-long p1, p5

    .line 59
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    iput-wide p1, p0, LB0/m;->e:J

    .line 64
    .line 65
    iput p6, p0, LB0/m;->f:I

    .line 66
    .line 67
    iput-boolean p7, p0, LB0/m;->g:Z

    .line 68
    .line 69
    int-to-long p1, v0

    .line 70
    invoke-static {p1, p2}, Lp0/M;->R(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    iput-wide p1, p0, LB0/m;->h:J

    .line 75
    .line 76
    iput-boolean v0, p0, LB0/m;->i:Z

    .line 77
    .line 78
    new-instance p1, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, LB0/m;->j:Ljava/util/HashMap;

    .line 84
    .line 85
    const-wide/16 p1, -0x1

    .line 86
    .line 87
    iput-wide p1, p0, LB0/m;->k:J

    .line 88
    .line 89
    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-lt p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, " cannot be less than "

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, LB0/m;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, LB0/l;

    .line 23
    .line 24
    iget v2, v2, LB0/l;->b:I

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method

.method public final c(LB0/a0;)Z
    .locals 13

    .line 1
    iget-object v0, p0, LB0/m;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, LB0/a0;->a:LC0/I;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, LB0/l;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, LB0/m;->a:LS0/d;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget v2, v1, LS0/d;->d:I

    .line 18
    .line 19
    iget v3, v1, LS0/d;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    mul-int v2, v2, v3

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    invoke-virtual {p0}, LB0/m;->b()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    if-lt v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-wide v5, p0, LB0/m;->c:J

    .line 36
    .line 37
    iget-wide v7, p0, LB0/m;->b:J

    .line 38
    .line 39
    iget v2, p1, LB0/a0;->c:F

    .line 40
    .line 41
    const/high16 v9, 0x3f800000    # 1.0f

    .line 42
    .line 43
    cmpl-float v9, v2, v9

    .line 44
    .line 45
    if-lez v9, :cond_1

    .line 46
    .line 47
    invoke-static {v7, v8, v2}, Lp0/M;->y(JF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    :cond_1
    const-wide/32 v9, 0x7a120

    .line 56
    .line 57
    .line 58
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    iget-wide v11, p1, LB0/a0;->b:J

    .line 63
    .line 64
    cmp-long p1, v11, v7

    .line 65
    .line 66
    if-gez p1, :cond_4

    .line 67
    .line 68
    iget-boolean p1, p0, LB0/m;->g:Z

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v3, 0x0

    .line 76
    :cond_3
    :goto_1
    iput-boolean v3, v0, LB0/l;->a:Z

    .line 77
    .line 78
    if-nez v3, :cond_6

    .line 79
    .line 80
    cmp-long p1, v11, v9

    .line 81
    .line 82
    if-gez p1, :cond_6

    .line 83
    .line 84
    const-string p1, "DefaultLoadControl"

    .line 85
    .line 86
    const-string v1, "Target buffer size reached with less than 500ms of buffered media data."

    .line 87
    .line 88
    invoke-static {p1, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    cmp-long p1, v11, v5

    .line 93
    .line 94
    if-gez p1, :cond_5

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    :cond_5
    iput-boolean v4, v0, LB0/l;->a:Z

    .line 99
    .line 100
    :cond_6
    :goto_2
    iget-boolean p1, v0, LB0/l;->a:Z

    .line 101
    .line 102
    return p1

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v1

    .line 105
    throw p1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/m;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, LB0/m;->a:LS0/d;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-boolean v1, v0, LS0/d;->a:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, LS0/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    goto :goto_2

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw v1

    .line 27
    :cond_1
    iget-object v0, p0, LB0/m;->a:LS0/d;

    .line 28
    .line 29
    invoke-virtual {p0}, LB0/m;->b()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, LS0/d;->a(I)V

    .line 34
    .line 35
    .line 36
    :goto_2
    return-void
.end method
