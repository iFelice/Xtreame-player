.class public final Lcom/google/android/gms/internal/pal/Q1;
.super Lcom/google/android/gms/internal/pal/Y1;
.source "SourceFile"


# instance fields
.field public final h:Lcom/google/android/gms/internal/pal/r1;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/A1;Lcom/google/android/gms/internal/pal/L4;ILcom/google/android/gms/internal/pal/r1;JJ)V
    .locals 7

    .line 1
    const/16 v6, 0xb

    .line 2
    .line 3
    const-string v2, "X9PgbTHLX0FFxbl3gdPDuVwcglfXy5CDrzo8siaVNaH+OIJ6JI34Wu3QK5rLega4"

    .line 4
    .line 5
    const-string v3, "JLulXGPEHVwHK+0FG96HP9my+NvwpTQbwIaIZrjn9OU="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/pal/Y1;-><init>(Lcom/google/android/gms/internal/pal/A1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/pal/L4;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/Q1;->h:Lcom/google/android/gms/internal/pal/r1;

    .line 15
    .line 16
    iput-wide p5, p0, Lcom/google/android/gms/internal/pal/Q1;->i:J

    .line 17
    .line 18
    iput-wide p7, p0, Lcom/google/android/gms/internal/pal/Q1;->j:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Q1;->h:Lcom/google/android/gms/internal/pal/r1;

    .line 3
    .line 4
    if-eqz v1, :cond_5

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/pal/Y1;->e:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/r1;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/internal/pal/Q1;->i:J

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-wide v4, p0, Lcom/google/android/gms/internal/pal/Q1;->j:J

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v1, v5, v0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object v3, v5, v1

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    aput-object v4, v5, v1

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/internal/pal/q1;

    .line 43
    .line 44
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/pal/q1;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 51
    .line 52
    iget-object v4, v2, Lcom/google/android/gms/internal/pal/q1;->b:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    iget-boolean v6, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 59
    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 63
    .line 64
    .line 65
    iput-boolean v0, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 66
    .line 67
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 68
    .line 69
    check-cast v3, Lcom/google/android/gms/internal/pal/m0;

    .line 70
    .line 71
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/pal/m0;->k0(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/q1;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    const-wide/16 v5, 0x0

    .line 83
    .line 84
    cmp-long v7, v3, v5

    .line 85
    .line 86
    if-ltz v7, :cond_2

    .line 87
    .line 88
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 89
    .line 90
    iget-object v4, v2, Lcom/google/android/gms/internal/pal/q1;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    iget-boolean v4, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 99
    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 103
    .line 104
    .line 105
    iput-boolean v0, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 106
    .line 107
    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 108
    .line 109
    check-cast v3, Lcom/google/android/gms/internal/pal/m0;

    .line 110
    .line 111
    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/pal/m0;->L(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/q1;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    cmp-long v7, v3, v5

    .line 126
    .line 127
    if-ltz v7, :cond_4

    .line 128
    .line 129
    iget-object v3, p0, Lcom/google/android/gms/internal/pal/Y1;->d:Lcom/google/android/gms/internal/pal/L4;

    .line 130
    .line 131
    iget-object v2, v2, Lcom/google/android/gms/internal/pal/q1;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    iget-boolean v2, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 144
    .line 145
    .line 146
    iput-boolean v0, v3, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 147
    .line 148
    :cond_3
    iget-object v0, v3, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 149
    .line 150
    check-cast v0, Lcom/google/android/gms/internal/pal/m0;

    .line 151
    .line 152
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/pal/m0;->N(Lcom/google/android/gms/internal/pal/m0;J)V

    .line 153
    .line 154
    .line 155
    :cond_4
    monitor-exit v1

    .line 156
    return-void

    .line 157
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw v0

    .line 159
    :cond_5
    return-void
.end method
