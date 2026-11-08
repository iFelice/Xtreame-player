.class public final synthetic Lg2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lg2/g;


# direct methods
.method public synthetic constructor <init>(Lg2/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lg2/f;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lg2/f;->H:Lg2/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lg2/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lg2/f;->H:Lg2/g;

    .line 7
    .line 8
    invoke-static {v0}, Lg2/g;->a(Lg2/g;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lg2/f;->H:Lg2/g;

    .line 13
    .line 14
    invoke-static {v0}, Lg2/g;->a(Lg2/g;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lg2/f;->H:Lg2/g;

    .line 19
    .line 20
    iget v1, v0, Lg2/g;->M:I

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput v1, v0, Lg2/g;->M:I

    .line 26
    .line 27
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lg2/g;->S:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "onAllConstraintsMet for "

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lg2/g;->I:Lm2/j;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lg2/g;->J:Lg2/j;

    .line 53
    .line 54
    iget-object v1, v1, Lg2/j;->J:Le2/n;

    .line 55
    .line 56
    iget-object v2, v0, Lg2/g;->R:Le2/r;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v1, v2, v3}, Le2/n;->j(Le2/r;Lm2/u;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, v0, Lg2/g;->J:Lg2/j;

    .line 66
    .line 67
    iget-object v1, v1, Lg2/j;->I:Ln2/y;

    .line 68
    .line 69
    iget-object v2, v0, Lg2/g;->I:Lm2/j;

    .line 70
    .line 71
    const-string v3, "Starting timer for "

    .line 72
    .line 73
    iget-object v4, v1, Ln2/y;->d:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v4

    .line 76
    :try_start_0
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    sget-object v6, Ln2/y;->e:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v5, v6, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ln2/y;->a(Lm2/j;)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Ln2/x;

    .line 101
    .line 102
    invoke-direct {v3, v1, v2}, Ln2/x;-><init>(Ln2/y;Lm2/j;)V

    .line 103
    .line 104
    .line 105
    iget-object v5, v1, Ln2/y;->b:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v5, v1, Ln2/y;->c:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v0, v1, Ln2/y;->a:LD0/U;

    .line 116
    .line 117
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Landroid/os/Handler;

    .line 120
    .line 121
    const-wide/32 v1, 0x927c0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    monitor-exit v4

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw v0

    .line 132
    :cond_0
    invoke-virtual {v0}, Lg2/g;->b()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    sget-object v2, Lg2/g;->S:Ljava/lang/String;

    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "Already started work for "

    .line 145
    .line 146
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lg2/g;->I:Lm2/j;

    .line 150
    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v1, v2, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void

    .line 162
    :pswitch_2
    iget-object v0, p0, Lg2/f;->H:Lg2/g;

    .line 163
    .line 164
    invoke-static {v0}, Lg2/g;->a(Lg2/g;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
