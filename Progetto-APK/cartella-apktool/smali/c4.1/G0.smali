.class public final Lc4/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:J

.field public final synthetic I:Lc4/K0;


# direct methods
.method public synthetic constructor <init>(Lc4/K0;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lc4/G0;->G:I

    .line 5
    .line 6
    iput-wide p2, p0, Lc4/G0;->H:J

    .line 7
    .line 8
    iput-object p1, p0, Lc4/G0;->I:Lc4/K0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lc4/G0;->G:I

    .line 2
    .line 3
    iget-wide v1, p0, Lc4/G0;->H:J

    .line 4
    .line 5
    iget-object v3, p0, Lc4/G0;->I:Lc4/K0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Lc4/z;->m()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Lc4/B;->n()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lc4/l0;

    .line 19
    .line 20
    iget-object v4, v0, Lc4/l0;->O:Lc4/T;

    .line 21
    .line 22
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 23
    .line 24
    .line 25
    const-string v5, "Resetting analytics data (FE)"

    .line 26
    .line 27
    iget-object v4, v4, Lc4/T;->S:Lc4/Q;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lc4/l0;

    .line 35
    .line 36
    iget-object v5, v4, Lc4/l0;->Q:Lc4/k1;

    .line 37
    .line 38
    invoke-static {v5}, Lc4/l0;->j(Lc4/B;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lc4/z;->m()V

    .line 42
    .line 43
    .line 44
    iget-object v5, v5, Lc4/k1;->L:Lcom/google/android/gms/internal/ads/PN;

    .line 45
    .line 46
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/PN;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lc4/p;

    .line 49
    .line 50
    invoke-virtual {v6}, Lc4/p;->a()V

    .line 51
    .line 52
    .line 53
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/PN;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Lc4/k1;

    .line 56
    .line 57
    iget-object v6, v6, Lc1/d;->G:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, Lc4/l0;

    .line 60
    .line 61
    iget-object v7, v6, Lc4/l0;->M:Lc4/h;

    .line 62
    .line 63
    sget-object v8, Lc4/E;->c1:Lc4/D;

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-virtual {v7, v9, v8}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const-wide/16 v10, 0x0

    .line 71
    .line 72
    if-eqz v7, :cond_0

    .line 73
    .line 74
    iget-object v6, v6, Lc4/l0;->T:LP3/b;

    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iput-wide v10, v5, Lcom/google/android/gms/internal/ads/PN;->a:J

    .line 87
    .line 88
    move-wide v6, v10

    .line 89
    :goto_0
    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/PN;->b:J

    .line 90
    .line 91
    invoke-virtual {v4}, Lc4/l0;->n()Lc4/L;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lc4/L;->w()V

    .line 96
    .line 97
    .line 98
    iget-object v5, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v5, Lc4/l0;

    .line 101
    .line 102
    invoke-virtual {v5}, Lc4/l0;->f()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    xor-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    iget-object v0, v0, Lc4/l0;->N:Lc4/Z;

    .line 109
    .line 110
    invoke-static {v0}, Lc4/l0;->i(Lc4/s0;)V

    .line 111
    .line 112
    .line 113
    iget-object v6, v0, Lc4/Z;->M:LE1/I;

    .line 114
    .line 115
    invoke-virtual {v6, v1, v2}, LE1/I;->b(J)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Lc4/l0;

    .line 121
    .line 122
    iget-object v2, v1, Lc4/l0;->N:Lc4/Z;

    .line 123
    .line 124
    invoke-static {v2}, Lc4/l0;->i(Lc4/s0;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v2, Lc4/Z;->c0:LB0/c;

    .line 128
    .line 129
    invoke-virtual {v2}, LB0/c;->n()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_1

    .line 138
    .line 139
    iget-object v2, v0, Lc4/Z;->c0:LB0/c;

    .line 140
    .line 141
    invoke-virtual {v2, v9}, LB0/c;->o(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v2, v0, Lc4/Z;->W:LE1/I;

    .line 145
    .line 146
    invoke-virtual {v2, v10, v11}, LE1/I;->b(J)V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lc4/Z;->X:LE1/I;

    .line 150
    .line 151
    invoke-virtual {v2, v10, v11}, LE1/I;->b(J)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v1, Lc4/l0;->M:Lc4/h;

    .line 155
    .line 156
    invoke-virtual {v1}, Lc4/h;->n()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_2

    .line 161
    .line 162
    invoke-virtual {v0, v5}, Lc4/Z;->w(Z)V

    .line 163
    .line 164
    .line 165
    :cond_2
    iget-object v1, v0, Lc4/Z;->d0:LB0/c;

    .line 166
    .line 167
    invoke-virtual {v1, v9}, LB0/c;->o(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lc4/Z;->e0:LE1/I;

    .line 171
    .line 172
    invoke-virtual {v1, v10, v11}, LE1/I;->b(J)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v0, Lc4/Z;->f0:Lm2/o;

    .line 176
    .line 177
    invoke-virtual {v0, v9}, Lm2/o;->w(Landroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Lc4/l0;->r()Lc4/d1;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lc4/z;->m()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lc4/B;->n()V

    .line 188
    .line 189
    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lc4/d1;->B(Z)Lc4/J1;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0}, Lc4/d1;->F()V

    .line 196
    .line 197
    .line 198
    iget-object v6, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v6, Lc4/l0;

    .line 201
    .line 202
    invoke-virtual {v6}, Lc4/l0;->o()Lc4/N;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6}, Lc4/N;->s()V

    .line 207
    .line 208
    .line 209
    new-instance v6, Lc4/Z0;

    .line 210
    .line 211
    invoke-direct {v6, v0, v2, v1}, Lc4/Z0;-><init>(Lc4/d1;Lc4/J1;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v6}, Lc4/d1;->E(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, v4, Lc4/l0;->Q:Lc4/k1;

    .line 218
    .line 219
    invoke-static {v0}, Lc4/l0;->j(Lc4/B;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lc4/k1;->K:LZ3/o;

    .line 223
    .line 224
    invoke-virtual {v0}, LZ3/o;->A()V

    .line 225
    .line 226
    .line 227
    iput-boolean v5, v3, Lc4/K0;->Y:Z

    .line 228
    .line 229
    invoke-virtual {v4}, Lc4/l0;->r()Lc4/d1;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lc4/d1;->s(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_0
    iget-object v0, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, Lc4/l0;

    .line 245
    .line 246
    iget-object v3, v0, Lc4/l0;->N:Lc4/Z;

    .line 247
    .line 248
    invoke-static {v3}, Lc4/l0;->i(Lc4/s0;)V

    .line 249
    .line 250
    .line 251
    iget-object v3, v3, Lc4/Z;->R:LE1/I;

    .line 252
    .line 253
    invoke-virtual {v3, v1, v2}, LE1/I;->b(J)V

    .line 254
    .line 255
    .line 256
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 257
    .line 258
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v0, v0, Lc4/T;->S:Lc4/Q;

    .line 266
    .line 267
    const-string v2, "Session timeout duration set"

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
