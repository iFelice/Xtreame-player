.class public final Lcom/google/android/gms/internal/ads/PN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zO;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 14
    .line 15
    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 17
    .line 18
    const-wide/32 v0, 0x10000

    .line 19
    .line 20
    .line 21
    add-long/2addr p1, v0

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zO;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    long-to-int p2, p1

    .line 12
    return p2
.end method

.method public final b(JZZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc4/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lc4/l0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc4/l0;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lc4/l0;

    .line 24
    .line 25
    iget-object v2, v1, Lc4/l0;->N:Lc4/Z;

    .line 26
    .line 27
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v1, Lc4/l0;->T:LP3/b;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-object v1, v2, Lc4/Z;->W:LE1/I;

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, LE1/I;->b(J)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 45
    .line 46
    sub-long v1, p1, v1

    .line 47
    .line 48
    if-nez p3, :cond_2

    .line 49
    .line 50
    const-wide/16 v3, 0x3e8

    .line 51
    .line 52
    cmp-long p3, v1, v3

    .line 53
    .line 54
    if-ltz p3, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lc4/l0;

    .line 60
    .line 61
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 62
    .line 63
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 71
    .line 72
    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 73
    .line 74
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    return p1

    .line 79
    :cond_2
    :goto_0
    if-nez p4, :cond_3

    .line 80
    .line 81
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 82
    .line 83
    sub-long v1, p1, v1

    .line 84
    .line 85
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 86
    .line 87
    :cond_3
    iget-object p3, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p3, Lc4/l0;

    .line 90
    .line 91
    iget-object v3, p3, Lc4/l0;->O:Lc4/T;

    .line 92
    .line 93
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v3, v3, Lc4/T;->T:Lc4/Q;

    .line 101
    .line 102
    const-string v5, "Recording user engagement, ms"

    .line 103
    .line 104
    invoke-virtual {v3, v4, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v4, "_et"

    .line 113
    .line 114
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    iget-object p3, p3, Lc4/l0;->M:Lc4/h;

    .line 118
    .line 119
    invoke-virtual {p3}, Lc4/h;->C()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    const/4 v1, 0x1

    .line 124
    xor-int/2addr p3, v1

    .line 125
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lc4/l0;

    .line 128
    .line 129
    iget-object v2, v0, Lc4/l0;->U:Lc4/V0;

    .line 130
    .line 131
    invoke-static {v2}, Lc4/l0;->j(Lc4/B;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p3}, Lc4/V0;->t(Z)Lc4/S0;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-static {p3, v3, v1}, Lc4/I1;->C(Lc4/S0;Landroid/os/Bundle;Z)V

    .line 139
    .line 140
    .line 141
    if-nez p4, :cond_4

    .line 142
    .line 143
    iget-object p3, v0, Lc4/l0;->V:Lc4/K0;

    .line 144
    .line 145
    invoke-static {p3}, Lc4/l0;->j(Lc4/B;)V

    .line 146
    .line 147
    .line 148
    const-string p4, "auto"

    .line 149
    .line 150
    const-string v0, "_e"

    .line 151
    .line 152
    invoke-virtual {p3, p4, v0, v3}, Lc4/K0;->y(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Lc4/p;

    .line 160
    .line 161
    invoke-virtual {p1}, Lc4/p;->a()V

    .line 162
    .line 163
    .line 164
    sget-object p2, Lc4/E;->q0:Lc4/D;

    .line 165
    .line 166
    const/4 p3, 0x0

    .line 167
    invoke-virtual {p2, p3}, Lc4/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    check-cast p2, Ljava/lang/Long;

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 174
    .line 175
    .line 176
    move-result-wide p2

    .line 177
    invoke-virtual {p1, p2, p3}, Lc4/p;->c(J)V

    .line 178
    .line 179
    .line 180
    return v1
.end method
