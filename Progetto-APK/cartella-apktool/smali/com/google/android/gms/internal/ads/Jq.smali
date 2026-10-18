.class public final Lcom/google/android/gms/internal/ads/Jq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/Ng;Lcom/google/android/gms/internal/ads/Nv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Jq;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jq;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Jq;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Kw;Lcom/google/android/gms/internal/ads/jC;Lcom/google/android/gms/internal/ads/Z7;Lcom/google/android/gms/internal/ads/Ur;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Jq;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jq;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Jq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Jq;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Jq;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v1, v8, Lcom/google/android/gms/internal/ads/Jq;->a:I

    .line 6
    .line 7
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/Jq;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v10, Lcom/google/android/gms/internal/ads/te;

    .line 13
    .line 14
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v11, Lcom/google/android/gms/internal/ads/Tr;

    .line 18
    .line 19
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v12, Lcom/google/android/gms/internal/ads/Yu;

    .line 23
    .line 24
    const/4 v7, 0x4

    .line 25
    move-object v1, v12

    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    move-object v3, v10

    .line 29
    move-object/from16 v4, p1

    .line 30
    .line 31
    move-object/from16 v5, p2

    .line 32
    .line 33
    move-object v6, v11

    .line 34
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    monitor-enter v11

    .line 38
    :try_start_0
    iput-object v12, v11, Lcom/google/android/gms/internal/ads/Tr;->G:Lk3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v11

    .line 41
    new-instance v1, Lcom/google/android/gms/internal/ads/X7;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Rv;->b:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v11, v2, v0}, Lcom/google/android/gms/internal/ads/X7;-><init>(Lk3/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v14, Lcom/google/android/gms/internal/ads/Iw;->Y:Lcom/google/android/gms/internal/ads/Iw;

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 55
    .line 56
    const/16 v2, 0xc

    .line 57
    .line 58
    invoke-direct {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v13, v9

    .line 62
    check-cast v13, Lcom/google/android/gms/internal/ads/Kw;

    .line 63
    .line 64
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Jq;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lcom/google/android/gms/internal/ads/jC;

    .line 67
    .line 68
    new-instance v2, Lcom/google/android/gms/internal/ads/he;

    .line 69
    .line 70
    const/16 v3, 0x1d

    .line 71
    .line 72
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/he;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 76
    .line 77
    sget-object v16, Lcom/google/android/gms/internal/ads/Gw;->d:Lcom/google/android/gms/internal/ads/fC;

    .line 78
    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v17

    .line 83
    check-cast v1, Lcom/google/android/gms/internal/ads/IB;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 86
    .line 87
    .line 88
    move-result-object v18

    .line 89
    const/4 v15, 0x0

    .line 90
    move-object v12, v0

    .line 91
    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/rs;-><init>(Lcom/google/android/gms/internal/ads/Gw;Ljava/lang/Object;Ljava/lang/String;LD4/b;Ljava/util/List;LD4/b;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/google/android/gms/internal/ads/Iw;->Z:Lcom/google/android/gms/internal/ads/Iw;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rs;->g(Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lcom/google/android/gms/internal/ads/sm;

    .line 101
    .line 102
    const/4 v2, 0x3

    .line 103
    invoke-direct {v1, v2, v10}, Lcom/google/android/gms/internal/ads/sm;-><init>(ILD4/b;)V

    .line 104
    .line 105
    .line 106
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rs;->n(Lcom/google/android/gms/internal/ads/RB;Lcom/google/android/gms/internal/ads/jC;)Lcom/google/android/gms/internal/ads/rs;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    move-object v1, v0

    .line 119
    monitor-exit v11

    .line 120
    throw v1

    .line 121
    :pswitch_0
    const/4 v1, 0x0

    .line 122
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 123
    .line 124
    const-string v3, "tab_url"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    goto :goto_0

    .line 131
    :catch_0
    nop

    .line 132
    move-object v2, v1

    .line 133
    :goto_0
    if-eqz v2, :cond_0

    .line 134
    .line 135
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object v3, v2

    .line 140
    goto :goto_1

    .line 141
    :cond_0
    move-object v3, v1

    .line 142
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-instance v10, Lcom/google/android/gms/internal/ads/Sa;

    .line 147
    .line 148
    const/4 v6, 0x4

    .line 149
    move-object v1, v10

    .line 150
    move-object/from16 v2, p0

    .line 151
    .line 152
    move-object/from16 v4, p1

    .line 153
    .line 154
    move-object/from16 v5, p2

    .line 155
    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Sa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 160
    .line 161
    invoke-static {v7, v10, v9}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/Jq;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Jq;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/google/android/gms/internal/ads/Z7;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    return v0

    .line 24
    :pswitch_0
    check-cast v2, Landroid/content/Context;

    .line 25
    .line 26
    instance-of p1, v2, Landroid/app/Activity;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/a8;->a(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :try_start_0
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 37
    .line 38
    const-string p2, "tab_url"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_1
    return v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
