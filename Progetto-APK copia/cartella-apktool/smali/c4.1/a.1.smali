.class public final Lc4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:J

.field public final synthetic J:Lc4/x;


# direct methods
.method public synthetic constructor <init>(Lc4/x;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lc4/a;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lc4/a;->H:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lc4/a;->I:J

    .line 9
    .line 10
    iput-object p1, p0, Lc4/a;->J:Lc4/x;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lc4/a;->G:I

    .line 2
    .line 3
    iget-wide v1, p0, Lc4/a;->I:J

    .line 4
    .line 5
    iget-object v3, p0, Lc4/a;->H:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lc4/a;->J:Lc4/x;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4}, Lc4/z;->m()V

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v4, Lc4/x;->I:Lr/f;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    iget-object v6, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Lc4/l0;

    .line 31
    .line 32
    iget-object v6, v6, Lc4/l0;->U:Lc4/V0;

    .line 33
    .line 34
    invoke-static {v6}, Lc4/l0;->j(Lc4/B;)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-virtual {v6, v7}, Lc4/V0;->t(Z)Lc4/S0;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/lit8 v5, v5, -0x1

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v5, v4, Lc4/x;->H:Lr/f;

    .line 54
    .line 55
    invoke-virtual {v5, v3}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Ljava/lang/Long;

    .line 60
    .line 61
    if-nez v7, :cond_0

    .line 62
    .line 63
    iget-object v3, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Lc4/l0;

    .line 66
    .line 67
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    const-string v5, "First ad unit exposure time was never set"

    .line 73
    .line 74
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    sub-long v7, v1, v7

    .line 85
    .line 86
    invoke-virtual {v5, v3}, Lr/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3, v7, v8, v6}, Lc4/x;->r(Ljava/lang/String;JLc4/S0;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0}, Lr/m;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-wide v7, v4, Lc4/x;->J:J

    .line 99
    .line 100
    const-wide/16 v9, 0x0

    .line 101
    .line 102
    cmp-long v0, v7, v9

    .line 103
    .line 104
    if-nez v0, :cond_1

    .line 105
    .line 106
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lc4/l0;

    .line 109
    .line 110
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 111
    .line 112
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "First ad exposure time was never set"

    .line 116
    .line 117
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    sub-long/2addr v1, v7

    .line 124
    invoke-virtual {v4, v1, v2, v6}, Lc4/x;->q(JLc4/S0;)V

    .line 125
    .line 126
    .line 127
    iput-wide v9, v4, Lc4/x;->J:J

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v3, v1}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lc4/l0;

    .line 141
    .line 142
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 143
    .line 144
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "Call to endAdUnitExposure for unknown ad unit id"

    .line 148
    .line 149
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 150
    .line 151
    invoke-virtual {v0, v3, v1}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_1
    return-void

    .line 155
    :pswitch_0
    invoke-virtual {v4}, Lc4/z;->m()V

    .line 156
    .line 157
    .line 158
    invoke-static {v3}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v4, Lc4/x;->I:Lr/f;

    .line 162
    .line 163
    invoke-virtual {v0}, Lr/m;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_5

    .line 168
    .line 169
    iput-wide v1, v4, Lc4/x;->J:J

    .line 170
    .line 171
    :cond_5
    invoke-virtual {v0, v3}, Lr/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Ljava/lang/Integer;

    .line 176
    .line 177
    const/4 v6, 0x1

    .line 178
    if-eqz v5, :cond_6

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    add-int/2addr v1, v6

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v3, v1}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    iget v5, v0, Lr/m;->I:I

    .line 194
    .line 195
    const/16 v7, 0x64

    .line 196
    .line 197
    if-lt v5, v7, :cond_7

    .line 198
    .line 199
    iget-object v0, v4, Lc1/d;->G:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lc4/l0;

    .line 202
    .line 203
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 204
    .line 205
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 206
    .line 207
    .line 208
    const-string v1, "Too many ads visible"

    .line 209
    .line 210
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v0, v3, v5}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-object v0, v4, Lc4/x;->H:Lr/f;

    .line 224
    .line 225
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v3, v1}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :goto_2
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
