.class public final Lr2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:J

.field public final I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lr2/j;->G:I

    iput-object p1, p0, Lr2/j;->J:Ljava/lang/Object;

    iput-object p2, p0, Lr2/j;->I:Ljava/lang/Object;

    iput-wide p3, p0, Lr2/j;->H:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lr2/j;->G:I

    iput-object p1, p0, Lr2/j;->I:Ljava/lang/Object;

    iput-object p2, p0, Lr2/j;->J:Ljava/lang/Object;

    iput-wide p3, p0, Lr2/j;->H:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lr2/j;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lp6/n;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lp6/n;

    .line 17
    .line 18
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-wide v2, p0, Lr2/j;->H:J

    .line 32
    .line 33
    cmp-long v4, v2, v0

    .line 34
    .line 35
    if-lez v4, :cond_0

    .line 36
    .line 37
    sub-long/2addr v2, v0

    .line 38
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lz4/q0;->C(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lp6/n;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lr2/j;->I:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lc4/V0;

    .line 72
    .line 73
    iget-object v2, p0, Lr2/j;->I:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Lc4/S0;

    .line 76
    .line 77
    iget-wide v3, p0, Lr2/j;->H:J

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1, v3, v4}, Lc4/V0;->s(Lc4/S0;ZJ)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    iput-object v1, v0, Lc4/V0;->K:Lc4/S0;

    .line 84
    .line 85
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lc4/l0;

    .line 88
    .line 89
    invoke-virtual {v0}, Lc4/l0;->r()Lc4/d1;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 97
    .line 98
    .line 99
    new-instance v2, LK3/V;

    .line 100
    .line 101
    const/16 v3, 0xe

    .line 102
    .line 103
    invoke-direct {v2, v3, v0, v1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p0, Lr2/j;->I:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lc4/K0;

    .line 113
    .line 114
    iget-object v2, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Lc4/l0;

    .line 117
    .line 118
    invoke-virtual {v2}, Lc4/l0;->n()Lc4/L;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lc4/L;->u()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    .line 132
    iget-object v2, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Landroid/os/Bundle;

    .line 135
    .line 136
    iget-wide v3, p0, Lr2/j;->H:J

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1, v3, v4}, Lc4/K0;->D(Landroid/os/Bundle;IJ)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_1
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v0, Lc4/l0;

    .line 145
    .line 146
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 147
    .line 148
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "Using developer consent only; google app id found"

    .line 152
    .line 153
    iget-object v0, v0, Lc4/T;->Q:Lc4/Q;

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void

    .line 159
    :pswitch_2
    iget-object v0, p0, Lr2/j;->J:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lr2/k;

    .line 162
    .line 163
    iget-object v1, v0, Lr2/k;->G:Lr2/q;

    .line 164
    .line 165
    iget-object v2, p0, Lr2/j;->I:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Ljava/lang/String;

    .line 168
    .line 169
    iget-wide v3, p0, Lr2/j;->H:J

    .line 170
    .line 171
    invoke-virtual {v1, v3, v4, v2}, Lr2/q;->a(JLjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lr2/k;->G:Lr2/q;

    .line 175
    .line 176
    invoke-virtual {v0}, Lr2/k;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Lr2/q;->b(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
