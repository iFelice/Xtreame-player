.class public final Lcom/google/android/gms/internal/pal/N1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# instance fields
.field public final h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;JI)V
    .locals 7

    .line 1
    const/16 v6, 0x19

    .line 2
    .line 3
    const-string v2, "zwwnNjW/9dn+p0q/2u+mmA6XQB8+gtknmtJMKP3tBmoncBehPCILsKxRnck9yFjA"

    .line 4
    .line 5
    const-string v3, "vpqgk7W2OO4+emKKnTSxckIsP1c64LGVSWcdsnDvr3w="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    iput-wide p3, p0, Lcom/google/android/gms/internal/pal/N1;->h:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 21
    .line 22
    iget-boolean v5, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 27
    .line 28
    .line 29
    iput-boolean v1, v4, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 30
    .line 31
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 32
    .line 33
    check-cast v4, Lcom/google/android/gms/internal/pal/m0;

    .line 34
    .line 35
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/m0;->T(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 36
    .line 37
    .line 38
    iget-wide v4, p0, Lcom/google/android/gms/internal/pal/N1;->h:J

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long v8, v4, v6

    .line 43
    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    iget-object v6, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 47
    .line 48
    sub-long/2addr v2, v4

    .line 49
    iget-boolean v4, v6, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 54
    .line 55
    .line 56
    iput-boolean v1, v6, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 57
    .line 58
    :cond_1
    iget-object v4, v6, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 59
    .line 60
    check-cast v4, Lcom/google/android/gms/internal/pal/m0;

    .line 61
    .line 62
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/pal/m0;->p0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 66
    .line 67
    iget-wide v3, p0, Lcom/google/android/gms/internal/pal/N1;->h:J

    .line 68
    .line 69
    iget-boolean v5, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, v2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 77
    .line 78
    :cond_2
    iget-object v1, v2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 79
    .line 80
    check-cast v1, Lcom/google/android/gms/internal/pal/m0;

    .line 81
    .line 82
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/pal/m0;->s0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v1
.end method
