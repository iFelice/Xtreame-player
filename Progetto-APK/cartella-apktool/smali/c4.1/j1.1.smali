.class public final Lc4/j1;
.super Lc4/p;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lc4/l0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc4/j1;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lc4/j1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lc4/p;-><init>(Lc4/t0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget v0, p0, Lc4/j1;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lc4/j1;->f:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lc4/A1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lc4/A1;->d()Lc4/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lc4/j0;->m()V

    .line 15
    .line 16
    .line 17
    iget-object v0, v1, Lc4/A1;->W:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lc4/A1;->c()LP3/a;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, LP3/b;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, v1, Lc4/A1;->o0:J

    .line 41
    .line 42
    invoke-virtual {v1}, Lc4/A1;->b()Lc4/T;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "Sending trigger URI notification to app"

    .line 47
    .line 48
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lc4/A1;->R:Lc4/l0;

    .line 67
    .line 68
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 69
    .line 70
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v4, 0x22

    .line 73
    .line 74
    if-ge v3, v4, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, LL1/d;->f()Landroid/app/BroadcastOptions;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, LL1/d;->g(Landroid/app/BroadcastOptions;)Landroid/app/BroadcastOptions;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v3}, LL1/d;->p(Landroid/app/BroadcastOptions;)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v0, v2, v3}, LL1/d;->v(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lc4/A1;->B()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_0
    check-cast v1, Lc4/p1;

    .line 100
    .line 101
    invoke-virtual {v1}, Lc4/p1;->q()V

    .line 102
    .line 103
    .line 104
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Lc4/l0;

    .line 107
    .line 108
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 109
    .line 110
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "Starting upload from DelayedRunnable"

    .line 114
    .line 115
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, v1, Lc4/q1;->H:Lc4/A1;

    .line 121
    .line 122
    invoke-virtual {v0}, Lc4/A1;->T()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/ads/PN;

    .line 127
    .line 128
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lc4/k1;

    .line 131
    .line 132
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Lc4/l0;

    .line 138
    .line 139
    iget-object v3, v2, Lc4/l0;->T:LP3/b;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    const/4 v5, 0x0

    .line 149
    invoke-virtual {v1, v3, v4, v5, v5}, Lcom/google/android/gms/internal/ads/PN;->b(JZZ)Z

    .line 150
    .line 151
    .line 152
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Lc4/l0;

    .line 155
    .line 156
    iget-object v0, v0, Lc4/l0;->W:Lc4/x;

    .line 157
    .line 158
    invoke-static {v0}, Lc4/l0;->h(Lc4/z;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v2, Lc4/l0;->T:LP3/b;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    invoke-virtual {v0, v1, v2}, Lc4/x;->p(J)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
