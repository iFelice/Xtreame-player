.class public final Lc4/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:J

.field public final synthetic K:Ljava/lang/Object;

.field public final synthetic L:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p7, p0, Lc4/n0;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/n0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lc4/n0;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lc4/n0;->K:Ljava/lang/Object;

    .line 11
    .line 12
    iput-wide p5, p0, Lc4/n0;->J:J

    .line 13
    .line 14
    iput-object p1, p0, Lc4/n0;->L:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lc4/n0;->G:I

    .line 3
    .line 4
    iget-object v5, p0, Lc4/n0;->K:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lc4/n0;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v3, p0, Lc4/n0;->H:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v4, p0, Lc4/n0;->L:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v6, v4

    .line 16
    check-cast v6, Lc4/V0;

    .line 17
    .line 18
    check-cast v3, Landroid/os/Bundle;

    .line 19
    .line 20
    move-object v7, v2

    .line 21
    check-cast v7, Lc4/S0;

    .line 22
    .line 23
    move-object v8, v5

    .line 24
    check-cast v8, Lc4/S0;

    .line 25
    .line 26
    const-string v1, "screen_name"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "screen_class"

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lc4/l0;

    .line 39
    .line 40
    iget-object v1, v1, Lc4/l0;->R:Lc4/I1;

    .line 41
    .line 42
    invoke-static {v1}, Lc4/l0;->i(Lc4/s0;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const-string v4, "screen_view"

    .line 47
    .line 48
    invoke-virtual {v1, v4, v3, v0, v2}, Lc4/I1;->q(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    const/4 v11, 0x1

    .line 53
    iget-wide v9, p0, Lc4/n0;->J:J

    .line 54
    .line 55
    invoke-virtual/range {v6 .. v12}, Lc4/V0;->r(Lc4/S0;Lc4/S0;JZLandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    move-object v0, v4

    .line 60
    check-cast v0, Lc4/K0;

    .line 61
    .line 62
    move-object v6, v3

    .line 63
    check-cast v6, Ljava/lang/String;

    .line 64
    .line 65
    move-object v7, v2

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    iget-wide v3, p0, Lc4/n0;->J:J

    .line 69
    .line 70
    move-object v2, v0

    .line 71
    invoke-virtual/range {v2 .. v7}, Lc4/K0;->J(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    check-cast v4, Lc4/r0;

    .line 80
    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, v4, Lc4/r0;->G:Lc4/A1;

    .line 84
    .line 85
    invoke-virtual {v1}, Lc4/A1;->d()Lc4/j0;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v1, Lc4/A1;->m0:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v3, :cond_0

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    iput-object v2, v1, Lc4/A1;->m0:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v0, v1, Lc4/A1;->l0:Lc4/S0;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    new-instance v0, Lc4/S0;

    .line 111
    .line 112
    iget-wide v6, p0, Lc4/n0;->J:J

    .line 113
    .line 114
    invoke-direct {v0, v6, v7, v5, v3}, Lc4/S0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast v4, Lc4/r0;

    .line 118
    .line 119
    check-cast v2, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, v4, Lc4/r0;->G:Lc4/A1;

    .line 122
    .line 123
    invoke-virtual {v1}, Lc4/A1;->d()Lc4/j0;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lc4/j0;->m()V

    .line 128
    .line 129
    .line 130
    iget-object v3, v1, Lc4/A1;->m0:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_2
    iput-object v2, v1, Lc4/A1;->m0:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v0, v1, Lc4/A1;->l0:Lc4/S0;

    .line 140
    .line 141
    :goto_0
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
