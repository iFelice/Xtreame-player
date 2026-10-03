.class public Lcom/google/android/gms/internal/ads/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Y;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/P;->a:I

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/P;->b:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/Z;->c:Lcom/google/android/gms/internal/ads/Z;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Z;

    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    move-object p1, v0

    .line 6
    :goto_0
    invoke-direct {v1, p1, p1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/P;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/P;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P;->c:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/P;->b:J

    return-void
.end method


# virtual methods
.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget v3, v0, Lcom/google/android/gms/internal/ads/P;->a:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/P;->c:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v6, Lcom/google/android/gms/internal/ads/i0;

    .line 14
    .line 15
    iget-object v3, v6, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 16
    .line 17
    aget-object v3, v3, v4

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/l0;->a(J)Lcom/google/android/gms/internal/ads/X;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x1

    .line 24
    :goto_0
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/i0;->i:[Lcom/google/android/gms/internal/ads/l0;

    .line 25
    .line 26
    array-length v7, v4

    .line 27
    if-ge v5, v7, :cond_1

    .line 28
    .line 29
    aget-object v4, v4, v5

    .line 30
    .line 31
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/l0;->a(J)Lcom/google/android/gms/internal/ads/X;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/X;->a:Lcom/google/android/gms/internal/ads/Z;

    .line 36
    .line 37
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/Z;->b:J

    .line 38
    .line 39
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/X;->a:Lcom/google/android/gms/internal/ads/Z;

    .line 40
    .line 41
    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/Z;->b:J

    .line 42
    .line 43
    cmp-long v11, v7, v9

    .line 44
    .line 45
    if-gez v11, :cond_0

    .line 46
    .line 47
    move-object v3, v4

    .line 48
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v3

    .line 52
    :pswitch_0
    check-cast v6, Lcom/google/android/gms/internal/ads/X;

    .line 53
    .line 54
    return-object v6

    .line 55
    :pswitch_1
    move-object v3, v6

    .line 56
    check-cast v3, Lcom/google/android/gms/internal/ads/Q;

    .line 57
    .line 58
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Q;->k:Lcom/google/android/gms/internal/ads/x;

    .line 59
    .line 60
    invoke-static {v7}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Q;->k:Lcom/google/android/gms/internal/ads/x;

    .line 64
    .line 65
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v8, [J

    .line 68
    .line 69
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, [J

    .line 72
    .line 73
    iget v9, v3, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 74
    .line 75
    int-to-long v9, v9

    .line 76
    mul-long v9, v9, v1

    .line 77
    .line 78
    const-wide/32 v11, 0xf4240

    .line 79
    .line 80
    .line 81
    div-long/2addr v9, v11

    .line 82
    const-wide/16 v13, -0x1

    .line 83
    .line 84
    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/Q;->j:J

    .line 85
    .line 86
    add-long/2addr v11, v13

    .line 87
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    const-wide/16 v11, 0x0

    .line 92
    .line 93
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    invoke-static {v8, v9, v10, v4}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/4 v4, -0x1

    .line 102
    if-ne v3, v4, :cond_2

    .line 103
    .line 104
    move-wide v9, v11

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    aget-wide v9, v8, v3

    .line 107
    .line 108
    :goto_1
    if-ne v3, v4, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    aget-wide v11, v7, v3

    .line 112
    .line 113
    :goto_2
    move-object v13, v6

    .line 114
    check-cast v13, Lcom/google/android/gms/internal/ads/Q;

    .line 115
    .line 116
    iget v13, v13, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 117
    .line 118
    const-wide/32 v14, 0xf4240

    .line 119
    .line 120
    .line 121
    mul-long v9, v9, v14

    .line 122
    .line 123
    int-to-long v13, v13

    .line 124
    div-long/2addr v9, v13

    .line 125
    new-instance v13, Lcom/google/android/gms/internal/ads/Z;

    .line 126
    .line 127
    move-object v14, v6

    .line 128
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/P;->b:J

    .line 129
    .line 130
    add-long/2addr v11, v5

    .line 131
    invoke-direct {v13, v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 132
    .line 133
    .line 134
    cmp-long v11, v9, v1

    .line 135
    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    array-length v1, v8

    .line 139
    add-int/2addr v1, v4

    .line 140
    if-ne v3, v1, :cond_4

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    const/4 v1, 0x1

    .line 144
    add-int/2addr v3, v1

    .line 145
    aget-wide v1, v8, v3

    .line 146
    .line 147
    aget-wide v3, v7, v3

    .line 148
    .line 149
    move-object v7, v14

    .line 150
    check-cast v7, Lcom/google/android/gms/internal/ads/Q;

    .line 151
    .line 152
    iget v7, v7, Lcom/google/android/gms/internal/ads/Q;->e:I

    .line 153
    .line 154
    const-wide/32 v8, 0xf4240

    .line 155
    .line 156
    .line 157
    mul-long v1, v1, v8

    .line 158
    .line 159
    int-to-long v7, v7

    .line 160
    div-long/2addr v1, v7

    .line 161
    new-instance v7, Lcom/google/android/gms/internal/ads/Z;

    .line 162
    .line 163
    add-long/2addr v5, v3

    .line 164
    invoke-direct {v7, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 168
    .line 169
    invoke-direct {v1, v13, v7}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/X;

    .line 174
    .line 175
    invoke-direct {v1, v13, v13}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    return-object v1

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/P;->b:J

    .line 7
    .line 8
    return-wide v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/ads/Q;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Q;->a()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
