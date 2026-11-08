.class public final Lcom/google/android/gms/internal/cast/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:LH3/b;

.field public static final j:Ljava/lang/String;

.field public static k:Lcom/google/android/gms/internal/cast/D0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/N;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/internal/cast/X;

.field public final e:LX3/d;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashSet;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FeatureUsageAnalytics"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/D0;->i:LH3/b;

    .line 10
    .line 11
    const-string v0, "21.4.0"

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/D0;->j:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/N;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/D0;->b:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/D0;->a:Lcom/google/android/gms/internal/cast/N;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/D0;->c:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/D0;->f:Ljava/util/HashSet;

    .line 16
    .line 17
    new-instance p1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/D0;->g:Ljava/util/HashSet;

    .line 23
    .line 24
    new-instance p1, LX3/d;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-direct {p1, p2, p3}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/D0;->e:LX3/d;

    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/cast/X;

    .line 37
    .line 38
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/D0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 42
    .line 43
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/cast/d0;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/cast/N;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/cast/D0;->k:Lcom/google/android/gms/internal/cast/D0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/cast/d0;->G:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/D0;->b:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "feature_usage_timestamp_reported_feature_"

    .line 23
    .line 24
    invoke-static {v4, v1}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v2, "feature_usage_timestamp_detected_feature_"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/D0;->f:Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/google/android/gms/internal/cast/D0;->e:LX3/d;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/D0;->d:Lcom/google/android/gms/internal/cast/X;

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/internal/cast/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->H:Lcom/google/android/gms/internal/cast/d0;

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->K0:Lcom/google/android/gms/internal/cast/d0;

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->J0:Lcom/google/android/gms/internal/cast/d0;

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->I0:Lcom/google/android/gms/internal/cast/d0;

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->H0:Lcom/google/android/gms/internal/cast/d0;

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->G0:Lcom/google/android/gms/internal/cast/d0;

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->F0:Lcom/google/android/gms/internal/cast/d0;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->E0:Lcom/google/android/gms/internal/cast/d0;

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->D0:Lcom/google/android/gms/internal/cast/d0;

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->C0:Lcom/google/android/gms/internal/cast/d0;

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->B0:Lcom/google/android/gms/internal/cast/d0;

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->A0:Lcom/google/android/gms/internal/cast/d0;

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :pswitch_b
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->z0:Lcom/google/android/gms/internal/cast/d0;

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :pswitch_c
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->y0:Lcom/google/android/gms/internal/cast/d0;

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_d
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->x0:Lcom/google/android/gms/internal/cast/d0;

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_e
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->w0:Lcom/google/android/gms/internal/cast/d0;

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_f
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->v0:Lcom/google/android/gms/internal/cast/d0;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_10
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->u0:Lcom/google/android/gms/internal/cast/d0;

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_11
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->t0:Lcom/google/android/gms/internal/cast/d0;

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :pswitch_12
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->s0:Lcom/google/android/gms/internal/cast/d0;

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_13
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->r0:Lcom/google/android/gms/internal/cast/d0;

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->q0:Lcom/google/android/gms/internal/cast/d0;

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :pswitch_15
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->p0:Lcom/google/android/gms/internal/cast/d0;

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :pswitch_16
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->o0:Lcom/google/android/gms/internal/cast/d0;

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_17
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->n0:Lcom/google/android/gms/internal/cast/d0;

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :pswitch_18
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->m0:Lcom/google/android/gms/internal/cast/d0;

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :pswitch_19
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->l0:Lcom/google/android/gms/internal/cast/d0;

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_1a
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->k0:Lcom/google/android/gms/internal/cast/d0;

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :pswitch_1b
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->j0:Lcom/google/android/gms/internal/cast/d0;

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_1c
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->i0:Lcom/google/android/gms/internal/cast/d0;

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_1d
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->h0:Lcom/google/android/gms/internal/cast/d0;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_1e
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->g0:Lcom/google/android/gms/internal/cast/d0;

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :pswitch_1f
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->f0:Lcom/google/android/gms/internal/cast/d0;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :pswitch_20
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->e0:Lcom/google/android/gms/internal/cast/d0;

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :pswitch_21
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->d0:Lcom/google/android/gms/internal/cast/d0;

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :pswitch_22
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->c0:Lcom/google/android/gms/internal/cast/d0;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :pswitch_23
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->b0:Lcom/google/android/gms/internal/cast/d0;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :pswitch_24
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->a0:Lcom/google/android/gms/internal/cast/d0;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :pswitch_25
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->Z:Lcom/google/android/gms/internal/cast/d0;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_26
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->Y:Lcom/google/android/gms/internal/cast/d0;

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_27
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->X:Lcom/google/android/gms/internal/cast/d0;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :pswitch_28
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->W:Lcom/google/android/gms/internal/cast/d0;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_29
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->V:Lcom/google/android/gms/internal/cast/d0;

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_2a
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->U:Lcom/google/android/gms/internal/cast/d0;

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :pswitch_2b
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->T:Lcom/google/android/gms/internal/cast/d0;

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :pswitch_2c
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->S:Lcom/google/android/gms/internal/cast/d0;

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :pswitch_2d
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->R:Lcom/google/android/gms/internal/cast/d0;

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :pswitch_2e
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->Q:Lcom/google/android/gms/internal/cast/d0;

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :pswitch_2f
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->P:Lcom/google/android/gms/internal/cast/d0;

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_30
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->O:Lcom/google/android/gms/internal/cast/d0;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_31
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->N:Lcom/google/android/gms/internal/cast/d0;

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_32
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->M:Lcom/google/android/gms/internal/cast/d0;

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :pswitch_33
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->L:Lcom/google/android/gms/internal/cast/d0;

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :pswitch_34
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->K:Lcom/google/android/gms/internal/cast/d0;

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_35
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->J:Lcom/google/android/gms/internal/cast/d0;

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :pswitch_36
    sget-object v0, Lcom/google/android/gms/internal/cast/d0;->I:Lcom/google/android/gms/internal/cast/d0;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    :catch_0
    :goto_0
    :pswitch_37
    return-object v0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final c(Ljava/util/HashSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/D0;->b:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
