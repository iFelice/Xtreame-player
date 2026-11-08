.class public final synthetic Lcom/google/android/gms/internal/ads/Iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/Ju;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ju;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Iu;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Iu;->b:Lcom/google/android/gms/internal/ads/Ju;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Iu;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x15

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Iu;->b:Lcom/google/android/gms/internal/ads/Ju;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 18
    .line 19
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ju;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    move-object p1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "android_id"

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    .line 38
    .line 39
    new-instance v4, Lcom/google/android/gms/internal/ads/Om;

    .line 40
    .line 41
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v3, p1, v4, v1}, Lcom/google/android/gms/internal/ads/xs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Iu;->b:Lcom/google/android/gms/internal/ads/Ju;

    .line 49
    .line 50
    check-cast p1, Lj3/a;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v4, Lcom/google/android/gms/internal/ads/Om;

    .line 56
    .line 57
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/Ju;->d:Z

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->R2:Lcom/google/android/gms/internal/ads/J7;

    .line 65
    .line 66
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 67
    .line 68
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 69
    .line 70
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_2

    .line 81
    .line 82
    :cond_1
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/Ju;->d:Z

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->S2:Lcom/google/android/gms/internal/ads/J7;

    .line 87
    .line 88
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 89
    .line 90
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 91
    .line 92
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    :cond_2
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ju;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Ty;->f(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Ty;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object v8, p1, Lj3/a;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Ju;->a:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->X2:Lcom/google/android/gms/internal/ads/J7;

    .line 125
    .line 126
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 127
    .line 128
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 129
    .line 130
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v6

    .line 140
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/Ju;->e:Z

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const-class v0, Lcom/google/android/gms/internal/ads/Ty;

    .line 146
    .line 147
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Sy;->a(JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    monitor-exit v0

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v4

    .line 155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    :goto_1
    const-string v4, "AdIdInfoSignalSource.getPaidV1"

    .line 161
    .line 162
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 163
    .line 164
    iget-object v5, v5, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 165
    .line 166
    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    new-instance v4, Lcom/google/android/gms/internal/ads/Om;

    .line 170
    .line 171
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 172
    .line 173
    .line 174
    :cond_3
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    .line 175
    .line 176
    invoke-direct {v0, p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/xs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
