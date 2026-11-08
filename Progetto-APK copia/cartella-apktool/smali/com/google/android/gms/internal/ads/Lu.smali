.class public final Lcom/google/android/gms/internal/ads/Lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;

.field public final d:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V
    .locals 1

    iput p5, p0, Lcom/google/android/gms/internal/ads/Lu;->a:I

    const/4 v0, 0x3

    if-eq p5, v0, :cond_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/Lu;->a:I

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Lu;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/rg;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Lu;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Lu;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lp3/k;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 28
    .line 29
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/google/android/gms/internal/ads/Uw;

    .line 34
    .line 35
    new-instance v4, Lcom/google/android/gms/internal/ads/ix;

    .line 36
    .line 37
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ix;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Lp3/k;Lcom/google/android/gms/internal/ads/Uw;)V

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 42
    .line 43
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 50
    .line 51
    check-cast v1, Lcom/google/android/gms/internal/ads/rg;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rg;->a()Lp3/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/google/android/gms/internal/ads/pn;

    .line 64
    .line 65
    new-instance v3, Lcom/google/android/gms/internal/ads/y1;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lcom/google/android/gms/internal/ads/Uw;

    .line 71
    .line 72
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Uw;-><init>(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/pn;Lcom/google/android/gms/internal/ads/y1;)V

    .line 73
    .line 74
    .line 75
    return-object v4

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 77
    .line 78
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 85
    .line 86
    check-cast v1, Lcom/google/android/gms/internal/ads/rg;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rg;->a()Lp3/a;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 93
    .line 94
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/google/android/gms/internal/ads/Uw;

    .line 99
    .line 100
    new-instance v3, Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    monitor-enter v3

    .line 106
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/Qa;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v5, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    move-object v0, v5

    .line 116
    :goto_0
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 117
    .line 118
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 119
    .line 120
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 121
    .line 122
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v4, v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/Qa;-><init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Uw;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v3

    .line 132
    return-object v4

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw v0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 137
    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/google/android/gms/internal/ads/Jv;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 145
    .line 146
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lcom/google/android/gms/internal/ads/Gv;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 153
    .line 154
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lcom/google/android/gms/internal/ads/Uv;

    .line 159
    .line 160
    new-instance v3, Lcom/google/android/gms/internal/ads/Mv;

    .line 161
    .line 162
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mv;-><init>(Lcom/google/android/gms/internal/ads/Jv;Lcom/google/android/gms/internal/ads/Gv;Lcom/google/android/gms/internal/ads/Uv;)V

    .line 163
    .line 164
    .line 165
    return-object v3

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 167
    .line 168
    check-cast v0, Lcom/google/android/gms/internal/ads/Qu;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Qu;->a:LK/k;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Qu;->a(LK/k;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lu;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 176
    .line 177
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/google/android/gms/internal/ads/le;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lu;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 184
    .line 185
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 190
    .line 191
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 192
    .line 193
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Lcom/google/android/gms/internal/ads/Fs;

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/Fs;-><init>(Lcom/google/android/gms/internal/ads/le;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/re;I)V

    .line 200
    .line 201
    .line 202
    return-object v3

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
